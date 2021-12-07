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
  module Tcss
    module V20201101
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-01'
            api_endpoint = 'tcss.tencentcloudapi.com'
            sdk_version = 'TCSS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增单个镜像仓库详细信息

        # @param request: Request instance for AddAssetImageRegistryRegistryDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddAssetImageRegistryRegistryDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddAssetImageRegistryRegistryDetailResponse`
        def AddAssetImageRegistryRegistryDetail(request)
          body = send_request('AddAssetImageRegistryRegistryDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAssetImageRegistryRegistryDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将指定的检测项添加到白名单中，不显示未通过结果。

        # @param request: Request instance for AddCompliancePolicyItemToWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddCompliancePolicyItemToWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddCompliancePolicyItemToWhitelistResponse`
        def AddCompliancePolicyItemToWhitelist(request)
          body = send_request('AddCompliancePolicyItemToWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCompliancePolicyItemToWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加编辑运行时异常进程策略

        # @param request: Request instance for AddEditAbnormalProcessRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditAbnormalProcessRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditAbnormalProcessRuleResponse`
        def AddEditAbnormalProcessRule(request)
          body = send_request('AddEditAbnormalProcessRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditAbnormalProcessRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加编辑运行时访问控制策略

        # @param request: Request instance for AddEditAccessControlRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditAccessControlRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditAccessControlRuleResponse`
        def AddEditAccessControlRule(request)
          body = send_request('AddEditAccessControlRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditAccessControlRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加编辑运行时反弹shell白名单

        # @param request: Request instance for AddEditReverseShellWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditReverseShellWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditReverseShellWhiteListResponse`
        def AddEditReverseShellWhiteList(request)
          body = send_request('AddEditReverseShellWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditReverseShellWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加编辑运行时高危系统调用白名单

        # @param request: Request instance for AddEditRiskSyscallWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditRiskSyscallWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditRiskSyscallWhiteListResponse`
        def AddEditRiskSyscallWhiteList(request)
          body = send_request('AddEditRiskSyscallWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditRiskSyscallWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加编辑告警策略

        # @param request: Request instance for AddEditWarningRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditWarningRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditWarningRulesResponse`
        def AddEditWarningRules(request)
          body = send_request('AddEditWarningRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditWarningRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查单个镜像仓库名是否重复

        # @param request: Request instance for CheckRepeatAssetImageRegistry.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CheckRepeatAssetImageRegistryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CheckRepeatAssetImageRegistryResponse`
        def CheckRepeatAssetImageRegistry(request)
          body = send_request('CheckRepeatAssetImageRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRepeatAssetImageRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库创建镜像扫描任务

        # @param request: Request instance for CreateAssetImageRegistryScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageRegistryScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageRegistryScanTaskResponse`
        def CreateAssetImageRegistryScanTask(request)
          body = send_request('CreateAssetImageRegistryScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetImageRegistryScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库创建镜像一键扫描任务

        # @param request: Request instance for CreateAssetImageRegistryScanTaskOneKey.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageRegistryScanTaskOneKeyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageRegistryScanTaskOneKeyResponse`
        def CreateAssetImageRegistryScanTaskOneKey(request)
          body = send_request('CreateAssetImageRegistryScanTaskOneKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetImageRegistryScanTaskOneKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加容器安全镜像扫描设置

        # @param request: Request instance for CreateAssetImageScanSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageScanSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageScanSettingResponse`
        def CreateAssetImageScanSetting(request)
          body = send_request('CreateAssetImageScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetImageScanSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全创建镜像扫描任务

        # @param request: Request instance for CreateAssetImageScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageScanTaskResponse`
        def CreateAssetImageScanTask(request)
          body = send_request('CreateAssetImageScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetImageScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安装检查组件，创建防护容器

        # @param request: Request instance for CreateCheckComponent.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateCheckComponentRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateCheckComponentResponse`
        def CreateCheckComponent(request)
          body = send_request('CreateCheckComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCheckComponentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群检查任务，用户检查用户的集群相关风险项

        # @param request: Request instance for CreateClusterCheckTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateClusterCheckTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateClusterCheckTaskResponse`
        def CreateClusterCheckTask(request)
          body = send_request('CreateClusterCheckTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterCheckTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建合规检查任务，在资产级别触发重新检测时使用。

        # @param request: Request instance for CreateComplianceTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateComplianceTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateComplianceTaskResponse`
        def CreateComplianceTask(request)
          body = send_request('CreateComplianceTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateComplianceTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个导出安全合规信息的任务

        # @param request: Request instance for CreateExportComplianceStatusListJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateExportComplianceStatusListJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateExportComplianceStatusListJobResponse`
        def CreateExportComplianceStatusListJob(request)
          body = send_request('CreateExportComplianceStatusListJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExportComplianceStatusListJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateOrModifyPostPayCores  创建或者编辑弹性计费上限

        # @param request: Request instance for CreateOrModifyPostPayCores.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateOrModifyPostPayCoresRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateOrModifyPostPayCoresResponse`
        def CreateOrModifyPostPayCores(request)
          body = send_request('CreateOrModifyPostPayCores', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrModifyPostPayCoresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下发刷新任务，会刷新资产信息

        # @param request: Request instance for CreateRefreshTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateRefreshTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateRefreshTaskResponse`
        def CreateRefreshTask(request)
          body = send_request('CreateRefreshTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRefreshTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件查杀重新检测

        # @param request: Request instance for CreateVirusScanAgain.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVirusScanAgainRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVirusScanAgainResponse`
        def CreateVirusScanAgain(request)
          body = send_request('CreateVirusScanAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVirusScanAgainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件查杀一键扫描

        # @param request: Request instance for CreateVirusScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVirusScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVirusScanTaskResponse`
        def CreateVirusScanTask(request)
          body = send_request('CreateVirusScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVirusScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除运行异常进程策略

        # @param request: Request instance for DeleteAbnormalProcessRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteAbnormalProcessRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteAbnormalProcessRulesResponse`
        def DeleteAbnormalProcessRules(request)
          body = send_request('DeleteAbnormalProcessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAbnormalProcessRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除运行访问控制策略

        # @param request: Request instance for DeleteAccessControlRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteAccessControlRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteAccessControlRulesResponse`
        def DeleteAccessControlRules(request)
          body = send_request('DeleteAccessControlRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccessControlRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从白名单中删除将指定的检测项。

        # @param request: Request instance for DeleteCompliancePolicyItemFromWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteCompliancePolicyItemFromWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteCompliancePolicyItemFromWhitelistResponse`
        def DeleteCompliancePolicyItemFromWhitelist(request)
          body = send_request('DeleteCompliancePolicyItemFromWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCompliancePolicyItemFromWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除运行时反弹shell白名单

        # @param request: Request instance for DeleteReverseShellWhiteLists.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteReverseShellWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteReverseShellWhiteListsResponse`
        def DeleteReverseShellWhiteLists(request)
          body = send_request('DeleteReverseShellWhiteLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellWhiteListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除运行时高危系统调用白名单

        # @param request: Request instance for DeleteRiskSyscallWhiteLists.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteRiskSyscallWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteRiskSyscallWhiteListsResponse`
        def DeleteRiskSyscallWhiteLists(request)
          body = send_request('DeleteRiskSyscallWhiteLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskSyscallWhiteListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常进程事件详细信息

        # @param request: Request instance for DescribeAbnormalProcessDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessDetailResponse`
        def DescribeAbnormalProcessDetail(request)
          body = send_request('DescribeAbnormalProcessDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常进程事件列表信息

        # @param request: Request instance for DescribeAbnormalProcessEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventsResponse`
        def DescribeAbnormalProcessEvents(request)
          body = send_request('DescribeAbnormalProcessEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常进程事件列表信息导出

        # @param request: Request instance for DescribeAbnormalProcessEventsExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventsExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventsExportResponse`
        def DescribeAbnormalProcessEventsExport(request)
          body = send_request('DescribeAbnormalProcessEventsExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessEventsExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常策略详细信息

        # @param request: Request instance for DescribeAbnormalProcessRuleDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRuleDetailResponse`
        def DescribeAbnormalProcessRuleDetail(request)
          body = send_request('DescribeAbnormalProcessRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常进程策略列表信息

        # @param request: Request instance for DescribeAbnormalProcessRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRulesResponse`
        def DescribeAbnormalProcessRules(request)
          body = send_request('DescribeAbnormalProcessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时异常进程策略列表信息导出

        # @param request: Request instance for DescribeAbnormalProcessRulesExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRulesExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessRulesExportResponse`
        def DescribeAbnormalProcessRulesExport(request)
          body = send_request('DescribeAbnormalProcessRulesExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessRulesExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时访问控制事件的详细信息

        # @param request: Request instance for DescribeAccessControlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlDetailResponse`
        def DescribeAccessControlDetail(request)
          body = send_request('DescribeAccessControlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时访问控制事件列表

        # @param request: Request instance for DescribeAccessControlEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlEventsResponse`
        def DescribeAccessControlEvents(request)
          body = send_request('DescribeAccessControlEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时访问控制事件列表导出

        # @param request: Request instance for DescribeAccessControlEventsExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlEventsExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlEventsExportResponse`
        def DescribeAccessControlEventsExport(request)
          body = send_request('DescribeAccessControlEventsExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlEventsExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时访问控制策略详细信息

        # @param request: Request instance for DescribeAccessControlRuleDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRuleDetailResponse`
        def DescribeAccessControlRuleDetail(request)
          body = send_request('DescribeAccessControlRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行访问控制策略列表信息

        # @param request: Request instance for DescribeAccessControlRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRulesResponse`
        def DescribeAccessControlRules(request)
          body = send_request('DescribeAccessControlRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时访问控制策略列表导出

        # @param request: Request instance for DescribeAccessControlRulesExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRulesExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAccessControlRulesExportResponse`
        def DescribeAccessControlRulesExport(request)
          body = send_request('DescribeAccessControlRulesExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessControlRulesExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取受影响的集群数量，返回数量

        # @param request: Request instance for DescribeAffectedClusterCount.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedClusterCountRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedClusterCountResponse`
        def DescribeAffectedClusterCount(request)
          body = send_request('DescribeAffectedClusterCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAffectedClusterCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询节点类型的影响范围，返回节点列表

        # @param request: Request instance for DescribeAffectedNodeList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedNodeListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedNodeListResponse`
        def DescribeAffectedNodeList(request)
          body = send_request('DescribeAffectedNodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAffectedNodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询workload类型的影响范围，返回workload列表

        # @param request: Request instance for DescribeAffectedWorkloadList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedWorkloadListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAffectedWorkloadListResponse`
        def DescribeAffectedWorkloadList(request)
          body = send_request('DescribeAffectedWorkloadList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAffectedWorkloadListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询app服务列表

        # @param request: Request instance for DescribeAssetAppServiceList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetAppServiceListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetAppServiceListResponse`
        def DescribeAssetAppServiceList(request)
          body = send_request('DescribeAssetAppServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetAppServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询容器组件列表

        # @param request: Request instance for DescribeAssetComponentList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetComponentListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetComponentListResponse`
        def DescribeAssetComponentList(request)
          body = send_request('DescribeAssetComponentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetComponentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器详细信息

        # @param request: Request instance for DescribeAssetContainerDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetContainerDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetContainerDetailResponse`
        def DescribeAssetContainerDetail(request)
          body = send_request('DescribeAssetContainerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetContainerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 搜索查询容器列表

        # @param request: Request instance for DescribeAssetContainerList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetContainerListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetContainerListResponse`
        def DescribeAssetContainerList(request)
          body = send_request('DescribeAssetContainerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetContainerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询db服务列表

        # @param request: Request instance for DescribeAssetDBServiceList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetDBServiceListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetDBServiceListResponse`
        def DescribeAssetDBServiceList(request)
          body = send_request('DescribeAssetDBServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDBServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机详细信息

        # @param request: Request instance for DescribeAssetHostDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetHostDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetHostDetailResponse`
        def DescribeAssetHostDetail(request)
          body = send_request('DescribeAssetHostDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetHostDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询主机列表

        # @param request: Request instance for DescribeAssetHostList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetHostListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetHostListResponse`
        def DescribeAssetHostList(request)
          body = send_request('DescribeAssetHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像绑定规则列表信息，包含运行时访问控制和异常进程公用

        # @param request: Request instance for DescribeAssetImageBindRuleInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageBindRuleInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageBindRuleInfoResponse`
        def DescribeAssetImageBindRuleInfo(request)
          body = send_request('DescribeAssetImageBindRuleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageBindRuleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像详细信息

        # @param request: Request instance for DescribeAssetImageDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageDetailResponse`
        def DescribeAssetImageDetail(request)
          body = send_request('DescribeAssetImageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询镜像关联主机

        # @param request: Request instance for DescribeAssetImageHostList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageHostListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageHostListResponse`
        def DescribeAssetImageHostList(request)
          body = send_request('DescribeAssetImageHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像列表

        # @param request: Request instance for DescribeAssetImageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageListResponse`
        def DescribeAssetImageList(request)
          body = send_request('DescribeAssetImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像列表导出

        # @param request: Request instance for DescribeAssetImageListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageListExportResponse`
        def DescribeAssetImageListExport(request)
          body = send_request('DescribeAssetImageListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看镜像仓库资产更新进度状态

        # @param request: Request instance for DescribeAssetImageRegistryAssetStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryAssetStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryAssetStatusResponse`
        def DescribeAssetImageRegistryAssetStatus(request)
          body = send_request('DescribeAssetImageRegistryAssetStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryAssetStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库镜像仓库列表详情

        # @param request: Request instance for DescribeAssetImageRegistryDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryDetailResponse`
        def DescribeAssetImageRegistryDetail(request)
          body = send_request('DescribeAssetImageRegistryDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库镜像仓库列表

        # @param request: Request instance for DescribeAssetImageRegistryList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryListResponse`
        def DescribeAssetImageRegistryList(request)
          body = send_request('DescribeAssetImageRegistryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库镜像列表导出

        # @param request: Request instance for DescribeAssetImageRegistryListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryListExportResponse`
        def DescribeAssetImageRegistryListExport(request)
          body = send_request('DescribeAssetImageRegistryListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看单个镜像仓库详细信息

        # @param request: Request instance for DescribeAssetImageRegistryRegistryDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRegistryDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRegistryDetailResponse`
        def DescribeAssetImageRegistryRegistryDetail(request)
          body = send_request('DescribeAssetImageRegistryRegistryDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryRegistryDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库仓库列表

        # @param request: Request instance for DescribeAssetImageRegistryRegistryList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRegistryListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRegistryListResponse`
        def DescribeAssetImageRegistryRegistryList(request)
          body = send_request('DescribeAssetImageRegistryRegistryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryRegistryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查询镜像高危行为列表

        # @param request: Request instance for DescribeAssetImageRegistryRiskInfoList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRiskInfoListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRiskInfoListResponse`
        def DescribeAssetImageRegistryRiskInfoList(request)
          body = send_request('DescribeAssetImageRegistryRiskInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryRiskInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库敏感信息列表导出

        # @param request: Request instance for DescribeAssetImageRegistryRiskListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRiskListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryRiskListExportResponse`
        def DescribeAssetImageRegistryRiskListExport(request)
          body = send_request('DescribeAssetImageRegistryRiskListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryRiskListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查询一键镜像扫描状态

        # @param request: Request instance for DescribeAssetImageRegistryScanStatusOneKey.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryScanStatusOneKeyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryScanStatusOneKeyResponse`
        def DescribeAssetImageRegistryScanStatusOneKey(request)
          body = send_request('DescribeAssetImageRegistryScanStatusOneKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryScanStatusOneKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查询镜像统计信息

        # @param request: Request instance for DescribeAssetImageRegistrySummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistrySummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistrySummaryResponse`
        def DescribeAssetImageRegistrySummary(request)
          body = send_request('DescribeAssetImageRegistrySummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistrySummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查询木马病毒列表

        # @param request: Request instance for DescribeAssetImageRegistryVirusList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVirusListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVirusListResponse`
        def DescribeAssetImageRegistryVirusList(request)
          body = send_request('DescribeAssetImageRegistryVirusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryVirusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库木马信息列表导出

        # @param request: Request instance for DescribeAssetImageRegistryVirusListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVirusListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVirusListExportResponse`
        def DescribeAssetImageRegistryVirusListExport(request)
          body = send_request('DescribeAssetImageRegistryVirusListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryVirusListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查询镜像漏洞列表

        # @param request: Request instance for DescribeAssetImageRegistryVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVulListResponse`
        def DescribeAssetImageRegistryVulList(request)
          body = send_request('DescribeAssetImageRegistryVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库漏洞列表导出

        # @param request: Request instance for DescribeAssetImageRegistryVulListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVulListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRegistryVulListExportResponse`
        def DescribeAssetImageRegistryVulListExport(request)
          body = send_request('DescribeAssetImageRegistryVulListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRegistryVulListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询镜像风险列表

        # @param request: Request instance for DescribeAssetImageRiskList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRiskListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRiskListResponse`
        def DescribeAssetImageRiskList(request)
          body = send_request('DescribeAssetImageRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像风险列表导出

        # @param request: Request instance for DescribeAssetImageRiskListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRiskListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageRiskListExportResponse`
        def DescribeAssetImageRiskListExport(request)
          body = send_request('DescribeAssetImageRiskListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageRiskListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取镜像扫描设置信息

        # @param request: Request instance for DescribeAssetImageScanSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanSettingResponse`
        def DescribeAssetImageScanSetting(request)
          body = send_request('DescribeAssetImageScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageScanSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询镜像扫描状态

        # @param request: Request instance for DescribeAssetImageScanStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanStatusResponse`
        def DescribeAssetImageScanStatus(request)
          body = send_request('DescribeAssetImageScanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageScanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询正在一键扫描的镜像扫描taskid

        # @param request: Request instance for DescribeAssetImageScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageScanTaskResponse`
        def DescribeAssetImageScanTask(request)
          body = send_request('DescribeAssetImageScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像简略信息列表

        # @param request: Request instance for DescribeAssetImageSimpleList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageSimpleListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageSimpleListResponse`
        def DescribeAssetImageSimpleList(request)
          body = send_request('DescribeAssetImageSimpleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageSimpleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询镜像病毒列表

        # @param request: Request instance for DescribeAssetImageVirusList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVirusListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVirusListResponse`
        def DescribeAssetImageVirusList(request)
          body = send_request('DescribeAssetImageVirusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageVirusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像木马列表导出

        # @param request: Request instance for DescribeAssetImageVirusListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVirusListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVirusListExportResponse`
        def DescribeAssetImageVirusListExport(request)
          body = send_request('DescribeAssetImageVirusListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageVirusListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询镜像漏洞列表

        # @param request: Request instance for DescribeAssetImageVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVulListResponse`
        def DescribeAssetImageVulList(request)
          body = send_request('DescribeAssetImageVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询镜像漏洞列表导出

        # @param request: Request instance for DescribeAssetImageVulListExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVulListExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetImageVulListExportResponse`
        def DescribeAssetImageVulListExport(request)
          body = send_request('DescribeAssetImageVulListExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetImageVulListExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询端口占用列表

        # @param request: Request instance for DescribeAssetPortList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetPortListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetPortListResponse`
        def DescribeAssetPortList(request)
          body = send_request('DescribeAssetPortList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetPortListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全搜索查询进程列表

        # @param request: Request instance for DescribeAssetProcessList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetProcessListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetProcessListResponse`
        def DescribeAssetProcessList(request)
          body = send_request('DescribeAssetProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账户容器、镜像等统计信息

        # @param request: Request instance for DescribeAssetSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetSummaryResponse`
        def DescribeAssetSummary(request)
          body = send_request('DescribeAssetSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全查询web服务列表

        # @param request: Request instance for DescribeAssetWebServiceList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetWebServiceListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetWebServiceListResponse`
        def DescribeAssetWebServiceList(request)
          body = send_request('DescribeAssetWebServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询所有检查项接口，返回总数和检查项列表

        # @param request: Request instance for DescribeCheckItemList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeCheckItemListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeCheckItemListResponse`
        def DescribeCheckItemList(request)
          body = send_request('DescribeCheckItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个集群的详细信息

        # @param request: Request instance for DescribeClusterDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeClusterDetailResponse`
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

        # 查询用户集群资产总览

        # @param request: Request instance for DescribeClusterSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeClusterSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeClusterSummaryResponse`
        def DescribeClusterSummary(request)
          body = send_request('DescribeClusterSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个资产的详情

        # @param request: Request instance for DescribeComplianceAssetDetailInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetDetailInfoResponse`
        def DescribeComplianceAssetDetailInfo(request)
          body = send_request('DescribeComplianceAssetDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceAssetDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某类资产的列表

        # @param request: Request instance for DescribeComplianceAssetList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetListResponse`
        def DescribeComplianceAssetList(request)
          body = send_request('DescribeComplianceAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某资产下的检测项列表

        # @param request: Request instance for DescribeComplianceAssetPolicyItemList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetPolicyItemListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceAssetPolicyItemListResponse`
        def DescribeComplianceAssetPolicyItemList(request)
          body = send_request('DescribeComplianceAssetPolicyItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceAssetPolicyItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询合规检测的定时任务列表

        # @param request: Request instance for DescribeCompliancePeriodTaskList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePeriodTaskListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePeriodTaskListResponse`
        def DescribeCompliancePeriodTaskList(request)
          body = send_request('DescribeCompliancePeriodTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompliancePeriodTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照 检测项 → 资产 的两级层次展开的第二层级：资产层级。

        # @param request: Request instance for DescribeCompliancePolicyItemAffectedAssetList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePolicyItemAffectedAssetListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePolicyItemAffectedAssetListResponse`
        def DescribeCompliancePolicyItemAffectedAssetList(request)
          body = send_request('DescribeCompliancePolicyItemAffectedAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompliancePolicyItemAffectedAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照 检测项 → 资产 的两级层次展开的第一层级：检测项层级。

        # @param request: Request instance for DescribeCompliancePolicyItemAffectedSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePolicyItemAffectedSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeCompliancePolicyItemAffectedSummaryResponse`
        def DescribeCompliancePolicyItemAffectedSummary(request)
          body = send_request('DescribeCompliancePolicyItemAffectedSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompliancePolicyItemAffectedSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。

        # @param request: Request instance for DescribeComplianceScanFailedAssetList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceScanFailedAssetListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceScanFailedAssetListResponse`
        def DescribeComplianceScanFailedAssetList(request)
          body = send_request('DescribeComplianceScanFailedAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceScanFailedAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询上次任务的资产通过率汇总信息

        # @param request: Request instance for DescribeComplianceTaskAssetSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceTaskAssetSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceTaskAssetSummaryResponse`
        def DescribeComplianceTaskAssetSummary(request)
          body = send_request('DescribeComplianceTaskAssetSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceTaskAssetSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最近一次任务发现的检测项的汇总信息列表，按照 检测项 → 资产 的两级层次展开。

        # @param request: Request instance for DescribeComplianceTaskPolicyItemSummaryList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceTaskPolicyItemSummaryListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceTaskPolicyItemSummaryListResponse`
        def DescribeComplianceTaskPolicyItemSummaryList(request)
          body = send_request('DescribeComplianceTaskPolicyItemSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceTaskPolicyItemSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询白名单列表

        # @param request: Request instance for DescribeComplianceWhitelistItemList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceWhitelistItemListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeComplianceWhitelistItemListResponse`
        def DescribeComplianceWhitelistItemList(request)
          body = send_request('DescribeComplianceWhitelistItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceWhitelistItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器资产概览信息

        # @param request: Request instance for DescribeContainerAssetSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeContainerAssetSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeContainerAssetSummaryResponse`
        def DescribeContainerAssetSummary(request)
          body = send_request('DescribeContainerAssetSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerAssetSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器安全未处理事件信息

        # @param request: Request instance for DescribeContainerSecEventSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeContainerSecEventSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeContainerSecEventSummaryResponse`
        def DescribeContainerSecEventSummary(request)
          body = send_request('DescribeContainerSecEventSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContainerSecEventSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEscapeEventDetail  查询容器逃逸事件详情

        # @param request: Request instance for DescribeEscapeEventDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventDetailResponse`
        def DescribeEscapeEventDetail(request)
          body = send_request('DescribeEscapeEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeEventDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEscapeEventInfo 查询容器逃逸事件列表

        # @param request: Request instance for DescribeEscapeEventInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventInfoResponse`
        def DescribeEscapeEventInfo(request)
          body = send_request('DescribeEscapeEventInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeEventInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEscapeEventsExport  查询容器逃逸事件列表导出

        # @param request: Request instance for DescribeEscapeEventsExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventsExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventsExportResponse`
        def DescribeEscapeEventsExport(request)
          body = send_request('DescribeEscapeEventsExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeEventsExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEscapeRuleInfo 查询容器逃逸扫描规则信息

        # @param request: Request instance for DescribeEscapeRuleInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeRuleInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeRuleInfoResponse`
        def DescribeEscapeRuleInfo(request)
          body = send_request('DescribeEscapeRuleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeRuleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEscapeSafeState 查询容器逃逸安全状态

        # @param request: Request instance for DescribeEscapeSafeState.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeSafeStateRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeSafeStateResponse`
        def DescribeEscapeSafeState(request)
          body = send_request('DescribeEscapeSafeState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeSafeStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询导出任务的结果

        # @param request: Request instance for DescribeExportJobResult.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobResultRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobResultResponse`
        def DescribeExportJobResult(request)
          body = send_request('DescribeExportJobResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportJobResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeImageAuthorizedInfo  查询镜像授权信息

        # @param request: Request instance for DescribeImageAuthorizedInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageAuthorizedInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageAuthorizedInfoResponse`
        def DescribeImageAuthorizedInfo(request)
          body = send_request('DescribeImageAuthorizedInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAuthorizedInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库查看定时任务

        # @param request: Request instance for DescribeImageRegistryTimingScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageRegistryTimingScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageRegistryTimingScanTaskResponse`
        def DescribeImageRegistryTimingScanTask(request)
          body = send_request('DescribeImageRegistryTimingScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryTimingScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本地镜像风险概览

        # @param request: Request instance for DescribeImageRiskSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageRiskSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageRiskSummaryResponse`
        def DescribeImageRiskSummary(request)
          body = send_request('DescribeImageRiskSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRiskSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器安全本地镜像风险趋势

        # @param request: Request instance for DescribeImageRiskTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageRiskTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageRiskTendencyResponse`
        def DescribeImageRiskTendency(request)
          body = send_request('DescribeImageRiskTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRiskTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeImageSimpleList 查询全部镜像列表

        # @param request: Request instance for DescribeImageSimpleList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageSimpleListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageSimpleListResponse`
        def DescribeImageSimpleList(request)
          body = send_request('DescribeImageSimpleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageSimpleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePostPayDetail  查询后付费详情

        # @param request: Request instance for DescribePostPayDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribePostPayDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribePostPayDetailResponse`
        def DescribePostPayDetail(request)
          body = send_request('DescribePostPayDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostPayDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeProVersionInfo  查询专业版需购买信息

        # @param request: Request instance for DescribeProVersionInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeProVersionInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeProVersionInfoResponse`
        def DescribeProVersionInfo(request)
          body = send_request('DescribeProVersionInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProVersionInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePurchaseStateInfo 查询容器安全服务已购买信息

        # @param request: Request instance for DescribePurchaseStateInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribePurchaseStateInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribePurchaseStateInfoResponse`
        def DescribePurchaseStateInfo(request)
          body = send_request('DescribePurchaseStateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurchaseStateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询刷新任务

        # @param request: Request instance for DescribeRefreshTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRefreshTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRefreshTaskResponse`
        def DescribeRefreshTask(request)
          body = send_request('DescribeRefreshTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRefreshTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时反弹shell事件详细信息

        # @param request: Request instance for DescribeReverseShellDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellDetailResponse`
        def DescribeReverseShellDetail(request)
          body = send_request('DescribeReverseShellDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时反弹shell事件列表信息

        # @param request: Request instance for DescribeReverseShellEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellEventsResponse`
        def DescribeReverseShellEvents(request)
          body = send_request('DescribeReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时反弹shell事件列表信息导出

        # @param request: Request instance for DescribeReverseShellEventsExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellEventsExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellEventsExportResponse`
        def DescribeReverseShellEventsExport(request)
          body = send_request('DescribeReverseShellEventsExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellEventsExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时反弹shell白名单详细信息

        # @param request: Request instance for DescribeReverseShellWhiteListDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellWhiteListDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellWhiteListDetailResponse`
        def DescribeReverseShellWhiteListDetail(request)
          body = send_request('DescribeReverseShellWhiteListDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellWhiteListDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时运行时反弹shell白名单列表信息

        # @param request: Request instance for DescribeReverseShellWhiteLists.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeReverseShellWhiteListsResponse`
        def DescribeReverseShellWhiteLists(request)
          body = send_request('DescribeReverseShellWhiteLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellWhiteListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最近一次任务发现的风险项的信息列表，支持根据特殊字段进行过滤

        # @param request: Request instance for DescribeRiskList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskListResponse`
        def DescribeRiskList(request)
          body = send_request('DescribeRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询高危系统调用事件详细信息

        # @param request: Request instance for DescribeRiskSyscallDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallDetailResponse`
        def DescribeRiskSyscallDetail(request)
          body = send_request('DescribeRiskSyscallDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时运行时高危系统调用列表信息

        # @param request: Request instance for DescribeRiskSyscallEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallEventsResponse`
        def DescribeRiskSyscallEvents(request)
          body = send_request('DescribeRiskSyscallEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时高危系统调用列表导出

        # @param request: Request instance for DescribeRiskSyscallEventsExport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallEventsExportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallEventsExportResponse`
        def DescribeRiskSyscallEventsExport(request)
          body = send_request('DescribeRiskSyscallEventsExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallEventsExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时高危系统调用系统名称列表

        # @param request: Request instance for DescribeRiskSyscallNames.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallNamesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallNamesResponse`
        def DescribeRiskSyscallNames(request)
          body = send_request('DescribeRiskSyscallNames', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallNamesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时高危系统调用白名单详细信息

        # @param request: Request instance for DescribeRiskSyscallWhiteListDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallWhiteListDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallWhiteListDetailResponse`
        def DescribeRiskSyscallWhiteListDetail(request)
          body = send_request('DescribeRiskSyscallWhiteListDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallWhiteListDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时高危系统调用白名单列表信息

        # @param request: Request instance for DescribeRiskSyscallWhiteLists.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeRiskSyscallWhiteListsResponse`
        def DescribeRiskSyscallWhiteLists(request)
          body = send_request('DescribeRiskSyscallWhiteLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskSyscallWhiteListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器运行时安全事件趋势

        # @param request: Request instance for DescribeSecEventsTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecEventsTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecEventsTendencyResponse`
        def DescribeSecEventsTendency(request)
          body = send_request('DescribeSecEventsTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecEventsTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询检查结果总览，返回受影响的节点数量，返回7天的数据，总共7个

        # @param request: Request instance for DescribeTaskResultSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeTaskResultSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeTaskResultSummaryResponse`
        def DescribeTaskResultSummary(request)
          body = send_request('DescribeTaskResultSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResultSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询未完成的刷新资产任务信息

        # @param request: Request instance for DescribeUnfinishRefreshTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeUnfinishRefreshTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeUnfinishRefreshTaskResponse`
        def DescribeUnfinishRefreshTask(request)
          body = send_request('DescribeUnfinishRefreshTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnfinishRefreshTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全概览和集群安全页进入调用该接口，查询用户集群相关信息。

        # @param request: Request instance for DescribeUserCluster.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeUserClusterRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeUserClusterResponse`
        def DescribeUserCluster(request)
          body = send_request('DescribeUserCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeValueAddedSrvInfo查询增值服务需购买信息

        # @param request: Request instance for DescribeValueAddedSrvInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeValueAddedSrvInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeValueAddedSrvInfoResponse`
        def DescribeValueAddedSrvInfo(request)
          body = send_request('DescribeValueAddedSrvInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeValueAddedSrvInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询木马文件信息

        # @param request: Request instance for DescribeVirusDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusDetailResponse`
        def DescribeVirusDetail(request)
          body = send_request('DescribeVirusDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件查杀事件列表

        # @param request: Request instance for DescribeVirusList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusListResponse`
        def DescribeVirusList(request)
          body = send_request('DescribeVirusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询文件查杀实时监控设置

        # @param request: Request instance for DescribeVirusMonitorSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusMonitorSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusMonitorSettingResponse`
        def DescribeVirusMonitorSetting(request)
          body = send_request('DescribeVirusMonitorSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusMonitorSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询文件查杀设置

        # @param request: Request instance for DescribeVirusScanSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanSettingResponse`
        def DescribeVirusScanSetting(request)
          body = send_request('DescribeVirusScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusScanSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询文件查杀任务状态

        # @param request: Request instance for DescribeVirusScanTaskStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanTaskStatusResponse`
        def DescribeVirusScanTaskStatus(request)
          body = send_request('DescribeVirusScanTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusScanTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件扫描超时设置查询

        # @param request: Request instance for DescribeVirusScanTimeoutSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanTimeoutSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusScanTimeoutSettingResponse`
        def DescribeVirusScanTimeoutSetting(request)
          body = send_request('DescribeVirusScanTimeoutSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusScanTimeoutSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询木马概览信息

        # @param request: Request instance for DescribeVirusSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusSummaryResponse`
        def DescribeVirusSummary(request)
          body = send_request('DescribeVirusSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时查询文件查杀任务列表

        # @param request: Request instance for DescribeVirusTaskList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusTaskListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusTaskListResponse`
        def DescribeVirusTaskList(request)
          body = send_request('DescribeVirusTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警策略列表

        # @param request: Request instance for DescribeWarningRules.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeWarningRulesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeWarningRulesResponse`
        def DescribeWarningRules(request)
          body = send_request('DescribeWarningRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarningRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件查杀事件列表导出

        # @param request: Request instance for ExportVirusList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ExportVirusListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ExportVirusListResponse`
        def ExportVirusList(request)
          body = send_request('ExportVirusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVirusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为客户初始化合规基线的使用环境，创建必要的数据和选项。

        # @param request: Request instance for InitializeUserComplianceEnvironment.
        # @type request: :class:`Tencentcloud::tcss::V20201101::InitializeUserComplianceEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::InitializeUserComplianceEnvironmentResponse`
        def InitializeUserComplianceEnvironment(request)
          body = send_request('InitializeUserComplianceEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitializeUserComplianceEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改运行时异常进程策略的开启关闭状态

        # @param request: Request instance for ModifyAbnormalProcessRuleStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAbnormalProcessRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAbnormalProcessRuleStatusResponse`
        def ModifyAbnormalProcessRuleStatus(request)
          body = send_request('ModifyAbnormalProcessRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAbnormalProcessRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改异常进程事件的状态信息

        # @param request: Request instance for ModifyAbnormalProcessStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAbnormalProcessStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAbnormalProcessStatusResponse`
        def ModifyAbnormalProcessStatus(request)
          body = send_request('ModifyAbnormalProcessStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAbnormalProcessStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改运行时访问控制策略的状态，启用或者禁用

        # @param request: Request instance for ModifyAccessControlRuleStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAccessControlRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAccessControlRuleStatusResponse`
        def ModifyAccessControlRuleStatus(request)
          body = send_request('ModifyAccessControlRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessControlRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改运行时访问控制事件状态信息

        # @param request: Request instance for ModifyAccessControlStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAccessControlStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAccessControlStatusResponse`
        def ModifyAccessControlStatus(request)
          body = send_request('ModifyAccessControlStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessControlStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全主机资产刷新

        # @param request: Request instance for ModifyAsset.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAssetRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAssetResponse`
        def ModifyAsset(request)
          body = send_request('ModifyAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库停止镜像扫描任务

        # @param request: Request instance for ModifyAssetImageRegistryScanStop.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageRegistryScanStopRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageRegistryScanStopResponse`
        def ModifyAssetImageRegistryScanStop(request)
          body = send_request('ModifyAssetImageRegistryScanStop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetImageRegistryScanStopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库停止镜像一键扫描任务

        # @param request: Request instance for ModifyAssetImageRegistryScanStopOneKey.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageRegistryScanStopOneKeyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageRegistryScanStopOneKeyResponse`
        def ModifyAssetImageRegistryScanStopOneKey(request)
          body = send_request('ModifyAssetImageRegistryScanStopOneKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetImageRegistryScanStopOneKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器安全停止镜像扫描

        # @param request: Request instance for ModifyAssetImageScanStop.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageScanStopRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyAssetImageScanStopResponse`
        def ModifyAssetImageScanStop(request)
          body = send_request('ModifyAssetImageScanStop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetImageScanStopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改定时任务的设置，包括检测周期、开启/禁用合规基准。

        # @param request: Request instance for ModifyCompliancePeriodTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyCompliancePeriodTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyCompliancePeriodTaskResponse`
        def ModifyCompliancePeriodTask(request)
          body = send_request('ModifyCompliancePeriodTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCompliancePeriodTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyEscapeEventStatus  修改容器逃逸扫描事件状态

        # @param request: Request instance for ModifyEscapeEventStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeEventStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeEventStatusResponse`
        def ModifyEscapeEventStatus(request)
          body = send_request('ModifyEscapeEventStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEscapeEventStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyEscapeRule  修改容器逃逸扫描规则信息

        # @param request: Request instance for ModifyEscapeRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeRuleResponse`
        def ModifyEscapeRule(request)
          body = send_request('ModifyEscapeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEscapeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改反弹shell事件的状态信息

        # @param request: Request instance for ModifyReverseShellStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyReverseShellStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyReverseShellStatusResponse`
        def ModifyReverseShellStatus(request)
          body = send_request('ModifyReverseShellStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReverseShellStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改高危系统调用事件的状态信息

        # @param request: Request instance for ModifyRiskSyscallStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyRiskSyscallStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyRiskSyscallStatusResponse`
        def ModifyRiskSyscallStatus(request)
          body = send_request('ModifyRiskSyscallStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskSyscallStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时更新木马文件事件状态

        # @param request: Request instance for ModifyVirusFileStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusFileStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusFileStatusResponse`
        def ModifyVirusFileStatus(request)
          body = send_request('ModifyVirusFileStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusFileStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时更新文件查杀实时监控设置

        # @param request: Request instance for ModifyVirusMonitorSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusMonitorSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusMonitorSettingResponse`
        def ModifyVirusMonitorSetting(request)
          body = send_request('ModifyVirusMonitorSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusMonitorSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时更新文件查杀设置

        # @param request: Request instance for ModifyVirusScanSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusScanSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusScanSettingResponse`
        def ModifyVirusScanSetting(request)
          body = send_request('ModifyVirusScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusScanSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时文件扫描超时设置

        # @param request: Request instance for ModifyVirusScanTimeoutSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusScanTimeoutSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusScanTimeoutSettingResponse`
        def ModifyVirusScanTimeoutSetting(request)
          body = send_request('ModifyVirusScanTimeoutSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusScanTimeoutSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除单个镜像仓库详细信息

        # @param request: Request instance for RemoveAssetImageRegistryRegistryDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::RemoveAssetImageRegistryRegistryDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::RemoveAssetImageRegistryRegistryDetailResponse`
        def RemoveAssetImageRegistryRegistryDetail(request)
          body = send_request('RemoveAssetImageRegistryRegistryDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveAssetImageRegistryRegistryDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RenewImageAuthorizeState   授权镜像扫描

        # @param request: Request instance for RenewImageAuthorizeState.
        # @type request: :class:`Tencentcloud::tcss::V20201101::RenewImageAuthorizeStateRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::RenewImageAuthorizeStateResponse`
        def RenewImageAuthorizeState(request)
          body = send_request('RenewImageAuthorizeState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewImageAuthorizeStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新检测选定的资产

        # @param request: Request instance for ScanComplianceAssets.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ScanComplianceAssetsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ScanComplianceAssetsResponse`
        def ScanComplianceAssets(request)
          body = send_request('ScanComplianceAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanComplianceAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用指定的检测项重新检测选定的资产，返回创建的合规检查任务的ID。

        # @param request: Request instance for ScanComplianceAssetsByPolicyItem.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ScanComplianceAssetsByPolicyItemRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ScanComplianceAssetsByPolicyItemResponse`
        def ScanComplianceAssetsByPolicyItem(request)
          body = send_request('ScanComplianceAssetsByPolicyItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanComplianceAssetsByPolicyItemResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新检测选的检测项下的所有资产，返回创建的合规检查任务的ID。

        # @param request: Request instance for ScanCompliancePolicyItems.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ScanCompliancePolicyItemsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ScanCompliancePolicyItemsResponse`
        def ScanCompliancePolicyItems(request)
          body = send_request('ScanCompliancePolicyItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanCompliancePolicyItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新检测选定的检测失败的资产下的所有失败的检测项，返回创建的合规检查任务的ID。

        # @param request: Request instance for ScanComplianceScanFailedAssets.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ScanComplianceScanFailedAssetsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ScanComplianceScanFailedAssetsResponse`
        def ScanComplianceScanFailedAssets(request)
          body = send_request('ScanComplianceScanFailedAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanComplianceScanFailedAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置检测模式和自动检查

        # @param request: Request instance for SetCheckMode.
        # @type request: :class:`Tencentcloud::tcss::V20201101::SetCheckModeRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::SetCheckModeResponse`
        def SetCheckMode(request)
          body = send_request('SetCheckMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetCheckModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 运行时停止木马查杀任务

        # @param request: Request instance for StopVirusScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::StopVirusScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::StopVirusScanTaskResponse`
        def StopVirusScanTask(request)
          body = send_request('StopVirusScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopVirusScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库资产刷新

        # @param request: Request instance for SyncAssetImageRegistryAsset.
        # @type request: :class:`Tencentcloud::tcss::V20201101::SyncAssetImageRegistryAssetRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::SyncAssetImageRegistryAssetResponse`
        def SyncAssetImageRegistryAsset(request)
          body = send_request('SyncAssetImageRegistryAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncAssetImageRegistryAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新单个镜像仓库详细信息

        # @param request: Request instance for UpdateAssetImageRegistryRegistryDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateAssetImageRegistryRegistryDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateAssetImageRegistryRegistryDetailResponse`
        def UpdateAssetImageRegistryRegistryDetail(request)
          body = send_request('UpdateAssetImageRegistryRegistryDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAssetImageRegistryRegistryDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库更新定时任务

        # @param request: Request instance for UpdateImageRegistryTimingScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateImageRegistryTimingScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateImageRegistryTimingScanTaskResponse`
        def UpdateImageRegistryTimingScanTask(request)
          body = send_request('UpdateImageRegistryTimingScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateImageRegistryTimingScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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