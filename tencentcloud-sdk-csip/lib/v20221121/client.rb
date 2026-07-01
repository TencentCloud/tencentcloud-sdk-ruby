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