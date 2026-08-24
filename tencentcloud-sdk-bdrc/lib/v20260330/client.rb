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
  module Bdrc
    module V20260330
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-03-30'
            api_endpoint = 'bdrc.tencentcloudapi.com'
            sdk_version = 'BDRC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 回滚备份组

        # @param request: Request instance for ApplyBackupGroup.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ApplyBackupGroupRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ApplyBackupGroupResponse`
        def ApplyBackupGroup(request)
          body = send_request('ApplyBackupGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyBackupGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将实例绑定到备份策略上

        # @param request: Request instance for BindAutoBackupPolicy.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::BindAutoBackupPolicyRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::BindAutoBackupPolicyResponse`
        def BindAutoBackupPolicy(request)
          body = send_request('BindAutoBackupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAutoBackupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建备份策略

        # @param request: Request instance for CreateAutoBackupPolicy.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateAutoBackupPolicyRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateAutoBackupPolicyResponse`
        def CreateAutoBackupPolicy(request)
          body = send_request('CreateAutoBackupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAutoBackupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建备份组

        # @param request: Request instance for CreateBackupGroup.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateBackupGroupRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateBackupGroupResponse`
        def CreateBackupGroup(request)
          body = send_request('CreateBackupGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建备份库

        # @param request: Request instance for CreateBackupVault.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateBackupVaultRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateBackupVaultResponse`
        def CreateBackupVault(request)
          body = send_request('CreateBackupVault', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupVaultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建容灾保护组

        # @param request: Request instance for CreateDisasterRecoveryProtectGroup.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoveryProtectGroupRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoveryProtectGroupResponse`
        def CreateDisasterRecoveryProtectGroup(request)
          body = send_request('CreateDisasterRecoveryProtectGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisasterRecoveryProtectGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建容灾站点对

        # @param request: Request instance for CreateDisasterRecoverySitePair.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoverySitePairRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoverySitePairResponse`
        def CreateDisasterRecoverySitePair(request)
          body = send_request('CreateDisasterRecoverySitePair', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisasterRecoverySitePairResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建容灾站点VPC网络映射

        # @param request: Request instance for CreateDisasterRecoveryVpcMapping.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoveryVpcMappingRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateDisasterRecoveryVpcMappingResponse`
        def CreateDisasterRecoveryVpcMapping(request)
          body = send_request('CreateDisasterRecoveryVpcMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisasterRecoveryVpcMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建文件备份点

        # @param request: Request instance for CreateFileBackup.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateFileBackupRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateFileBackupResponse`
        def CreateFileBackup(request)
          body = send_request('CreateFileBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建备份计划

        # @param request: Request instance for CreateFileBackupPlan.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateFileBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateFileBackupPlanResponse`
        def CreateFileBackupPlan(request)
          body = send_request('CreateFileBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建恢复任务

        # @param request: Request instance for CreateFileRestoreTask.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateFileRestoreTaskRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateFileRestoreTaskResponse`
        def CreateFileRestoreTask(request)
          body = send_request('CreateFileRestoreTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileRestoreTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建CVM复制对

        # @param request: Request instance for CreateInstanceCopyPair.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateInstanceCopyPairRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateInstanceCopyPairResponse`
        def CreateInstanceCopyPair(request)
          body = send_request('CreateInstanceCopyPair', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceCopyPairResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建cvm演练

        # @param request: Request instance for CreateInstanceDrillPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateInstanceDrillPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateInstanceDrillPairsResponse`
        def CreateInstanceDrillPairs(request)
          body = send_request('CreateInstanceDrillPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceDrillPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于为站点对新增安全组映射，生产端实例绑定的安全组为源端，需要为每个生产端实例绑定的安全组建立映射，在创建复制对时，会自动以映射后的目标安全组作为容灾端实例绑定的安全组。

        # @param request: Request instance for CreateSecurityGroupMapping.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::CreateSecurityGroupMappingRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::CreateSecurityGroupMappingResponse`
        def CreateSecurityGroupMapping(request)
          body = send_request('CreateSecurityGroupMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteAutoBackupPolicies.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteAutoBackupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteAutoBackupPoliciesResponse`
        def DeleteAutoBackupPolicies(request)
          body = send_request('DeleteAutoBackupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAutoBackupPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份组

        # @param request: Request instance for DeleteBackupGroups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteBackupGroupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteBackupGroupsResponse`
        def DeleteBackupGroups(request)
          body = send_request('DeleteBackupGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份库

        # @param request: Request instance for DeleteBackupVaults.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteBackupVaultsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteBackupVaultsResponse`
        def DeleteBackupVaults(request)
          body = send_request('DeleteBackupVaults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackupVaultsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除容灾复制对

        # @param request: Request instance for DeleteCopyPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteCopyPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteCopyPairsResponse`
        def DeleteCopyPairs(request)
          body = send_request('DeleteCopyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCopyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除容灾保护组

        # @param request: Request instance for DeleteDisasterRecoveryProtectGroups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoveryProtectGroupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoveryProtectGroupsResponse`
        def DeleteDisasterRecoveryProtectGroups(request)
          body = send_request('DeleteDisasterRecoveryProtectGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDisasterRecoveryProtectGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除容灾站点对

        # @param request: Request instance for DeleteDisasterRecoverySitePairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoverySitePairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoverySitePairsResponse`
        def DeleteDisasterRecoverySitePairs(request)
          body = send_request('DeleteDisasterRecoverySitePairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDisasterRecoverySitePairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除容灾站点对vpc映射信息

        # @param request: Request instance for DeleteDisasterRecoveryVpcMapping.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoveryVpcMappingRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteDisasterRecoveryVpcMappingResponse`
        def DeleteDisasterRecoveryVpcMapping(request)
          body = send_request('DeleteDisasterRecoveryVpcMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDisasterRecoveryVpcMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除演练对/演练组

        # @param request: Request instance for DeleteDrillPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteDrillPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteDrillPairsResponse`
        def DeleteDrillPairs(request)
          body = send_request('DeleteDrillPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDrillPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份计划

        # @param request: Request instance for DeleteFileBackupPlans.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteFileBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteFileBackupPlansResponse`
        def DeleteFileBackupPlans(request)
          body = send_request('DeleteFileBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFileBackupPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除文件备份点

        # @param request: Request instance for DeleteFileBackups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteFileBackupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteFileBackupsResponse`
        def DeleteFileBackups(request)
          body = send_request('DeleteFileBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFileBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除站点对已添加的安全组映射

        # @param request: Request instance for DeleteSecurityGroupMapping.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DeleteSecurityGroupMappingRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DeleteSecurityGroupMappingResponse`
        def DeleteSecurityGroupMapping(request)
          body = send_request('DeleteSecurityGroupMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityGroupMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询定期备份策略列表

        # @param request: Request instance for DescribeAutoBackupPolicies.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeAutoBackupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeAutoBackupPoliciesResponse`
        def DescribeAutoBackupPolicies(request)
          body = send_request('DescribeAutoBackupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoBackupPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份组恢复任务详情

        # @param request: Request instance for DescribeBackupGroupRollbackTasks.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupRollbackTasksRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupRollbackTasksResponse`
        def DescribeBackupGroupRollbackTasks(request)
          body = send_request('DescribeBackupGroupRollbackTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupGroupRollbackTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份组列表

        # @param request: Request instance for DescribeBackupGroups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupsResponse`
        def DescribeBackupGroups(request)
          body = send_request('DescribeBackupGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询操作掩码

        # @param request: Request instance for DescribeBackupGroupsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupGroupsDeniedActionsResponse`
        def DescribeBackupGroupsDeniedActions(request)
          body = send_request('DescribeBackupGroupsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupGroupsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来浏览已有受保护实例列表

        # @param request: Request instance for DescribeBackupInstances.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupInstancesRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupInstancesResponse`
        def DescribeBackupInstances(request)
          body = send_request('DescribeBackupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份概览信息

        # @param request: Request instance for DescribeBackupOverviewGeneral.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupOverviewGeneralRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupOverviewGeneralResponse`
        def DescribeBackupOverviewGeneral(request)
          body = send_request('DescribeBackupOverviewGeneral', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupOverviewGeneralResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询整机备份计划

        # @param request: Request instance for DescribeBackupPlans.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupPlansResponse`
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

        # 查询备份库信息

        # @param request: Request instance for DescribeBackupVaults.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupVaultsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupVaultsResponse`
        def DescribeBackupVaults(request)
          body = send_request('DescribeBackupVaults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupVaultsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份库操作掩码

        # @param request: Request instance for DescribeBackupVaultsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupVaultsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeBackupVaultsDeniedActionsResponse`
        def DescribeBackupVaultsDeniedActions(request)
          body = send_request('DescribeBackupVaultsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupVaultsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询共同备份点信息

        # @param request: Request instance for DescribeCommonBackupPoints.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeCommonBackupPointsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeCommonBackupPointsResponse`
        def DescribeCommonBackupPoints(request)
          body = send_request('DescribeCommonBackupPoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCommonBackupPointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询容灾复制对

        # @param request: Request instance for DescribeCopyPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeCopyPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeCopyPairsResponse`
        def DescribeCopyPairs(request)
          body = send_request('DescribeCopyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCopyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询复制对掩码

        # @param request: Request instance for DescribeCopyPairsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeCopyPairsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeCopyPairsDeniedActionsResponse`
        def DescribeCopyPairsDeniedActions(request)
          body = send_request('DescribeCopyPairsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCopyPairsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询容灾复制对

        # @param request: Request instance for DescribeDisasterRecoveryDrillGroups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryDrillGroupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryDrillGroupsResponse`
        def DescribeDisasterRecoveryDrillGroups(request)
          body = send_request('DescribeDisasterRecoveryDrillGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoveryDrillGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容灾资源概览

        # @param request: Request instance for DescribeDisasterRecoveryOverview.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryOverviewRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryOverviewResponse`
        def DescribeDisasterRecoveryOverview(request)
          body = send_request('DescribeDisasterRecoveryOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoveryOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询容灾保护组

        # @param request: Request instance for DescribeDisasterRecoveryProtectGroups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryProtectGroupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoveryProtectGroupsResponse`
        def DescribeDisasterRecoveryProtectGroups(request)
          body = send_request('DescribeDisasterRecoveryProtectGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoveryProtectGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询容灾站点对

        # @param request: Request instance for DescribeDisasterRecoverySitePairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySitePairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySitePairsResponse`
        def DescribeDisasterRecoverySitePairs(request)
          body = send_request('DescribeDisasterRecoverySitePairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoverySitePairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定容灾站点对当前不允许执行的操作列表（操作掩码）。前端在展示容灾策略操作菜单时，可基于该接口返回结果灰化或屏蔽相应入口，并向用户提示原因（错误码 + 错误信息）。

        # @param request: Request instance for DescribeDisasterRecoverySitePairsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySitePairsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySitePairsDeniedActionsResponse`
        def DescribeDisasterRecoverySitePairsDeniedActions(request)
          body = send_request('DescribeDisasterRecoverySitePairsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoverySitePairsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前地域支持容灾的生产地域配置列表

        # @param request: Request instance for DescribeDisasterRecoverySupportRegion.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySupportRegionRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisasterRecoverySupportRegionResponse`
        def DescribeDisasterRecoverySupportRegion(request)
          body = send_request('DescribeDisasterRecoverySupportRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoverySupportRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询容灾云硬盘的详情，如系统盘的镜像格式。

        # @param request: Request instance for DescribeDisks.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDisksRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDisksResponse`
        def DescribeDisks(request)
          body = send_request('DescribeDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询演练对列表

        # @param request: Request instance for DescribeDrillPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDrillPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDrillPairsResponse`
        def DescribeDrillPairs(request)
          body = send_request('DescribeDrillPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrillPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询演练操作掩码

        # @param request: Request instance for DescribeDrillPairsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeDrillPairsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeDrillPairsDeniedActionsResponse`
        def DescribeDrillPairsDeniedActions(request)
          body = send_request('DescribeDrillPairsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrillPairsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来浏览已有备份目录/文件内容

        # @param request: Request instance for DescribeFileBackupObjects.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupObjectsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupObjectsResponse`
        def DescribeFileBackupObjects(request)
          body = send_request('DescribeFileBackupObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileBackupObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来浏览已有备份计划内容

        # @param request: Request instance for DescribeFileBackupPlans.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupPlansRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupPlansResponse`
        def DescribeFileBackupPlans(request)
          body = send_request('DescribeFileBackupPlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileBackupPlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来浏览已有备份点详情

        # @param request: Request instance for DescribeFileBackups.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupsResponse`
        def DescribeFileBackups(request)
          body = send_request('DescribeFileBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询备份操作掩码

        # @param request: Request instance for DescribeFileBackupsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeFileBackupsDeniedActionsResponse`
        def DescribeFileBackupsDeniedActions(request)
          body = send_request('DescribeFileBackupsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileBackupsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份恢复任务列表

        # @param request: Request instance for DescribeFileRestoreTasks.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeFileRestoreTasksRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeFileRestoreTasksResponse`
        def DescribeFileRestoreTasks(request)
          body = send_request('DescribeFileRestoreTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileRestoreTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于Agent查询相关Agent任务信息

        # @param request: Request instance for DescribeJobs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeJobsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeJobsResponse`
        def DescribeJobs(request)
          body = send_request('DescribeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribePriceCreateCopyPairs）用于查询创建容灾复制对的价格。支持批量询价，入参为每个复制对的盘容量数组，返回与入参一一对应的后付费每小时价格。

        # @param request: Request instance for DescribePriceCreateCopyPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribePriceCreateCopyPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribePriceCreateCopyPairsResponse`
        def DescribePriceCreateCopyPairs(request)
          body = send_request('DescribePriceCreateCopyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePriceCreateCopyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询保护组操作掩码

        # @param request: Request instance for DescribeProtectGroupsDeniedActions.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeProtectGroupsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeProtectGroupsDeniedActionsResponse`
        def DescribeProtectGroupsDeniedActions(request)
          body = send_request('DescribeProtectGroupsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectGroupsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来浏览已有受保护实例列表

        # @param request: Request instance for DescribeProtectedInstances.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeProtectedInstancesRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeProtectedInstancesResponse`
        def DescribeProtectedInstances(request)
          body = send_request('DescribeProtectedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询安全组映射列表

        # @param request: Request instance for DescribeSecurityGroupMappings.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeSecurityGroupMappingsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeSecurityGroupMappingsResponse`
        def DescribeSecurityGroupMappings(request)
          body = send_request('DescribeSecurityGroupMappings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupMappingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用来查询站点对的vpc映射信息

        # @param request: Request instance for DescribeVpcMappings.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::DescribeVpcMappingsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::DescribeVpcMappingsResponse`
        def DescribeVpcMappings(request)
          body = send_request('DescribeVpcMappings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcMappingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成切换

        # @param request: Request instance for FinishFailoverCopyPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::FinishFailoverCopyPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::FinishFailoverCopyPairsResponse`
        def FinishFailoverCopyPairs(request)
          body = send_request('FinishFailoverCopyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FinishFailoverCopyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改备份策略

        # @param request: Request instance for ModifyAutoBackupPolicyAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyAutoBackupPolicyAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyAutoBackupPolicyAttributeResponse`
        def ModifyAutoBackupPolicyAttribute(request)
          body = send_request('ModifyAutoBackupPolicyAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoBackupPolicyAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份组

        # @param request: Request instance for ModifyBackupAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyBackupAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyBackupAttributeResponse`
        def ModifyBackupAttribute(request)
          body = send_request('ModifyBackupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改备份库信息

        # @param request: Request instance for ModifyBackupVaultAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyBackupVaultAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyBackupVaultAttributeResponse`
        def ModifyBackupVaultAttribute(request)
          body = send_request('ModifyBackupVaultAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupVaultAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容灾复制对

        # @param request: Request instance for ModifyCopyPairAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyCopyPairAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyCopyPairAttributeResponse`
        def ModifyCopyPairAttribute(request)
          body = send_request('ModifyCopyPairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCopyPairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改演练组

        # @param request: Request instance for ModifyDrillGroupAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyDrillGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyDrillGroupAttributeResponse`
        def ModifyDrillGroupAttribute(request)
          body = send_request('ModifyDrillGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDrillGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改演练

        # @param request: Request instance for ModifyDrillPairAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyDrillPairAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyDrillPairAttributeResponse`
        def ModifyDrillPairAttribute(request)
          body = send_request('ModifyDrillPairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDrillPairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改文件备份信息

        # @param request: Request instance for ModifyFileBackupAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyFileBackupAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyFileBackupAttributeResponse`
        def ModifyFileBackupAttribute(request)
          body = send_request('ModifyFileBackupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileBackupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改已有的备份计划配置

        # @param request: Request instance for ModifyFileBackupPlan.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyFileBackupPlanRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyFileBackupPlanResponse`
        def ModifyFileBackupPlan(request)
          body = send_request('ModifyFileBackupPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileBackupPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容灾保护组

        # @param request: Request instance for ModifyProtectGroupAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifyProtectGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifyProtectGroupAttributeResponse`
        def ModifyProtectGroupAttribute(request)
          body = send_request('ModifyProtectGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容灾站点对

        # @param request: Request instance for ModifySitePairAttribute.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ModifySitePairAttributeRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ModifySitePairAttributeResponse`
        def ModifySitePairAttribute(request)
          body = send_request('ModifySitePairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySitePairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于上报Agent指标信息

        # @param request: Request instance for ReportAgentMetrics.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ReportAgentMetricsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ReportAgentMetricsResponse`
        def ReportAgentMetrics(request)
          body = send_request('ReportAgentMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportAgentMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于Agent心跳上报

        # @param request: Request instance for ReportGatewayHeartbeat.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ReportGatewayHeartbeatRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ReportGatewayHeartbeatResponse`
        def ReportGatewayHeartbeat(request)
          body = send_request('ReportGatewayHeartbeat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportGatewayHeartbeatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于上报Agent任务信息

        # @param request: Request instance for ReportJobProgress.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::ReportJobProgressRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::ReportJobProgressResponse`
        def ReportJobProgress(request)
          body = send_request('ReportJobProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportJobProgressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动复制对

        # @param request: Request instance for RunCopyPairTasks.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::RunCopyPairTasksRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::RunCopyPairTasksResponse`
        def RunCopyPairTasks(request)
          body = send_request('RunCopyPairTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunCopyPairTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 故障切换

        # @param request: Request instance for RunFailoverCopyPairs.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::RunFailoverCopyPairsRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::RunFailoverCopyPairsResponse`
        def RunFailoverCopyPairs(request)
          body = send_request('RunFailoverCopyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunFailoverCopyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 备份组新建云服务器

        # @param request: Request instance for RunInstancesWithBackupGroup.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::RunInstancesWithBackupGroupRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::RunInstancesWithBackupGroupResponse`
        def RunInstancesWithBackupGroup(request)
          body = send_request('RunInstancesWithBackupGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunInstancesWithBackupGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止复制对

        # @param request: Request instance for StopCopyPairTasks.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::StopCopyPairTasksRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::StopCopyPairTasksResponse`
        def StopCopyPairTasks(request)
          body = send_request('StopCopyPairTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCopyPairTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将实例从备份策略上解绑

        # @param request: Request instance for UnbindAutoBackupPolicy.
        # @type request: :class:`Tencentcloud::bdrc::V20260330::UnbindAutoBackupPolicyRequest`
        # @rtype: :class:`Tencentcloud::bdrc::V20260330::UnbindAutoBackupPolicyResponse`
        def UnbindAutoBackupPolicy(request)
          body = send_request('UnbindAutoBackupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindAutoBackupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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