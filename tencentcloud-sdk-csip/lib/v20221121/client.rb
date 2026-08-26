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
  module Csip
    module V20221121
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-11-21'
            api_endpoint = 'csip.tencentcloudapi.com'
            sdk_version = 'CSIP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建/修改SMTP邮箱接入请求

        # @param request: Request instance for AccessAIAnalysisSMTP.
        # @type request: :class:`Tencentcloud::csip::V20221121::AccessAIAnalysisSMTPRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AccessAIAnalysisSMTPResponse`
        def AccessAIAnalysisSMTP(request)
          body = send_request('AccessAIAnalysisSMTP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AccessAIAnalysisSMTPResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加资产管理员

        # @param request: Request instance for AddDspmAssetManager.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddDspmAssetManagerRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddDspmAssetManagerResponse`
        def AddDspmAssetManager(request)
          body = send_request('AddDspmAssetManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDspmAssetManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加镜像仓库信息

        # @param request: Request instance for AddImageRegistry.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddImageRegistryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddImageRegistryResponse`
        def AddImageRegistry(request)
          body = send_request('AddImageRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddImageRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加异地登录白名单

        # @param request: Request instance for AddLoginWhiteLists.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddLoginWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddLoginWhiteListsResponse`
        def AddLoginWhiteLists(request)
          body = send_request('AddLoginWhiteLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLoginWhiteListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # csip角色授权绑定接口

        # @param request: Request instance for AddNewBindRoleUser.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddNewBindRoleUserRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddNewBindRoleUserResponse`
        def AddNewBindRoleUser(request)
          body = send_request('AddNewBindRoleUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNewBindRoleUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加漏洞白名单

        # @param request: Request instance for AddVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::AddVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::AddVulWhitelistResponse`
        def AddVulWhitelist(request)
          body = send_request('AddVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改基线策略的“周期扫描配置 / 自动同步新增检测项 / 检测项命中配置 / 自定义检测项”等设置。仅修改请求中传入的字段。

        # @param request: Request instance for BatchModifyBaselinePolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::BatchModifyBaselinePolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BatchModifyBaselinePolicyResponse`
        def BatchModifyBaselinePolicy(request)
          body = send_request('BatchModifyBaselinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyBaselinePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改镜像仓库定时扫描任务配置

        # @param request: Request instance for BatchModifyImageRegistryTimedScanTaskConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::BatchModifyImageRegistryTimedScanTaskConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BatchModifyImageRegistryTimedScanTaskConfigResponse`
        def BatchModifyImageRegistryTimedScanTaskConfig(request)
          body = send_request('BatchModifyImageRegistryTimedScanTaskConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyImageRegistryTimedScanTaskConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改容器镜像敏感信息白名单

        # @param request: Request instance for BatchModifyImageSensitiveWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::BatchModifyImageSensitiveWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BatchModifyImageSensitiveWhitelistResponse`
        def BatchModifyImageSensitiveWhitelist(request)
          body = send_request('BatchModifyImageSensitiveWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyImageSensitiveWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改镜像木马白名单

        # @param request: Request instance for BatchModifyImageVirusWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::BatchModifyImageVirusWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BatchModifyImageVirusWhitelistResponse`
        def BatchModifyImageVirusWhitelist(request)
          body = send_request('BatchModifyImageVirusWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyImageVirusWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改容器镜像漏洞白名单

        # @param request: Request instance for BatchModifyImageVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::BatchModifyImageVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BatchModifyImageVulWhitelistResponse`
        def BatchModifyImageVulWhitelist(request)
          body = send_request('BatchModifyImageVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyImageVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定集群负责人

        # @param request: Request instance for BindClusterOwner.
        # @type request: :class:`Tencentcloud::csip::V20221121::BindClusterOwnerRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::BindClusterOwnerResponse`
        def BindClusterOwner(request)
          body = send_request('BindClusterOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindClusterOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消已永久忽略的EDR多行为告警，从AI-Link永久忽略白名单移除对应主机+规则记录，并将告警状态恢复为待处理（PENDING）

        # @param request: Request instance for CancelEdrAlertIgnore.
        # @type request: :class:`Tencentcloud::csip::V20221121::CancelEdrAlertIgnoreRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CancelEdrAlertIgnoreResponse`
        def CancelEdrAlertIgnore(request)
          body = send_request('CancelEdrAlertIgnore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelEdrAlertIgnoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断当前用户是否旗舰版(适用于主机)

        # @param request: Request instance for CheckCWPExposePathPermission.
        # @type request: :class:`Tencentcloud::csip::V20221121::CheckCWPExposePathPermissionRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CheckCWPExposePathPermissionResponse`
        def CheckCWPExposePathPermission(request)
          body = send_request('CheckCWPExposePathPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCWPExposePathPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查镜像仓库实例名是否重复

        # @param request: Request instance for CheckImageRegistryInstanceNameDuplicate.
        # @type request: :class:`Tencentcloud::csip::V20221121::CheckImageRegistryInstanceNameDuplicateRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CheckImageRegistryInstanceNameDuplicateResponse`
        def CheckImageRegistryInstanceNameDuplicate(request)
          body = send_request('CheckImageRegistryInstanceNameDuplicate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckImageRegistryInstanceNameDuplicateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断当前用户是否旗舰版

        # @param request: Request instance for CheckIsUltimateVersion.
        # @type request: :class:`Tencentcloud::csip::V20221121::CheckIsUltimateVersionRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CheckIsUltimateVersionResponse`
        def CheckIsUltimateVersion(request)
          body = send_request('CheckIsUltimateVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIsUltimateVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险验证示例

        # @param request: Request instance for CheckRisk.
        # @type request: :class:`Tencentcloud::csip::V20221121::CheckRiskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CheckRiskResponse`
        def CheckRisk(request)
          body = send_request('CheckRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制自定义基线策略

        # @param request: Request instance for CopyBaselinePolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CopyBaselinePolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CopyBaselinePolicyResponse`
        def CopyBaselinePolicy(request)
          body = send_request('CopyBaselinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyBaselinePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建AI 定时任务。

        # 创建一个新的AI 定时任务，需传入任务名称、执行提示词和触发器配置。创建成功后返回AI 定时任务 ID。

        # @param request: Request instance for CreateAISchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAIScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAIScheduleResponse`
        def CreateAISchedule(request)
          body = send_request('CreateAISchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测AK 异步任务

        # @param request: Request instance for CreateAccessKeyCheckTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAccessKeyCheckTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAccessKeyCheckTaskResponse`
        def CreateAccessKeyCheckTask(request)
          body = send_request('CreateAccessKeyCheckTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessKeyCheckTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起AK资产同步任务

        # @param request: Request instance for CreateAccessKeySyncTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAccessKeySyncTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAccessKeySyncTaskResponse`
        def CreateAccessKeySyncTask(request)
          body = send_request('CreateAccessKeySyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessKeySyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建全部资产导出任务

        # @param request: Request instance for CreateAllAssetsExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAllAssetsExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAllAssetsExportJobResponse`
        def CreateAllAssetsExportJob(request)
          body = send_request('CreateAllAssetsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAllAssetsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像资产中组件列表导出任务

        # @param request: Request instance for CreateAssetComponentListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetComponentListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetComponentListExportJobResponse`
        def CreateAssetComponentListExportJob(request)
          body = send_request('CreateAssetComponentListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetComponentListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像仓库组件关联镜像列表导出任务

        # @param request: Request instance for CreateAssetComponentRelatedImageListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetComponentRelatedImageListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetComponentRelatedImageListExportJobResponse`
        def CreateAssetComponentRelatedImageListExportJob(request)
          body = send_request('CreateAssetComponentRelatedImageListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetComponentRelatedImageListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产搜索视图

        # @param request: Request instance for CreateAssetFilterView.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetFilterViewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetFilterViewResponse`
        def CreateAssetFilterView(request)
          body = send_request('CreateAssetFilterView', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetFilterViewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建主机进程列表导出任务

        # @param request: Request instance for CreateAssetProcessExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetProcessExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetProcessExportJobResponse`
        def CreateAssetProcessExportJob(request)
          body = send_request('CreateAssetProcessExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetProcessExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产同步任务

        # @param request: Request instance for CreateAssetSyncTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetSyncTaskResponse`
        def CreateAssetSyncTask(request)
          body = send_request('CreateAssetSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetSyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产标签

        # @param request: Request instance for CreateAssetTag.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetTagRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetTagResponse`
        def CreateAssetTag(request)
          body = send_request('CreateAssetTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产视角下风险列表导出任务示例

        # @param request: Request instance for CreateAssetViewRisksExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateAssetViewRisksExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateAssetViewRisksExportJobResponse`
        def CreateAssetViewRisksExportJob(request)
          body = send_request('CreateAssetViewRisksExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetViewRisksExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建基线聚合检测项导出任务。通过 ExportType 选择导出统计结果或风险明细，可按策略、分类等条件限定范围；任务在后台异步执行，完成后可在导出任务列表中下载结果文件。

        # @param request: Request instance for CreateBaselineAggregatedItemExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateBaselineAggregatedItemExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateBaselineAggregatedItemExportJobResponse`
        def CreateBaselineAggregatedItemExportJob(request)
          body = send_request('CreateBaselineAggregatedItemExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineAggregatedItemExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建基线修复记录导出任务，导出已修复检测项的记录数据（含检测项信息、资产信息、修复时间等）。任务在后台异步执行，完成后可在导出任务列表中下载结果文件。

        # @param request: Request instance for CreateBaselineFixRecordExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateBaselineFixRecordExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateBaselineFixRecordExportJobResponse`
        def CreateBaselineFixRecordExportJob(request)
          body = send_request('CreateBaselineFixRecordExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineFixRecordExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建基线主任务导出任务，导出指定主任务下的检测项与子任务数据。任务在后台异步执行，完成后可在导出任务列表中下载结果文件。

        # @param request: Request instance for CreateBaselineMainTaskExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateBaselineMainTaskExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateBaselineMainTaskExportJobResponse`
        def CreateBaselineMainTaskExportJob(request)
          body = send_request('CreateBaselineMainTaskExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineMainTaskExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云资源配置检测PDF报告导出任务示例

        # @param request: Request instance for CreateCFGRiskPDFReportExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCFGRiskPDFReportExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCFGRiskPDFReportExportJobResponse`
        def CreateCFGRiskPDFReportExportJob(request)
          body = send_request('CreateCFGRiskPDFReportExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCFGRiskPDFReportExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产视角下风险列表导出任务示例

        # @param request: Request instance for CreateCFGRisksExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCFGRisksExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCFGRisksExportJobResponse`
        def CreateCFGRisksExportJob(request)
          body = send_request('CreateCFGRisksExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCFGRisksExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 手动扫描创建接口

        # @param request: Request instance for CreateCSIPManualMalwareScan.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCSIPManualMalwareScanRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCSIPManualMalwareScanResponse`
        def CreateCSIPManualMalwareScan(request)
          body = send_request('CreateCSIPManualMalwareScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCSIPManualMalwareScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产视角下风险列表导出任务示例

        # @param request: Request instance for CreateCheckViewRisksExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCheckViewRisksExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCheckViewRisksExportJobResponse`
        def CreateCheckViewRisksExportJob(request)
          body = send_request('CreateCheckViewRisksExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCheckViewRisksExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云函数导出任务

        # @param request: Request instance for CreateCloudFunctionExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCloudFunctionExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCloudFunctionExportJobResponse`
        def CreateCloudFunctionExportJob(request)
          body = send_request('CreateCloudFunctionExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudFunctionExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群资产同步任务

        # @param request: Request instance for CreateClusterAssetSyncTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateClusterAssetSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateClusterAssetSyncTaskResponse`
        def CreateClusterAssetSyncTask(request)
          body = send_request('CreateClusterAssetSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterAssetSyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群容器列表导出任务

        # @param request: Request instance for CreateClusterContainerListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateClusterContainerListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateClusterContainerListExportJobResponse`
        def CreateClusterContainerListExportJob(request)
          body = send_request('CreateClusterContainerListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterContainerListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群列表导出任务

        # @param request: Request instance for CreateClusterListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateClusterListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateClusterListExportJobResponse`
        def CreateClusterListExportJob(request)
          body = send_request('CreateClusterListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群命名空间列表导出任务。导出字段包含命名空间名称、Labels、创建时间。支持Filter过滤。导出通过异步任务实现，返回JobId后前端轮询查询导出任务状态。

        # @param request: Request instance for CreateClusterNamespaceListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateClusterNamespaceListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateClusterNamespaceListExportJobResponse`
        def CreateClusterNamespaceListExportJob(request)
          body = send_request('CreateClusterNamespaceListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterNamespaceListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群节点列表导出任务。导出字段包含节点ID、节点名称、公网IP、内网IP、节点类型、核数、客户端状态、运行状态。NodeType和ClientStatus、RunStatus均经过国际化翻译。支持Filter过滤（含ClientStatus内存过滤）。导出通过异步任务实现，返回JobId后前端轮询查询导出任务状态。

        # @param request: Request instance for CreateClusterNodeListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateClusterNodeListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateClusterNodeListExportJobResponse`
        def CreateClusterNodeListExportJob(request)
          body = send_request('CreateClusterNodeListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterNodeListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建合规标准聚合视角下风险列表导出任务示例

        # @param request: Request instance for CreateComplianceRiskExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateComplianceRiskExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateComplianceRiskExportJobResponse`
        def CreateComplianceRiskExportJob(request)
          body = send_request('CreateComplianceRiskExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateComplianceRiskExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产同步任务

        # @param request: Request instance for CreateCosAssetSyncTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCosAssetSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCosAssetSyncTaskResponse`
        def CreateCosAssetSyncTask(request)
          body = send_request('CreateCosAssetSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosAssetSyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建cos病毒扫描、敏感数据识别任务

        # @param request: Request instance for CreateCosObjectScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCosObjectScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCosObjectScanTaskResponse`
        def CreateCosObjectScanTask(request)
          body = send_request('CreateCosObjectScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosObjectScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加cos告警策略

        # @param request: Request instance for CreateCosPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCosPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCosPolicyResponse`
        def CreateCosPolicy(request)
          body = send_request('CreateCosPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建风险监测任务

        # @param request: Request instance for CreateCosRiskScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateCosRiskScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateCosRiskScanTaskResponse`
        def CreateCosRiskScanTask(request)
          body = send_request('CreateCosRiskScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosRiskScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建域名、ip相关信息

        # @param request: Request instance for CreateDomainAndIp.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDomainAndIpRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDomainAndIpResponse`
        def CreateDomainAndIp(request)
          body = send_request('CreateDomainAndIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainAndIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm访问记录导出任务

        # @param request: Request instance for CreateDspmAccessExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmAccessExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmAccessExportJobResponse`
        def CreateDspmAccessExportJob(request)
          body = send_request('CreateDspmAccessExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmAccessExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm申请单

        # @param request: Request instance for CreateDspmApplyOrder.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmApplyOrderRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmApplyOrderResponse`
        def CreateDspmApplyOrder(request)
          body = send_request('CreateDspmApplyOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmApplyOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm审批历史导出任务

        # @param request: Request instance for CreateDspmApproveHistoryExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmApproveHistoryExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmApproveHistoryExportJobResponse`
        def CreateDspmApproveHistoryExportJob(request)
          body = send_request('CreateDspmApproveHistoryExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmApproveHistoryExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm资产访问拓扑导出任务

        # @param request: Request instance for CreateDspmAssetAccessTopologyExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetAccessTopologyExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetAccessTopologyExportJobResponse`
        def CreateDspmAssetAccessTopologyExportJob(request)
          body = send_request('CreateDspmAssetAccessTopologyExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmAssetAccessTopologyExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm资产列表导出任务

        # @param request: Request instance for CreateDspmAssetIdentifyInfoExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetIdentifyInfoExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetIdentifyInfoExportJobResponse`
        def CreateDspmAssetIdentifyInfoExportJob(request)
          body = send_request('CreateDspmAssetIdentifyInfoExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmAssetIdentifyInfoExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm资产列表导出任务

        # @param request: Request instance for CreateDspmAssetsExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetsExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmAssetsExportJobResponse`
        def CreateDspmAssetsExportJob(request)
          body = send_request('CreateDspmAssetsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmAssetsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm审计过滤策略

        # @param request: Request instance for CreateDspmAuditFilterStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmAuditFilterStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmAuditFilterStrategyResponse`
        def CreateDspmAuditFilterStrategy(request)
          body = send_request('CreateDspmAuditFilterStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmAuditFilterStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建日志导出任务

        # @param request: Request instance for CreateDspmExportTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmExportTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmExportTaskResponse`
        def CreateDspmExportTask(request)
          body = send_request('CreateDspmExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别分类

        # @param request: Request instance for CreateDspmIdentifyCategory.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyCategoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyCategoryResponse`
        def CreateDspmIdentifyCategory(request)
          body = send_request('CreateDspmIdentifyCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别模板分类关联

        # @param request: Request instance for CreateDspmIdentifyComplianceCategoryRelation.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceCategoryRelationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceCategoryRelationResponse`
        def CreateDspmIdentifyComplianceCategoryRelation(request)
          body = send_request('CreateDspmIdentifyComplianceCategoryRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyComplianceCategoryRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别模板

        # @param request: Request instance for CreateDspmIdentifyComplianceGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceGroupResponse`
        def CreateDspmIdentifyComplianceGroup(request)
          body = send_request('CreateDspmIdentifyComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制dspm数据识别模板

        # @param request: Request instance for CreateDspmIdentifyComplianceGroupCopy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceGroupCopyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceGroupCopyResponse`
        def CreateDspmIdentifyComplianceGroupCopy(request)
          body = send_request('CreateDspmIdentifyComplianceGroupCopy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyComplianceGroupCopyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别模板数据项关联

        # @param request: Request instance for CreateDspmIdentifyComplianceRuleRelation.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceRuleRelationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyComplianceRuleRelationResponse`
        def CreateDspmIdentifyComplianceRuleRelation(request)
          body = send_request('CreateDspmIdentifyComplianceRuleRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyComplianceRuleRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm身份列表导出任务

        # @param request: Request instance for CreateDspmIdentifyInfoListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyInfoListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyInfoListExportJobResponse`
        def CreateDspmIdentifyInfoListExportJob(request)
          body = send_request('CreateDspmIdentifyInfoListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyInfoListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别分级组

        # @param request: Request instance for CreateDspmIdentifyLevelGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyLevelGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyLevelGroupResponse`
        def CreateDspmIdentifyLevelGroup(request)
          body = send_request('CreateDspmIdentifyLevelGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyLevelGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建dspm数据识别数据项

        # @param request: Request instance for CreateDspmIdentifyRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmIdentifyRuleResponse`
        def CreateDspmIdentifyRule(request)
          body = send_request('CreateDspmIdentifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmIdentifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm个人身份id

        # @param request: Request instance for CreateDspmPersonalIdentify.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmPersonalIdentifyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmPersonalIdentifyResponse`
        def CreateDspmPersonalIdentify(request)
          body = send_request('CreateDspmPersonalIdentify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmPersonalIdentifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm实例

        # @param request: Request instance for CreateDspmResource.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmResourceRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmResourceResponse`
        def CreateDspmResource(request)
          body = send_request('CreateDspmResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm风险导出任务

        # @param request: Request instance for CreateDspmRiskExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmRiskExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmRiskExportJobResponse`
        def CreateDspmRiskExportJob(request)
          body = send_request('CreateDspmRiskExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmRiskExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm自定义风险策略

        # @param request: Request instance for CreateDspmRiskStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmRiskStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmRiskStrategyResponse`
        def CreateDspmRiskStrategy(request)
          body = send_request('CreateDspmRiskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmRiskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Dspm白名单策略

        # @param request: Request instance for CreateDspmWhitelistStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDspmWhitelistStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDspmWhitelistStrategyResponse`
        def CreateDspmWhitelistStrategy(request)
          body = send_request('CreateDspmWhitelistStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDspmWhitelistStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公网资产导出任务

        # @param request: Request instance for CreateDynamicAssetsExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateDynamicAssetsExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateDynamicAssetsExportJobResponse`
        def CreateDynamicAssetsExportJob(request)
          body = send_request('CreateDynamicAssetsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDynamicAssetsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 点击开始扫描后触发，支持多账号、多资产类型。同时选主机和容器集群时拆分为两个独立任务（主机+容器）。

        # @param request: Request instance for CreateEDRManualScan.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateEDRManualScanRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateEDRManualScanResponse`
        def CreateEDRManualScan(request)
          body = send_request('CreateEDRManualScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEDRManualScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建EDR告警导出任务

        # @param request: Request instance for CreateEdrAlertExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateEdrAlertExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateEdrAlertExportJobResponse`
        def CreateEdrAlertExportJob(request)
          body = send_request('CreateEdrAlertExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdrAlertExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建EDR告警普通导出任务

        # @param request: Request instance for CreateEdrLessAlertExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateEdrLessAlertExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateEdrLessAlertExportJobResponse`
        def CreateEdrLessAlertExportJob(request)
          body = send_request('CreateEdrLessAlertExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdrLessAlertExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-创建规则

        # @param request: Request instance for CreateExposureAutoTagRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateExposureAutoTagRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateExposureAutoTagRuleResponse`
        def CreateExposureAutoTagRule(request)
          body = send_request('CreateExposureAutoTagRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExposureAutoTagRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暴露资产导出任务

        # @param request: Request instance for CreateExposuresExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateExposuresExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateExposuresExportJobResponse`
        def CreateExposuresExportJob(request)
          body = send_request('CreateExposuresExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExposuresExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建高危基线风险导出任务

        # @param request: Request instance for CreateHighBaseLineRisksExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateHighBaseLineRisksExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateHighBaseLineRisksExportJobResponse`
        def CreateHighBaseLineRisksExportJob(request)
          body = send_request('CreateHighBaseLineRisksExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHighBaseLineRisksExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建本地镜像列表导出任务。导出字段包含镜像ID、镜像名、镜像版本、关联容器数、关联主机数、创建时间、所属账号昵称，以及扫描状态/漏洞/木马/敏感信息等风险字段。支持Filter过滤。导出通过异步任务实现，返回JobId后前端轮询查询导出任务状态。单账号模式下自动排除NickName字段。

        # @param request: Request instance for CreateHostImageListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateHostImageListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateHostImageListExportJobResponse`
        def CreateHostImageListExportJob(request)
          body = send_request('CreateHostImageListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostImageListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建主机列漏洞表导出任务

        # @param request: Request instance for CreateHostVulExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateHostVulExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateHostVulExportJobResponse`
        def CreateHostVulExportJob(request)
          body = send_request('CreateHostVulExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostVulExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建IaC检测接入Token

        # @param request: Request instance for CreateIaCAccessToken.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateIaCAccessTokenRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateIaCAccessTokenResponse`
        def CreateIaCAccessToken(request)
          body = send_request('CreateIaCAccessToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIaCAccessTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建IaC检测文件导出任务

        # @param request: Request instance for CreateIaCFileExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateIaCFileExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateIaCFileExportJobResponse`
        def CreateIaCFileExportJob(request)
          body = send_request('CreateIaCFileExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIaCFileExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建IaC检测文件重新扫描任务

        # @param request: Request instance for CreateIaCFileReScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateIaCFileReScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateIaCFileReScanTaskResponse`
        def CreateIaCFileReScanTask(request)
          body = send_request('CreateIaCFileReScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIaCFileReScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像资产列表导出任务

        # @param request: Request instance for CreateImageAssetListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageAssetListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageAssetListExportJobResponse`
        def CreateImageAssetListExportJob(request)
          body = send_request('CreateImageAssetListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageAssetListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像关联容器资产导出任务

        # @param request: Request instance for CreateImageAssociatedContainerListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageAssociatedContainerListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageAssociatedContainerListExportJobResponse`
        def CreateImageAssociatedContainerListExportJob(request)
          body = send_request('CreateImageAssociatedContainerListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageAssociatedContainerListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像关联主机资产列表导出任务

        # @param request: Request instance for CreateImageAssociatedHostListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageAssociatedHostListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageAssociatedHostListExportJobResponse`
        def CreateImageAssociatedHostListExportJob(request)
          body = send_request('CreateImageAssociatedHostListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageAssociatedHostListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像组件列表导出任务

        # @param request: Request instance for CreateImageComponentListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageComponentListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageComponentListExportJobResponse`
        def CreateImageComponentListExportJob(request)
          body = send_request('CreateImageComponentListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageComponentListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像层漏洞列表导出任务

        # @param request: Request instance for CreateImageLayerVulListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageLayerVulListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageLayerVulListExportJobResponse`
        def CreateImageLayerVulListExportJob(request)
          body = send_request('CreateImageLayerVulListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageLayerVulListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像仓库联通性检查任务

        # @param request: Request instance for CreateImageRegistryConnectivityTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryConnectivityTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryConnectivityTaskResponse`
        def CreateImageRegistryConnectivityTask(request)
          body = send_request('CreateImageRegistryConnectivityTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageRegistryConnectivityTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像仓库列表导出任务

        # @param request: Request instance for CreateImageRegistryListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryListExportJobResponse`
        def CreateImageRegistryListExportJob(request)
          body = send_request('CreateImageRegistryListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageRegistryListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像扫描任务

        # @param request: Request instance for CreateImageRegistryScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryScanTaskResponse`
        def CreateImageRegistryScanTask(request)
          body = send_request('CreateImageRegistryScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageRegistryScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像仓库镜像扫描任务配置

        # @param request: Request instance for CreateImageRegistryTimedScanTaskConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryTimedScanTaskConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageRegistryTimedScanTaskConfigResponse`
        def CreateImageRegistryTimedScanTaskConfig(request)
          body = send_request('CreateImageRegistryTimedScanTaskConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageRegistryTimedScanTaskConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像敏感信息列表导出任务

        # @param request: Request instance for CreateImageSensitiveInfoListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageSensitiveInfoListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageSensitiveInfoListExportJobResponse`
        def CreateImageSensitiveInfoListExportJob(request)
          body = send_request('CreateImageSensitiveInfoListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageSensitiveInfoListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建容器镜像敏感信息白名单

        # @param request: Request instance for CreateImageSensitiveWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageSensitiveWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageSensitiveWhitelistResponse`
        def CreateImageSensitiveWhitelist(request)
          body = send_request('CreateImageSensitiveWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageSensitiveWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像木马病毒列表导出任务

        # @param request: Request instance for CreateImageVirusListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageVirusListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageVirusListExportJobResponse`
        def CreateImageVirusListExportJob(request)
          body = send_request('CreateImageVirusListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageVirusListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像木马白名单

        # @param request: Request instance for CreateImageVirusWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageVirusWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageVirusWhitelistResponse`
        def CreateImageVirusWhitelist(request)
          body = send_request('CreateImageVirusWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageVirusWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像漏洞列表导出任务

        # @param request: Request instance for CreateImageVulListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageVulListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageVulListExportJobResponse`
        def CreateImageVulListExportJob(request)
          body = send_request('CreateImageVulListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageVulListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建镜像漏洞概览列表导出任务

        # @param request: Request instance for CreateImageVulSummaryListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageVulSummaryListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageVulSummaryListExportJobResponse`
        def CreateImageVulSummaryListExportJob(request)
          body = send_request('CreateImageVulSummaryListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageVulSummaryListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建容器镜像漏洞白名单

        # @param request: Request instance for CreateImageVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateImageVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateImageVulWhitelistResponse`
        def CreateImageVulWhitelist(request)
          body = send_request('CreateImageVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Pod关联容器列表导出任务。导出字段包含容器ID、容器名称、运行状态、节点ID、节点类型、镜像ID、镜像名称、隔离状态。支持Filter过滤。导出通过异步任务实现，返回JobId后前端轮询查询导出任务状态。

        # @param request: Request instance for CreatePodContainerListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreatePodContainerListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreatePodContainerListExportJobResponse`
        def CreatePodContainerListExportJob(request)
          body = send_request('CreatePodContainerListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePodContainerListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建Pod关联服务列表导出任务。导出字段包含服务名称、类型、Selector、命名空间、创建时间。支持Filter过滤。当传入PodUniqueID时，复用DescribeClusterServiceList的Pod关联匹配逻辑。导出通过异步任务实现，返回JobId后前端轮询查询导出任务状态。

        # @param request: Request instance for CreatePodServiceListExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreatePodServiceListExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreatePodServiceListExportJobResponse`
        def CreatePodServiceListExportJob(request)
          body = send_request('CreatePodServiceListExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePodServiceListExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公网资产导出任务

        # @param request: Request instance for CreatePublicAssetsExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreatePublicAssetsExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreatePublicAssetsExportJobResponse`
        def CreatePublicAssetsExportJob(request)
          body = send_request('CreatePublicAssetsExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePublicAssetsExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建风险中心扫描任务

        # @param request: Request instance for CreateRiskCenterScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateRiskCenterScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateRiskCenterScanTaskResponse`
        def CreateRiskCenterScanTask(request)
          body = send_request('CreateRiskCenterScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRiskCenterScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云资源配置检查风险详情导出任务示例

        # @param request: Request instance for CreateRiskDetailExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateRiskDetailExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateRiskDetailExportJobResponse`
        def CreateRiskDetailExportJob(request)
          body = send_request('CreateRiskDetailExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRiskDetailExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一条 ACL 用户访问控制规则。可选择引用若干条系统规则，亦可自定义规则，两者至少提供其一

        # @param request: Request instance for CreateSandboxACLRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateSandboxACLRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateSandboxACLRuleResponse`
        def CreateSandboxACLRule(request)
          body = send_request('CreateSandboxACLRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxACLRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一条 DLP 用户规则。可引用若干系统规则（SystemRuleIDList），亦可自定义规则（UserRuleContent，名称 + 正则），两者至少提供其一；UserRuleInfo 为新增可选的结构化入参，与 UserRuleContent 同时传入时以 UserRuleInfo 为准

        # @param request: Request instance for CreateSandboxDLPRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateSandboxDLPRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateSandboxDLPRuleResponse`
        def CreateSandboxDLPRule(request)
          body = send_request('CreateSandboxDLPRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxDLPRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建命令沙箱文件访问规则

        # @param request: Request instance for CreateSandboxFileRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateSandboxFileRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateSandboxFileRuleResponse`
        def CreateSandboxFileRule(request)
          body = send_request('CreateSandboxFileRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxFileRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一条 LLM 审计用户规则。必须引用至少一条系统规则，不支持用户自定义规则内容

        # @param request: Request instance for CreateSandboxLLMAuditRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateSandboxLLMAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateSandboxLLMAuditRuleResponse`
        def CreateSandboxLLMAuditRule(request)
          body = send_request('CreateSandboxLLMAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxLLMAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暴露面扫描结果导出任务

        # @param request: Request instance for CreateScanStatisticExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateScanStatisticExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateScanStatisticExportJobResponse`
        def CreateScanStatisticExportJob(request)
          body = send_request('CreateScanStatisticExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScanStatisticExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建立即检测任务

        # @param request: Request instance for CreateScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateScanTaskResponse`
        def CreateScanTask(request)
          body = send_request('CreateScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传 Skill ZIP 文件，触发异步安全检测。上传成功后应使用返回的 ContentHash + EngineVersion 轮询 DescribeSkillScanResult 接口获取结果。上传接口具备幂等性，同一 Hash 的文件重复上传不会创建重复任务。检测结果保留90天，超期后需重新上传检测。

        # @param request: Request instance for CreateSkillScan.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateSkillScanRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateSkillScanResponse`
        def CreateSkillScan(request)
          body = send_request('CreateSkillScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSkillScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对修复失败的漏洞修复任务进行重试，仅针对原任务中修复失败的主机重新下发修复指令。仅当任务状态为部分修复失败或全部修复失败时允许重试。

        # @param request: Request instance for CreateVulFixRetryTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulFixRetryTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulFixRetryTaskResponse`
        def CreateVulFixRetryTask(request)
          body = send_request('CreateVulFixRetryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulFixRetryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户手动提交漏洞修复任务，指定需要修复的漏洞和目标主机，系统创建修复任务并下发执行。支持指定修复超时时间、是否创建快照等选项。通过FixItems数组精确控制每个漏洞/KB补丁修复哪些主机。

        # @param request: Request instance for CreateVulFixTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulFixTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulFixTaskResponse`
        def CreateVulFixTask(request)
          body = send_request('CreateVulFixTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulFixTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建已修复漏洞列表的导出任务。支持与 DescribeVulFixedList 相同的过滤条件，导出通过异步任务实现，返回 JobID 后前端轮询查询导出任务状态。导出字段包含漏洞ID、漏洞名称、漏洞等级、VPR评级、漏洞类型、CVE编号、主机名称、实例ID、关联组件&路径、修复时间。

        # @param request: Request instance for CreateVulFixedExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulFixedExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulFixedExportJobResponse`
        def CreateVulFixedExportJob(request)
          body = send_request('CreateVulFixedExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulFixedExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞重新扫描

        # @param request: Request instance for CreateVulReScan.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulReScanRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulReScanResponse`
        def CreateVulReScan(request)
          body = send_request('CreateVulReScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulReScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞风险导出任务

        # @param request: Request instance for CreateVulRisksExportJob.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulRisksExportJobRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulRisksExportJobResponse`
        def CreateVulRisksExportJob(request)
          body = send_request('CreateVulRisksExportJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulRisksExportJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建漏洞扫描（一键扫描）

        # @param request: Request instance for CreateVulScanManual.
        # @type request: :class:`Tencentcloud::csip::V20221121::CreateVulScanManualRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::CreateVulScanManualResponse`
        def CreateVulScanManual(request)
          body = send_request('CreateVulScanManual', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulScanManualResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI助手的SMTP邮箱接入信息

        # @param request: Request instance for DeleteAIAnalysisSMTPAccess.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteAIAnalysisSMTPAccessRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteAIAnalysisSMTPAccessResponse`
        def DeleteAIAnalysisSMTPAccess(request)
          body = send_request('DeleteAIAnalysisSMTPAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIAnalysisSMTPAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除AI 定时任务。

        # 根据指定的AI 定时任务 ID 删除对应的定时任务。删除后不可恢复。

        # @param request: Request instance for DeleteAISchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteAIScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteAIScheduleResponse`
        def DeleteAISchedule(request)
          body = send_request('DeleteAISchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户创建的指定资产搜索视图

        # @param request: Request instance for DeleteAssetFilterView.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteAssetFilterViewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteAssetFilterViewResponse`
        def DeleteAssetFilterView(request)
          body = send_request('DeleteAssetFilterView', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAssetFilterViewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资产标签

        # @param request: Request instance for DeleteAssetTag.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteAssetTagRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteAssetTagResponse`
        def DeleteAssetTag(request)
          body = send_request('DeleteAssetTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAssetTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除自定义基线策略。仅支持删除 PolicyType=SELF 的策略；删除后历史风险记录保留，但不再产生新结果。

        # @param request: Request instance for DeleteBaselineSelfDefinedPolicyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteBaselineSelfDefinedPolicyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteBaselineSelfDefinedPolicyListResponse`
        def DeleteBaselineSelfDefinedPolicyList(request)
          body = send_request('DeleteBaselineSelfDefinedPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineSelfDefinedPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 手动扫描任务删除接口

        # @param request: Request instance for DeleteCSIPMalwareScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteCSIPMalwareScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteCSIPMalwareScanTaskResponse`
        def DeleteCSIPMalwareScanTask(request)
          body = send_request('DeleteCSIPMalwareScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCSIPMalwareScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除集群

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteClusterResponse`
        def DeleteCluster(request)
          body = send_request('DeleteCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除已删除的cos ak资产

        # @param request: Request instance for DeleteCosAkAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteCosAkAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteCosAkAssetResponse`
        def DeleteCosAkAsset(request)
          body = send_request('DeleteCosAkAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCosAkAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略

        # @param request: Request instance for DeleteCosPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteCosPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteCosPolicyResponse`
        def DeleteCosPolicy(request)
          body = send_request('DeleteCosPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCosPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名和ip请求

        # @param request: Request instance for DeleteDomainAndIp.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDomainAndIpRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDomainAndIpResponse`
        def DeleteDomainAndIp(request)
          body = send_request('DeleteDomainAndIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainAndIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm申请单

        # @param request: Request instance for DeleteDspmApplyOrder.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmApplyOrderRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmApplyOrderResponse`
        def DeleteDspmApplyOrder(request)
          body = send_request('DeleteDspmApplyOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmApplyOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm资产账号

        # @param request: Request instance for DeleteDspmAssetAccount.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmAssetAccountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmAssetAccountResponse`
        def DeleteDspmAssetAccount(request)
          body = send_request('DeleteDspmAssetAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmAssetAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm审计过滤策略

        # @param request: Request instance for DeleteDspmAuditFilterStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmAuditFilterStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmAuditFilterStrategyResponse`
        def DeleteDspmAuditFilterStrategy(request)
          body = send_request('DeleteDspmAuditFilterStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmAuditFilterStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份日志

        # @param request: Request instance for DeleteDspmBackupLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmBackupLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmBackupLogListResponse`
        def DeleteDspmBackupLogList(request)
          body = send_request('DeleteDspmBackupLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmBackupLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消日志投递配置

        # @param request: Request instance for DeleteDspmCkafkaConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmCkafkaConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmCkafkaConfigResponse`
        def DeleteDspmCkafkaConfig(request)
          body = send_request('DeleteDspmCkafkaConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmCkafkaConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除导出任务

        # @param request: Request instance for DeleteDspmExportTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmExportTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmExportTaskResponse`
        def DeleteDspmExportTask(request)
          body = send_request('DeleteDspmExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别分类

        # @param request: Request instance for DeleteDspmIdentifyCategory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyCategoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyCategoryResponse`
        def DeleteDspmIdentifyCategory(request)
          body = send_request('DeleteDspmIdentifyCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别模板分类关联

        # @param request: Request instance for DeleteDspmIdentifyComplianceCategoryRelation.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceCategoryRelationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceCategoryRelationResponse`
        def DeleteDspmIdentifyComplianceCategoryRelation(request)
          body = send_request('DeleteDspmIdentifyComplianceCategoryRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyComplianceCategoryRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别模板

        # @param request: Request instance for DeleteDspmIdentifyComplianceGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceGroupResponse`
        def DeleteDspmIdentifyComplianceGroup(request)
          body = send_request('DeleteDspmIdentifyComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别模板数据项关联

        # @param request: Request instance for DeleteDspmIdentifyComplianceRuleRelation.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceRuleRelationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyComplianceRuleRelationResponse`
        def DeleteDspmIdentifyComplianceRuleRelation(request)
          body = send_request('DeleteDspmIdentifyComplianceRuleRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyComplianceRuleRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别分级组

        # @param request: Request instance for DeleteDspmIdentifyLevelGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyLevelGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyLevelGroupResponse`
        def DeleteDspmIdentifyLevelGroup(request)
          body = send_request('DeleteDspmIdentifyLevelGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyLevelGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspm数据识别数据项

        # @param request: Request instance for DeleteDspmIdentifyRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmIdentifyRuleResponse`
        def DeleteDspmIdentifyRule(request)
          body = send_request('DeleteDspmIdentifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmIdentifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm个人身份id

        # @param request: Request instance for DeleteDspmPersonalIdentify.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmPersonalIdentifyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmPersonalIdentifyResponse`
        def DeleteDspmPersonalIdentify(request)
          body = send_request('DeleteDspmPersonalIdentify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmPersonalIdentifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除恢复日志

        # @param request: Request instance for DeleteDspmRestoreLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmRestoreLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmRestoreLogListResponse`
        def DeleteDspmRestoreLogList(request)
          body = send_request('DeleteDspmRestoreLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmRestoreLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm自定义风险策略。仅支持删除自定义策略（rule_source=custom）；内置策略不可删除，请通过 ModifyDspmRiskStrategy 的 IsEnabled 禁用。

        # @param request: Request instance for DeleteDspmRiskStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmRiskStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmRiskStrategyResponse`
        def DeleteDspmRiskStrategy(request)
          body = send_request('DeleteDspmRiskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmRiskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除dspmg共享账号数据

        # @param request: Request instance for DeleteDspmShareUserData.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmShareUserDataRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmShareUserDataResponse`
        def DeleteDspmShareUserData(request)
          body = send_request('DeleteDspmShareUserData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmShareUserDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除Dspm白名单策略

        # @param request: Request instance for DeleteDspmWhitelistStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteDspmWhitelistStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteDspmWhitelistStrategyResponse`
        def DeleteDspmWhitelistStrategy(request)
          body = send_request('DeleteDspmWhitelistStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDspmWhitelistStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除EDR策略

        # @param request: Request instance for DeleteEDRRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteEDRRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteEDRRulesResponse`
        def DeleteEDRRules(request)
          body = send_request('DeleteEDRRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEDRRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除已终止的扫描任务（物理删除主表及明细表）。只允许删除终态任务，只有创建者可操作。

        # @param request: Request instance for DeleteEDRScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteEDRScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteEDRScanTaskResponse`
        def DeleteEDRScanTask(request)
          body = send_request('DeleteEDRScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEDRScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除EDR日志采集路径配置

        # @param request: Request instance for DeleteEdrLogCollectPaths.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteEdrLogCollectPathsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteEdrLogCollectPathsResponse`
        def DeleteEdrLogCollectPaths(request)
          body = send_request('DeleteEdrLogCollectPaths', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdrLogCollectPathsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-删除规则

        # @param request: Request instance for DeleteExposureAutoTagRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteExposureAutoTagRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteExposureAutoTagRuleResponse`
        def DeleteExposureAutoTagRule(request)
          body = send_request('DeleteExposureAutoTagRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteExposureAutoTagRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除IaC检测接入Token

        # @param request: Request instance for DeleteIaCAccessToken.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteIaCAccessTokenRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteIaCAccessTokenResponse`
        def DeleteIaCAccessToken(request)
          body = send_request('DeleteIaCAccessToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIaCAccessTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除IaC检测文件

        # @param request: Request instance for DeleteIaCFile.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteIaCFileRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteIaCFileResponse`
        def DeleteIaCFile(request)
          body = send_request('DeleteIaCFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIaCFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像仓库信息

        # @param request: Request instance for DeleteImageRegistry.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryResponse`
        def DeleteImageRegistry(request)
          body = send_request('DeleteImageRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像仓库扫描任务

        # @param request: Request instance for DeleteImageRegistryScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryScanTaskResponse`
        def DeleteImageRegistryScanTask(request)
          body = send_request('DeleteImageRegistryScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageRegistryScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像仓库定时扫描任务配置

        # @param request: Request instance for DeleteImageRegistryTimedScanTaskConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryTimedScanTaskConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageRegistryTimedScanTaskConfigResponse`
        def DeleteImageRegistryTimedScanTaskConfig(request)
          body = send_request('DeleteImageRegistryTimedScanTaskConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageRegistryTimedScanTaskConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除容器镜像敏感信息白名单

        # @param request: Request instance for DeleteImageSensitiveWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageSensitiveWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageSensitiveWhitelistResponse`
        def DeleteImageSensitiveWhitelist(request)
          body = send_request('DeleteImageSensitiveWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageSensitiveWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像木马白名单

        # @param request: Request instance for DeleteImageVirusWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageVirusWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageVirusWhitelistResponse`
        def DeleteImageVirusWhitelist(request)
          body = send_request('DeleteImageVirusWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageVirusWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除容器镜像漏洞白名单

        # @param request: Request instance for DeleteImageVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteImageVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteImageVulWhitelistResponse`
        def DeleteImageVulWhitelist(request)
          body = send_request('DeleteImageVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除异地登录白名单规则。

        # @param request: Request instance for DeleteLoginWhiteList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteLoginWhiteListResponse`
        def DeleteLoginWhiteList(request)
          body = send_request('DeleteLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除机器清理记录

        # @param request: Request instance for DeleteMachineClearHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteMachineClearHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteMachineClearHistoryResponse`
        def DeleteMachineClearHistory(request)
          body = send_request('DeleteMachineClearHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineClearHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除风险中心扫描任务

        # @param request: Request instance for DeleteRiskScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteRiskScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteRiskScanTaskResponse`
        def DeleteRiskScanTask(request)
          body = send_request('DeleteRiskScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除 ACL 用户规则。删除后规则不再返回到列表查询，并不再对流量生效。任一 ID 不存在或属于其他租户时整体返回错误

        # @param request: Request instance for DeleteSandboxACLRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteSandboxACLRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteSandboxACLRuleResponse`
        def DeleteSandboxACLRule(request)
          body = send_request('DeleteSandboxACLRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxACLRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除 DLP 用户规则。任一 ID 不存在或属于其他租户时整体返回错误

        # @param request: Request instance for DeleteSandboxDLPRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteSandboxDLPRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteSandboxDLPRuleResponse`
        def DeleteSandboxDLPRule(request)
          body = send_request('DeleteSandboxDLPRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxDLPRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建命令沙箱文件访问规则

        # @param request: Request instance for DeleteSandboxFileRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteSandboxFileRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteSandboxFileRuleResponse`
        def DeleteSandboxFileRule(request)
          body = send_request('DeleteSandboxFileRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxFileRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除 LLM 审计用户规则。任一 ID 不存在或属于其他租户时整体返回错误

        # @param request: Request instance for DeleteSandboxLLMAuditRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteSandboxLLMAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteSandboxLLMAuditRuleResponse`
        def DeleteSandboxLLMAuditRule(request)
          body = send_request('DeleteSandboxLLMAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxLLMAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除漏洞白名单

        # @param request: Request instance for DeleteVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteVulWhitelistResponse`
        def DeleteVulWhitelist(request)
          body = send_request('DeleteVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除通知策略。

        # @param request: Request instance for DeleteWebhookPolicies.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteWebhookPoliciesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteWebhookPoliciesResponse`
        def DeleteWebhookPolicies(request)
          body = send_request('DeleteWebhookPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebhookPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除接收机器人。删除前会自动从所有引用了这些机器人的策略中移除引用关系。

        # @param request: Request instance for DeleteWebhookReceivers.
        # @type request: :class:`Tencentcloud::csip::V20221121::DeleteWebhookReceiversRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DeleteWebhookReceiversResponse`
        def DeleteWebhookReceivers(request)
          body = send_request('DeleteWebhookReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebhookReceiversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 AI agent 资产列表

        # @param request: Request instance for DescribeAIAgentAssetList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentAssetListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentAssetListResponse`
        def DescribeAIAgentAssetList(request)
          body = send_request('DescribeAIAgentAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAgentAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 AIAgent 资产凭据扫描列表

        # @param request: Request instance for DescribeAIAgentCredentialList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentCredentialListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentCredentialListResponse`
        def DescribeAIAgentCredentialList(request)
          body = send_request('DescribeAIAgentCredentialList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAgentCredentialListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按凭据组行 ID 分页查询单个凭据的泄露位置列表。用于配合 DescribeAIAgentCredentialList 接口拆分后的展开场景，避免单接口在数据倾斜场景下一次拉取几十万行 location 导致性能问题。

        # @param request: Request instance for DescribeAIAgentCredentialLocationList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentCredentialLocationListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentCredentialLocationListResponse`
        def DescribeAIAgentCredentialLocationList(request)
          body = send_request('DescribeAIAgentCredentialLocationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAgentCredentialLocationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 AI Agent skill 列表

        # @param request: Request instance for DescribeAIAgentSkillList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentSkillListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAgentSkillListResponse`
        def DescribeAIAgentSkillList(request)
          body = send_request('DescribeAIAgentSkillList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAgentSkillListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 AI 分析文件的临时下载链接。

        # 传入文件的原始地址，返回带签名的临时下载链接，链接有效期为 2 小时。

        # @param request: Request instance for DescribeAIAnalysisFileDownloadURL.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisFileDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisFileDownloadURLResponse`
        def DescribeAIAnalysisFileDownloadURL(request)
          body = send_request('DescribeAIAnalysisFileDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisFileDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云安全AI助手历史分析记录

        # @param request: Request instance for DescribeAIAnalysisHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisHistoryResponse`
        def DescribeAIAnalysisHistory(request)
          body = send_request('DescribeAIAnalysisHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取AI问答推荐问题

        # @param request: Request instance for DescribeAIAnalysisRecommendQuestions.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisRecommendQuestionsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisRecommendQuestionsResponse`
        def DescribeAIAnalysisRecommendQuestions(request)
          body = send_request('DescribeAIAnalysisRecommendQuestions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisRecommendQuestionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云安全AI助手基础信息

        # @param request: Request instance for DescribeAIAnalysisRobotInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisRobotInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisRobotInfoResponse`
        def DescribeAIAnalysisRobotInfo(request)
          body = send_request('DescribeAIAnalysisRobotInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisRobotInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI助手的SMTP邮箱接入信息

        # @param request: Request instance for DescribeAIAnalysisSMTP.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisSMTPRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIAnalysisSMTPResponse`
        def DescribeAIAnalysisSMTP(request)
          body = send_request('DescribeAIAnalysisSMTP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisSMTPResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI-Link智链引擎配置

        # @param request: Request instance for DescribeAILinkSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAILinkSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAILinkSettingResponse`
        def DescribeAILinkSetting(request)
          body = send_request('DescribeAILinkSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAILinkSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 定时任务列表。

        # 支持分页查询和状态过滤，返回定时任务列表及总条数。

        # @param request: Request instance for DescribeAIScheduleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleListResponse`
        def DescribeAIScheduleList(request)
          body = send_request('DescribeAIScheduleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIScheduleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 定时任务触发计划。

        # 查询指定AI 定时任务在给定时间窗口内的未来触发计划列表。

        # @param request: Request instance for DescribeAISchedulePlanList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAISchedulePlanListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAISchedulePlanListResponse`
        def DescribeAISchedulePlanList(request)
          body = send_request('DescribeAISchedulePlanList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAISchedulePlanListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 定时任务统计信息。

        # 返回当前用户的定时任务总数和当前运行中的任务数量。

        # @param request: Request instance for DescribeAIScheduleStats.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleStatsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleStatsResponse`
        def DescribeAIScheduleStats(request)
          body = send_request('DescribeAIScheduleStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIScheduleStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 定时任务执行详情。

        # 根据任务 ID 查询指定执行任务的详细信息，包括执行状态、结果等。

        # @param request: Request instance for DescribeAIScheduleTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleTaskDetailResponse`
        def DescribeAIScheduleTaskDetail(request)
          body = send_request('DescribeAIScheduleTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIScheduleTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AI 定时任务执行列表。

        # 查询AI 定时任务的历史执行记录，支持分页和按定时任务 ID 过滤。

        # @param request: Request instance for DescribeAIScheduleTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAIScheduleTaskListResponse`
        def DescribeAIScheduleTaskList(request)
          body = send_request('DescribeAIScheduleTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIScheduleTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥告警记录AI分析结果详情

        # @param request: Request instance for DescribeAKAnalysisDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAKAnalysisDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAKAnalysisDetailResponse`
        def DescribeAKAnalysisDetail(request)
          body = send_request('DescribeAKAnalysisDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAKAnalysisDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断用户是否灰度用户

        # @param request: Request instance for DescribeAbTestUser.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAbTestUserRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAbTestUserResponse`
        def DescribeAbTestUser(request)
          body = send_request('DescribeAbTestUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbTestUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取调用记录列表

        # @param request: Request instance for DescribeAbnormalCallRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAbnormalCallRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAbnormalCallRecordResponse`
        def DescribeAbnormalCallRecord(request)
          body = send_request('DescribeAbnormalCallRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAbnormalCallRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥告警记录列表

        # @param request: Request instance for DescribeAccessKeyAlarm.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAlarmRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAlarmResponse`
        def DescribeAccessKeyAlarm(request)
          body = send_request('DescribeAccessKeyAlarm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyAlarmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥告警记录详情

        # @param request: Request instance for DescribeAccessKeyAlarmDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAlarmDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAlarmDetailResponse`
        def DescribeAccessKeyAlarmDetail(request)
          body = send_request('DescribeAccessKeyAlarmDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyAlarmDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户访问密钥资产列表

        # @param request: Request instance for DescribeAccessKeyAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyAssetResponse`
        def DescribeAccessKeyAsset(request)
          body = send_request('DescribeAccessKeyAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥风险记录列表

        # @param request: Request instance for DescribeAccessKeyRisk.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyRiskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyRiskResponse`
        def DescribeAccessKeyRisk(request)
          body = send_request('DescribeAccessKeyRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥风险记录详情

        # @param request: Request instance for DescribeAccessKeyRiskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyRiskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyRiskDetailResponse`
        def DescribeAccessKeyRiskDetail(request)
          body = send_request('DescribeAccessKeyRiskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyRiskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户的账号详情

        # @param request: Request instance for DescribeAccessKeyUserDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyUserDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyUserDetailResponse`
        def DescribeAccessKeyUserDetail(request)
          body = send_request('DescribeAccessKeyUserDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyUserDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户的账号列表

        # @param request: Request instance for DescribeAccessKeyUserList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyUserListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyUserListResponse`
        def DescribeAccessKeyUserList(request)
          body = send_request('DescribeAccessKeyUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问密钥告警记录列表

        # @param request: Request instance for DescribeAccessKeyWhiteList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyWhiteListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAccessKeyWhiteListResponse`
        def DescribeAccessKeyWhiteList(request)
          body = send_request('DescribeAccessKeyWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessKeyWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户端配置设置（配置组），从DescribeAgentRunMode拆分出的独立接口

        # @param request: Request instance for DescribeAgentConfigSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAgentConfigSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAgentConfigSettingResponse`
        def DescribeAgentConfigSetting(request)
          body = send_request('DescribeAgentConfigSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentConfigSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取客户端运行模式和运行配置信息

        # @param request: Request instance for DescribeAgentRunMode.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAgentRunModeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAgentRunModeResponse`
        def DescribeAgentRunMode(request)
          body = send_request('DescribeAgentRunMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentRunModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户端运行策略（策略组），从DescribeAgentRunMode拆分出的独立接口

        # @param request: Request instance for DescribeAgentRunPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAgentRunPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAgentRunPolicyResponse`
        def DescribeAgentRunPolicy(request)
          body = send_request('DescribeAgentRunPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentRunPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 告警中心全量告警列表接口

        # @param request: Request instance for DescribeAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAlertListResponse`
        def DescribeAlertList(request)
          body = send_request('DescribeAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产中组件列表

        # @param request: Request instance for DescribeAssetComponentList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetComponentListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetComponentListResponse`
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

        # 查询镜像仓库组件关联的镜像列表

        # @param request: Request instance for DescribeAssetComponentRelatedImageList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetComponentRelatedImageListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetComponentRelatedImageListResponse`
        def DescribeAssetComponentRelatedImageList(request)
          body = send_request('DescribeAssetComponentRelatedImageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetComponentRelatedImageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产详情信息

        # @param request: Request instance for DescribeAssetDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetDetailResponse`
        def DescribeAssetDetail(request)
          body = send_request('DescribeAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产搜索视图

        # @param request: Request instance for DescribeAssetFilterViews.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetFilterViewsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetFilterViewsResponse`
        def DescribeAssetFilterViews(request)
          body = send_request('DescribeAssetFilterViews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetFilterViewsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产信息

        # @param request: Request instance for DescribeAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetInfoResponse`
        def DescribeAssetInfo(request)
          body = send_request('DescribeAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产最近同步时间

        # @param request: Request instance for DescribeAssetLastSyncTime.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetLastSyncTimeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetLastSyncTimeResponse`
        def DescribeAssetLastSyncTime(request)
          body = send_request('DescribeAssetLastSyncTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetLastSyncTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产概览统计

        # @param request: Request instance for DescribeAssetOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetOverviewResponse`
        def DescribeAssetOverview(request)
          body = send_request('DescribeAssetOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析-暴露路径下主机节点的进程列表

        # @param request: Request instance for DescribeAssetProcessList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetProcessListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetProcessListResponse`
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

        # 资产风险详情

        # @param request: Request instance for DescribeAssetRiskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskDetailResponse`
        def DescribeAssetRiskDetail(request)
          body = send_request('DescribeAssetRiskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetRiskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产视角下云资源配置风险列表

        # @param request: Request instance for DescribeAssetRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetRiskListResponse`
        def DescribeAssetRiskList(request)
          body = send_request('DescribeAssetRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产同步任务状态

        # @param request: Request instance for DescribeAssetSyncTaskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetSyncTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetSyncTaskStatusResponse`
        def DescribeAssetSyncTaskStatus(request)
          body = send_request('DescribeAssetSyncTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSyncTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产标签属性

        # @param request: Request instance for DescribeAssetTagAttributes.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagAttributesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagAttributesResponse`
        def DescribeAssetTagAttributes(request)
          body = send_request('DescribeAssetTagAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTagAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产标签树结构数据

        # @param request: Request instance for DescribeAssetTagTree.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagTreeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagTreeResponse`
        def DescribeAssetTagTree(request)
          body = send_request('DescribeAssetTagTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTagTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 全部资产

        # @param request: Request instance for DescribeAssetTags.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetTagsResponse`
        def DescribeAssetTags(request)
          body = send_request('DescribeAssetTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产树结构

        # @param request: Request instance for DescribeAssetTree.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetTreeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetTreeResponse`
        def DescribeAssetTree(request)
          body = send_request('DescribeAssetTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产视角的漏洞风险列表

        # @param request: Request instance for DescribeAssetViewVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssetViewVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssetViewVulRiskListResponse`
        def DescribeAssetViewVulRiskList(request)
          body = send_request('DescribeAssetViewVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetViewVulRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询是否绑定角色

        # @param request: Request instance for DescribeAssumeRole.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeAssumeRoleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeAssumeRoleResponse`
        def DescribeAssumeRole(request)
          body = send_request('DescribeAssumeRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssumeRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询后台扫描引擎地域列表

        # @param request: Request instance for DescribeBackendScanEngineRegionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBackendScanEngineRegionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBackendScanEngineRegionListResponse`
        def DescribeBackendScanEngineRegionList(request)
          body = send_request('DescribeBackendScanEngineRegionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackendScanEngineRegionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取爆破阻断模式

        # @param request: Request instance for DescribeBanMode.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBanModeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBanModeResponse`
        def DescribeBanMode(request)
          body = send_request('DescribeBanMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBanModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取阻断按钮状态

        # @param request: Request instance for DescribeBanStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBanStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBanStatusResponse`
        def DescribeBanStatus(request)
          body = send_request('DescribeBanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取检测项维度的聚合扫描结果列表，用于策略详情页“检测项”Tab 按检测项展示通过/未通过资产数。

        # @param request: Request instance for DescribeBaselineAggregatedItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineAggregatedItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineAggregatedItemListResponse`
        def DescribeBaselineAggregatedItemList(request)
          body = send_request('DescribeBaselineAggregatedItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineAggregatedItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线策略维度的聚合扫描结果列表，用于概览页“基线扫描策略”模块按策略展示通过/未通过情况。

        # @param request: Request instance for DescribeBaselineAggregatedPolicyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineAggregatedPolicyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineAggregatedPolicyListResponse`
        def DescribeBaselineAggregatedPolicyList(request)
          body = send_request('DescribeBaselineAggregatedPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineAggregatedPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前处于“统计计算中”状态的策略 ID 列表，用于前端轮询判断扫描结果统计是否就绪。

        # @param request: Request instance for DescribeBaselineCalculatingStatisticsPolicyIDList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineCalculatingStatisticsPolicyIDListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineCalculatingStatisticsPolicyIDListResponse`
        def DescribeBaselineCalculatingStatisticsPolicyIDList(request)
          body = send_request('DescribeBaselineCalculatingStatisticsPolicyIDList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineCalculatingStatisticsPolicyIDListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类检测项列表

        # @param request: Request instance for DescribeBaselineCategoryItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineCategoryItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineCategoryItemListResponse`
        def DescribeBaselineCategoryItemList(request)
          body = send_request('DescribeBaselineCategoryItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineCategoryItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线风险修复历史记录列表，用于“修复记录”页展示已修复的检测项与对应资产。

        # @param request: Request instance for DescribeBaselineFixRecordList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineFixRecordListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineFixRecordListResponse`
        def DescribeBaselineFixRecordList(request)
          body = send_request('DescribeBaselineFixRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineFixRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取检测项维度的风险记录列表。

        # @param request: Request instance for DescribeBaselineItemRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineItemRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineItemRiskListResponse`
        def DescribeBaselineItemRiskList(request)
          body = send_request('DescribeBaselineItemRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取系统内置基线分类的检测项列表（父分类 → 子分类 → 内置检测项 ID 列表），用于策略编辑页选择基线检测项。

        # @param request: Request instance for DescribeBaselineMainTaskItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineMainTaskItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineMainTaskItemListResponse`
        def DescribeBaselineMainTaskItemList(request)
          body = send_request('DescribeBaselineMainTaskItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineMainTaskItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描主任务列表，用于“任务记录”页展示一键扫描 / 周期扫描 / 分散扫描的历史记录及结果。

        # @param request: Request instance for DescribeBaselineMainTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineMainTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineMainTaskListResponse`
        def DescribeBaselineMainTaskList(request)
          body = send_request('DescribeBaselineMainTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineMainTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线概览页的头部数据，含未通过检测项总数、近一年修复数、最近一次扫描时间、当前是否启用周期扫描等。

        # @param request: Request instance for DescribeBaselineOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineOverviewResponse`
        def DescribeBaselineOverview(request)
          body = send_request('DescribeBaselineOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取系统内置基线分类树（父分类 → 子分类 → 内置检测项 ID 列表），用于策略详情展示。

        # @param request: Request instance for DescribeBaselinePolicyCategoryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyCategoryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyCategoryListResponse`
        def DescribeBaselinePolicyCategoryList(request)
          body = send_request('DescribeBaselinePolicyCategoryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselinePolicyCategoryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取策略配置的检测项列表

        # @param request: Request instance for DescribeBaselinePolicyItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyItemListResponse`
        def DescribeBaselinePolicyItemList(request)
          body = send_request('DescribeBaselinePolicyItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselinePolicyItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线策略列表，用于“周期计划管理”等列表页展示系统/自定义策略及其配置情况。

        # @param request: Request instance for DescribeBaselinePolicyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyListResponse`
        def DescribeBaselinePolicyList(request)
          body = send_request('DescribeBaselinePolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselinePolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线策略名字存在的用户列表

        # @param request: Request instance for DescribeBaselinePolicyNameExistAppidList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyNameExistAppidListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselinePolicyNameExistAppidListResponse`
        def DescribeBaselinePolicyNameExistAppidList(request)
          body = send_request('DescribeBaselinePolicyNameExistAppidList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselinePolicyNameExistAppidListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描子任务列表，用于任务详情页“资产维度”展示每台主机/每个集群的扫描状态与失败原因。

        # @param request: Request instance for DescribeBaselineSubTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSubTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSubTaskListResponse`
        def DescribeBaselineSubTaskList(request)
          body = send_request('DescribeBaselineSubTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineSubTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前账号（管理员）的基线同步配置。仅集团管理员可调用，普通成员账号请使用 DescribeBaselineUserOtherConf。

        # @param request: Request instance for DescribeBaselineSyncConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSyncConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSyncConfResponse`
        def DescribeBaselineSyncConf(request)
          body = send_request('DescribeBaselineSyncConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineSyncConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取系统内置基线分类树（父分类 → 子分类 → 内置检测项 ID 列表），用于策略编辑页选择基线检测项。

        # @param request: Request instance for DescribeBaselineSystemCategoryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSystemCategoryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineSystemCategoryListResponse`
        def DescribeBaselineSystemCategoryList(request)
          body = send_request('DescribeBaselineSystemCategoryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineSystemCategoryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前账号的用户级基线配置。

        # @param request: Request instance for DescribeBaselineUserOtherConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineUserOtherConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineUserOtherConfResponse`
        def DescribeBaselineUserOtherConf(request)
          body = send_request('DescribeBaselineUserOtherConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineUserOtherConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前账号的“用户弱口令”自定义字典（服务端解密后返回明文）。

        # @param request: Request instance for DescribeBaselineUserWeakPasswordConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBaselineUserWeakPasswordConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBaselineUserWeakPasswordConfResponse`
        def DescribeBaselineUserWeakPasswordConf(request)
          body = send_request('DescribeBaselineUserWeakPasswordConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineUserWeakPasswordConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取爆破破解规则

        # @param request: Request instance for DescribeBruteAttackRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBruteAttackRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBruteAttackRulesResponse`
        def DescribeBruteAttackRules(request)
          body = send_request('DescribeBruteAttackRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBruteAttackRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看存储桶调用源ip列表

        # @param request: Request instance for DescribeBucketInvokeIpList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeBucketInvokeIpListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeBucketInvokeIpListResponse`
        def DescribeBucketInvokeIpList(request)
          body = send_request('DescribeBucketInvokeIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBucketInvokeIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源配置检查报告风险统计

        # @param request: Request instance for DescribeCFGRiskReportStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCFGRiskReportStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCFGRiskReportStatisticsResponse`
        def DescribeCFGRiskReportStatistics(request)
          body = send_request('DescribeCFGRiskReportStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCFGRiskReportStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描结果统计信息

        # @param request: Request instance for DescribeCFGRiskStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCFGRiskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCFGRiskStatisticsResponse`
        def DescribeCFGRiskStatistics(request)
          body = send_request('DescribeCFGRiskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCFGRiskStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云防资产中心统计数据

        # @param request: Request instance for DescribeCFWAssetStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCFWAssetStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCFWAssetStatisticsResponse`
        def DescribeCFWAssetStatistics(request)
          body = send_request('DescribeCFWAssetStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCFWAssetStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志索引信息

        # @param request: Request instance for DescribeCLSLogIndexV3.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCLSLogIndexV3Request`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCLSLogIndexV3Response`
        def DescribeCLSLogIndexV3(request)
          body = send_request('DescribeCLSLogIndexV3', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCLSLogIndexV3Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志分析检索接口v3

        # @param request: Request instance for DescribeCLSLogListV3.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCLSLogListV3Request`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCLSLogListV3Response`
        def DescribeCLSLogListV3(request)
          body = send_request('DescribeCLSLogListV3', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCLSLogListV3Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账号的合并版计费信息，包括订单状态、付费模式以及配额等详细信息。

        # @param request: Request instance for DescribeCSCPayInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSCPayInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSCPayInfoResponse`
        def DescribeCSCPayInfo(request)
          body = send_request('DescribeCSCPayInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSCPayInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询ModifyCSIPLicenseBinds返回的异步绑定任务进度。

        # @param request: Request instance for DescribeCSIPLicenseBindSchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSIPLicenseBindScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSIPLicenseBindScheduleResponse`
        def DescribeCSIPLicenseBindSchedule(request)
          body = send_request('DescribeCSIPLicenseBindSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSIPLicenseBindScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 扫描任务主机详情接口

        # @param request: Request instance for DescribeCSIPMalwareScanTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSIPMalwareScanTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSIPMalwareScanTaskDetailResponse`
        def DescribeCSIPMalwareScanTaskDetail(request)
          body = send_request('DescribeCSIPMalwareScanTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSIPMalwareScanTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 手动扫描进度查询接口

        # @param request: Request instance for DescribeCSIPMalwareScanTaskProgress.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSIPMalwareScanTaskProgressRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSIPMalwareScanTaskProgressResponse`
        def DescribeCSIPMalwareScanTaskProgress(request)
          body = send_request('DescribeCSIPMalwareScanTaskProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSIPMalwareScanTaskProgressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险中心风险概况示例

        # @param request: Request instance for DescribeCSIPRiskStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSIPRiskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSIPRiskStatisticsResponse`
        def DescribeCSIPRiskStatistics(request)
          body = send_request('DescribeCSIPRiskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSIPRiskStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取已购CSPM订单信息

        # @param request: Request instance for DescribeCSPMPayInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCSPMPayInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCSPMPayInfoResponse`
        def DescribeCSPMPayInfo(request)
          body = send_request('DescribeCSPMPayInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCSPMPayInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # cvm详情

        # @param request: Request instance for DescribeCVMAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetInfoResponse`
        def DescribeCVMAssetInfo(request)
          body = send_request('DescribeCVMAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCVMAssetInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取cvm列表

        # @param request: Request instance for DescribeCVMAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCVMAssetsResponse`
        def DescribeCVMAssets(request)
          body = send_request('DescribeCVMAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCVMAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析路径节点(主机专用)

        # @param request: Request instance for DescribeCWPExposePath.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPExposePathRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPExposePathResponse`
        def DescribeCWPExposePath(request)
          body = send_request('DescribeCWPExposePath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPExposePathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界分析资产列表(适用于主机资产)

        # @param request: Request instance for DescribeCWPExposures.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPExposuresRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPExposuresResponse`
        def DescribeCWPExposures(request)
          body = send_request('DescribeCWPExposures', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPExposuresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询授权绑定任务的进度

        # @param request: Request instance for DescribeCWPLicenseBindSchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPLicenseBindScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPLicenseBindScheduleResponse`
        def DescribeCWPLicenseBindSchedule(request)
          body = send_request('DescribeCWPLicenseBindSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPLicenseBindScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 主机详情

        # @param request: Request instance for DescribeCWPMachineDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachineDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachineDetailResponse`
        def DescribeCWPMachineDetail(request)
          body = send_request('DescribeCWPMachineDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPMachineDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可筛选操作系统列表.

        # @param request: Request instance for DescribeCWPMachineOsList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachineOsListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachineOsListResponse`
        def DescribeCWPMachineOsList(request)
          body = send_request('DescribeCWPMachineOsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPMachineOsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 主机列表

        # @param request: Request instance for DescribeCWPMachines.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachinesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPMachinesResponse`
        def DescribeCWPMachines(request)
          body = send_request('DescribeCWPMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资源订单列表

        # @param request: Request instance for DescribeCWPOrderList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPOrderListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPOrderListResponse`
        def DescribeCWPOrderList(request)
          body = send_request('DescribeCWPOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询腾讯云扫描IP信息

        # @param request: Request instance for DescribeCWPScanIpInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPScanIpInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPScanIpInfoResponse`
        def DescribeCWPScanIpInfo(request)
          body = send_request('DescribeCWPScanIpInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPScanIpInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务下发时长

        # @param request: Request instance for DescribeCWPTaskDuration.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCWPTaskDurationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCWPTaskDurationResponse`
        def DescribeCWPTaskDuration(request)
          body = send_request('DescribeCWPTaskDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCWPTaskDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取调用记录列表

        # @param request: Request instance for DescribeCallRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCallRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCallRecordResponse`
        def DescribeCallRecord(request)
          body = send_request('DescribeCallRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询联通性检测主机列表

        # @param request: Request instance for DescribeCheckConnectivityHostList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCheckConnectivityHostListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCheckConnectivityHostListResponse`
        def DescribeCheckConnectivityHostList(request)
          body = send_request('DescribeCheckConnectivityHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckConnectivityHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查视角下云资源配置风险列表

        # @param request: Request instance for DescribeCheckViewRisks.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCheckViewRisksRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCheckViewRisksResponse`
        def DescribeCheckViewRisks(request)
          body = send_request('DescribeCheckViewRisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCheckViewRisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询腾讯云指定CLB实例对应的监听器列表

        # @param request: Request instance for DescribeClbListenerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClbListenerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClbListenerListResponse`
        def DescribeClbListenerList(request)
          body = send_request('DescribeClbListenerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClbListenerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询腾讯云指定CLB实例对应的七层转发规则列表

        # @param request: Request instance for DescribeClbListenerRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClbListenerRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClbListenerRulesResponse`
        def DescribeClbListenerRules(request)
          body = send_request('DescribeClbListenerRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClbListenerRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询CLB后端服务列表

        # @param request: Request instance for DescribeClbTargets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClbTargetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClbTargetsResponse`
        def DescribeClbTargets(request)
          body = send_request('DescribeClbTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClbTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 全部资产

        # @param request: Request instance for DescribeCloudAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCloudAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCloudAssetsResponse`
        def DescribeCloudAssets(request)
          body = send_request('DescribeCloudAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云函数列表

        # @param request: Request instance for DescribeCloudFunctionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCloudFunctionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCloudFunctionListResponse`
        def DescribeCloudFunctionList(request)
          body = send_request('DescribeCloudFunctionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudFunctionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器集群资产列表

        # @param request: Request instance for DescribeClusterAssetList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetListResponse`
        def DescribeClusterAssetList(request)
          body = send_request('DescribeClusterAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群资产同步任务状态

        # @param request: Request instance for DescribeClusterAssetSyncTaskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetSyncTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetSyncTaskStatusResponse`
        def DescribeClusterAssetSyncTaskStatus(request)
          body = send_request('DescribeClusterAssetSyncTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAssetSyncTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群列表

        # @param request: Request instance for DescribeClusterAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterAssetsResponse`
        def DescribeClusterAssets(request)
          body = send_request('DescribeClusterAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器关联应用列表。通过容器ID获取关联的应用服务信息，支持分页。

        # @param request: Request instance for DescribeClusterContainerAppList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerAppListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerAppListResponse`
        def DescribeClusterContainerAppList(request)
          body = send_request('DescribeClusterContainerAppList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerAppListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器关联组件列表。通过容器ID获取关联的组件信息，支持分页。

        # @param request: Request instance for DescribeClusterContainerComponentList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerComponentListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerComponentListResponse`
        def DescribeClusterContainerComponentList(request)
          body = send_request('DescribeClusterContainerComponentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerComponentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群容器详情。通过容器ID获取容器基本信息、镜像信息、挂载信息、网络信息以及关联节点信息。

        # @param request: Request instance for DescribeClusterContainerDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerDetailResponse`
        def DescribeClusterContainerDetail(request)
          body = send_request('DescribeClusterContainerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群容器列表

        # @param request: Request instance for DescribeClusterContainerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerListResponse`
        def DescribeClusterContainerList(request)
          body = send_request('DescribeClusterContainerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器关联端口列表。通过容器ID获取关联的端口信息，支持分页。

        # @param request: Request instance for DescribeClusterContainerPortList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerPortListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerPortListResponse`
        def DescribeClusterContainerPortList(request)
          body = send_request('DescribeClusterContainerPortList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerPortListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器关联进程列表。通过容器ID获取关联的进程信息，支持按启动时间排序和分页。Filter.By支持StartTime；Filter.Order支持ASC/DESC。

        # @param request: Request instance for DescribeClusterContainerProcessList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerProcessListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerProcessListResponse`
        def DescribeClusterContainerProcessList(request)
          body = send_request('DescribeClusterContainerProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器关联Web服务列表。通过容器ID获取关联的Web服务信息，支持分页。

        # @param request: Request instance for DescribeClusterContainerWebServiceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerWebServiceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterContainerWebServiceListResponse`
        def DescribeClusterContainerWebServiceList(request)
          body = send_request('DescribeClusterContainerWebServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterContainerWebServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群详情

        # @param request: Request instance for DescribeClusterDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterDetailResponse`
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

        # 查询集群安装命令

        # @param request: Request instance for DescribeClusterInstallCommand.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterInstallCommandRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterInstallCommandResponse`
        def DescribeClusterInstallCommand(request)
          body = send_request('DescribeClusterInstallCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstallCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeClusterListV2.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterListV2Request`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterListV2Response`
        def DescribeClusterListV2(request)
          body = send_request('DescribeClusterListV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterListV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群命名空间列表

        # @param request: Request instance for DescribeClusterNamespaceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterNamespaceListResponse`
        def DescribeClusterNamespaceList(request)
          body = send_request('DescribeClusterNamespaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNamespaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群节点列表

        # @param request: Request instance for DescribeClusterNodeList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterNodeListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterNodeListResponse`
        def DescribeClusterNodeList(request)
          body = send_request('DescribeClusterNodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群pod列表

        # @param request: Request instance for DescribeClusterPodAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodAssetsResponse`
        def DescribeClusterPodAssets(request)
          body = send_request('DescribeClusterPodAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPodAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群 Pod 详情。容器资产改版 A 类新接口，为 Pod 资产详情页主入口。入参仅 UniqueID；出参覆盖资产信息、所属集群、命名空间、节点、Workload、以及按四个风险等级分组的风险事件数和告警事件数。

        # @param request: Request instance for DescribeClusterPodDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodDetailResponse`
        def DescribeClusterPodDetail(request)
          body = send_request('DescribeClusterPodDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPodDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群pod列表

        # @param request: Request instance for DescribeClusterPodList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterPodListResponse`
        def DescribeClusterPodList(request)
          body = send_request('DescribeClusterPodList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPodListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群service列表

        # @param request: Request instance for DescribeClusterServiceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterServiceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterServiceListResponse`
        def DescribeClusterServiceList(request)
          body = send_request('DescribeClusterServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群概览数据

        # @param request: Request instance for DescribeClusterSummary.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterSummaryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterSummaryResponse`
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

        # 查询集群超级节点详情，返回基本信息（所属地域/可用区/资产最后更新时间/节点来源/子网/核数）与所属集群信息（集群名称/集群ID/集群状态/Kubernetes版本/Kubelet版本）。

        # @param request: Request instance for DescribeClusterSuperNodeInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeClusterSuperNodeInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeClusterSuperNodeInfoResponse`
        def DescribeClusterSuperNodeInfo(request)
          body = send_request('DescribeClusterSuperNodeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterSuperNodeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源配置检测合规概览

        # @param request: Request instance for DescribeComplianceOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeComplianceOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeComplianceOverviewResponse`
        def DescribeComplianceOverview(request)
          body = send_request('DescribeComplianceOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 合规标准聚合视角下云资源配置风险列表

        # @param request: Request instance for DescribeComplianceRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeComplianceRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeComplianceRiskListResponse`
        def DescribeComplianceRiskList(request)
          body = send_request('DescribeComplianceRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源配置检测标准章节条款树

        # @param request: Request instance for DescribeComplianceStandardTermTree.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeComplianceStandardTermTreeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeComplianceStandardTermTreeResponse`
        def DescribeComplianceStandardTermTree(request)
          body = send_request('DescribeComplianceStandardTermTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceStandardTermTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源配置检测规范分类统计

        # @param request: Request instance for DescribeComplianceStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeComplianceStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeComplianceStatisticsResponse`
        def DescribeComplianceStatistics(request)
          body = send_request('DescribeComplianceStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComplianceStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源配置风险规则列表示例

        # @param request: Request instance for DescribeConfigCheckRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeConfigCheckRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeConfigCheckRulesResponse`
        def DescribeConfigCheckRules(request)
          body = send_request('DescribeConfigCheckRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigCheckRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看cos桶访问权限信息

        # @param request: Request instance for DescribeCosAccessPermission.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAccessPermissionRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAccessPermissionResponse`
        def DescribeCosAccessPermission(request)
          body = send_request('DescribeCosAccessPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAccessPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看对象存储访问权限列表

        # @param request: Request instance for DescribeCosAccessPermissions.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAccessPermissionsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAccessPermissionsResponse`
        def DescribeCosAccessPermissions(request)
          body = send_request('DescribeCosAccessPermissions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAccessPermissionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看COS接口列表

        # @param request: Request instance for DescribeCosActionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosActionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosActionListResponse`
        def DescribeCosActionList(request)
          body = send_request('DescribeCosActionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosActionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看ak资产列表信息

        # @param request: Request instance for DescribeCosAkAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAkAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAkAssetResponse`
        def DescribeCosAkAsset(request)
          body = send_request('DescribeCosAkAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAkAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看存储桶调用源ip列表

        # @param request: Request instance for DescribeCosAkInvokeIpList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAkInvokeIpListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAkInvokeIpListResponse`
        def DescribeCosAkInvokeIpList(request)
          body = send_request('DescribeCosAkInvokeIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAkInvokeIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看告警列表

        # @param request: Request instance for DescribeCosAlarmList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAlarmListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAlarmListResponse`
        def DescribeCosAlarmList(request)
          body = send_request('DescribeCosAlarmList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAlarmListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每日告警新增数据

        # @param request: Request instance for DescribeCosAlarmTrendData.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAlarmTrendDataRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAlarmTrendDataResponse`
        def DescribeCosAlarmTrendData(request)
          body = send_request('DescribeCosAlarmTrendData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAlarmTrendDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看cos资产列表

        # @param request: Request instance for DescribeCosAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAssetResponse`
        def DescribeCosAsset(request)
          body = send_request('DescribeCosAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取对应appid对应的当前正在扫描的taskid

        # @param request: Request instance for DescribeCosAssetSyncTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAssetSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAssetSyncTaskResponse`
        def DescribeCosAssetSyncTask(request)
          body = send_request('DescribeCosAssetSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAssetSyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看该appid下已购买的appid集合

        # @param request: Request instance for DescribeCosAuditAppIdList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditAppIdListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditAppIdListResponse`
        def DescribeCosAuditAppIdList(request)
          body = send_request('DescribeCosAuditAppIdList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAuditAppIdListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cos审计字典信息列表

        # @param request: Request instance for DescribeCosAuditDictionaryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditDictionaryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditDictionaryListResponse`
        def DescribeCosAuditDictionaryList(request)
          body = send_request('DescribeCosAuditDictionaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAuditDictionaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取审计支付信息

        # @param request: Request instance for DescribeCosAuditPayInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditPayInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosAuditPayInfoResponse`
        def DescribeCosAuditPayInfo(request)
          body = send_request('DescribeCosAuditPayInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosAuditPayInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取存储桶计费信息

        # @param request: Request instance for DescribeCosBucketBillingInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketBillingInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketBillingInfoResponse`
        def DescribeCosBucketBillingInfo(request)
          body = send_request('DescribeCosBucketBillingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosBucketBillingInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取存储桶信息

        # @param request: Request instance for DescribeCosBucketList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketListResponse`
        def DescribeCosBucketList(request)
          body = send_request('DescribeCosBucketList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosBucketListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看风险资产视角

        # @param request: Request instance for DescribeCosBucketRisk.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketRiskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosBucketRiskResponse`
        def DescribeCosBucketRisk(request)
          body = send_request('DescribeCosBucketRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosBucketRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cos文件数据识别结果列表

        # @param request: Request instance for DescribeCosIdentifyFileList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosIdentifyFileListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosIdentifyFileListResponse`
        def DescribeCosIdentifyFileList(request)
          body = send_request('DescribeCosIdentifyFileList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosIdentifyFileListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看调用记录关联的文件信息

        # @param request: Request instance for DescribeCosInvokeUa.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosInvokeUaRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosInvokeUaResponse`
        def DescribeCosInvokeUa(request)
          body = send_request('DescribeCosInvokeUa', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosInvokeUaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看cos调用日志

        # @param request: Request instance for DescribeCosIpInvokeLog.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosIpInvokeLogRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosIpInvokeLogResponse`
        def DescribeCosIpInvokeLog(request)
          body = send_request('DescribeCosIpInvokeLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosIpInvokeLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看调用记录关联的文件信息

        # @param request: Request instance for DescribeCosIpInvokeRecordFile.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosIpInvokeRecordFileRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosIpInvokeRecordFileResponse`
        def DescribeCosIpInvokeRecordFile(request)
          body = send_request('DescribeCosIpInvokeRecordFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosIpInvokeRecordFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询cos风险文件扫描任务

        # @param request: Request instance for DescribeCosObjectScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosObjectScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosObjectScanTaskResponse`
        def DescribeCosObjectScanTask(request)
          body = send_request('DescribeCosObjectScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosObjectScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # cos概览信息

        # @param request: Request instance for DescribeCosOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosOverviewResponse`
        def DescribeCosOverview(request)
          body = send_request('DescribeCosOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取策略列表信息

        # @param request: Request instance for DescribeCosPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosPolicyResponse`
        def DescribeCosPolicy(request)
          body = send_request('DescribeCosPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险接口列表信息

        # @param request: Request instance for DescribeCosRiskActionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskActionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskActionListResponse`
        def DescribeCosRiskActionList(request)
          body = send_request('DescribeCosRiskActionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRiskActionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看风险证据以及描述

        # @param request: Request instance for DescribeCosRiskEvidence.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskEvidenceRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskEvidenceResponse`
        def DescribeCosRiskEvidence(request)
          body = send_request('DescribeCosRiskEvidence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRiskEvidenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看存储桶扫描任务详情

        # @param request: Request instance for DescribeCosRiskScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosRiskScanTaskResponse`
        def DescribeCosRiskScanTask(request)
          body = send_request('DescribeCosRiskScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRiskScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看cos桶访问权限信息

        # @param request: Request instance for DescribeCosRoleAccessPermission.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosRoleAccessPermissionRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosRoleAccessPermissionResponse`
        def DescribeCosRoleAccessPermission(request)
          body = send_request('DescribeCosRoleAccessPermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRoleAccessPermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取存储桶角色权限列表

        # @param request: Request instance for DescribeCosRoleAccessPermissions.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosRoleAccessPermissionsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosRoleAccessPermissionsResponse`
        def DescribeCosRoleAccessPermissions(request)
          body = send_request('DescribeCosRoleAccessPermissions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosRoleAccessPermissionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用源ip列表

        # @param request: Request instance for DescribeCosSourceIp.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCosSourceIpRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCosSourceIpResponse`
        def DescribeCosSourceIp(request)
          body = send_request('DescribeCosSourceIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosSourceIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CSPM自动配额共享配置

        # @param request: Request instance for DescribeCspmShardConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCspmShardConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCspmShardConfigResponse`
        def DescribeCspmShardConfig(request)
          body = send_request('DescribeCspmShardConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCspmShardConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户自定义 标签数量

        # @param request: Request instance for DescribeCustomAssetTagCount.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCustomAssetTagCountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCustomAssetTagCountResponse`
        def DescribeCustomAssetTagCount(request)
          body = send_request('DescribeCustomAssetTagCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomAssetTagCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自定义风险规则配置详情列表示例

        # @param request: Request instance for DescribeCustomRiskRuleDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCustomRiskRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCustomRiskRuleDetailResponse`
        def DescribeCustomRiskRuleDetail(request)
          body = send_request('DescribeCustomRiskRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRiskRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自定义风险规则配置列表

        # @param request: Request instance for DescribeCustomRiskRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeCustomRiskRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeCustomRiskRulesResponse`
        def DescribeCustomRiskRules(request)
          body = send_request('DescribeCustomRiskRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRiskRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # db资产详情

        # @param request: Request instance for DescribeDbAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetInfoResponse`
        def DescribeDbAssetInfo(request)
          body = send_request('DescribeDbAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbAssetInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据库资产列表

        # @param request: Request instance for DescribeDbAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDbAssetsResponse`
        def DescribeDbAssets(request)
          body = send_request('DescribeDbAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDbAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取内置默认安全评分规则，用于重置自定义规则

        # @param request: Request instance for DescribeDefaultSecurityScoreRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDefaultSecurityScoreRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDefaultSecurityScoreRuleResponse`
        def DescribeDefaultSecurityScoreRule(request)
          body = send_request('DescribeDefaultSecurityScoreRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultSecurityScoreRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 域名列表

        # @param request: Request instance for DescribeDomainAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDomainAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDomainAssetsResponse`
        def DescribeDomainAssets(request)
          body = send_request('DescribeDomainAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm访问记录

        # @param request: Request instance for DescribeDspmAccessRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessRecordResponse`
        def DescribeDspmAccessRecord(request)
          body = send_request('DescribeDspmAccessRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAccessRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm访问拓扑账号列表

        # @param request: Request instance for DescribeDspmAccessTopologyAccounts.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyAccountsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyAccountsResponse`
        def DescribeDspmAccessTopologyAccounts(request)
          body = send_request('DescribeDspmAccessTopologyAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAccessTopologyAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm访问拓扑资产列表

        # @param request: Request instance for DescribeDspmAccessTopologyAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyAssetsResponse`
        def DescribeDspmAccessTopologyAssets(request)
          body = send_request('DescribeDspmAccessTopologyAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAccessTopologyAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm访问拓扑ip列表

        # @param request: Request instance for DescribeDspmAccessTopologyIps.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyIpsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAccessTopologyIpsResponse`
        def DescribeDspmAccessTopologyIps(request)
          body = send_request('DescribeDspmAccessTopologyIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAccessTopologyIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm申请历史

        # @param request: Request instance for DescribeDspmApplyHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmApplyHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmApplyHistoryResponse`
        def DescribeDspmApplyHistory(request)
          body = send_request('DescribeDspmApplyHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmApplyHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm申请单列表

        # @param request: Request instance for DescribeDspmApplyOrderList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmApplyOrderListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmApplyOrderListResponse`
        def DescribeDspmApplyOrderList(request)
          body = send_request('DescribeDspmApplyOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmApplyOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm审批历史

        # @param request: Request instance for DescribeDspmApproveHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmApproveHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmApproveHistoryResponse`
        def DescribeDspmApproveHistory(request)
          body = send_request('DescribeDspmApproveHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmApproveHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm审批单列表

        # @param request: Request instance for DescribeDspmApproveOrderList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmApproveOrderListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmApproveOrderListResponse`
        def DescribeDspmApproveOrderList(request)
          body = send_request('DescribeDspmApproveOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmApproveOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产访问拓扑

        # @param request: Request instance for DescribeDspmAssetAccessTopology.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccessTopologyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccessTopologyResponse`
        def DescribeDspmAssetAccessTopology(request)
          body = send_request('DescribeDspmAssetAccessTopology', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetAccessTopologyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产账号身份信息

        # @param request: Request instance for DescribeDspmAssetAccountIdentify.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountIdentifyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountIdentifyResponse`
        def DescribeDspmAssetAccountIdentify(request)
          body = send_request('DescribeDspmAssetAccountIdentify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetAccountIdentifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产账号预设特权信息

        # @param request: Request instance for DescribeDspmAssetAccountPresetPrivileges.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountPresetPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountPresetPrivilegesResponse`
        def DescribeDspmAssetAccountPresetPrivileges(request)
          body = send_request('DescribeDspmAssetAccountPresetPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetAccountPresetPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产账号回收后特权信息

        # @param request: Request instance for DescribeDspmAssetAccountRecycledPrivileges.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountRecycledPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountRecycledPrivilegesResponse`
        def DescribeDspmAssetAccountRecycledPrivileges(request)
          body = send_request('DescribeDspmAssetAccountRecycledPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetAccountRecycledPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产账号列表

        # @param request: Request instance for DescribeDspmAssetAccounts.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetAccountsResponse`
        def DescribeDspmAssetAccounts(request)
          body = send_request('DescribeDspmAssetAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产数据库信息

        # @param request: Request instance for DescribeDspmAssetDatabaseList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetDatabaseListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetDatabaseListResponse`
        def DescribeDspmAssetDatabaseList(request)
          body = send_request('DescribeDspmAssetDatabaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetDatabaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产数据库列表

        # @param request: Request instance for DescribeDspmAssetDatabases.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetDatabasesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetDatabasesResponse`
        def DescribeDspmAssetDatabases(request)
          body = send_request('DescribeDspmAssetDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm资产字段信息

        # @param request: Request instance for DescribeDspmAssetFieldList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetFieldListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetFieldListResponse`
        def DescribeDspmAssetFieldList(request)
          body = send_request('DescribeDspmAssetFieldList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetFieldListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm资产字段样本值

        # @param request: Request instance for DescribeDspmAssetFieldSamples.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetFieldSamplesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetFieldSamplesResponse`
        def DescribeDspmAssetFieldSamples(request)
          body = send_request('DescribeDspmAssetFieldSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetFieldSamplesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm资产数据识别信息列表

        # @param request: Request instance for DescribeDspmAssetIdentifyInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetIdentifyInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetIdentifyInfoListResponse`
        def DescribeDspmAssetIdentifyInfoList(request)
          body = send_request('DescribeDspmAssetIdentifyInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetIdentifyInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产id列表

        # @param request: Request instance for DescribeDspmAssetIds.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetIdsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetIdsResponse`
        def DescribeDspmAssetIds(request)
          body = send_request('DescribeDspmAssetIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产登录凭据

        # @param request: Request instance for DescribeDspmAssetLoginCredential.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetLoginCredentialRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetLoginCredentialResponse`
        def DescribeDspmAssetLoginCredential(request)
          body = send_request('DescribeDspmAssetLoginCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetLoginCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产安全分析状态

        # @param request: Request instance for DescribeDspmAssetSecurityAnalyseStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetSecurityAnalyseStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetSecurityAnalyseStatusResponse`
        def DescribeDspmAssetSecurityAnalyseStatus(request)
          body = send_request('DescribeDspmAssetSecurityAnalyseStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetSecurityAnalyseStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产支持的权限

        # @param request: Request instance for DescribeDspmAssetSupportedPrivileges.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetSupportedPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetSupportedPrivilegesResponse`
        def DescribeDspmAssetSupportedPrivileges(request)
          body = send_request('DescribeDspmAssetSupportedPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetSupportedPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产表信息

        # @param request: Request instance for DescribeDspmAssetTableList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetTableListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetTableListResponse`
        def DescribeDspmAssetTableList(request)
          body = send_request('DescribeDspmAssetTableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetTableListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm资产列表

        # @param request: Request instance for DescribeDspmAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAssetsResponse`
        def DescribeDspmAssets(request)
          body = send_request('DescribeDspmAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm审计过滤策略

        # @param request: Request instance for DescribeDspmAuditFilterStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmAuditFilterStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmAuditFilterStrategyResponse`
        def DescribeDspmAuditFilterStrategy(request)
          body = send_request('DescribeDspmAuditFilterStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmAuditFilterStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份日志列表

        # @param request: Request instance for DescribeDspmBackupLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmBackupLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmBackupLogListResponse`
        def DescribeDspmBackupLogList(request)
          body = send_request('DescribeDspmBackupLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmBackupLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志备份配置

        # @param request: Request instance for DescribeDspmBackupSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmBackupSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmBackupSettingResponse`
        def DescribeDspmBackupSetting(request)
          body = send_request('DescribeDspmBackupSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmBackupSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Ckafka实例的路由信息

        # @param request: Request instance for DescribeDspmCkafkaRouteList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmCkafkaRouteListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmCkafkaRouteListResponse`
        def DescribeDspmCkafkaRouteList(request)
          body = send_request('DescribeDspmCkafkaRouteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmCkafkaRouteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例的主题列表

        # @param request: Request instance for DescribeDspmCkafkaTopicList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmCkafkaTopicListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmCkafkaTopicListResponse`
        def DescribeDspmCkafkaTopicList(request)
          body = send_request('DescribeDspmCkafkaTopicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmCkafkaTopicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm字典信息列表

        # @param request: Request instance for DescribeDspmDictionaryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmDictionaryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmDictionaryListResponse`
        def DescribeDspmDictionaryList(request)
          body = send_request('DescribeDspmDictionaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmDictionaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询导出任务

        # @param request: Request instance for DescribeDspmExportTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmExportTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmExportTaskResponse`
        def DescribeDspmExportTask(request)
          body = send_request('DescribeDspmExportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmExportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别分类列表

        # @param request: Request instance for DescribeDspmIdentifyCategoryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyCategoryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyCategoryListResponse`
        def DescribeDspmIdentifyCategoryList(request)
          body = send_request('DescribeDspmIdentifyCategoryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyCategoryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别模板分类关联数据项列表

        # @param request: Request instance for DescribeDspmIdentifyComplianceCategoryRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceCategoryRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceCategoryRuleListResponse`
        def DescribeDspmIdentifyComplianceCategoryRuleList(request)
          body = send_request('DescribeDspmIdentifyComplianceCategoryRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyComplianceCategoryRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm识别模板详情

        # @param request: Request instance for DescribeDspmIdentifyComplianceGroupDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceGroupDetailResponse`
        def DescribeDspmIdentifyComplianceGroupDetail(request)
          body = send_request('DescribeDspmIdentifyComplianceGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyComplianceGroupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别模板列表

        # @param request: Request instance for DescribeDspmIdentifyComplianceGroupList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceGroupListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyComplianceGroupListResponse`
        def DescribeDspmIdentifyComplianceGroupList(request)
          body = send_request('DescribeDspmIdentifyComplianceGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyComplianceGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别分布统计

        # @param request: Request instance for DescribeDspmIdentifyDistributionStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyDistributionStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyDistributionStatisticsResponse`
        def DescribeDspmIdentifyDistributionStatistics(request)
          body = send_request('DescribeDspmIdentifyDistributionStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyDistributionStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm身份id列表

        # @param request: Request instance for DescribeDspmIdentifyIdList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyIdListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyIdListResponse`
        def DescribeDspmIdentifyIdList(request)
          body = send_request('DescribeDspmIdentifyIdList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyIdListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm身份信息

        # @param request: Request instance for DescribeDspmIdentifyInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyInfoResponse`
        def DescribeDspmIdentifyInfo(request)
          body = send_request('DescribeDspmIdentifyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm身份信息列表

        # @param request: Request instance for DescribeDspmIdentifyInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyInfoListResponse`
        def DescribeDspmIdentifyInfoList(request)
          body = send_request('DescribeDspmIdentifyInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别分级组列表

        # @param request: Request instance for DescribeDspmIdentifyLevelGroupList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyLevelGroupListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyLevelGroupListResponse`
        def DescribeDspmIdentifyLevelGroupList(request)
          body = send_request('DescribeDspmIdentifyLevelGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyLevelGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别数据项详情

        # @param request: Request instance for DescribeDspmIdentifyRuleDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleDetailResponse`
        def DescribeDspmIdentifyRuleDetail(request)
          body = send_request('DescribeDspmIdentifyRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别数据项列表

        # @param request: Request instance for DescribeDspmIdentifyRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleListResponse`
        def DescribeDspmIdentifyRuleList(request)
          body = send_request('DescribeDspmIdentifyRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询dspm数据识别数据项验证结果

        # @param request: Request instance for DescribeDspmIdentifyRuleTestResult.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleTestResultRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmIdentifyRuleTestResultResponse`
        def DescribeDspmIdentifyRuleTestResult(request)
          body = send_request('DescribeDspmIdentifyRuleTestResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmIdentifyRuleTestResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志投递的日志类型

        # @param request: Request instance for DescribeDspmLogDeliveryType.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogDeliveryTypeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogDeliveryTypeResponse`
        def DescribeDspmLogDeliveryType(request)
          body = send_request('DescribeDspmLogDeliveryType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmLogDeliveryTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志列表信息

        # @param request: Request instance for DescribeDspmLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogListResponse`
        def DescribeDspmLogList(request)
          body = send_request('DescribeDspmLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询租户日志投递配置

        # @param request: Request instance for DescribeDspmLogTypeConfigList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogTypeConfigListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmLogTypeConfigListResponse`
        def DescribeDspmLogTypeConfigList(request)
          body = send_request('DescribeDspmLogTypeConfigList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmLogTypeConfigListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取已购Dspm订单信息

        # @param request: Request instance for DescribeDspmPayInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmPayInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmPayInfoResponse`
        def DescribeDspmPayInfo(request)
          body = send_request('DescribeDspmPayInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmPayInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm访客申请记录

        # @param request: Request instance for DescribeDspmPersonApplyHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmPersonApplyHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmPersonApplyHistoryResponse`
        def DescribeDspmPersonApplyHistory(request)
          body = send_request('DescribeDspmPersonApplyHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmPersonApplyHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm个人身份信息列表

        # @param request: Request instance for DescribeDspmPersonalIdentifyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmPersonalIdentifyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmPersonalIdentifyListResponse`
        def DescribeDspmPersonalIdentifyList(request)
          body = send_request('DescribeDspmPersonalIdentifyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmPersonalIdentifyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm实例

        # @param request: Request instance for DescribeDspmResource.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmResourceRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmResourceResponse`
        def DescribeDspmResource(request)
          body = send_request('DescribeDspmResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm风险记录

        # @param request: Request instance for DescribeDspmRisk.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskResponse`
        def DescribeDspmRisk(request)
          body = send_request('DescribeDspmRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm风险详情

        # @param request: Request instance for DescribeDspmRiskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskDetailResponse`
        def DescribeDspmRiskDetail(request)
          body = send_request('DescribeDspmRiskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmRiskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm风险策略

        # @param request: Request instance for DescribeDspmRiskStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskStrategyResponse`
        def DescribeDspmRiskStrategy(request)
          body = send_request('DescribeDspmRiskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmRiskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm风险分组策略

        # @param request: Request instance for DescribeDspmRiskStrategyGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskStrategyGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskStrategyGroupResponse`
        def DescribeDspmRiskStrategyGroup(request)
          body = send_request('DescribeDspmRiskStrategyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmRiskStrategyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm风险趋势

        # @param request: Request instance for DescribeDspmRiskTendency.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskTendencyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmRiskTendencyResponse`
        def DescribeDspmRiskTendency(request)
          body = send_request('DescribeDspmRiskTendency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmRiskTendencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询审计会话列表信息

        # @param request: Request instance for DescribeDspmSessionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmSessionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmSessionListResponse`
        def DescribeDspmSessionList(request)
          body = send_request('DescribeDspmSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmSessionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm统计信息

        # @param request: Request instance for DescribeDspmStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmStatisticsResponse`
        def DescribeDspmStatistics(request)
          body = send_request('DescribeDspmStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm支持的资产类型信息

        # @param request: Request instance for DescribeDspmSupportedAssetType.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmSupportedAssetTypeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmSupportedAssetTypeResponse`
        def DescribeDspmSupportedAssetType(request)
          body = send_request('DescribeDspmSupportedAssetType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmSupportedAssetTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm同步资产状态

        # @param request: Request instance for DescribeDspmSyncAssetsStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmSyncAssetsStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmSyncAssetsStatusResponse`
        def DescribeDspmSyncAssetsStatus(request)
          body = send_request('DescribeDspmSyncAssetsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmSyncAssetsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm同步用户状态

        # @param request: Request instance for DescribeDspmSyncUsersStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmSyncUsersStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmSyncUsersStatusResponse`
        def DescribeDspmSyncUsersStatus(request)
          body = send_request('DescribeDspmSyncUsersStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmSyncUsersStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询租户ckafka实例列表

        # @param request: Request instance for DescribeDspmUserCkafkaInstanceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmUserCkafkaInstanceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmUserCkafkaInstanceListResponse`
        def DescribeDspmUserCkafkaInstanceList(request)
          body = send_request('DescribeDspmUserCkafkaInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmUserCkafkaInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Dspm白名单策略

        # @param request: Request instance for DescribeDspmWhitelistStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDspmWhitelistStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDspmWhitelistStrategyResponse`
        def DescribeDspmWhitelistStrategy(request)
          body = send_request('DescribeDspmWhitelistStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDspmWhitelistStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定资产类型列表

        # @param request: Request instance for DescribeDynamicAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeDynamicAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeDynamicAssetsResponse`
        def DescribeDynamicAssets(request)
          body = send_request('DescribeDynamicAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDynamicAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR策略列表

        # @param request: Request instance for DescribeEDRRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEDRRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEDRRuleListResponse`
        def DescribeEDRRuleList(request)
          body = send_request('DescribeEDRRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEDRRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询扫描任务列表。Filter.Filters支持Name：Keyword(模糊OperatorType=9)、ScanType(MANUAL/CYCLE)、TaskType(HOST/CONTAINER)、Status(WAIT/SCANNING/FINISHED/FAILED/CANCELED)、AppId(账号)。

        # @param request: Request instance for DescribeEDRScanRecordList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEDRScanRecordListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEDRScanRecordListResponse`
        def DescribeEDRScanRecordList(request)
          body = send_request('DescribeEDRScanRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEDRScanRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询扫描任务详情。Filter.Filters支持Name：Status（资产扫描状态，OperatorType=7 IN匹配，取值WAIT/SCANNING/FINISHED/FAILED）。

        # @param request: Request instance for DescribeEDRScanTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEDRScanTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEDRScanTaskDetailResponse`
        def DescribeEDRScanTaskDetail(request)
          body = send_request('DescribeEDRScanTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEDRScanTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR告警数量统计，供资产模块调用。根据传入的MemberId和InstanceIDs，查询EDR告警表并返回告警记录条数信息。当InstanceIDs为空时返回汇总统计，非空时按InstanceIDs粒度分别返回统计。

        # @param request: Request instance for DescribeEdrAlertCountForAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertCountForAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertCountForAssetResponse`
        def DescribeEdrAlertCountForAsset(request)
          body = send_request('DescribeEdrAlertCountForAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertCountForAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 容器场景告警数量统计

        # @param request: Request instance for DescribeEdrAlertCountForContainer.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertCountForContainerRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertCountForContainerResponse`
        def DescribeEdrAlertCountForContainer(request)
          body = send_request('DescribeEdrAlertCountForContainer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertCountForContainerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR告警详情，包含告警内容JSON、资产富化、情报富化等完整信息

        # @param request: Request instance for DescribeEdrAlertInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertInfoResponse`
        def DescribeEdrAlertInfo(request)
          body = send_request('DescribeEdrAlertInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR告警列表

        # @param request: Request instance for DescribeEdrAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertListResponse`
        def DescribeEdrAlertList(request)
          body = send_request('DescribeEdrAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EDR告警多攻击阶段查询

        # @param request: Request instance for DescribeEdrAlertMultiAttackStages.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertMultiAttackStagesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertMultiAttackStagesResponse`
        def DescribeEdrAlertMultiAttackStages(request)
          body = send_request('DescribeEdrAlertMultiAttackStages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertMultiAttackStagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR告警统计

        # @param request: Request instance for DescribeEdrAlertSummary.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertSummaryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertSummaryResponse`
        def DescribeEdrAlertSummary(request)
          body = send_request('DescribeEdrAlertSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EDR告警标签批量查询

        # @param request: Request instance for DescribeEdrAlertThreatTags.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertThreatTagsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrAlertThreatTagsResponse`
        def DescribeEdrAlertThreatTags(request)
          body = send_request('DescribeEdrAlertThreatTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrAlertThreatTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询EDR日志采集例外网段配置，添加至例外名单的网段，其TCP日志将不被采集。如果用户未配置过，则返回系统推荐的默认网段

        # @param request: Request instance for DescribeEdrExcludeNetworkSegments.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrExcludeNetworkSegmentsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrExcludeNetworkSegmentsResponse`
        def DescribeEdrExcludeNetworkSegments(request)
          body = send_request('DescribeEdrExcludeNetworkSegments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrExcludeNetworkSegmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取EDR导出下载链接

        # @param request: Request instance for DescribeEdrExportJobDownloadURL.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrExportJobDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrExportJobDownloadURLResponse`
        def DescribeEdrExportJobDownloadURL(request)
          body = send_request('DescribeEdrExportJobDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrExportJobDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出EDR任务列表

        # @param request: Request instance for DescribeEdrExportJobList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrExportJobListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrExportJobListResponse`
        def DescribeEdrExportJobList(request)
          body = send_request('DescribeEdrExportJobList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrExportJobListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询采集路径配置

        # @param request: Request instance for DescribeEdrLogCollectPaths.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeEdrLogCollectPathsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeEdrLogCollectPathsResponse`
        def DescribeEdrLogCollectPaths(request)
          body = send_request('DescribeEdrLogCollectPaths', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdrLogCollectPathsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出任务结果下载URL

        # @param request: Request instance for DescribeExportJobDownloadURL.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExportJobDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExportJobDownloadURLResponse`
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

        # 导出任务列表

        # @param request: Request instance for DescribeExportJobManageList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExportJobManageListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExportJobManageListResponse`
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

        # 云边界分析资产分类

        # @param request: Request instance for DescribeExposeAssetCategory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposeAssetCategoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposeAssetCategoryResponse`
        def DescribeExposeAssetCategory(request)
          body = send_request('DescribeExposeAssetCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposeAssetCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析路径节点

        # @param request: Request instance for DescribeExposePath.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposePathRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposePathResponse`
        def DescribeExposePath(request)
          body = send_request('DescribeExposePath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposePathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界风险待治理风险

        # @param request: Request instance for DescribeExposeRiskStatistics.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposeRiskStatisticsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposeRiskStatisticsResponse`
        def DescribeExposeRiskStatistics(request)
          body = send_request('DescribeExposeRiskStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposeRiskStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界待处理风险列表

        # @param request: Request instance for DescribeExposeRisks.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposeRisksRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposeRisksResponse`
        def DescribeExposeRisks(request)
          body = send_request('DescribeExposeRisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposeRisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 边界规则列表

        # @param request: Request instance for DescribeExposeRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposeRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposeRulesResponse`
        def DescribeExposeRules(request)
          body = send_request('DescribeExposeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-规则属性

        # @param request: Request instance for DescribeExposureAutoTagAttribute.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposureAutoTagAttributeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposureAutoTagAttributeResponse`
        def DescribeExposureAutoTagAttribute(request)
          body = send_request('DescribeExposureAutoTagAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposureAutoTagAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-规则列表

        # @param request: Request instance for DescribeExposureAutoTagRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposureAutoTagRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposureAutoTagRulesResponse`
        def DescribeExposureAutoTagRules(request)
          body = send_request('DescribeExposureAutoTagRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposureAutoTagRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询互联网暴露周期数量趋势统计信息

        # @param request: Request instance for DescribeExposureTrend.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposureTrendRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposureTrendResponse`
        def DescribeExposureTrend(request)
          body = send_request('DescribeExposureTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposureTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界分析资产列表

        # @param request: Request instance for DescribeExposures.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeExposuresRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeExposuresResponse`
        def DescribeExposures(request)
          body = send_request('DescribeExposures', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExposuresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取网关列表

        # @param request: Request instance for DescribeGatewayAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeGatewayAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeGatewayAssetsResponse`
        def DescribeGatewayAssets(request)
          body = send_request('DescribeGatewayAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析-暴露路径下主机节点的高危基线风险列表

        # @param request: Request instance for DescribeHighBaseLineRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeHighBaseLineRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeHighBaseLineRiskListResponse`
        def DescribeHighBaseLineRiskList(request)
          body = send_request('DescribeHighBaseLineRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHighBaseLineRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机kb风险列表

        # @param request: Request instance for DescribeHostKBRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeHostKBRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeHostKBRiskListResponse`
        def DescribeHostKBRiskList(request)
          body = send_request('DescribeHostKBRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostKBRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机漏洞VPR信息

        # @param request: Request instance for DescribeHostVulItemVPRInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeHostVulItemVPRInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeHostVulItemVPRInfoResponse`
        def DescribeHostVulItemVPRInfo(request)
          body = send_request('DescribeHostVulItemVPRInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostVulItemVPRInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机漏洞概览

        # @param request: Request instance for DescribeHostVulOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeHostVulOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeHostVulOverviewResponse`
        def DescribeHostVulOverview(request)
          body = send_request('DescribeHostVulOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostVulOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机漏洞风险列表

        # @param request: Request instance for DescribeHostVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeHostVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeHostVulRiskListResponse`
        def DescribeHostVulRiskList(request)
          body = send_request('DescribeHostVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostVulRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取IaC检测文件列表

        # @param request: Request instance for DescribeIaCFileList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileListResponse`
        def DescribeIaCFileList(request)
          body = send_request('DescribeIaCFileList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIaCFileListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取IaC检测文件概览

        # @param request: Request instance for DescribeIaCFileOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileOverviewResponse`
        def DescribeIaCFileOverview(request)
          body = send_request('DescribeIaCFileOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIaCFileOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取IaC检测文件报告

        # @param request: Request instance for DescribeIaCFileReport.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileReportRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIaCFileReportResponse`
        def DescribeIaCFileReport(request)
          body = send_request('DescribeIaCFileReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIaCFileReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取IaC检测接入Token列表

        # @param request: Request instance for DescribeIaCTokenList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIaCTokenListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIaCTokenListResponse`
        def DescribeIaCTokenList(request)
          body = send_request('DescribeIaCTokenList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIaCTokenListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像资产详情

        # @param request: Request instance for DescribeImageAssetDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageAssetDetailResponse`
        def DescribeImageAssetDetail(request)
          body = send_request('DescribeImageAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像资产列表

        # @param request: Request instance for DescribeImageAssetList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageAssetListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageAssetListResponse`
        def DescribeImageAssetList(request)
          body = send_request('DescribeImageAssetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAssetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像关联资产数

        # @param request: Request instance for DescribeImageAssociatedAssetCount.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedAssetCountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedAssetCountResponse`
        def DescribeImageAssociatedAssetCount(request)
          body = send_request('DescribeImageAssociatedAssetCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAssociatedAssetCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像关联容器资产

        # @param request: Request instance for DescribeImageAssociatedContainerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedContainerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedContainerListResponse`
        def DescribeImageAssociatedContainerList(request)
          body = send_request('DescribeImageAssociatedContainerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAssociatedContainerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像关联主机资产列表

        # @param request: Request instance for DescribeImageAssociatedHostList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedHostListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageAssociatedHostListResponse`
        def DescribeImageAssociatedHostList(request)
          body = send_request('DescribeImageAssociatedHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAssociatedHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像组件列表

        # @param request: Request instance for DescribeImageComponentList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageComponentListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageComponentListResponse`
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

        # 查询镜像仓库导出任务列表

        # @param request: Request instance for DescribeImageExportJobList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageExportJobListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageExportJobListResponse`
        def DescribeImageExportJobList(request)
          body = send_request('DescribeImageExportJobList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageExportJobListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像层信息列表

        # @param request: Request instance for DescribeImageLayerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageLayerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageLayerListResponse`
        def DescribeImageLayerList(request)
          body = send_request('DescribeImageLayerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageLayerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像层漏洞列表

        # @param request: Request instance for DescribeImageLayerVulList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageLayerVulListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageLayerVulListResponse`
        def DescribeImageLayerVulList(request)
          body = send_request('DescribeImageLayerVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageLayerVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库资产总览

        # @param request: Request instance for DescribeImageRegistryAssetOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryAssetOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryAssetOverviewResponse`
        def DescribeImageRegistryAssetOverview(request)
          body = send_request('DescribeImageRegistryAssetOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryAssetOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库联通性检查任务结果

        # @param request: Request instance for DescribeImageRegistryConnectivityTaskResult.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryConnectivityTaskResultRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryConnectivityTaskResultResponse`
        def DescribeImageRegistryConnectivityTaskResult(request)
          body = send_request('DescribeImageRegistryConnectivityTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryConnectivityTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库列表

        # @param request: Request instance for DescribeImageRegistryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryListResponse`
        def DescribeImageRegistryList(request)
          body = send_request('DescribeImageRegistryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库命名空间列表

        # @param request: Request instance for DescribeImageRegistryNamespaceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryNamespaceListResponse`
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

        # 查询镜像仓库扫描子任务信息

        # @param request: Request instance for DescribeImageRegistryScanSubTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryScanSubTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryScanSubTaskListResponse`
        def DescribeImageRegistryScanSubTaskList(request)
          body = send_request('DescribeImageRegistryScanSubTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryScanSubTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库镜像扫描任务列表

        # @param request: Request instance for DescribeImageRegistryScanTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryScanTaskListResponse`
        def DescribeImageRegistryScanTaskList(request)
          body = send_request('DescribeImageRegistryScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryScanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看镜像仓库定时扫描任务配置

        # @param request: Request instance for DescribeImageRegistryTimedScanTaskConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryTimedScanTaskConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryTimedScanTaskConfigResponse`
        def DescribeImageRegistryTimedScanTaskConfig(request)
          body = send_request('DescribeImageRegistryTimedScanTaskConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryTimedScanTaskConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库定时扫描任务预览

        # @param request: Request instance for DescribeImageRegistryTimedScanTaskPreview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryTimedScanTaskPreviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageRegistryTimedScanTaskPreviewResponse`
        def DescribeImageRegistryTimedScanTaskPreview(request)
          body = send_request('DescribeImageRegistryTimedScanTaskPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageRegistryTimedScanTaskPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像敏感信息列表

        # @param request: Request instance for DescribeImageSensitiveInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageSensitiveInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageSensitiveInfoListResponse`
        def DescribeImageSensitiveInfoList(request)
          body = send_request('DescribeImageSensitiveInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageSensitiveInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器镜像敏感信息白名单

        # @param request: Request instance for DescribeImageSensitiveWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageSensitiveWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageSensitiveWhitelistResponse`
        def DescribeImageSensitiveWhitelist(request)
          body = send_request('DescribeImageSensitiveWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageSensitiveWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像木马病毒列表

        # @param request: Request instance for DescribeImageVirusList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusListResponse`
        def DescribeImageVirusList(request)
          body = send_request('DescribeImageVirusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVirusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像木马白名单

        # @param request: Request instance for DescribeImageVirusWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusWhitelistResponse`
        def DescribeImageVirusWhitelist(request)
          body = send_request('DescribeImageVirusWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVirusWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像木马白名单详情

        # @param request: Request instance for DescribeImageVirusWhitelistDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusWhitelistDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVirusWhitelistDetailResponse`
        def DescribeImageVirusWhitelistDetail(request)
          body = send_request('DescribeImageVirusWhitelistDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVirusWhitelistDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像漏洞列表

        # @param request: Request instance for DescribeImageVulList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVulListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVulListResponse`
        def DescribeImageVulList(request)
          body = send_request('DescribeImageVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像漏洞概览列表

        # @param request: Request instance for DescribeImageVulSummaryList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVulSummaryListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVulSummaryListResponse`
        def DescribeImageVulSummaryList(request)
          body = send_request('DescribeImageVulSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVulSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器镜像漏洞白名单

        # @param request: Request instance for DescribeImageVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeImageVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeImageVulWhitelistResponse`
        def DescribeImageVulWhitelist(request)
          body = send_request('DescribeImageVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对象存储异常检测调用记录信息

        # @param request: Request instance for DescribeIpInvokeRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIpInvokeRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIpInvokeRecordResponse`
        def DescribeIpInvokeRecord(request)
          body = send_request('DescribeIpInvokeRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpInvokeRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ip访问列表详情信息

        # @param request: Request instance for DescribeIpInvokeRecordDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeIpInvokeRecordDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeIpInvokeRecordDetailResponse`
        def DescribeIpInvokeRecordDetail(request)
          body = send_request('DescribeIpInvokeRecordDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpInvokeRecordDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据用户输入的 KB 内部 ID 查询单个 Windows KB 补丁的详情信息，返回 KB 基本信息、发布时间、是否需要重启，以及该 KB 关联的漏洞列表。

        # @param request: Request instance for DescribeKBDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeKBDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeKBDetailResponse`
        def DescribeKBDetail(request)
          body = send_request('DescribeKBDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定KB补丁可以更新的主机列表。用于Windows系统补丁修复场景，在用户提交KB补丁更新任务前，查询哪些主机缺少该补丁且支持自动更新。

        # @param request: Request instance for DescribeKBUpdatableMachineList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeKBUpdatableMachineListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeKBUpdatableMachineListResponse`
        def DescribeKBUpdatableMachineList(request)
          body = send_request('DescribeKBUpdatableMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKBUpdatableMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询凭证详情，返回凭证元数据和打码后的凭据数据。access类型返回Access数组（Key原文、Value打码），sts类型返回STS对象（System原文、SecretID和SecretKey打码）

        # @param request: Request instance for DescribeKeySandboxCredential.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeKeySandboxCredentialRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeKeySandboxCredentialResponse`
        def DescribeKeySandboxCredential(request)
          body = send_request('DescribeKeySandboxCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeySandboxCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询凭证列表

        # @param request: Request instance for DescribeKeySandboxCredentialList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeKeySandboxCredentialListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeKeySandboxCredentialListResponse`
        def DescribeKeySandboxCredentialList(request)
          body = send_request('DescribeKeySandboxCredentialList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeySandboxCredentialListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取最近一次立即检测任务信息

        # @param request: Request instance for DescribeLastScanTaskInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLastScanTaskInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLastScanTaskInfoResponse`
        def DescribeLastScanTaskInfo(request)
          body = send_request('DescribeLastScanTaskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLastScanTaskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账号下所有有效授权的汇总状态，按计费项分组返回总数、已用、剩余及到期时间，同时返回自动加购开关状态和合并剩余解绑次数。输出顺序固定为：旗舰版 → 专业版 → RASP → 其他。

        # @param request: Request instance for DescribeLicenseStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLicenseStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLicenseStatusResponse`
        def DescribeLicenseStatus(request)
          body = send_request('DescribeLicenseStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询轻量应用服务器防火墙规则

        # @param request: Request instance for DescribeLighthouseFirewallRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLighthouseFirewallRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLighthouseFirewallRulesResponse`
        def DescribeLighthouseFirewallRules(request)
          body = send_request('DescribeLighthouseFirewallRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLighthouseFirewallRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询clb监听器列表

        # @param request: Request instance for DescribeListenerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeListenerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeListenerListResponse`
        def DescribeListenerList(request)
          body = send_request('DescribeListenerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防卸载全局配置

        # @param request: Request instance for DescribeLoginTypeGlobalConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLoginTypeGlobalConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLoginTypeGlobalConfResponse`
        def DescribeLoginTypeGlobalConf(request)
          body = send_request('DescribeLoginTypeGlobalConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginTypeGlobalConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫码登录主机列表

        # @param request: Request instance for DescribeLoginTypeHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLoginTypeHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLoginTypeHostResponse`
        def DescribeLoginTypeHost(request)
          body = send_request('DescribeLoginTypeHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginTypeHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取异地登录白名单合并后列表

        # @param request: Request instance for DescribeLoginWhiteCombinedList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLoginWhiteCombinedListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLoginWhiteCombinedListResponse`
        def DescribeLoginWhiteCombinedList(request)
          body = send_request('DescribeLoginWhiteCombinedList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginWhiteCombinedListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询合并后白名单机器列表

        # @param request: Request instance for DescribeLoginWhiteHostList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeLoginWhiteHostListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeLoginWhiteHostListResponse`
        def DescribeLoginWhiteHostList(request)
          body = send_request('DescribeLoginWhiteHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginWhiteHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询机器清理历史记录

        # @param request: Request instance for DescribeMachineClearHistory.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMachineClearHistoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMachineClearHistoryResponse`
        def DescribeMachineClearHistory(request)
          body = send_request('DescribeMachineClearHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineClearHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机概览信息

        # @param request: Request instance for DescribeMachineGeneral.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMachineGeneralRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMachineGeneralResponse`
        def DescribeMachineGeneral(request)
          body = send_request('DescribeMachineGeneral', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineGeneralResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机登录方式

        # @param request: Request instance for DescribeMachineLoginType.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMachineLoginTypeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMachineLoginTypeResponse`
        def DescribeMachineLoginType(request)
          body = send_request('DescribeMachineLoginType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineLoginTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文件查杀定时扫描配置

        # @param request: Request instance for DescribeMalwareTimingScanSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMalwareTimingScanSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMalwareTimingScanSettingResponse`
        def DescribeMalwareTimingScanSetting(request)
          body = send_request('DescribeMalwareTimingScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareTimingScanSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示企业必修漏洞情报

        # @param request: Request instance for DescribeMandatoryVulSet.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMandatoryVulSetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMandatoryVulSetResponse`
        def DescribeMandatoryVulSet(request)
          body = send_request('DescribeMandatoryVulSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMandatoryVulSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取批量修改主机登录方式任务列表

        # @param request: Request instance for DescribeModifyMachinesLoginTypeTasks.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeModifyMachinesLoginTypeTasksRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeModifyMachinesLoginTypeTasksResponse`
        def DescribeModifyMachinesLoginTypeTasks(request)
          body = send_request('DescribeModifyMachinesLoginTypeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModifyMachinesLoginTypeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取多云（腾讯云、阿里云、AWS、华为云、Azure 等）接入的资产总数及各云厂商资产数量明细

        # @param request: Request instance for DescribeMultiCloudAssetCount.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeMultiCloudAssetCountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeMultiCloudAssetCountResponse`
        def DescribeMultiCloudAssetCount(request)
          body = send_request('DescribeMultiCloudAssetCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiCloudAssetCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取NFS扫描全局配置

        # @param request: Request instance for DescribeNFSScanConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNFSScanConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNFSScanConfResponse`
        def DescribeNFSScanConf(request)
          body = send_request('DescribeNFSScanConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNFSScanConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫码登录主机列表

        # @param request: Request instance for DescribeNFSScanHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNFSScanHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNFSScanHostResponse`
        def DescribeNFSScanHost(request)
          body = send_request('DescribeNFSScanHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNFSScanHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取网卡列表

        # @param request: Request instance for DescribeNICAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNICAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNICAssetsResponse`
        def DescribeNICAssets(request)
          body = send_request('DescribeNICAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNICAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询腾讯云nat网关实例对应的NAT策略

        # @param request: Request instance for DescribeNatRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNatRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNatRulesResponse`
        def DescribeNatRules(request)
          body = send_request('DescribeNatRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网络攻击检测开关及资产范围配置

        # @param request: Request instance for DescribeNetAttackSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNetAttackSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNetAttackSettingResponse`
        def DescribeNetAttackSetting(request)
          body = send_request('DescribeNetAttackSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetAttackSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户端离线时长

        # @param request: Request instance for DescribeNotifyAgentOfflineDuration.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNotifyAgentOfflineDurationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNotifyAgentOfflineDurationResponse`
        def DescribeNotifyAgentOfflineDuration(request)
          body = send_request('DescribeNotifyAgentOfflineDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotifyAgentOfflineDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取通知资产范围配置

        # @param request: Request instance for DescribeNotifyAssetConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNotifyAssetConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNotifyAssetConfigResponse`
        def DescribeNotifyAssetConfig(request)
          body = send_request('DescribeNotifyAssetConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotifyAssetConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取通知设置

        # @param request: Request instance for DescribeNotifySetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingResponse`
        def DescribeNotifySetting(request)
          body = send_request('DescribeNotifySetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotifySettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取通知设置（云API风险治理）

        # @param request: Request instance for DescribeNotifySettingAk.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingAkRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingAkResponse`
        def DescribeNotifySettingAk(request)
          body = send_request('DescribeNotifySettingAk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotifySettingAkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警中心通知高级配置

        # @param request: Request instance for DescribeNotifySettingAlert.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingAlertRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeNotifySettingAlertResponse`
        def DescribeNotifySettingAlert(request)
          body = send_request('DescribeNotifySettingAlert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNotifySettingAlertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集团账号详情

        # @param request: Request instance for DescribeOrganizationInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationInfoResponse`
        def DescribeOrganizationInfo(request)
          body = send_request('DescribeOrganizationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集团账号用户列表

        # @param request: Request instance for DescribeOrganizationUserInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationUserInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOrganizationUserInfoResponse`
        def DescribeOrganizationUserInfo(request)
          body = send_request('DescribeOrganizationUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产列表

        # @param request: Request instance for DescribeOtherCloudAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeOtherCloudAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeOtherCloudAssetsResponse`
        def DescribeOtherCloudAssets(request)
          body = send_request('DescribeOtherCloudAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOtherCloudAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Pod 关联容器列表

        # @param request: Request instance for DescribePodContainerList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePodContainerListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePodContainerListResponse`
        def DescribePodContainerList(request)
          body = send_request('DescribePodContainerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePodContainerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按日期查看策略命中详情

        # @param request: Request instance for DescribePolicyHitData.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePolicyHitDataRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePolicyHitDataResponse`
        def DescribePolicyHitData(request)
          body = send_request('DescribePolicyHitData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyHitDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 端口探测列表

        # @param request: Request instance for DescribePortDetectList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePortDetectListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePortDetectListResponse`
        def DescribePortDetectList(request)
          body = send_request('DescribePortDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePortDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账号下端口扫描任务次数

        # @param request: Request instance for DescribePortScanTaskCount.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePortScanTaskCountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePortScanTaskCountResponse`
        def DescribePortScanTaskCount(request)
          body = send_request('DescribePortScanTaskCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePortScanTaskCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防卸载全局配置

        # @param request: Request instance for DescribePreventUninstallGlobalConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePreventUninstallGlobalConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePreventUninstallGlobalConfResponse`
        def DescribePreventUninstallGlobalConf(request)
          body = send_request('DescribePreventUninstallGlobalConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePreventUninstallGlobalConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防卸载主机列表

        # @param request: Request instance for DescribePreventUninstallHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePreventUninstallHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePreventUninstallHostResponse`
        def DescribePreventUninstallHost(request)
          body = send_request('DescribePreventUninstallHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePreventUninstallHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取进程防护全局配置

        # @param request: Request instance for DescribeProcessDaemonGlobalConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeProcessDaemonGlobalConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeProcessDaemonGlobalConfResponse`
        def DescribeProcessDaemonGlobalConf(request)
          body = send_request('DescribeProcessDaemonGlobalConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessDaemonGlobalConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取进程守护主机列表

        # @param request: Request instance for DescribeProcessDaemonHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeProcessDaemonHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeProcessDaemonHostResponse`
        def DescribeProcessDaemonHost(request)
          body = send_request('DescribeProcessDaemonHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessDaemonHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 公网资产

        # @param request: Request instance for DescribePublicCloudAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePublicCloudAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePublicCloudAssetsResponse`
        def DescribePublicCloudAssets(request)
          body = send_request('DescribePublicCloudAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicCloudAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ip公网列表

        # @param request: Request instance for DescribePublicIpAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribePublicIpAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribePublicIpAssetsResponse`
        def DescribePublicIpAssets(request)
          body = send_request('DescribePublicIpAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicIpAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询应用防护授权列表

        # @param request: Request instance for DescribeRaspLicenseList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRaspLicenseListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRaspLicenseListResponse`
        def DescribeRaspLicenseList(request)
          body = send_request('DescribeRaspLicenseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRaspLicenseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仓库总览

        # @param request: Request instance for DescribeRegistryOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRegistryOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRegistryOverviewResponse`
        def DescribeRegistryOverview(request)
          body = send_request('DescribeRegistryOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库地域列表

        # @param request: Request instance for DescribeRegistryRegionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRegistryRegionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRegistryRegionListResponse`
        def DescribeRegistryRegionList(request)
          body = send_request('DescribeRegistryRegionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegistryRegionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 仓库镜像列表

        # @param request: Request instance for DescribeRepositoryImageAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRepositoryImageAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRepositoryImageAssetsResponse`
        def DescribeRepositoryImageAssets(request)
          body = send_request('DescribeRepositoryImageAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryImageAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询反弹Shell内网告警与资产范围配置

        # @param request: Request instance for DescribeReverseShellSystemPolicyConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeReverseShellSystemPolicyConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeReverseShellSystemPolicyConfigResponse`
        def DescribeReverseShellSystemPolicyConfig(request)
          body = send_request('DescribeReverseShellSystemPolicyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellSystemPolicyConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看风险关联的存储桶信息

        # @param request: Request instance for DescribeRiskBucketList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskBucketListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskBucketListResponse`
        def DescribeRiskBucketList(request)
          body = send_request('DescribeRiskBucketList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskBucketListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险调用记录列表

        # @param request: Request instance for DescribeRiskCallRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCallRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCallRecordResponse`
        def DescribeRiskCallRecord(request)
          body = send_request('DescribeRiskCallRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCallRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产视角的配置风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewCFGRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewCFGRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewCFGRiskListResponse`
        def DescribeRiskCenterAssetViewCFGRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewCFGRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewCFGRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产视角的端口风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewPortRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewPortRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewPortRiskListResponse`
        def DescribeRiskCenterAssetViewPortRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewPortRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewPortRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产视角的漏洞风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewVULRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewVULRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewVULRiskListResponse`
        def DescribeRiskCenterAssetViewVULRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewVULRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewVULRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产视角的弱口令风险列表

        # @param request: Request instance for DescribeRiskCenterAssetViewWeakPasswordRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewWeakPasswordRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterAssetViewWeakPasswordRiskListResponse`
        def DescribeRiskCenterAssetViewWeakPasswordRiskList(request)
          body = send_request('DescribeRiskCenterAssetViewWeakPasswordRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterAssetViewWeakPasswordRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取配置视角的配置风险列表

        # @param request: Request instance for DescribeRiskCenterCFGViewCFGRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterCFGViewCFGRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterCFGViewCFGRiskListResponse`
        def DescribeRiskCenterCFGViewCFGRiskList(request)
          body = send_request('DescribeRiskCenterCFGViewCFGRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterCFGViewCFGRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取端口视角的端口风险列表

        # @param request: Request instance for DescribeRiskCenterPortViewPortRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterPortViewPortRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterPortViewPortRiskListResponse`
        def DescribeRiskCenterPortViewPortRiskList(request)
          body = send_request('DescribeRiskCenterPortViewPortRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterPortViewPortRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险趋势分析示例

        # @param request: Request instance for DescribeRiskCenterRiskTrendAnalysis.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterRiskTrendAnalysisRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterRiskTrendAnalysisResponse`
        def DescribeRiskCenterRiskTrendAnalysis(request)
          body = send_request('DescribeRiskCenterRiskTrendAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterRiskTrendAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险服务列表

        # @param request: Request instance for DescribeRiskCenterServerRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterServerRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterServerRiskListResponse`
        def DescribeRiskCenterServerRiskList(request)
          body = send_request('DescribeRiskCenterServerRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterServerRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞视角的漏洞风险列表

        # @param request: Request instance for DescribeRiskCenterVULViewVULRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterVULViewVULRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterVULViewVULRiskListResponse`
        def DescribeRiskCenterVULViewVULRiskList(request)
          body = send_request('DescribeRiskCenterVULViewVULRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterVULViewVULRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取内容风险列表

        # @param request: Request instance for DescribeRiskCenterWebsiteRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterWebsiteRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskCenterWebsiteRiskListResponse`
        def DescribeRiskCenterWebsiteRiskList(request)
          body = send_request('DescribeRiskCenterWebsiteRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCenterWebsiteRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险详情列表示例

        # @param request: Request instance for DescribeRiskDetailList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskDetailListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskDetailListResponse`
        def DescribeRiskDetailList(request)
          body = send_request('DescribeRiskDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDetailListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险项视角列表

        # @param request: Request instance for DescribeRiskItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskItemListResponse`
        def DescribeRiskItemList(request)
          body = send_request('DescribeRiskItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询风险规则详情示例

        # @param request: Request instance for DescribeRiskRuleDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskRuleDetailResponse`
        def DescribeRiskRuleDetail(request)
          body = send_request('DescribeRiskRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 高级配置风险规则列表示例

        # @param request: Request instance for DescribeRiskRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskRulesResponse`
        def DescribeRiskRules(request)
          body = send_request('DescribeRiskRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取风险扫描周期计划

        # @param request: Request instance for DescribeRiskScanCronConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskScanCronConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskScanCronConfigResponse`
        def DescribeRiskScanCronConfig(request)
          body = send_request('DescribeRiskScanCronConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskScanCronConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看风险趋势图

        # @param request: Request instance for DescribeRiskTrendData.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeRiskTrendDataRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeRiskTrendDataResponse`
        def DescribeRiskTrendData(request)
          body = send_request('DescribeRiskTrendData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskTrendDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定 SCF 函数下的别名列表。

        # @param request: Request instance for DescribeSCFAliasList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSCFAliasListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSCFAliasListResponse`
        def DescribeSCFAliasList(request)
          body = send_request('DescribeSCFAliasList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSCFAliasListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定命名空间下的 SCF 函数列表，仅返回 Event 触发器类型的函数。

        # @param request: Request instance for DescribeSCFFunctionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSCFFunctionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSCFFunctionListResponse`
        def DescribeSCFFunctionList(request)
          body = send_request('DescribeSCFFunctionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSCFFunctionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定 SCF 函数下的版本列表。

        # @param request: Request instance for DescribeSCFFunctionVersionList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSCFFunctionVersionListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSCFFunctionVersionListResponse`
        def DescribeSCFFunctionVersionList(request)
          body = send_request('DescribeSCFFunctionVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSCFFunctionVersionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前用户在指定地域下的 SCF（云函数）命名空间列表。

        # @param request: Request instance for DescribeSCFNamespaceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSCFNamespaceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSCFNamespaceListResponse`
        def DescribeSCFNamespaceList(request)
          body = send_request('DescribeSCFNamespaceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSCFNamespaceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 ACL 访问控制告警日志列表。支持按 Filter.Name=ID 精确过滤单条告警用于详情页场景

        # @param request: Request instance for DescribeSandboxACLAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLAlertListResponse`
        def DescribeSandboxACLAlertList(request)
          body = send_request('DescribeSandboxACLAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxACLAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前租户的 ACL 用户访问控制规则列表。传入 Filter.Name=RuleID 可精确查询单条规则（用于详情页面场景）

        # @param request: Request instance for DescribeSandboxACLRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLRuleListResponse`
        def DescribeSandboxACLRuleList(request)
          body = send_request('DescribeSandboxACLRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxACLRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流量沙箱访问控制（ACL）系统规则列表，系统规则由 CSIP 平台内置，可被用户规则引用

        # @param request: Request instance for DescribeSandboxACLSystemRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLSystemRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxACLSystemRuleListResponse`
        def DescribeSandboxACLSystemRuleList(request)
          body = send_request('DescribeSandboxACLSystemRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxACLSystemRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 DLP 数据泄露告警日志列表。支持按 Filter.Name=ID 精确过滤单条告警用于详情页场景

        # @param request: Request instance for DescribeSandboxDLPAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPAlertListResponse`
        def DescribeSandboxDLPAlertList(request)
          body = send_request('DescribeSandboxDLPAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxDLPAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前租户的 DLP 用户规则列表。传入 Filter.Name=RuleID 可精确查询单条规则（用于详情页面场景）

        # @param request: Request instance for DescribeSandboxDLPRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPRuleListResponse`
        def DescribeSandboxDLPRuleList(request)
          body = send_request('DescribeSandboxDLPRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxDLPRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流量沙箱数据泄露防护（DLP）系统规则列表，系统规则由 CSIP 平台内置，可被用户规则引用

        # @param request: Request instance for DescribeSandboxDLPSystemRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPSystemRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxDLPSystemRuleListResponse`
        def DescribeSandboxDLPSystemRuleList(request)
          body = send_request('DescribeSandboxDLPSystemRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxDLPSystemRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取命令沙箱文件规则列表

        # @param request: Request instance for DescribeSandboxFileRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxFileRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxFileRuleListResponse`
        def DescribeSandboxFileRuleList(request)
          body = send_request('DescribeSandboxFileRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxFileRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询 LLM 审计告警日志列表。支持按 Filter.Name=ID 精确过滤单条告警用于详情页场景

        # @param request: Request instance for DescribeSandboxLLMAuditAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditAlertListResponse`
        def DescribeSandboxLLMAuditAlertList(request)
          body = send_request('DescribeSandboxLLMAuditAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxLLMAuditAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前租户的 LLM 审计用户规则列表。LLM 审计规则不支持用户自定义内容，只能引用系统规则组合。传入 Filter.Name=RuleID 可精确查询单条规则（用于详情页面场景）

        # @param request: Request instance for DescribeSandboxLLMAuditRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditRuleListResponse`
        def DescribeSandboxLLMAuditRuleList(request)
          body = send_request('DescribeSandboxLLMAuditRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxLLMAuditRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 LLM 审计系统规则列表，系统规则由 CSIP 平台内置（来源于 LLM 审计系统规则库），按 LLM 推理防护 / ToolCall 防护拆分为两个扁平规则数组返回，可被用户规则引用

        # @param request: Request instance for DescribeSandboxLLMAuditSystemRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditSystemRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSandboxLLMAuditSystemRuleListResponse`
        def DescribeSandboxLLMAuditSystemRuleList(request)
          body = send_request('DescribeSandboxLLMAuditSystemRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxLLMAuditSystemRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描报告列表

        # @param request: Request instance for DescribeScanReportList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanReportListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanReportListResponse`
        def DescribeScanReportList(request)
          body = send_request('DescribeScanReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanReportListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析扫描结果统计信息

        # @param request: Request instance for DescribeScanStatistic.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanStatisticRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanStatisticResponse`
        def DescribeScanStatistic(request)
          body = send_request('DescribeScanStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描任务列表

        # @param request: Request instance for DescribeScanTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskListResponse`
        def DescribeScanTaskList(request)
          body = send_request('DescribeScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询扫描任务记录列表

        # @param request: Request instance for DescribeScanTaskRecordList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskRecordListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScanTaskRecordListResponse`
        def DescribeScanTaskRecordList(request)
          body = send_request('DescribeScanTaskRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询腾讯云SCF自定义域名端点列表

        # @param request: Request instance for DescribeScfCustomDomainEndpoints.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeScfCustomDomainEndpointsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeScfCustomDomainEndpointsResponse`
        def DescribeScfCustomDomainEndpoints(request)
          body = send_request('DescribeScfCustomDomainEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScfCustomDomainEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 立体防护中心查询漏洞信息

        # @param request: Request instance for DescribeSearchBugInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSearchBugInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSearchBugInfoResponse`
        def DescribeSearchBugInfo(request)
          body = send_request('DescribeSearchBugInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchBugInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定安全组ID对应安全组规则

        # @param request: Request instance for DescribeSecurityGroupPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSecurityGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSecurityGroupPolicyResponse`
        def DescribeSecurityGroupPolicy(request)
          body = send_request('DescribeSecurityGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全风险趋势，返回按维度分组的每日风险数量

        # @param request: Request instance for DescribeSecurityRiskTrend.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSecurityRiskTrendRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSecurityRiskTrendResponse`
        def DescribeSecurityRiskTrend(request)
          body = send_request('DescribeSecurityRiskTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityRiskTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全评分概览，实时计算各维度和子项扣分情况

        # @param request: Request instance for DescribeSecurityScoreOverview.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSecurityScoreOverviewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSecurityScoreOverviewResponse`
        def DescribeSecurityScoreOverview(request)
          body = send_request('DescribeSecurityScoreOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityScoreOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前账号的安全评分规则，无自定义则返回内置默认规则

        # @param request: Request instance for DescribeSecurityScoreRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSecurityScoreRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSecurityScoreRuleResponse`
        def DescribeSecurityScoreRule(request)
          body = send_request('DescribeSecurityScoreRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityScoreRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 安全检测告警详情，包含本地告警信息和引擎实时检测数据

        # @param request: Request instance for DescribeSkillScanAlertDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanAlertDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanAlertDetailResponse`
        def DescribeSkillScanAlertDetail(request)
          body = send_request('DescribeSkillScanAlertDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillScanAlertDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 安全检测告警列表，支持分页、过滤和排序

        # @param request: Request instance for DescribeSkillScanAlertList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanAlertListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanAlertListResponse`
        def DescribeSkillScanAlertList(request)
          body = send_request('DescribeSkillScanAlertList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillScanAlertListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 安全检测计费信息，包括订单状态、总配额、已消耗配额、到期时间、支付模式等。无订单时返回零值（仅含 TimeNow 和 BetaEndTime）。试用订单通过 ModifyTrialStatus(Module=9) 领取，正式订单通过计费系统创建。

        # @param request: Request instance for DescribeSkillScanPayInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanPayInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanPayInfoResponse`
        def DescribeSkillScanPayInfo(request)
          body = send_request('DescribeSkillScanPayInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillScanPayInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 Skill 安全检测结果。调用 CreateSkillScan 成功后使用返回的 ContentHash + EngineVersion 轮询本接口获取结果。上传成功后建议5分钟后首次轮询，如未检测完成之后每隔1分钟轮询一次。响应通过 Status 字段区分四种状态：检测完成（SUCCESS）、检测中（SCANNING）、无记录（NOT_FOUND）、检测失败（FAILED）。注意：检测结果保留90天，超期后将返回 NOT_FOUND。

        # @param request: Request instance for DescribeSkillScanResult.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanResultRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSkillScanResultResponse`
        def DescribeSkillScanResult(request)
          body = send_request('DescribeSkillScanResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillScanResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户访问密钥资产列表（源IP视角）

        # @param request: Request instance for DescribeSourceIPAsset.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSourceIPAssetRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSourceIPAssetResponse`
        def DescribeSourceIPAsset(request)
          body = send_request('DescribeSourceIPAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSourceIPAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户访问密钥资产列表（源IP视角）

        # @param request: Request instance for DescribeSourceIPDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSourceIPDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSourceIPDetailResponse`
        def DescribeSourceIPDetail(request)
          body = send_request('DescribeSourceIPDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSourceIPDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集团的子账号列表

        # @param request: Request instance for DescribeSubUserInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSubUserInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSubUserInfoResponse`
        def DescribeSubUserInfo(request)
          body = send_request('DescribeSubUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取子网列表

        # @param request: Request instance for DescribeSubnetAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeSubnetAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeSubnetAssetsResponse`
        def DescribeSubnetAssets(request)
          body = send_request('DescribeSubnetAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取TCR实例列表

        # @param request: Request instance for DescribeTCRInstanceList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTCRInstanceListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTCRInstanceListResponse`
        def DescribeTCRInstanceList(request)
          body = send_request('DescribeTCRInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTCRInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 打标策略生效资产列表

        # @param request: Request instance for DescribeTagRuleAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTagRuleAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTagRuleAssetsResponse`
        def DescribeTagRuleAssets(request)
          body = send_request('DescribeTagRuleAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagRuleAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务扫描报告列表

        # @param request: Request instance for DescribeTaskLogList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogListResponse`
        def DescribeTaskLogList(request)
          body = send_request('DescribeTaskLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取报告下载的临时链接

        # @param request: Request instance for DescribeTaskLogURL.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogURLRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTaskLogURLResponse`
        def DescribeTaskLogURL(request)
          body = send_request('DescribeTaskLogURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskLogURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描预消耗配额

        # @param request: Request instance for DescribeTaskPredictCostQuota.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTaskPredictCostQuotaRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTaskPredictCostQuotaResponse`
        def DescribeTaskPredictCostQuota(request)
          body = send_request('DescribeTaskPredictCostQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskPredictCostQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询TOP攻击信息

        # @param request: Request instance for DescribeTopAttackInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeTopAttackInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeTopAttackInfoResponse`
        def DescribeTopAttackInfo(request)
          body = send_request('DescribeTopAttackInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopAttackInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户行为分析的行为概览

        # @param request: Request instance for DescribeUebaBehaviorSummary.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUebaBehaviorSummaryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUebaBehaviorSummaryResponse`
        def DescribeUebaBehaviorSummary(request)
          body = send_request('DescribeUebaBehaviorSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUebaBehaviorSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户行为分析策略列表

        # @param request: Request instance for DescribeUebaRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUebaRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUebaRuleResponse`
        def DescribeUebaRule(request)
          body = send_request('DescribeUebaRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUebaRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户行为分析模块的用户概览

        # @param request: Request instance for DescribeUebaUserSummary.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUebaUserSummaryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUebaUserSummaryResponse`
        def DescribeUebaUserSummary(request)
          body = send_request('DescribeUebaUserSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUebaUserSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号AK信息

        # @param request: Request instance for DescribeUserAKInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUserAKInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUserAKInfoListResponse`
        def DescribeUserAKInfoList(request)
          body = send_request('DescribeUserAKInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserAKInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号CSPM信息

        # @param request: Request instance for DescribeUserCSPMInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUserCSPMInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUserCSPMInfoListResponse`
        def DescribeUserCSPMInfoList(request)
          body = send_request('DescribeUserCSPMInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCSPMInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号调用记录列表

        # @param request: Request instance for DescribeUserCallRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUserCallRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUserCallRecordResponse`
        def DescribeUserCallRecord(request)
          body = send_request('DescribeUserCallRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCallRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号dspm信息列表

        # @param request: Request instance for DescribeUserDspmInfoList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUserDspmInfoListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUserDspmInfoListResponse`
        def DescribeUserDspmInfoList(request)
          body = send_request('DescribeUserDspmInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDspmInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户CSPM配额信息

        # @param request: Request instance for DescribeUserInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeUserInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeUserInfoResponse`
        def DescribeUserInfo(request)
          body = send_request('DescribeUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新安全中心风险中心-漏洞列表

        # @param request: Request instance for DescribeVULList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULListResponse`
        def DescribeVULList(request)
          body = send_request('DescribeVULList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞风险高级配置

        # @param request: Request instance for DescribeVULRiskAdvanceCFGList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskAdvanceCFGListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskAdvanceCFGListResponse`
        def DescribeVULRiskAdvanceCFGList(request)
          body = send_request('DescribeVULRiskAdvanceCFGList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULRiskAdvanceCFGListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞展开详情

        # @param request: Request instance for DescribeVULRiskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVULRiskDetailResponse`
        def DescribeVULRiskDetail(request)
          body = send_request('DescribeVULRiskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVULRiskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取病毒库及POC的更新信息

        # @param request: Request instance for DescribeVdbAndPocInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVdbAndPocInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVdbAndPocInfoResponse`
        def DescribeVdbAndPocInfo(request)
          body = send_request('DescribeVdbAndPocInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVdbAndPocInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查当前用户是否有资格领取指定活动的代金券。

        # @param request: Request instance for DescribeVoucherEligibility.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVoucherEligibilityRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVoucherEligibilityResponse`
        def DescribeVoucherEligibility(request)
          body = send_request('DescribeVoucherEligibility', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVoucherEligibilityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取vpc列表

        # @param request: Request instance for DescribeVpcAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVpcAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVpcAssetsResponse`
        def DescribeVpcAssets(request)
          body = send_request('DescribeVpcAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞组件关联主机

        # @param request: Request instance for DescribeVulComponentRelateHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulComponentRelateHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulComponentRelateHostResponse`
        def DescribeVulComponentRelateHost(request)
          body = send_request('DescribeVulComponentRelateHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulComponentRelateHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定漏洞修复任务的详情信息，包含每台主机的修复状态、快照状态等明细数据，支持分页和筛选。

        # @param request: Request instance for DescribeVulFixTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulFixTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulFixTaskDetailResponse`
        def DescribeVulFixTaskDetail(request)
          body = send_request('DescribeVulFixTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询漏洞修复任务记录列表，支持按修复状态、时间范围等条件筛选，展示每个修复任务的概要信息。

        # @param request: Request instance for DescribeVulFixTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulFixTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulFixTaskListResponse`
        def DescribeVulFixTaskList(request)
          body = send_request('DescribeVulFixTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定漏洞可以被修复的主机列表。在用户提交修复任务前，需要先查询哪些主机支持自动修复，为用户选择修复目标提供数据支持。

        # @param request: Request instance for DescribeVulFixableMachineList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulFixableMachineListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulFixableMachineListResponse`
        def DescribeVulFixableMachineList(request)
          body = send_request('DescribeVulFixableMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixableMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个已修复漏洞在指定主机上的修复详情，包含漏洞基本信息、修复主机信息以及关联组件&路径的详细列表（组件名称、命中版本、关联路径、修复命令）。

        # @param request: Request instance for DescribeVulFixedHostDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulFixedHostDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulFixedHostDetailResponse`
        def DescribeVulFixedHostDetail(request)
          body = send_request('DescribeVulFixedHostDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixedHostDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询已被修复的漏洞列表，展示修复成功的漏洞信息及修复情况统计，帮助用户了解修复成效。

        # @param request: Request instance for DescribeVulFixedList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulFixedListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulFixedListResponse`
        def DescribeVulFixedList(request)
          body = send_request('DescribeVulFixedList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixedListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞主机关联组件

        # @param request: Request instance for DescribeVulHostRelateComponent.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulHostRelateComponentRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulHostRelateComponentResponse`
        def DescribeVulHostRelateComponent(request)
          body = send_request('DescribeVulHostRelateComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulHostRelateComponentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞忽略列表

        # @param request: Request instance for DescribeVulIgnoreRuleList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulIgnoreRuleListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulIgnoreRuleListResponse`
        def DescribeVulIgnoreRuleList(request)
          body = send_request('DescribeVulIgnoreRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulIgnoreRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞列表

        # @param request: Request instance for DescribeVulItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulItemListResponse`
        def DescribeVulItemList(request)
          body = send_request('DescribeVulItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞标签列表

        # @param request: Request instance for DescribeVulLabelList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulLabelListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulLabelListResponse`
        def DescribeVulLabelList(request)
          body = send_request('DescribeVulLabelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulLabelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云边界分析-暴露路径下主机节点的漏洞列表

        # @param request: Request instance for DescribeVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskListResponse`
        def DescribeVulRiskList(request)
          body = send_request('DescribeVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞关联组件

        # @param request: Request instance for DescribeVulRiskRelateComponent.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskRelateComponentRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskRelateComponentResponse`
        def DescribeVulRiskRelateComponent(request)
          body = send_request('DescribeVulRiskRelateComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulRiskRelateComponentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞或KB关联的主机

        # @param request: Request instance for DescribeVulRiskRelateHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskRelateHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulRiskRelateHostResponse`
        def DescribeVulRiskRelateHost(request)
          body = send_request('DescribeVulRiskRelateHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulRiskRelateHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞扫描（周期扫描）

        # @param request: Request instance for DescribeVulScanPeriodic.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulScanPeriodicRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulScanPeriodicResponse`
        def DescribeVulScanPeriodic(request)
          body = send_request('DescribeVulScanPeriodic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanPeriodicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描漏洞任务详情

        # @param request: Request instance for DescribeVulScanTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulScanTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulScanTaskDetailResponse`
        def DescribeVulScanTaskDetail(request)
          body = send_request('DescribeVulScanTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞扫描任务记录

        # @param request: Request instance for DescribeVulScanTaskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulScanTaskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulScanTaskListResponse`
        def DescribeVulScanTaskList(request)
          body = send_request('DescribeVulScanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulScanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞视角的漏洞风险列表

        # @param request: Request instance for DescribeVulViewVulRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeVulViewVulRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeVulViewVulRiskListResponse`
        def DescribeVulViewVulRiskList(request)
          body = send_request('DescribeVulViewVulRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulViewVulRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询当前租户下的通知策略列表，对应「通知中心 - 机器人通知 - 通知策略配置」Tab 的表格。返回的字段为「行展示」所需的精简信息。完整配置在编辑场景下使用 DescribeWebhookPolicy。每租户最多 100 个通知策略

        # @param request: Request instance for DescribeWebhookPolicyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeWebhookPolicyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeWebhookPolicyListResponse`
        def DescribeWebhookPolicyList(request)
          body = send_request('DescribeWebhookPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebhookPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分页查询当前租户下的接收机器人列表，对应「通知中心 - 机器人通知 - 接收机器人管理」Tab 的表格。每租户最多 50 个机器人

        # @param request: Request instance for DescribeWebhookReceiverList.
        # @type request: :class:`Tencentcloud::csip::V20221121::DescribeWebhookReceiverListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DescribeWebhookReceiverListResponse`
        def DescribeWebhookReceiverList(request)
          body = send_request('DescribeWebhookReceiverList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebhookReceiverListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停用AI 定时任务。

        # 将指定的AI 定时任务状态设置为已停用，停用后任务将暂停自动执行。

        # @param request: Request instance for DisableAISchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::DisableAIScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DisableAIScheduleResponse`
        def DisableAISchedule(request)
          body = send_request('DisableAISchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableAIScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载导出日志

        # @param request: Request instance for DownloadDspmExportLog.
        # @type request: :class:`Tencentcloud::csip::V20221121::DownloadDspmExportLogRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::DownloadDspmExportLogResponse`
        def DownloadDspmExportLog(request)
          body = send_request('DownloadDspmExportLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadDspmExportLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用AI 定时任务。

        # 将指定的AI 定时任务状态设置为已启用，启用后任务将按触发器配置自动执行。

        # @param request: Request instance for EnableAISchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::EnableAIScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::EnableAIScheduleResponse`
        def EnableAISchedule(request)
          body = send_request('EnableAISchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableAIScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出CSIP扫描任务主机详情为Excel文件，异步生成后通过DescribeExportMachines查询下载地址

        # @param request: Request instance for ExportCSIPMalwareScanTaskDetail.
        # @type request: :class:`Tencentcloud::csip::V20221121::ExportCSIPMalwareScanTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ExportCSIPMalwareScanTaskDetailResponse`
        def ExportCSIPMalwareScanTaskDetail(request)
          body = send_request('ExportCSIPMalwareScanTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportCSIPMalwareScanTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 客户端设置主机列表导出

        # @param request: Request instance for ExportClientSettingHostList.
        # @type request: :class:`Tencentcloud::csip::V20221121::ExportClientSettingHostListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ExportClientSettingHostListResponse`
        def ExportClientSettingHostList(request)
          body = send_request('ExportClientSettingHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportClientSettingHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出EDR策略列表

        # @param request: Request instance for ExportEDRRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::ExportEDRRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ExportEDRRulesResponse`
        def ExportEDRRules(request)
          body = send_request('ExportEDRRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportEDRRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于异步导出数据量大的日志文件

        # @param request: Request instance for ExportTasks.
        # @type request: :class:`Tencentcloud::csip::V20221121::ExportTasksRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ExportTasksResponse`
        def ExportTasks(request)
          body = send_request('ExportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安装集群容器安全Agent（平行容器方式安装 Agent）。

        # capi 层处理流程：
        # 1. 按 ClusterCaMD5List 查询 DB 集群列表（仅用于解析每个集群归属的 appid，不做存在性/类型校验）
        # 2. 按 appid 分组透传到接入侧 ClusterInstall RPC

        # 说明（容器资产改版 2026 H1）：本接口为透传接口，capi 层不对 ClusterCaMD5 做存在性/类型/格式校验；DB 中未命中的 ClusterCaMD5 静默跳过、不报错。

        # @param request: Request instance for InstallClusterAgent.
        # @type request: :class:`Tencentcloud::csip::V20221121::InstallClusterAgentRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::InstallClusterAgentResponse`
        def InstallClusterAgent(request)
          body = send_request('InstallClusterAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallClusterAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在指定的机器实例上安装密钥沙箱SKILL。支持批量操作，一次可传入多个实例ID。安装后，目标机器上的AI Agent即可通过密钥沙箱代理访问凭据，无需接触明文密钥。已安装的实例重复调用不会报错（幂等），直接视为成功。

        # @param request: Request instance for InstallKeySandboxSkill.
        # @type request: :class:`Tencentcloud::csip::V20221121::InstallKeySandboxSkillRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::InstallKeySandboxSkillResponse`
        def InstallKeySandboxSkill(request)
          body = send_request('InstallKeySandboxSkill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallKeySandboxSkillResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 触发将流量沙箱插件安装到指定范围内的 AI Agent 资产。通过 BelongAssetType 区分主机/容器维度，通过 EffectScope 指定安装目标（INCLUDE=仅安装到指定资产，EXCLUDE=全部资产减去指定资产）。接口仅触发下发动作，不等待完成

        # @param request: Request instance for InstallSandboxPlugin.
        # @type request: :class:`Tencentcloud::csip::V20221121::InstallSandboxPluginRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::InstallSandboxPluginResponse`
        def InstallSandboxPlugin(request)
          body = send_request('InstallSandboxPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallSandboxPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改AI-Link智链引擎配置

        # @param request: Request instance for ModifyAILinkSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAILinkSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAILinkSettingResponse`
        def ModifyAILinkSetting(request)
          body = send_request('ModifyAILinkSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAILinkSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改AI 定时任务。

        # 支持部分更新，仅更新传入的可选字段。触发器列表通过 UpdateTriggers 标志控制是否全量替换。

        # @param request: Request instance for ModifyAISchedule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAIScheduleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAIScheduleResponse`
        def ModifyAISchedule(request)
          body = send_request('ModifyAISchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAIScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客户端日志采集配置（CSIP专属），支持设置日志采集类型和生效资产范围

        # @param request: Request instance for ModifyAgentConfigSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAgentConfigSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAgentConfigSettingResponse`
        def ModifyAgentConfigSetting(request)
          body = send_request('ModifyAgentConfigSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentConfigSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置客户端运行模式以及配置

        # @param request: Request instance for ModifyAgentRunMode.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAgentRunModeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAgentRunModeResponse`
        def ModifyAgentRunMode(request)
          body = send_request('ModifyAgentRunMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentRunModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客户端运行策略（策略组），支持设置自定义策略及关联机器列表

        # @param request: Request instance for ModifyAgentRunPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAgentRunPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAgentRunPolicyResponse`
        def ModifyAgentRunPolicy(request)
          body = send_request('ModifyAgentRunPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentRunPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改或者更改处置状态

        # @param request: Request instance for ModifyAlarmRiskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAlarmRiskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAlarmRiskStatusResponse`
        def ModifyAlarmRiskStatus(request)
          body = send_request('ModifyAlarmRiskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmRiskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 标记资产是否核心

        # @param request: Request instance for ModifyAssetCoreAttribute.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAssetCoreAttributeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAssetCoreAttributeResponse`
        def ModifyAssetCoreAttribute(request)
          body = send_request('ModifyAssetCoreAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetCoreAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新资产搜索视图

        # @param request: Request instance for ModifyAssetFilterView.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAssetFilterViewRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAssetFilterViewResponse`
        def ModifyAssetFilterView(request)
          body = send_request('ModifyAssetFilterView', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetFilterViewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑资产标签

        # @param request: Request instance for ModifyAssetTag.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagResponse`
        def ModifyAssetTag(request)
          body = send_request('ModifyAssetTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 操作资产编辑标签

        # @param request: Request instance for ModifyAssetTags.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagsResponse`
        def ModifyAssetTags(request)
          body = send_request('ModifyAssetTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 操作资产编辑标签

        # @param request: Request instance for ModifyAssetTagsByAssetInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagsByAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyAssetTagsByAssetInfoResponse`
        def ModifyAssetTagsByAssetInfo(request)
          body = send_request('ModifyAssetTagsByAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetTagsByAssetInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改爆破阻断模式

        # @param request: Request instance for ModifyBanMode.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBanModeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBanModeResponse`
        def ModifyBanMode(request)
          body = send_request('ModifyBanMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBanModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建或编辑一条基线策略。Policy.ID 为 0 视为新建，非 0 视为编辑；新建/编辑时 Name 必填，CheckAssetType 与 Type 需符合 CheckAssetType / PolicyType 枚举。

        # @param request: Request instance for ModifyBaselinePolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBaselinePolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBaselinePolicyResponse`
        def ModifyBaselinePolicy(request)
          body = send_request('ModifyBaselinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselinePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量启用或停用基线策略。停用后的策略将不再参与扫描与统计。

        # @param request: Request instance for ModifyBaselinePolicyEnable.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBaselinePolicyEnableRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBaselinePolicyEnableResponse`
        def ModifyBaselinePolicyEnable(request)
          body = send_request('ModifyBaselinePolicyEnable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselinePolicyEnableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新当前账号（管理员）的基线同步配置。AutoSync=true 时 TargetAppidList 不可为空，且元素不可为 0。

        # @param request: Request instance for ModifyBaselineSyncConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBaselineSyncConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBaselineSyncConfResponse`
        def ModifyBaselineSyncConf(request)
          body = send_request('ModifyBaselineSyncConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineSyncConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新当前账号的用户级基线配置（允许同步、离线清风险、Agent 扫描超时等）。

        # @param request: Request instance for ModifyBaselineUserOtherConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBaselineUserOtherConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBaselineUserOtherConfResponse`
        def ModifyBaselineUserOtherConf(request)
          body = send_request('ModifyBaselineUserOtherConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineUserOtherConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新当前账号的“用户弱口令”自定义字典。字典原文经服务端加密后存储；传空字符串视为清空。

        # @param request: Request instance for ModifyBaselineUserWeakPasswordConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBaselineUserWeakPasswordConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBaselineUserWeakPasswordConfResponse`
        def ModifyBaselineUserWeakPasswordConf(request)
          body = send_request('ModifyBaselineUserWeakPasswordConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineUserWeakPasswordConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置暴力破解阻断开关状态

        # @param request: Request instance for ModifyBruteAttackBanStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBruteAttackBanStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBruteAttackBanStatusResponse`
        def ModifyBruteAttackBanStatus(request)
          body = send_request('ModifyBruteAttackBanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBruteAttackBanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改暴力破解规则

        # @param request: Request instance for ModifyBruteAttackRules.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyBruteAttackRulesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyBruteAttackRulesResponse`
        def ModifyBruteAttackRules(request)
          body = send_request('ModifyBruteAttackRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBruteAttackRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定主机授权或RASP授权到指定订单。异步执行，返回TaskId供查询进度。通过LicenseType指定授权版本（旗舰版/专业版/RASP）。

        # @param request: Request instance for ModifyCSIPLicenseBinds.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCSIPLicenseBindsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCSIPLicenseBindsResponse`
        def ModifyCSIPLicenseBinds(request)
          body = send_request('ModifyCSIPLicenseBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCSIPLicenseBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动解绑主机授权。同步执行，直接返回结果。仅解绑主机授权（category=0，含专业版/旗舰版）。单订单模式下appid即可定位订单，无需传ResourceId。RASP解绑请用ModifyCSIPRaspLicenseUnBinds。

        # @param request: Request instance for ModifyCSIPLicenseUnBinds.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCSIPLicenseUnBindsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCSIPLicenseUnBindsResponse`
        def ModifyCSIPLicenseUnBinds(request)
          body = send_request('ModifyCSIPLicenseUnBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCSIPLicenseUnBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定 RASP / 旗舰版授权到指定订单。异步执行，返回TaskId供查询进度。LicenseType=rasp 绑 RASP，LicenseType=enterprise_hp 绑旗舰版主机授权；AssetType 区分主机/容器节点/EKS。

        # @param request: Request instance for ModifyCSIPRaspLicenseBinds.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCSIPRaspLicenseBindsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCSIPRaspLicenseBindsResponse`
        def ModifyCSIPRaspLicenseBinds(request)
          body = send_request('ModifyCSIPRaspLicenseBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCSIPRaspLicenseBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手动解绑RASP授权。同步执行，直接返回结果。仅解绑RASP授权（category=1），无解绑次数限制。单订单模式下appid即可定位订单，无需传ResourceId。

        # @param request: Request instance for ModifyCSIPRaspLicenseUnBinds.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCSIPRaspLicenseUnBindsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCSIPRaspLicenseUnBindsResponse`
        def ModifyCSIPRaspLicenseUnBinds(request)
          body = send_request('ModifyCSIPRaspLicenseUnBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCSIPRaspLicenseUnBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群防护状态

        # @param request: Request instance for ModifyClusterDefendStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyClusterDefendStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyClusterDefendStatusResponse`
        def ModifyClusterDefendStatus(request)
          body = send_request('ModifyClusterDefendStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterDefendStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改存储桶监测状态

        # @param request: Request instance for ModifyCosAuditBucketMonitorStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditBucketMonitorStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditBucketMonitorStatusResponse`
        def ModifyCosAuditBucketMonitorStatus(request)
          body = send_request('ModifyCosAuditBucketMonitorStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosAuditBucketMonitorStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改cos审计监测账号

        # @param request: Request instance for ModifyCosAuditMonitorAccount.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditMonitorAccountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditMonitorAccountResponse`
        def ModifyCosAuditMonitorAccount(request)
          body = send_request('ModifyCosAuditMonitorAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosAuditMonitorAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改对象存储识别开关

        # @param request: Request instance for ModifyCosAuditObjectIdentifyStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditObjectIdentifyStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditObjectIdentifyStatusResponse`
        def ModifyCosAuditObjectIdentifyStatus(request)
          body = send_request('ModifyCosAuditObjectIdentifyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosAuditObjectIdentifyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置对象存储扫描采样率

        # @param request: Request instance for ModifyCosAuditObjectSampleRate.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditObjectSampleRateRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCosAuditObjectSampleRateResponse`
        def ModifyCosAuditObjectSampleRate(request)
          body = send_request('ModifyCosAuditObjectSampleRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosAuditObjectSampleRateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改对象存储备注

        # @param request: Request instance for ModifyCosMarkInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCosMarkInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCosMarkInfoResponse`
        def ModifyCosMarkInfo(request)
          body = send_request('ModifyCosMarkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCosMarkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新CSPM自动配额管理者共享开关

        # @param request: Request instance for ModifyCspmShardConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyCspmShardConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyCspmShardConfigResponse`
        def ModifyCspmShardConfig(request)
          body = send_request('ModifyCspmShardConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCspmShardConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm访问管理信息

        # @param request: Request instance for ModifyDspmAccessRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAccessRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAccessRecordResponse`
        def ModifyDspmAccessRecord(request)
          body = send_request('ModifyDspmAccessRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAccessRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm当前应用的数据识别模板

        # @param request: Request instance for ModifyDspmApplyingIdentifyComplianceGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmApplyingIdentifyComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmApplyingIdentifyComplianceGroupResponse`
        def ModifyDspmApplyingIdentifyComplianceGroup(request)
          body = send_request('ModifyDspmApplyingIdentifyComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmApplyingIdentifyComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm审批单状态

        # @param request: Request instance for ModifyDspmApproveStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmApproveStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmApproveStatusResponse`
        def ModifyDspmApproveStatus(request)
          body = send_request('ModifyDspmApproveStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmApproveStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产账号信息

        # @param request: Request instance for ModifyDspmAssetAccount.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetAccountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetAccountResponse`
        def ModifyDspmAssetAccount(request)
          body = send_request('ModifyDspmAssetAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产账号权限

        # @param request: Request instance for ModifyDspmAssetAccountPrivileges.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetAccountPrivilegesResponse`
        def ModifyDspmAssetAccountPrivileges(request)
          body = send_request('ModifyDspmAssetAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产数据扫描任务

        # @param request: Request instance for ModifyDspmAssetDataScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetDataScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetDataScanTaskResponse`
        def ModifyDspmAssetDataScanTask(request)
          body = send_request('ModifyDspmAssetDataScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetDataScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产数据扫描任务状态

        # @param request: Request instance for ModifyDspmAssetDataScanTaskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetDataScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetDataScanTaskStatusResponse`
        def ModifyDspmAssetDataScanTaskStatus(request)
          body = send_request('ModifyDspmAssetDataScanTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetDataScanTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产日志投递开关

        # @param request: Request instance for ModifyDspmAssetLogDeliverySwitch.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetLogDeliverySwitchRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetLogDeliverySwitchResponse`
        def ModifyDspmAssetLogDeliverySwitch(request)
          body = send_request('ModifyDspmAssetLogDeliverySwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetLogDeliverySwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm资产日志投递开关

        # @param request: Request instance for ModifyDspmAssetSecurityAnalysisSwitch.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetSecurityAnalysisSwitchRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAssetSecurityAnalysisSwitchResponse`
        def ModifyDspmAssetSecurityAnalysisSwitch(request)
          body = send_request('ModifyDspmAssetSecurityAnalysisSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAssetSecurityAnalysisSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm审计过滤策略

        # @param request: Request instance for ModifyDspmAuditFilterStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmAuditFilterStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmAuditFilterStrategyResponse`
        def ModifyDspmAuditFilterStrategy(request)
          body = send_request('ModifyDspmAuditFilterStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmAuditFilterStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改日志备份设置

        # @param request: Request instance for ModifyDspmBackupSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmBackupSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmBackupSettingResponse`
        def ModifyDspmBackupSetting(request)
          body = send_request('ModifyDspmBackupSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmBackupSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 租户Ckafka配置保存

        # @param request: Request instance for ModifyDspmCkafkaSave.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaSaveRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaSaveResponse`
        def ModifyDspmCkafkaSave(request)
          body = send_request('ModifyDspmCkafkaSave', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmCkafkaSaveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志投递开启

        # @param request: Request instance for ModifyDspmCkafkaStart.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaStartRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaStartResponse`
        def ModifyDspmCkafkaStart(request)
          body = send_request('ModifyDspmCkafkaStart', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmCkafkaStartResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志类型投递关闭

        # @param request: Request instance for ModifyDspmCkafkaStop.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaStopRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmCkafkaStopResponse`
        def ModifyDspmCkafkaStop(request)
          body = send_request('ModifyDspmCkafkaStop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmCkafkaStopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别分类

        # @param request: Request instance for ModifyDspmIdentifyCategory.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyCategoryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyCategoryResponse`
        def ModifyDspmIdentifyCategory(request)
          body = send_request('ModifyDspmIdentifyCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别模板

        # @param request: Request instance for ModifyDspmIdentifyComplianceGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceGroupResponse`
        def ModifyDspmIdentifyComplianceGroup(request)
          body = send_request('ModifyDspmIdentifyComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别模板状态

        # @param request: Request instance for ModifyDspmIdentifyComplianceGroupStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceGroupStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceGroupStatusResponse`
        def ModifyDspmIdentifyComplianceGroupStatus(request)
          body = send_request('ModifyDspmIdentifyComplianceGroupStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyComplianceGroupStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别模板数据项关联级别信息

        # @param request: Request instance for ModifyDspmIdentifyComplianceRuleLevelInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceRuleLevelInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyComplianceRuleLevelInfoResponse`
        def ModifyDspmIdentifyComplianceRuleLevelInfo(request)
          body = send_request('ModifyDspmIdentifyComplianceRuleLevelInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyComplianceRuleLevelInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm身份信息

        # @param request: Request instance for ModifyDspmIdentifyInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyInfoResponse`
        def ModifyDspmIdentifyInfo(request)
          body = send_request('ModifyDspmIdentifyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别分级组

        # @param request: Request instance for ModifyDspmIdentifyLevelGroup.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyLevelGroupRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyLevelGroupResponse`
        def ModifyDspmIdentifyLevelGroup(request)
          body = send_request('ModifyDspmIdentifyLevelGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyLevelGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别分级信息

        # @param request: Request instance for ModifyDspmIdentifyLevelItem.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyLevelItemRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyLevelItemResponse`
        def ModifyDspmIdentifyLevelItem(request)
          body = send_request('ModifyDspmIdentifyLevelItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyLevelItemResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别数据项

        # @param request: Request instance for ModifyDspmIdentifyRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyRuleResponse`
        def ModifyDspmIdentifyRule(request)
          body = send_request('ModifyDspmIdentifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改dspm数据识别数据项状态

        # @param request: Request instance for ModifyDspmIdentifyRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIdentifyRuleStatusResponse`
        def ModifyDspmIdentifyRuleStatus(request)
          body = send_request('ModifyDspmIdentifyRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIdentifyRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DspmIp信息

        # @param request: Request instance for ModifyDspmIpInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmIpInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmIpInfoResponse`
        def ModifyDspmIpInfo(request)
          body = send_request('ModifyDspmIpInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmIpInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改日志投递配置信息

        # @param request: Request instance for ModifyDspmLogDeliveryType.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmLogDeliveryTypeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmLogDeliveryTypeResponse`
        def ModifyDspmLogDeliveryType(request)
          body = send_request('ModifyDspmLogDeliveryType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmLogDeliveryTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm个人身份id

        # @param request: Request instance for ModifyDspmPersonalIdentify.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmPersonalIdentifyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmPersonalIdentifyResponse`
        def ModifyDspmPersonalIdentify(request)
          body = send_request('ModifyDspmPersonalIdentify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmPersonalIdentifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复备份日志

        # @param request: Request instance for ModifyDspmRestoreLogTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmRestoreLogTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmRestoreLogTaskResponse`
        def ModifyDspmRestoreLogTask(request)
          body = send_request('ModifyDspmRestoreLogTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmRestoreLogTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm风险信息

        # @param request: Request instance for ModifyDspmRiskInfo.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmRiskInfoRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmRiskInfoResponse`
        def ModifyDspmRiskInfo(request)
          body = send_request('ModifyDspmRiskInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmRiskInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm风险策略

        # @param request: Request instance for ModifyDspmRiskStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmRiskStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmRiskStrategyResponse`
        def ModifyDspmRiskStrategy(request)
          body = send_request('ModifyDspmRiskStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmRiskStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Dspm白名单策略

        # @param request: Request instance for ModifyDspmWhitelistStrategy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyDspmWhitelistStrategyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyDspmWhitelistStrategyResponse`
        def ModifyDspmWhitelistStrategy(request)
          body = send_request('ModifyDspmWhitelistStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDspmWhitelistStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑或者创建EDR策略

        # @param request: Request instance for ModifyEDRRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEDRRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEDRRuleResponse`
        def ModifyEDRRule(request)
          body = send_request('ModifyEDRRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEDRRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改EDR策略开关状态

        # @param request: Request instance for ModifyEDRRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEDRRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEDRRuleStatusResponse`
        def ModifyEDRRuleStatus(request)
          body = send_request('ModifyEDRRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEDRRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改EDR策略动作

        # @param request: Request instance for ModifyEDRRulesAction.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEDRRulesActionRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEDRRulesActionResponse`
        def ModifyEDRRulesAction(request)
          body = send_request('ModifyEDRRulesAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEDRRulesActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EDR告警隔离和恢复

        # @param request: Request instance for ModifyEdrAlertIsolation.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertIsolationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertIsolationResponse`
        def ModifyEdrAlertIsolation(request)
          body = send_request('ModifyEdrAlertIsolation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdrAlertIsolationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 永久忽略EDR多行为告警，将告警对应的主机+规则加入AI-Link永久忽略白名单，后续同类告警将自动丢弃

        # @param request: Request instance for ModifyEdrAlertPermanentIgnore.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertPermanentIgnoreRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertPermanentIgnoreResponse`
        def ModifyEdrAlertPermanentIgnore(request)
          body = send_request('ModifyEdrAlertPermanentIgnore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdrAlertPermanentIgnoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EDR告警状态处置

        # @param request: Request instance for ModifyEdrAlertStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEdrAlertStatusResponse`
        def ModifyEdrAlertStatus(request)
          body = send_request('ModifyEdrAlertStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdrAlertStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改日志采集例外网段配置，支持IP/IP段/CIDR格式，最多可添加100条

        # @param request: Request instance for ModifyEdrExcludeNetworkSegments.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEdrExcludeNetworkSegmentsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEdrExcludeNetworkSegmentsResponse`
        def ModifyEdrExcludeNetworkSegments(request)
          body = send_request('ModifyEdrExcludeNetworkSegments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdrExcludeNetworkSegmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改应用日志采集路径配置

        # @param request: Request instance for ModifyEdrLogCollectPath.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyEdrLogCollectPathRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyEdrLogCollectPathResponse`
        def ModifyEdrLogCollectPath(request)
          body = send_request('ModifyEdrLogCollectPath', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdrLogCollectPathResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-更新规则

        # @param request: Request instance for ModifyExposureAutoTagRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyExposureAutoTagRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyExposureAutoTagRuleResponse`
        def ModifyExposureAutoTagRule(request)
          body = send_request('ModifyExposureAutoTagRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExposureAutoTagRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云边界自动打标-启停规则

        # @param request: Request instance for ModifyExposureAutoTagRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyExposureAutoTagRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyExposureAutoTagRuleStatusResponse`
        def ModifyExposureAutoTagRuleStatus(request)
          body = send_request('ModifyExposureAutoTagRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExposureAutoTagRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云边界自定义标签

        # @param request: Request instance for ModifyExposureTag.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyExposureTagRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyExposureTagResponse`
        def ModifyExposureTag(request)
          body = send_request('ModifyExposureTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExposureTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改IaC检测接入Token存储周期

        # @param request: Request instance for ModifyIaCTokenPeriod.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyIaCTokenPeriodRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyIaCTokenPeriodResponse`
        def ModifyIaCTokenPeriod(request)
          body = send_request('ModifyIaCTokenPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIaCTokenPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改镜像仓库信息

        # @param request: Request instance for ModifyImageRegistry.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyImageRegistryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyImageRegistryResponse`
        def ModifyImageRegistry(request)
          body = send_request('ModifyImageRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改镜像仓库定时扫描任务配置

        # @param request: Request instance for ModifyImageRegistryTimedScanTaskConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyImageRegistryTimedScanTaskConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyImageRegistryTimedScanTaskConfigResponse`
        def ModifyImageRegistryTimedScanTaskConfig(request)
          body = send_request('ModifyImageRegistryTimedScanTaskConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageRegistryTimedScanTaskConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容器镜像敏感信息白名单

        # @param request: Request instance for ModifyImageSensitiveWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyImageSensitiveWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyImageSensitiveWhitelistResponse`
        def ModifyImageSensitiveWhitelist(request)
          body = send_request('ModifyImageSensitiveWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageSensitiveWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产数据库信息

        # @param request: Request instance for ModifyImageVirusWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyImageVirusWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyImageVirusWhitelistResponse`
        def ModifyImageVirusWhitelist(request)
          body = send_request('ModifyImageVirusWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageVirusWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改容器镜像漏洞白名单

        # @param request: Request instance for ModifyImageVulWhitelist.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyImageVulWhitelistRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyImageVulWhitelistResponse`
        def ModifyImageVulWhitelist(request)
          body = send_request('ModifyImageVulWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageVulWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新合并后登录审计白名单信息（服务器列表数目应小于1000）

        # @param request: Request instance for ModifyLoginWhiteRecord.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyLoginWhiteRecordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyLoginWhiteRecordResponse`
        def ModifyLoginWhiteRecord(request)
          body = send_request('ModifyLoginWhiteRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoginWhiteRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改机器清理配置

        # @param request: Request instance for ModifyMachineAutoClearConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyMachineAutoClearConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyMachineAutoClearConfigResponse`
        def ModifyMachineAutoClearConfig(request)
          body = send_request('ModifyMachineAutoClearConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMachineAutoClearConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改主机资产备注信息

        # @param request: Request instance for ModifyMachineRemark.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyMachineRemarkRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyMachineRemarkResponse`
        def ModifyMachineRemark(request)
          body = send_request('ModifyMachineRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMachineRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改主机登录方式

        # @param request: Request instance for ModifyMachinesLoginType.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyMachinesLoginTypeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyMachinesLoginTypeResponse`
        def ModifyMachinesLoginType(request)
          body = send_request('ModifyMachinesLoginType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMachinesLoginTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改文件查杀定时扫描配置，包含扫描周期、检测模式、资产范围、引擎选择、隔离配置等

        # @param request: Request instance for ModifyMalwareTimingScanSettings.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyMalwareTimingScanSettingsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyMalwareTimingScanSettingsResponse`
        def ModifyMalwareTimingScanSettings(request)
          body = send_request('ModifyMalwareTimingScanSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMalwareTimingScanSettingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或更新NFS扫描全局配置

        # @param request: Request instance for ModifyNFSScanConf.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNFSScanConfRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNFSScanConfResponse`
        def ModifyNFSScanConf(request)
          body = send_request('ModifyNFSScanConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNFSScanConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭进程守护功能

        # @param request: Request instance for ModifyNFSScanHost.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNFSScanHostRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNFSScanHostResponse`
        def ModifyNFSScanHost(request)
          body = send_request('ModifyNFSScanHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNFSScanHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网络攻击检测开关及资产范围配置

        # @param request: Request instance for ModifyNetAttackSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNetAttackSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNetAttackSettingResponse`
        def ModifyNetAttackSetting(request)
          body = send_request('ModifyNetAttackSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetAttackSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客户端离线时长

        # @param request: Request instance for ModifyNotifyAgentOfflineDuration.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifyAgentOfflineDurationRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifyAgentOfflineDurationResponse`
        def ModifyNotifyAgentOfflineDuration(request)
          body = send_request('ModifyNotifyAgentOfflineDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifyAgentOfflineDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改通知资产范围配置

        # @param request: Request instance for ModifyNotifyAssetConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifyAssetConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifyAssetConfigResponse`
        def ModifyNotifyAssetConfig(request)
          body = send_request('ModifyNotifyAssetConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifyAssetConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改通知成员账号

        # @param request: Request instance for ModifyNotifyMember.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifyMemberRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifyMemberResponse`
        def ModifyNotifyMember(request)
          body = send_request('ModifyNotifyMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifyMemberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改通知设置

        # @param request: Request instance for ModifyNotifySetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingResponse`
        def ModifyNotifySetting(request)
          body = send_request('ModifyNotifySetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifySettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改通知设置（云API风险治理）

        # @param request: Request instance for ModifyNotifySettingAk.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingAkRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingAkResponse`
        def ModifyNotifySettingAk(request)
          body = send_request('ModifyNotifySettingAk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifySettingAkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警中心通知高级配置

        # @param request: Request instance for ModifyNotifySettingAlert.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingAlertRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyNotifySettingAlertResponse`
        def ModifyNotifySettingAlert(request)
          body = send_request('ModifyNotifySettingAlert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNotifySettingAlertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集团账号状态

        # @param request: Request instance for ModifyOrganizationAccountStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyOrganizationAccountStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyOrganizationAccountStatusResponse`
        def ModifyOrganizationAccountStatus(request)
          body = send_request('ModifyOrganizationAccountStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOrganizationAccountStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自动扩容配置（多模块可扩展，本期仅主机安全模块）。

        # 「自动扩容」为面向用户的对外概念，等价于底层自动加购(auto_repurchase)：当账号有新增资产时，自动加购所需授权。

        # 补充说明：
        # 1. 本期仅实现主机安全模块 HostConfig；后续可扩展容器安全、AI-Agent 安全等命名模块字段，各模块配置字段可异构；
        # 2. 部分更新语义：模块对象为空表示该模块不修改，模块内字段为空表示该字段不修改；
        # 3. HostConfig.Switch 联动映射 auto_repurchase_switch；auto_bind_switch（自动绑定）恒开，不由本接口改动；
        # 4. 自动续费(renew_flag) 不由本接口改动；额度/用量请调用 DescribeLicenseStatus；
        # 5. 顶部「自动扩容」总开关状态由前端按各模块开关聚合，后端不存储、不返回全局开关。

        # @param request: Request instance for ModifyPayConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyPayConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyPayConfigResponse`
        def ModifyPayConfig(request)
          body = send_request('ModifyPayConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPayConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改策略状态

        # @param request: Request instance for ModifyPolicyStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyPolicyStatusResponse`
        def ModifyPolicyStatus(request)
          body = send_request('ModifyPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重保防护包防护设置

        # @param request: Request instance for ModifyProtectionSetting.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyProtectionSettingRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyProtectionSettingResponse`
        def ModifyProtectionSetting(request)
          body = send_request('ModifyProtectionSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectionSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重保防护授权包绑定

        # @param request: Request instance for ModifyRaspLicenseBinds.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRaspLicenseBindsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRaspLicenseBindsResponse`
        def ModifyRaspLicenseBinds(request)
          body = send_request('ModifyRaspLicenseBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRaspLicenseBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改反弹Shell内网告警与资产范围配置

        # @param request: Request instance for ModifyReverseShellSystemPolicyConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyReverseShellSystemPolicyConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyReverseShellSystemPolicyConfigResponse`
        def ModifyReverseShellSystemPolicyConfig(request)
          body = send_request('ModifyReverseShellSystemPolicyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReverseShellSystemPolicyConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改风险中心风险状态

        # @param request: Request instance for ModifyRiskCenterRiskStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterRiskStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterRiskStatusResponse`
        def ModifyRiskCenterRiskStatus(request)
          body = send_request('ModifyRiskCenterRiskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskCenterRiskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改风险中心扫描任务

        # @param request: Request instance for ModifyRiskCenterScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRiskCenterScanTaskResponse`
        def ModifyRiskCenterScanTask(request)
          body = send_request('ModifyRiskCenterScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskCenterScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新周期扫描计划

        # @param request: Request instance for ModifyRiskScanCronConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyRiskScanCronConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyRiskScanCronConfigResponse`
        def ModifyRiskScanCronConfig(request)
          body = send_request('ModifyRiskScanCronConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskScanCronConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改已有的 ACL 用户规则。未传字段保持原值，支持部分字段更新

        # @param request: Request instance for ModifySandboxACLRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxACLRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxACLRuleResponse`
        def ModifySandboxACLRule(request)
          body = send_request('ModifySandboxACLRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxACLRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量切换 ACL 用户规则的启禁用状态。任一规则不存在、属于其他租户或已删除时整体返回错误

        # @param request: Request instance for ModifySandboxACLRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxACLRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxACLRuleStatusResponse`
        def ModifySandboxACLRuleStatus(request)
          body = send_request('ModifySandboxACLRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxACLRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更新流量沙箱告警（覆盖 ACL / DLP / LLM 审计三类）。通过 AlertType + BelongAssetType 定位告警来源。Status 支持 HANDLED / IGNORE 修改状态，以及 DELETE 删除。任一告警 ID 不存在或属于其他租户时整体返回错误。注：加白（PASS）不经本接口，由 Create/Modify***Rule 通过 AlertID 回写触发

        # @param request: Request instance for ModifySandboxAlertStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxAlertStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxAlertStatusResponse`
        def ModifySandboxAlertStatus(request)
          body = send_request('ModifySandboxAlertStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxAlertStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改已存在的 DLP 用户规则。未传字段保持原值，支持部分字段更新；不支持修改 BelongAssetType

        # @param request: Request instance for ModifySandboxDLPRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxDLPRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxDLPRuleResponse`
        def ModifySandboxDLPRule(request)
          body = send_request('ModifySandboxDLPRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxDLPRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量切换 DLP 用户规则的启禁用状态。任一规则不存在、属于其他租户或已删除时整体返回错误

        # @param request: Request instance for ModifySandboxDLPRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxDLPRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxDLPRuleStatusResponse`
        def ModifySandboxDLPRuleStatus(request)
          body = send_request('ModifySandboxDLPRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxDLPRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改命令沙箱文件访问规则

        # @param request: Request instance for ModifySandboxFileRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxFileRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxFileRuleResponse`
        def ModifySandboxFileRule(request)
          body = send_request('ModifySandboxFileRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxFileRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量启用或禁用命令沙箱文件访问规则

        # @param request: Request instance for ModifySandboxFileRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxFileRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxFileRuleStatusResponse`
        def ModifySandboxFileRuleStatus(request)
          body = send_request('ModifySandboxFileRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxFileRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改已有的 LLM 审计用户规则。未传字段保持原值，支持部分字段更新

        # @param request: Request instance for ModifySandboxLLMAuditRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxLLMAuditRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxLLMAuditRuleResponse`
        def ModifySandboxLLMAuditRule(request)
          body = send_request('ModifySandboxLLMAuditRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxLLMAuditRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量切换 LLM 审计用户规则的启禁用状态。任一规则不存在、属于其他租户或已删除时整体返回错误

        # @param request: Request instance for ModifySandboxLLMAuditRuleStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySandboxLLMAuditRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySandboxLLMAuditRuleStatusResponse`
        def ModifySandboxLLMAuditRuleStatus(request)
          body = send_request('ModifySandboxLLMAuditRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySandboxLLMAuditRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全评分规则，必须传入完整规则集

        # @param request: Request instance for ModifySecurityScoreRule.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySecurityScoreRuleRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySecurityScoreRuleResponse`
        def ModifySecurityScoreRule(request)
          body = send_request('ModifySecurityScoreRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityScoreRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑ak监测账号

        # @param request: Request instance for ModifyShareUserAK.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyShareUserAKRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyShareUserAKResponse`
        def ModifyShareUserAK(request)
          body = send_request('ModifyShareUserAK', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyShareUserAKResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑CSPM共享账号

        # @param request: Request instance for ModifyShareUserCSPM.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyShareUserCSPMRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyShareUserCSPMResponse`
        def ModifyShareUserCSPM(request)
          body = send_request('ModifyShareUserCSPM', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyShareUserCSPMResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑dspm监测账号

        # @param request: Request instance for ModifyShareUserDspm.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyShareUserDspmRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyShareUserDspmResponse`
        def ModifyShareUserDspm(request)
          body = send_request('ModifyShareUserDspm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyShareUserDspmResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改 Skill 安全检测告警的处理状态

        # @param request: Request instance for ModifySkillScanAlertStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifySkillScanAlertStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifySkillScanAlertStatusResponse`
        def ModifySkillScanAlertStatus(request)
          body = send_request('ModifySkillScanAlertStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySkillScanAlertStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新自定义策略的开关

        # @param request: Request instance for ModifyUebaRuleSwitch.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyUebaRuleSwitchRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyUebaRuleSwitchResponse`
        def ModifyUebaRuleSwitch(request)
          body = send_request('ModifyUebaRuleSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUebaRuleSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改漏洞扫描（周期扫描）

        # @param request: Request instance for ModifyVulScanPeriodic.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyVulScanPeriodicRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyVulScanPeriodicResponse`
        def ModifyVulScanPeriodic(request)
          body = send_request('ModifyVulScanPeriodic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVulScanPeriodicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改漏洞白名单配置

        # @param request: Request instance for ModifyVulWhitelistConfig.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyVulWhitelistConfigRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyVulWhitelistConfigResponse`
        def ModifyVulWhitelistConfig(request)
          body = send_request('ModifyVulWhitelistConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVulWhitelistConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改漏洞白名单开关

        # @param request: Request instance for ModifyVulWhitelistSwitch.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyVulWhitelistSwitchRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyVulWhitelistSwitchResponse`
        def ModifyVulWhitelistSwitch(request)
          body = send_request('ModifyVulWhitelistSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVulWhitelistSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改一条通知策略。ID > 0 表示修改；ID = 0 或不传表示新增。MemberAppIds 配置为空时，策略仅作用于当前主账号事件；非空时同时作用于自身账号 + 所列成员账号。

        # @param request: Request instance for ModifyWebhookPolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyWebhookPolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyWebhookPolicyResponse`
        def ModifyWebhookPolicy(request)
          body = send_request('ModifyWebhookPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebhookPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换通知策略的启用状态。

        # @param request: Request instance for ModifyWebhookPolicyStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyWebhookPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyWebhookPolicyStatusResponse`
        def ModifyWebhookPolicyStatus(request)
          body = send_request('ModifyWebhookPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebhookPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改一个接收机器人。ID > 0 表示修改已有记录；ID = 0 或不传表示新增。机器人类型由 Type 字段决定，Type=WEBHOOK 时 WebhookAddr 必填，Type=SCF 时 SCFRegion/Namespace/FunctionName/FunctionVersion/Alias/MaxWaitSeconds 全部必填。修改时不允许变更 Type

        # @param request: Request instance for ModifyWebhookReceiver.
        # @type request: :class:`Tencentcloud::csip::V20221121::ModifyWebhookReceiverRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ModifyWebhookReceiverResponse`
        def ModifyWebhookReceiver(request)
          body = send_request('ModifyWebhookReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebhookReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险操作示例

        # @param request: Request instance for OperateRisk.
        # @type request: :class:`Tencentcloud::csip::V20221121::OperateRiskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::OperateRiskResponse`
        def OperateRisk(request)
          body = send_request('OperateRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 自定义风险规则

        # @param request: Request instance for OperateRiskRulePolicy.
        # @type request: :class:`Tencentcloud::csip::V20221121::OperateRiskRulePolicyRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::OperateRiskRulePolicyResponse`
        def OperateRiskRulePolicy(request)
          body = send_request('OperateRiskRulePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateRiskRulePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置Dspm资产账号密码

        # @param request: Request instance for ResetDspmAssetAccountPassword.
        # @type request: :class:`Tencentcloud::csip::V20221121::ResetDspmAssetAccountPasswordRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ResetDspmAssetAccountPasswordResponse`
        def ResetDspmAssetAccountPassword(request)
          body = send_request('ResetDspmAssetAccountPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetDspmAssetAccountPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RetryExportLog

        # @param request: Request instance for RetryDspmExportLog.
        # @type request: :class:`Tencentcloud::csip::V20221121::RetryDspmExportLogRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::RetryDspmExportLogResponse`
        def RetryDspmExportLog(request)
          body = send_request('RetryDspmExportLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryDspmExportLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复Dspm资产账号

        # @param request: Request instance for RevertDspmAssetAccount.
        # @type request: :class:`Tencentcloud::csip::V20221121::RevertDspmAssetAccountRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::RevertDspmAssetAccountResponse`
        def RevertDspmAssetAccount(request)
          body = send_request('RevertDspmAssetAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevertDspmAssetAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对单个资产的部分检测项发起重新扫描（资产详情页“重新扫描”入口）。

        # @param request: Request instance for ScanBaselineAssetItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanBaselineAssetItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanBaselineAssetItemListResponse`
        def ScanBaselineAssetItemList(request)
          body = send_request('ScanBaselineAssetItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanBaselineAssetItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对指定策略下的一批检测项发起重新扫描（策略详情页“检测项”维度的复扫入口）。

        # @param request: Request instance for ScanBaselineItemList.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanBaselineItemListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanBaselineItemListResponse`
        def ScanBaselineItemList(request)
          body = send_request('ScanBaselineItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanBaselineItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对一批基线策略发起整体重新扫描（策略列表页“一键扫描”入口），按策略命中的资产范围全量重扫。

        # @param request: Request instance for ScanBaselinePolicyList.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanBaselinePolicyListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanBaselinePolicyListResponse`
        def ScanBaselinePolicyList(request)
          body = send_request('ScanBaselinePolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanBaselinePolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对一批风险记录发起重新扫描，常用于“风险列表”页批量勾选风险后的复扫场景。

        # @param request: Request instance for ScanBaselineRiskList.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanBaselineRiskListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanBaselineRiskListResponse`
        def ScanBaselineRiskList(request)
          body = send_request('ScanBaselineRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanBaselineRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 手动扫描任务删除接口

        # @param request: Request instance for ScanCSIPTaskAgain.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanCSIPTaskAgainRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanCSIPTaskAgainResponse`
        def ScanCSIPTaskAgain(request)
          body = send_request('ScanCSIPTaskAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanCSIPTaskAgainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基于原任务配置新建扫描任务。AssetId为空时从TaskId获取全部资产信息；AssetId非空时仅含该单资产。

        # @param request: Request instance for ScanEDRTaskAgain.
        # @type request: :class:`Tencentcloud::csip::V20221121::ScanEDRTaskAgainRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::ScanEDRTaskAgainResponse`
        def ScanEDRTaskAgain(request)
          body = send_request('ScanEDRTaskAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanEDRTaskAgainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送Dspm资产访问验证码

        # @param request: Request instance for SendDspmAssetLoginSmsCode.
        # @type request: :class:`Tencentcloud::csip::V20221121::SendDspmAssetLoginSmsCodeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::SendDspmAssetLoginSmsCodeResponse`
        def SendDspmAssetLoginSmsCode(request)
          body = send_request('SendDspmAssetLoginSmsCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendDspmAssetLoginSmsCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 租户Ckafka联通性测试

        # @param request: Request instance for SendDspmCkafkaTest.
        # @type request: :class:`Tencentcloud::csip::V20221121::SendDspmCkafkaTestRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::SendDspmCkafkaTestResponse`
        def SendDspmCkafkaTest(request)
          body = send_request('SendDspmCkafkaTest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendDspmCkafkaTestResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或者修改防卸载功能配置

        # @param request: Request instance for StartOrModifyPreventUninstall.
        # @type request: :class:`Tencentcloud::csip::V20221121::StartOrModifyPreventUninstallRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StartOrModifyPreventUninstallResponse`
        def StartOrModifyPreventUninstall(request)
          body = send_request('StartOrModifyPreventUninstall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartOrModifyPreventUninstallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或者修改进程守护功能配置

        # @param request: Request instance for StartOrModifyProcessDaemon.
        # @type request: :class:`Tencentcloud::csip::V20221121::StartOrModifyProcessDaemonRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StartOrModifyProcessDaemonResponse`
        def StartOrModifyProcessDaemon(request)
          body = send_request('StartOrModifyProcessDaemon', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartOrModifyProcessDaemonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止指定的基线扫描主任务，仅对处于 INIT / SUBTASK_CREATING / SCANNING 状态的任务生效。

        # @param request: Request instance for StopBaselineScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopBaselineScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopBaselineScanTaskResponse`
        def StopBaselineScanTask(request)
          body = send_request('StopBaselineScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBaselineScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CSIP 手动扫描停止接口

        # @param request: Request instance for StopCSIPManualMalwareScan.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopCSIPManualMalwareScanRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopCSIPManualMalwareScanResponse`
        def StopCSIPManualMalwareScan(request)
          body = send_request('StopCSIPManualMalwareScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCSIPManualMalwareScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止或取消扫描任务。SCANNING状态调RPC停止，WAIT状态直接改库取消。只有任务创建者可操作。

        # @param request: Request instance for StopEDRScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopEDRScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopEDRScanTaskResponse`
        def StopEDRScanTask(request)
          body = send_request('StopEDRScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopEDRScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止镜像仓库镜像扫描任务

        # @param request: Request instance for StopImageRegistryScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopImageRegistryScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopImageRegistryScanTaskResponse`
        def StopImageRegistryScanTask(request)
          body = send_request('StopImageRegistryScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopImageRegistryScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭防卸载功能

        # @param request: Request instance for StopPreventUninstall.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopPreventUninstallRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopPreventUninstallResponse`
        def StopPreventUninstall(request)
          body = send_request('StopPreventUninstall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopPreventUninstallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭进程守护功能

        # @param request: Request instance for StopProcessDaemon.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopProcessDaemonRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopProcessDaemonResponse`
        def StopProcessDaemon(request)
          body = send_request('StopProcessDaemon', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopProcessDaemonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止扫风险中心扫描任务

        # @param request: Request instance for StopRiskCenterTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopRiskCenterTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopRiskCenterTaskResponse`
        def StopRiskCenterTask(request)
          body = send_request('StopRiskCenterTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRiskCenterTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止漏洞扫描（任务扫描）

        # @param request: Request instance for StopVulScanTask.
        # @type request: :class:`Tencentcloud::csip::V20221121::StopVulScanTaskRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::StopVulScanTaskResponse`
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

        # 同步dspm支持的资产

        # @param request: Request instance for SyncDspmAssets.
        # @type request: :class:`Tencentcloud::csip::V20221121::SyncDspmAssetsRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::SyncDspmAssetsResponse`
        def SyncDspmAssets(request)
          body = send_request('SyncDspmAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncDspmAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步dspm用户列表

        # @param request: Request instance for SyncDspmUsers.
        # @type request: :class:`Tencentcloud::csip::V20221121::SyncDspmUsersRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::SyncDspmUsersResponse`
        def SyncDspmUsers(request)
          body = send_request('SyncDspmUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncDspmUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 镜像仓库同步

        # @param request: Request instance for SyncImageRegistry.
        # @type request: :class:`Tencentcloud::csip::V20221121::SyncImageRegistryRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::SyncImageRegistryResponse`
        def SyncImageRegistry(request)
          body = send_request('SyncImageRegistry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncImageRegistryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 向指定的接收机器人发送一条测试消息，验证可达性与配置正确性。对应表格行内的「测试」按钮。

        # @param request: Request instance for TestWebhookReceiver.
        # @type request: :class:`Tencentcloud::csip::V20221121::TestWebhookReceiverRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::TestWebhookReceiverResponse`
        def TestWebhookReceiver(request)
          body = send_request('TestWebhookReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TestWebhookReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 卸载集群容器安全Agent。

        # @param request: Request instance for UninstallClusterAgent.
        # @type request: :class:`Tencentcloud::csip::V20221121::UninstallClusterAgentRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UninstallClusterAgentResponse`
        def UninstallClusterAgent(request)
          body = send_request('UninstallClusterAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallClusterAgentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从指定的机器实例上卸载密钥沙箱SKILL。支持批量操作，一次可传入多个实例ID。卸载后，目标机器上的AI Agent将无法再通过密钥沙箱代理访问凭据。未安装的实例重复调用不会报错（幂等），直接视为成功。

        # @param request: Request instance for UninstallKeySandboxSkill.
        # @type request: :class:`Tencentcloud::csip::V20221121::UninstallKeySandboxSkillRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UninstallKeySandboxSkillResponse`
        def UninstallKeySandboxSkill(request)
          body = send_request('UninstallKeySandboxSkill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallKeySandboxSkillResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 标记风险或者告警为 已处置/已忽略

        # @param request: Request instance for UpdateAccessKeyAlarmStatus.
        # @type request: :class:`Tencentcloud::csip::V20221121::UpdateAccessKeyAlarmStatusRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UpdateAccessKeyAlarmStatusResponse`
        def UpdateAccessKeyAlarmStatus(request)
          body = send_request('UpdateAccessKeyAlarmStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAccessKeyAlarmStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑访问密钥/源IP备注

        # @param request: Request instance for UpdateAccessKeyRemark.
        # @type request: :class:`Tencentcloud::csip::V20221121::UpdateAccessKeyRemarkRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UpdateAccessKeyRemarkResponse`
        def UpdateAccessKeyRemark(request)
          body = send_request('UpdateAccessKeyRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAccessKeyRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量告警状态处理接口

        # @param request: Request instance for UpdateAlertStatusList.
        # @type request: :class:`Tencentcloud::csip::V20221121::UpdateAlertStatusListRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UpdateAlertStatusListResponse`
        def UpdateAlertStatusList(request)
          body = send_request('UpdateAlertStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAlertStatusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定、更新集群负责人

        # @param request: Request instance for UpdateClusterOwner.
        # @type request: :class:`Tencentcloud::csip::V20221121::UpdateClusterOwnerRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::UpdateClusterOwnerResponse`
        def UpdateClusterOwner(request)
          body = send_request('UpdateClusterOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateClusterOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证Dspm资产登录验证码

        # @param request: Request instance for VerifyDspmAssetLoginCode.
        # @type request: :class:`Tencentcloud::csip::V20221121::VerifyDspmAssetLoginCodeRequest`
        # @rtype: :class:`Tencentcloud::csip::V20221121::VerifyDspmAssetLoginCodeResponse`
        def VerifyDspmAssetLoginCode(request)
          body = send_request('VerifyDspmAssetLoginCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyDspmAssetLoginCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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