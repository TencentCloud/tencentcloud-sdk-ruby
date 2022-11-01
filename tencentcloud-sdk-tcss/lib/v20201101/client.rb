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


        # 容器网络创建网络策略添加并发布任务

        # @param request: Request instance for AddAndPublishNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddAndPublishNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddAndPublishNetworkFirewallPolicyDetailResponse`
        def AddAndPublishNetworkFirewallPolicyDetail(request)
          body = send_request('AddAndPublishNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAndPublishNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建Yaml网络策略并发布任务

        # @param request: Request instance for AddAndPublishNetworkFirewallPolicyYamlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddAndPublishNetworkFirewallPolicyYamlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddAndPublishNetworkFirewallPolicyYamlDetailResponse`
        def AddAndPublishNetworkFirewallPolicyYamlDetail(request)
          body = send_request('AddAndPublishNetworkFirewallPolicyYamlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAndPublishNetworkFirewallPolicyYamlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
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

        # 新增安全合规忽略(资产+检测项列表)列表，不显示指定的检查项包含的资产内容
        # 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对

        # @param request: Request instance for AddComplianceAssetPolicySetToWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddComplianceAssetPolicySetToWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddComplianceAssetPolicySetToWhitelistResponse`
        def AddComplianceAssetPolicySetToWhitelist(request)
          body = send_request('AddComplianceAssetPolicySetToWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddComplianceAssetPolicySetToWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容
        # 参考的AddCompliancePolicyItemToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对

        # @param request: Request instance for AddCompliancePolicyAssetSetToWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddCompliancePolicyAssetSetToWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddCompliancePolicyAssetSetToWhitelistResponse`
        def AddCompliancePolicyAssetSetToWhitelist(request)
          body = send_request('AddCompliancePolicyAssetSetToWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCompliancePolicyAssetSetToWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 新增或编辑本地镜像自动授权规则

        # @param request: Request instance for AddEditImageAutoAuthorizedRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEditImageAutoAuthorizedRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEditImageAutoAuthorizedRuleResponse`
        def AddEditImageAutoAuthorizedRule(request)
          body = send_request('AddEditImageAutoAuthorizedRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEditImageAutoAuthorizedRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 新增逃逸白名单

        # @param request: Request instance for AddEscapeWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddEscapeWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddEscapeWhiteListResponse`
        def AddEscapeWhiteList(request)
          body = send_request('AddEscapeWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEscapeWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增漏洞扫描忽略漏洞

        # @param request: Request instance for AddIgnoreVul.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddIgnoreVulRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddIgnoreVulResponse`
        def AddIgnoreVul(request)
          body = send_request('AddIgnoreVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddIgnoreVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建网络策略添加任务

        # @param request: Request instance for AddNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddNetworkFirewallPolicyDetailResponse`
        def AddNetworkFirewallPolicyDetail(request)
          body = send_request('AddNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建Yaml网络策略添加任务

        # @param request: Request instance for AddNetworkFirewallPolicyYamlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::AddNetworkFirewallPolicyYamlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::AddNetworkFirewallPolicyYamlDetailResponse`
        def AddNetworkFirewallPolicyYamlDetail(request)
          body = send_request('AddNetworkFirewallPolicyYamlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNetworkFirewallPolicyYamlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建检查Yaml网络策略任务

        # @param request: Request instance for CheckNetworkFirewallPolicyYaml.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CheckNetworkFirewallPolicyYamlRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CheckNetworkFirewallPolicyYamlResponse`
        def CheckNetworkFirewallPolicyYaml(request)
          body = send_request('CheckNetworkFirewallPolicyYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckNetworkFirewallPolicyYamlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 容器网络创建网络策略确认任务

        # @param request: Request instance for ConfirmNetworkFirewallPolicy.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ConfirmNetworkFirewallPolicyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ConfirmNetworkFirewallPolicyResponse`
        def ConfirmNetworkFirewallPolicy(request)
          body = send_request('ConfirmNetworkFirewallPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmNetworkFirewallPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建本地镜像木马列表导出任务

        # @param request: Request instance for CreateAssetImageVirusExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageVirusExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateAssetImageVirusExportJobResponse`
        def CreateAssetImageVirusExportJob(request)
          body = send_request('CreateAssetImageVirusExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetImageVirusExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询本地镜像组件列表导出

        # @param request: Request instance for CreateComponentExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateComponentExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateComponentExportJobResponse`
        def CreateComponentExportJob(request)
          body = send_request('CreateComponentExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateComponentExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建支持防御的漏洞导出任务

        # @param request: Request instance for CreateDefenceVulExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateDefenceVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateDefenceVulExportJobResponse`
        def CreateDefenceVulExportJob(request)
          body = send_request('CreateDefenceVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDefenceVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建应急漏洞导出任务

        # @param request: Request instance for CreateEmergencyVulExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateEmergencyVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateEmergencyVulExportJobResponse`
        def CreateEmergencyVulExportJob(request)
          body = send_request('CreateEmergencyVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmergencyVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建逃逸事件导出异步任务

        # @param request: Request instance for CreateEscapeEventsExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateEscapeEventsExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateEscapeEventsExportJobResponse`
        def CreateEscapeEventsExportJob(request)
          body = send_request('CreateEscapeEventsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEscapeEventsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建逃逸白名单导出任务

        # @param request: Request instance for CreateEscapeWhiteListExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateEscapeWhiteListExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateEscapeWhiteListExportJobResponse`
        def CreateEscapeWhiteListExportJob(request)
          body = send_request('CreateEscapeWhiteListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEscapeWhiteListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建主机列表导出任务

        # @param request: Request instance for CreateHostExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateHostExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateHostExportJobResponse`
        def CreateHostExportJob(request)
          body = send_request('CreateHostExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像导出任务

        # @param request: Request instance for CreateImageExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateImageExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateImageExportJobResponse`
        def CreateImageExportJob(request)
          body = send_request('CreateImageExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络集群下发刷新任务

        # @param request: Request instance for CreateNetworkFirewallClusterRefresh.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallClusterRefreshRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallClusterRefreshResponse`
        def CreateNetworkFirewallClusterRefresh(request)
          body = send_request('CreateNetworkFirewallClusterRefresh', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkFirewallClusterRefreshResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络集群网络策略创建自动发现任务

        # @param request: Request instance for CreateNetworkFirewallPolicyDiscover.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallPolicyDiscoverRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallPolicyDiscoverResponse`
        def CreateNetworkFirewallPolicyDiscover(request)
          body = send_request('CreateNetworkFirewallPolicyDiscover', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkFirewallPolicyDiscoverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建网络策略发布任务

        # @param request: Request instance for CreateNetworkFirewallPublish.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallPublishRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallPublishResponse`
        def CreateNetworkFirewallPublish(request)
          body = send_request('CreateNetworkFirewallPublish', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkFirewallPublishResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建网络策略撤销任务

        # @param request: Request instance for CreateNetworkFirewallUndoPublish.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallUndoPublishRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateNetworkFirewallUndoPublishResponse`
        def CreateNetworkFirewallUndoPublish(request)
          body = send_request('CreateNetworkFirewallUndoPublish', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkFirewallUndoPublishResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建异常进程事件导出异步任务

        # @param request: Request instance for CreateProcessEventsExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateProcessEventsExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateProcessEventsExportJobResponse`
        def CreateProcessEventsExportJob(request)
          body = send_request('CreateProcessEventsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProcessEventsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建恶意请求事件导出任务

        # @param request: Request instance for CreateRiskDnsEventExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateRiskDnsEventExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateRiskDnsEventExportJobResponse`
        def CreateRiskDnsEventExportJob(request)
          body = send_request('CreateRiskDnsEventExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRiskDnsEventExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加检索模板

        # @param request: Request instance for CreateSearchTemplate.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateSearchTemplateResponse`
        def CreateSearchTemplate(request)
          body = send_request('CreateSearchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSearchTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建系统漏洞导出任务

        # @param request: Request instance for CreateSystemVulExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateSystemVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateSystemVulExportJobResponse`
        def CreateSystemVulExportJob(request)
          body = send_request('CreateSystemVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSystemVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建受漏洞影响的容器导出任务

        # @param request: Request instance for CreateVulContainerExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulContainerExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulContainerExportJobResponse`
        def CreateVulContainerExportJob(request)
          body = send_request('CreateVulContainerExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulContainerExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞防御导出任务

        # @param request: Request instance for CreateVulDefenceEventExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulDefenceEventExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulDefenceEventExportJobResponse`
        def CreateVulDefenceEventExportJob(request)
          body = send_request('CreateVulDefenceEventExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulDefenceEventExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞防御主机导出任务

        # @param request: Request instance for CreateVulDefenceHostExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulDefenceHostExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulDefenceHostExportJobResponse`
        def CreateVulDefenceHostExportJob(request)
          body = send_request('CreateVulDefenceHostExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulDefenceHostExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本地镜像漏洞列表导出

        # @param request: Request instance for CreateVulExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulExportJobResponse`
        def CreateVulExportJob(request)
          body = send_request('CreateVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建受漏洞影响的镜像导出任务

        # @param request: Request instance for CreateVulImageExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulImageExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulImageExportJobResponse`
        def CreateVulImageExportJob(request)
          body = send_request('CreateVulImageExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulImageExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞扫描任务

        # @param request: Request instance for CreateVulScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateVulScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateVulScanTaskResponse`
        def CreateVulScanTask(request)
          body = send_request('CreateVulScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建web漏洞导出任务

        # @param request: Request instance for CreateWebVulExportJob.
        # @type request: :class:`Tencentcloud::tcss::V20201101::CreateWebVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::CreateWebVulExportJobResponse`
        def CreateWebVulExportJob(request)
          body = send_request('CreateWebVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 移除安全合规忽略(资产+检测项)列表，不显示指定的检查项包含的资产内容
        # 参考的AddCompliancePolicyAssetSetToWhitelist，除输入字段外，其它应该是一致的，如果有不同可能是定义的不对

        # @param request: Request instance for DeleteComplianceAssetPolicySetFromWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteComplianceAssetPolicySetFromWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteComplianceAssetPolicySetFromWhitelistResponse`
        def DeleteComplianceAssetPolicySetFromWhitelist(request)
          body = send_request('DeleteComplianceAssetPolicySetFromWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteComplianceAssetPolicySetFromWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增安全合规忽略(检测项+资产)列表，不显示指定的检查项包含的资产内容

        # @param request: Request instance for DeleteCompliancePolicyAssetSetFromWhitelist.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteCompliancePolicyAssetSetFromWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteCompliancePolicyAssetSetFromWhitelistResponse`
        def DeleteCompliancePolicyAssetSetFromWhitelist(request)
          body = send_request('DeleteCompliancePolicyAssetSetFromWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCompliancePolicyAssetSetFromWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除逃逸白名单

        # @param request: Request instance for DeleteEscapeWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteEscapeWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteEscapeWhiteListResponse`
        def DeleteEscapeWhiteList(request)
          body = send_request('DeleteEscapeWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEscapeWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消漏洞扫描忽略漏洞

        # @param request: Request instance for DeleteIgnoreVul.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteIgnoreVulRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteIgnoreVulResponse`
        def DeleteIgnoreVul(request)
          body = send_request('DeleteIgnoreVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIgnoreVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 卸载Agent客户端

        # @param request: Request instance for DeleteMachine.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteMachineRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteMachineResponse`
        def DeleteMachine(request)
          body = send_request('DeleteMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络创建网络策略删除任务

        # @param request: Request instance for DeleteNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteNetworkFirewallPolicyDetailResponse`
        def DeleteNetworkFirewallPolicyDetail(request)
          body = send_request('DeleteNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除运行时反弹shell事件

        # @param request: Request instance for DeleteReverseShellEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteReverseShellEventsResponse`
        def DeleteReverseShellEvents(request)
          body = send_request('DeleteReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除运行时高危系统调用事件

        # @param request: Request instance for DeleteRiskSyscallEvents.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteRiskSyscallEventsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteRiskSyscallEventsResponse`
        def DeleteRiskSyscallEvents(request)
          body = send_request('DeleteRiskSyscallEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskSyscallEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除检索模板

        # @param request: Request instance for DeleteSearchTemplate.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DeleteSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DeleteSearchTemplateResponse`
        def DeleteSearchTemplate(request)
          body = send_request('DeleteSearchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSearchTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户当前灰度配置

        # @param request: Request instance for DescribeABTestConfig.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeABTestConfigRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeABTestConfigResponse`
        def DescribeABTestConfig(request)
          body = send_request('DescribeABTestConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeABTestConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询待处理异常进程事件趋势

        # @param request: Request instance for DescribeAbnormalProcessEventTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessEventTendencyResponse`
        def DescribeAbnormalProcessEventTendency(request)
          body = send_request('DescribeAbnormalProcessEventTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessEventTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 统计异常进程各威胁等级待处理事件数

        # @param request: Request instance for DescribeAbnormalProcessLevelSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessLevelSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAbnormalProcessLevelSummaryResponse`
        def DescribeAbnormalProcessLevelSummary(request)
          body = send_request('DescribeAbnormalProcessLevelSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalProcessLevelSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询平行容器安装命令

        # @param request: Request instance for DescribeAgentDaemonSetCmd.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAgentDaemonSetCmdRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAgentDaemonSetCmdResponse`
        def DescribeAgentDaemonSetCmd(request)
          body = send_request('DescribeAgentDaemonSetCmd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDaemonSetCmdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询agent安装命令

        # @param request: Request instance for DescribeAgentInstallCommand.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAgentInstallCommandRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAgentInstallCommandResponse`
        def DescribeAgentInstallCommand(request)
          body = send_request('DescribeAgentInstallCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentInstallCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询资产同步最近时间

        # @param request: Request instance for DescribeAssetSyncLastTime.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAssetSyncLastTimeRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAssetSyncLastTimeResponse`
        def DescribeAssetSyncLastTime(request)
          body = send_request('DescribeAssetSyncLastTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSyncLastTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询自动授权规则授权范围主机信息

        # @param request: Request instance for DescribeAutoAuthorizedRuleHost.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeAutoAuthorizedRuleHostRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeAutoAuthorizedRuleHostResponse`
        def DescribeAutoAuthorizedRuleHost(request)
          body = send_request('DescribeAutoAuthorizedRuleHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoAuthorizedRuleHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取ES字段聚合结果

        # @param request: Request instance for DescribeESAggregations.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeESAggregationsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeESAggregationsResponse`
        def DescribeESAggregations(request)
          body = send_request('DescribeESAggregations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeESAggregationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取ES查询文档列表

        # @param request: Request instance for DescribeESHits.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeESHitsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeESHitsResponse`
        def DescribeESHits(request)
          body = send_request('DescribeESHits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeESHitsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询应急漏洞列表

        # @param request: Request instance for DescribeEmergencyVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEmergencyVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEmergencyVulListResponse`
        def DescribeEmergencyVulList(request)
          body = send_request('DescribeEmergencyVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEmergencyVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询待处理逃逸事件趋势

        # @param request: Request instance for DescribeEscapeEventTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventTendencyResponse`
        def DescribeEscapeEventTendency(request)
          body = send_request('DescribeEscapeEventTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeEventTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统计容器逃逸各事件类型和待处理事件数

        # @param request: Request instance for DescribeEscapeEventTypeSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventTypeSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeEventTypeSummaryResponse`
        def DescribeEscapeEventTypeSummary(request)
          body = send_request('DescribeEscapeEventTypeSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeEventTypeSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询逃逸白名单

        # @param request: Request instance for DescribeEscapeWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeEscapeWhiteListResponse`
        def DescribeEscapeWhiteList(request)
          body = send_request('DescribeEscapeWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEscapeWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询导出任务下载URL

        # @param request: Request instance for DescribeExportJobDownloadURL.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobDownloadURLResponse`
        def DescribeExportJobDownloadURL(request)
          body = send_request('DescribeExportJobDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportJobDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询导出任务管理列表

        # @param request: Request instance for DescribeExportJobManageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobManageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeExportJobManageListResponse`
        def DescribeExportJobManageList(request)
          body = send_request('DescribeExportJobManageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportJobManageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询镜像自动授权结果列表

        # @param request: Request instance for DescribeImageAutoAuthorizedLogList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedLogListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedLogListResponse`
        def DescribeImageAutoAuthorizedLogList(request)
          body = send_request('DescribeImageAutoAuthorizedLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAutoAuthorizedLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本地镜像自动授权规则

        # @param request: Request instance for DescribeImageAutoAuthorizedRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedRuleResponse`
        def DescribeImageAutoAuthorizedRule(request)
          body = send_request('DescribeImageAutoAuthorizedRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAutoAuthorizedRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像自动授权任务列表

        # @param request: Request instance for DescribeImageAutoAuthorizedTaskList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedTaskListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageAutoAuthorizedTaskListResponse`
        def DescribeImageAutoAuthorizedTaskList(request)
          body = send_request('DescribeImageAutoAuthorizedTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAutoAuthorizedTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本地镜像组件列表

        # @param request: Request instance for DescribeImageComponentList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageComponentListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageComponentListResponse`
        def DescribeImageComponentList(request)
          body = send_request('DescribeImageComponentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageComponentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户镜像仓库下的项目名称列表

        # @param request: Request instance for DescribeImageRegistryNamespaceList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeImageRegistryNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeImageRegistryNamespaceListResponse`
        def DescribeImageRegistryNamespaceList(request)
          body = send_request('DescribeImageRegistryNamespaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryNamespaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取索引列表

        # @param request: Request instance for DescribeIndexList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeIndexListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeIndexListResponse`
        def DescribeIndexList(request)
          body = send_request('DescribeIndexList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询检查报告

        # @param request: Request instance for DescribeInspectionReport.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeInspectionReportRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeInspectionReportResponse`
        def DescribeInspectionReport(request)
          body = send_request('DescribeInspectionReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInspectionReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志检索容量使用统计

        # @param request: Request instance for DescribeLogStorageStatistic.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeLogStorageStatisticRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeLogStorageStatisticResponse`
        def DescribeLogStorageStatistic(request)
          body = send_request('DescribeLogStorageStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogStorageStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群策略审计列表

        # @param request: Request instance for DescribeNetworkFirewallAuditRecord.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallAuditRecordRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallAuditRecordResponse`
        def DescribeNetworkFirewallAuditRecord(request)
          body = send_request('DescribeNetworkFirewallAuditRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallAuditRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群策略列表

        # @param request: Request instance for DescribeNetworkFirewallClusterList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallClusterListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallClusterListResponse`
        def DescribeNetworkFirewallClusterList(request)
          body = send_request('DescribeNetworkFirewallClusterList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallClusterListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络查询资产任务进度

        # @param request: Request instance for DescribeNetworkFirewallClusterRefreshStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallClusterRefreshStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallClusterRefreshStatusResponse`
        def DescribeNetworkFirewallClusterRefreshStatus(request)
          body = send_request('DescribeNetworkFirewallClusterRefreshStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallClusterRefreshStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群网络空间标签列表

        # @param request: Request instance for DescribeNetworkFirewallNamespaceLabelList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallNamespaceLabelListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallNamespaceLabelListResponse`
        def DescribeNetworkFirewallNamespaceLabelList(request)
          body = send_request('DescribeNetworkFirewallNamespaceLabelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallNamespaceLabelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群网络空间列表

        # @param request: Request instance for DescribeNetworkFirewallNamespaceList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallNamespaceListResponse`
        def DescribeNetworkFirewallNamespaceList(request)
          body = send_request('DescribeNetworkFirewallNamespaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallNamespaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群网络pod标签

        # @param request: Request instance for DescribeNetworkFirewallPodLabelsList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPodLabelsListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPodLabelsListResponse`
        def DescribeNetworkFirewallPodLabelsList(request)
          body = send_request('DescribeNetworkFirewallPodLabelsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPodLabelsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络集群查看策略详情

        # @param request: Request instance for DescribeNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyDetailResponse`
        def DescribeNetworkFirewallPolicyDetail(request)
          body = send_request('DescribeNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络查询网络策略自动发现任务进度

        # @param request: Request instance for DescribeNetworkFirewallPolicyDiscover.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyDiscoverRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyDiscoverResponse`
        def DescribeNetworkFirewallPolicyDiscover(request)
          body = send_request('DescribeNetworkFirewallPolicyDiscover', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPolicyDiscoverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群网络策略列表

        # @param request: Request instance for DescribeNetworkFirewallPolicyList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyListResponse`
        def DescribeNetworkFirewallPolicyList(request)
          body = send_request('DescribeNetworkFirewallPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络查询网络策略策略执行状态

        # @param request: Request instance for DescribeNetworkFirewallPolicyStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyStatusResponse`
        def DescribeNetworkFirewallPolicyStatus(request)
          body = send_request('DescribeNetworkFirewallPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络集群查看Yaml网络策略详情

        # @param request: Request instance for DescribeNetworkFirewallPolicyYamlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyYamlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNetworkFirewallPolicyYamlDetailResponse`
        def DescribeNetworkFirewallPolicyYamlDetail(request)
          body = send_request('DescribeNetworkFirewallPolicyYamlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkFirewallPolicyYamlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最新披露漏洞列表

        # @param request: Request instance for DescribeNewestVul.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeNewestVulRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeNewestVulResponse`
        def DescribeNewestVul(request)
          body = send_request('DescribeNewestVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewestVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询促销活动

        # @param request: Request instance for DescribePromotionActivity.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribePromotionActivityRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribePromotionActivityResponse`
        def DescribePromotionActivity(request)
          body = send_request('DescribePromotionActivity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePromotionActivityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取公钥

        # @param request: Request instance for DescribePublicKey.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribePublicKeyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribePublicKeyResponse`
        def DescribePublicKey(request)
          body = send_request('DescribePublicKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询扫描忽略的漏洞列表

        # @param request: Request instance for DescribeScanIgnoreVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeScanIgnoreVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeScanIgnoreVulListResponse`
        def DescribeScanIgnoreVulList(request)
          body = send_request('DescribeScanIgnoreVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanIgnoreVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出ES查询文档列表

        # @param request: Request instance for DescribeSearchExportList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSearchExportListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSearchExportListResponse`
        def DescribeSearchExportList(request)
          body = send_request('DescribeSearchExportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchExportListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取历史搜索记录

        # @param request: Request instance for DescribeSearchLogs.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSearchLogsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSearchLogsResponse`
        def DescribeSearchLogs(request)
          body = send_request('DescribeSearchLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取快速检索列表

        # @param request: Request instance for DescribeSearchTemplates.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSearchTemplatesRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSearchTemplatesResponse`
        def DescribeSearchTemplates(request)
          body = send_request('DescribeSearchTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询安全日志告警信息

        # @param request: Request instance for DescribeSecLogAlertMsg.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogAlertMsgRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogAlertMsgResponse`
        def DescribeSecLogAlertMsg(request)
          body = send_request('DescribeSecLogAlertMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogAlertMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志清理设置详情

        # @param request: Request instance for DescribeSecLogCleanSettingInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogCleanSettingInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogCleanSettingInfoResponse`
        def DescribeSecLogCleanSettingInfo(request)
          body = send_request('DescribeSecLogCleanSettingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogCleanSettingInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志投递cls可选项

        # @param request: Request instance for DescribeSecLogDeliveryClsOptions.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryClsOptionsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryClsOptionsResponse`
        def DescribeSecLogDeliveryClsOptions(request)
          body = send_request('DescribeSecLogDeliveryClsOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogDeliveryClsOptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志投递Cls配置

        # @param request: Request instance for DescribeSecLogDeliveryClsSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryClsSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryClsSettingResponse`
        def DescribeSecLogDeliveryClsSetting(request)
          body = send_request('DescribeSecLogDeliveryClsSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogDeliveryClsSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志投递kafka可选项

        # @param request: Request instance for DescribeSecLogDeliveryKafkaOptions.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryKafkaOptionsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryKafkaOptionsResponse`
        def DescribeSecLogDeliveryKafkaOptions(request)
          body = send_request('DescribeSecLogDeliveryKafkaOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogDeliveryKafkaOptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志投递kafka配置

        # @param request: Request instance for DescribeSecLogDeliveryKafkaSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryKafkaSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogDeliveryKafkaSettingResponse`
        def DescribeSecLogDeliveryKafkaSetting(request)
          body = send_request('DescribeSecLogDeliveryKafkaSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogDeliveryKafkaSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志接入对象列表

        # @param request: Request instance for DescribeSecLogJoinObjectList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogJoinObjectListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogJoinObjectListResponse`
        def DescribeSecLogJoinObjectList(request)
          body = send_request('DescribeSecLogJoinObjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogJoinObjectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志接入列表

        # @param request: Request instance for DescribeSecLogJoinTypeList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogJoinTypeListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogJoinTypeListResponse`
        def DescribeSecLogJoinTypeList(request)
          body = send_request('DescribeSecLogJoinTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogJoinTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志KafkaUIN

        # @param request: Request instance for DescribeSecLogKafkaUIN.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogKafkaUINRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogKafkaUINResponse`
        def DescribeSecLogKafkaUIN(request)
          body = send_request('DescribeSecLogKafkaUIN', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogKafkaUINResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全日志商品信息

        # @param request: Request instance for DescribeSecLogVasInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogVasInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSecLogVasInfoResponse`
        def DescribeSecLogVasInfo(request)
          body = send_request('DescribeSecLogVasInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecLogVasInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询支持防御的漏洞列表

        # @param request: Request instance for DescribeSupportDefenceVul.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSupportDefenceVulRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSupportDefenceVulResponse`
        def DescribeSupportDefenceVul(request)
          body = send_request('DescribeSupportDefenceVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSupportDefenceVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询系统漏洞列表

        # @param request: Request instance for DescribeSystemVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeSystemVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeSystemVulListResponse`
        def DescribeSystemVulList(request)
          body = send_request('DescribeSystemVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询容器安全概览信息

        # @param request: Request instance for DescribeTcssSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeTcssSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeTcssSummaryResponse`
        def DescribeTcssSummary(request)
          body = send_request('DescribeTcssSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTcssSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当天未授权核数趋势

        # @param request: Request instance for DescribeUnauthorizedCoresTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeUnauthorizedCoresTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeUnauthorizedCoresTendencyResponse`
        def DescribeUnauthorizedCoresTendency(request)
          body = send_request('DescribeUnauthorizedCoresTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnauthorizedCoresTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询木马自动隔离样本详情

        # @param request: Request instance for DescribeVirusAutoIsolateSampleDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleDetailResponse`
        def DescribeVirusAutoIsolateSampleDetail(request)
          body = send_request('DescribeVirusAutoIsolateSampleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusAutoIsolateSampleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询木马自动隔离样本下载链接

        # @param request: Request instance for DescribeVirusAutoIsolateSampleDownloadURL.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleDownloadURLResponse`
        def DescribeVirusAutoIsolateSampleDownloadURL(request)
          body = send_request('DescribeVirusAutoIsolateSampleDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusAutoIsolateSampleDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询木马自动隔离样本列表

        # @param request: Request instance for DescribeVirusAutoIsolateSampleList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSampleListResponse`
        def DescribeVirusAutoIsolateSampleList(request)
          body = send_request('DescribeVirusAutoIsolateSampleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusAutoIsolateSampleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询木马自动隔离设置

        # @param request: Request instance for DescribeVirusAutoIsolateSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusAutoIsolateSettingResponse`
        def DescribeVirusAutoIsolateSetting(request)
          body = send_request('DescribeVirusAutoIsolateSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusAutoIsolateSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询木马事件趋势

        # @param request: Request instance for DescribeVirusEventTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusEventTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusEventTendencyResponse`
        def DescribeVirusEventTendency(request)
          body = send_request('DescribeVirusEventTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusEventTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询运行时文件查杀事件列表

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

        # 查询木马一键检测预估超时时间

        # @param request: Request instance for DescribeVirusManualScanEstimateTimeout.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusManualScanEstimateTimeoutRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusManualScanEstimateTimeoutResponse`
        def DescribeVirusManualScanEstimateTimeout(request)
          body = send_request('DescribeVirusManualScanEstimateTimeout', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusManualScanEstimateTimeoutResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询木马样本下载url

        # @param request: Request instance for DescribeVirusSampleDownloadUrl.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVirusSampleDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVirusSampleDownloadUrlResponse`
        def DescribeVirusSampleDownloadUrl(request)
          body = send_request('DescribeVirusSampleDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVirusSampleDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询受漏洞的容器列表

        # @param request: Request instance for DescribeVulContainerList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulContainerListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulContainerListResponse`
        def DescribeVulContainerList(request)
          body = send_request('DescribeVulContainerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulContainerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御事件列表

        # @param request: Request instance for DescribeVulDefenceEvent.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventResponse`
        def DescribeVulDefenceEvent(request)
          body = send_request('DescribeVulDefenceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御事件详情

        # @param request: Request instance for DescribeVulDefenceEventDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventDetailResponse`
        def DescribeVulDefenceEventDetail(request)
          body = send_request('DescribeVulDefenceEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceEventDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御攻击事件趋势

        # @param request: Request instance for DescribeVulDefenceEventTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceEventTendencyResponse`
        def DescribeVulDefenceEventTendency(request)
          body = send_request('DescribeVulDefenceEventTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceEventTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御的主机列表

        # @param request: Request instance for DescribeVulDefenceHost.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceHostRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceHostResponse`
        def DescribeVulDefenceHost(request)
          body = send_request('DescribeVulDefenceHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御插件列表

        # @param request: Request instance for DescribeVulDefencePlugin.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefencePluginRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefencePluginResponse`
        def DescribeVulDefencePlugin(request)
          body = send_request('DescribeVulDefencePlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefencePluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御设置信息

        # @param request: Request instance for DescribeVulDefenceSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDefenceSettingResponse`
        def DescribeVulDefenceSetting(request)
          body = send_request('DescribeVulDefenceSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞详情

        # @param request: Request instance for DescribeVulDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulDetailResponse`
        def DescribeVulDetail(request)
          body = send_request('DescribeVulDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞扫描忽略的本地镜像列表

        # @param request: Request instance for DescribeVulIgnoreLocalImageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulIgnoreLocalImageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulIgnoreLocalImageListResponse`
        def DescribeVulIgnoreLocalImageList(request)
          body = send_request('DescribeVulIgnoreLocalImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulIgnoreLocalImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞扫描忽略的仓库镜像列表

        # @param request: Request instance for DescribeVulIgnoreRegistryImageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulIgnoreRegistryImageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulIgnoreRegistryImageListResponse`
        def DescribeVulIgnoreRegistryImageList(request)
          body = send_request('DescribeVulIgnoreRegistryImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulIgnoreRegistryImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞影响的镜像列表

        # @param request: Request instance for DescribeVulImageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulImageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulImageListResponse`
        def DescribeVulImageList(request)
          body = send_request('DescribeVulImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞镜像统计

        # @param request: Request instance for DescribeVulImageSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulImageSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulImageSummaryResponse`
        def DescribeVulImageSummary(request)
          body = send_request('DescribeVulImageSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulImageSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询应急漏洞各威胁等级统计镜像数

        # @param request: Request instance for DescribeVulLevelImageSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulLevelImageSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulLevelImageSummaryResponse`
        def DescribeVulLevelImageSummary(request)
          body = send_request('DescribeVulLevelImageSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulLevelImageSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞各威胁等级统计数

        # @param request: Request instance for DescribeVulLevelSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulLevelSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulLevelSummaryResponse`
        def DescribeVulLevelSummary(request)
          body = send_request('DescribeVulLevelSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulLevelSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统计漏洞扫描页已授权和未扫描镜像数

        # @param request: Request instance for DescribeVulScanAuthorizedImageSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanAuthorizedImageSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanAuthorizedImageSummaryResponse`
        def DescribeVulScanAuthorizedImageSummary(request)
          body = send_request('DescribeVulScanAuthorizedImageSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanAuthorizedImageSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞扫描任务信息

        # @param request: Request instance for DescribeVulScanInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanInfoResponse`
        def DescribeVulScanInfo(request)
          body = send_request('DescribeVulScanInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞扫描任务的本地镜像列表

        # @param request: Request instance for DescribeVulScanLocalImageList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanLocalImageListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulScanLocalImageListResponse`
        def DescribeVulScanLocalImageList(request)
          body = send_request('DescribeVulScanLocalImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanLocalImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞风险统计概览

        # @param request: Request instance for DescribeVulSummary.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulSummaryRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulSummaryResponse`
        def DescribeVulSummary(request)
          body = send_request('DescribeVulSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询本地镜像、仓库镜像中严重&高危的漏洞趋势

        # @param request: Request instance for DescribeVulTendency.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulTendencyRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulTendencyResponse`
        def DescribeVulTendency(request)
          body = send_request('DescribeVulTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞Top排名列表

        # @param request: Request instance for DescribeVulTopRanking.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeVulTopRankingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeVulTopRankingResponse`
        def DescribeVulTopRanking(request)
          body = send_request('DescribeVulTopRanking', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulTopRankingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询web应用漏洞列表

        # @param request: Request instance for DescribeWebVulList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::DescribeWebVulListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::DescribeWebVulListResponse`
        def DescribeWebVulList(request)
          body = send_request('DescribeWebVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 隔离容器网络状态

        # @param request: Request instance for ModifyContainerNetStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyContainerNetStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyContainerNetStatusResponse`
        def ModifyContainerNetStatus(request)
          body = send_request('ModifyContainerNetStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyContainerNetStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改逃逸白名单

        # @param request: Request instance for ModifyEscapeWhiteList.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeWhiteListRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyEscapeWhiteListResponse`
        def ModifyEscapeWhiteList(request)
          body = send_request('ModifyEscapeWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEscapeWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量授权镜像扫描V2.0

        # @param request: Request instance for ModifyImageAuthorized.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyImageAuthorizedRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyImageAuthorizedResponse`
        def ModifyImageAuthorized(request)
          body = send_request('ModifyImageAuthorized', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageAuthorizedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改安全日志清理设置信息

        # @param request: Request instance for ModifySecLogCleanSettingInfo.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogCleanSettingInfoRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogCleanSettingInfoResponse`
        def ModifySecLogCleanSettingInfo(request)
          body = send_request('ModifySecLogCleanSettingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogCleanSettingInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新安全日志-日志投递cls配置

        # @param request: Request instance for ModifySecLogDeliveryClsSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogDeliveryClsSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogDeliveryClsSettingResponse`
        def ModifySecLogDeliveryClsSetting(request)
          body = send_request('ModifySecLogDeliveryClsSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogDeliveryClsSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新安全日志投递kafka设置

        # @param request: Request instance for ModifySecLogDeliveryKafkaSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogDeliveryKafkaSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogDeliveryKafkaSettingResponse`
        def ModifySecLogDeliveryKafkaSetting(request)
          body = send_request('ModifySecLogDeliveryKafkaSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogDeliveryKafkaSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全日志接入对象

        # @param request: Request instance for ModifySecLogJoinObjects.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogJoinObjectsRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogJoinObjectsResponse`
        def ModifySecLogJoinObjects(request)
          body = send_request('ModifySecLogJoinObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogJoinObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全日志接入状态

        # @param request: Request instance for ModifySecLogJoinState.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogJoinStateRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogJoinStateResponse`
        def ModifySecLogJoinState(request)
          body = send_request('ModifySecLogJoinState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogJoinStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全日志kafkaUIN

        # @param request: Request instance for ModifySecLogKafkaUIN.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifySecLogKafkaUINRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifySecLogKafkaUINResponse`
        def ModifySecLogKafkaUIN(request)
          body = send_request('ModifySecLogKafkaUIN', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecLogKafkaUINResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改木马自动隔离样本开关

        # @param request: Request instance for ModifyVirusAutoIsolateExampleSwitch.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusAutoIsolateExampleSwitchRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusAutoIsolateExampleSwitchResponse`
        def ModifyVirusAutoIsolateExampleSwitch(request)
          body = send_request('ModifyVirusAutoIsolateExampleSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusAutoIsolateExampleSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改木马自动隔离设置

        # @param request: Request instance for ModifyVirusAutoIsolateSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVirusAutoIsolateSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVirusAutoIsolateSettingResponse`
        def ModifyVirusAutoIsolateSetting(request)
          body = send_request('ModifyVirusAutoIsolateSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVirusAutoIsolateSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改漏洞防御事件状态

        # @param request: Request instance for ModifyVulDefenceEventStatus.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVulDefenceEventStatusRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVulDefenceEventStatusResponse`
        def ModifyVulDefenceEventStatus(request)
          body = send_request('ModifyVulDefenceEventStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVulDefenceEventStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑漏洞防御设置

        # @param request: Request instance for ModifyVulDefenceSetting.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ModifyVulDefenceSettingRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ModifyVulDefenceSettingResponse`
        def ModifyVulDefenceSetting(request)
          body = send_request('ModifyVulDefenceSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVulDefenceSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通容器安全服务试用

        # @param request: Request instance for OpenTcssTrial.
        # @type request: :class:`Tencentcloud::tcss::V20201101::OpenTcssTrialRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::OpenTcssTrialResponse`
        def OpenTcssTrial(request)
          body = send_request('OpenTcssTrial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenTcssTrialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 重置安全日志主题设置

        # @param request: Request instance for ResetSecLogTopicConfig.
        # @type request: :class:`Tencentcloud::tcss::V20201101::ResetSecLogTopicConfigRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::ResetSecLogTopicConfigResponse`
        def ResetSecLogTopicConfig(request)
          body = send_request('ResetSecLogTopicConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetSecLogTopicConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 停止漏洞扫描任务

        # @param request: Request instance for StopVulScanTask.
        # @type request: :class:`Tencentcloud::tcss::V20201101::StopVulScanTaskRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::StopVulScanTaskResponse`
        def StopVulScanTask(request)
          body = send_request('StopVulScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopVulScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑本地镜像自动授权开关

        # @param request: Request instance for SwitchImageAutoAuthorizedRule.
        # @type request: :class:`Tencentcloud::tcss::V20201101::SwitchImageAutoAuthorizedRuleRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::SwitchImageAutoAuthorizedRuleResponse`
        def SwitchImageAutoAuthorizedRule(request)
          body = send_request('SwitchImageAutoAuthorizedRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchImageAutoAuthorizedRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 容器网络创建网络策略更新并发布任务

        # @param request: Request instance for UpdateAndPublishNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateAndPublishNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateAndPublishNetworkFirewallPolicyDetailResponse`
        def UpdateAndPublishNetworkFirewallPolicyDetail(request)
          body = send_request('UpdateAndPublishNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAndPublishNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络更新Yaml网络策略并发布任务

        # @param request: Request instance for UpdateAndPublishNetworkFirewallPolicyYamlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateAndPublishNetworkFirewallPolicyYamlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateAndPublishNetworkFirewallPolicyYamlDetailResponse`
        def UpdateAndPublishNetworkFirewallPolicyYamlDetail(request)
          body = send_request('UpdateAndPublishNetworkFirewallPolicyYamlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAndPublishNetworkFirewallPolicyYamlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 容器网络创建网络策略更新任务

        # @param request: Request instance for UpdateNetworkFirewallPolicyDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateNetworkFirewallPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateNetworkFirewallPolicyDetailResponse`
        def UpdateNetworkFirewallPolicyDetail(request)
          body = send_request('UpdateNetworkFirewallPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNetworkFirewallPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器网络更新Yaml网络策略任务

        # @param request: Request instance for UpdateNetworkFirewallPolicyYamlDetail.
        # @type request: :class:`Tencentcloud::tcss::V20201101::UpdateNetworkFirewallPolicyYamlDetailRequest`
        # @rtype: :class:`Tencentcloud::tcss::V20201101::UpdateNetworkFirewallPolicyYamlDetailResponse`
        def UpdateNetworkFirewallPolicyYamlDetail(request)
          body = send_request('UpdateNetworkFirewallPolicyYamlDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNetworkFirewallPolicyYamlDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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