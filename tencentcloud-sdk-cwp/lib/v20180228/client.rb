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
  module Cwp
    module V20180228
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-02-28'
            api_endpoint = 'cwp.tencentcloudapi.com'
            sdk_version = 'CWP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量添加异地登录白名单

        # @param request: Request instance for AddLoginWhiteLists.
        # @type request: :class:`Tencentcloud::cwp::V20180228::AddLoginWhiteListsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::AddLoginWhiteListsResponse`
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

        # 取消漏洞忽略

        # @param request: Request instance for CancelIgnoreVul.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CancelIgnoreVulRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CancelIgnoreVulResponse`
        def CancelIgnoreVul(request)
          body = send_request('CancelIgnoreVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelIgnoreVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据检测项id或事件id批量忽略事件或取消忽略

        # @param request: Request instance for ChangeRuleEventsIgnoreStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ChangeRuleEventsIgnoreStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ChangeRuleEventsIgnoreStatusResponse`
        def ChangeRuleEventsIgnoreStatus(request)
          body = send_request('ChangeRuleEventsIgnoreStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeRuleEventsIgnoreStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据策略id修改策略可用状态

        # @param request: Request instance for ChangeStrategyEnableStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ChangeStrategyEnableStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ChangeStrategyEnableStatusResponse`
        def ChangeStrategyEnableStatus(request)
          body = send_request('ChangeStrategyEnableStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeStrategyEnableStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 校验高危命令用户规则新增和编辑时的参数。

        # @param request: Request instance for CheckBashPolicyParams.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CheckBashPolicyParamsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CheckBashPolicyParamsResponse`
        def CheckBashPolicyParams(request)
          body = send_request('CheckBashPolicyParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBashPolicyParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 校验高危命令用户规则新增和编辑时的参数。

        # @param request: Request instance for CheckBashRuleParams.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CheckBashRuleParamsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CheckBashRuleParamsResponse`
        def CheckBashRuleParams(request)
          body = send_request('CheckBashRuleParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBashRuleParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检验核心文件监控前端新增和编辑时的规则参数。

        # @param request: Request instance for CheckFileTamperRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CheckFileTamperRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CheckFileTamperRuleResponse`
        def CheckFileTamperRule(request)
          body = send_request('CheckFileTamperRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckFileTamperRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线是否第一次检测

        # @param request: Request instance for CheckFirstScanBaseline.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CheckFirstScanBaselineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CheckFirstScanBaselineResponse`
        def CheckFirstScanBaseline(request)
          body = send_request('CheckFirstScanBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckFirstScanBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查日志投递kafka连通性

        # @param request: Request instance for CheckLogKafkaConnectionState.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CheckLogKafkaConnectionStateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CheckLogKafkaConnectionStateResponse`
        def CheckLogKafkaConnectionState(request)
          body = send_request('CheckLogKafkaConnectionState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckLogKafkaConnectionStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清理本地存储数据

        # @param request: Request instance for ClearLocalStorage.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ClearLocalStorageRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ClearLocalStorageResponse`
        def ClearLocalStorage(request)
          body = send_request('ClearLocalStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearLocalStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加阻断白名单列表

        # @param request: Request instance for CreateBanWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateBanWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateBanWhiteListResponse`
        def CreateBanWhiteList(request)
          body = send_request('CreateBanWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBanWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据策略信息创建基线策略

        # @param request: Request instance for CreateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyResponse`
        def CreateBaselineStrategy(request)
          body = send_request('CreateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新购授权自动绑定任务

        # @param request: Request instance for CreateBuyBindTask.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateBuyBindTaskRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateBuyBindTaskResponse`
        def CreateBuyBindTask(request)
          body = send_request('CreateBuyBindTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBuyBindTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建应急漏洞扫描任务

        # @param request: Request instance for CreateEmergencyVulScan.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateEmergencyVulScanRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateEmergencyVulScanResponse`
        def CreateEmergencyVulScan(request)
          body = send_request('CreateEmergencyVulScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmergencyVulScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对旗舰版机器单次触发事件调查及告警回溯

        # @param request: Request instance for CreateIncidentBacktracking.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateIncidentBacktrackingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateIncidentBacktrackingResponse`
        def CreateIncidentBacktracking(request)
          body = send_request('CreateIncidentBacktracking', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIncidentBacktrackingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateLicenseOrder 该接口可以创建专业版/旗舰版订单
        # 支持预付费后付费创建
        # 后付费订单直接创建成功
        # 预付费订单仅下单不支付,需要调用计费支付接口进行支付

        # @param request: Request instance for CreateLicenseOrder.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateLicenseOrderRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateLicenseOrderResponse`
        def CreateLicenseOrder(request)
          body = send_request('CreateLicenseOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLicenseOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建日志下载任务

        # @param request: Request instance for CreateLogExport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateLogExportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateLogExportResponse`
        def CreateLogExport(request)
          body = send_request('CreateLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加恶意请求白名单

        # @param request: Request instance for CreateMaliciousRequestWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateMaliciousRequestWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateMaliciousRequestWhiteListResponse`
        def CreateMaliciousRequestWhiteList(request)
          body = send_request('CreateMaliciousRequestWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMaliciousRequestWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建木马白名单

        # @param request: Request instance for CreateMalwareWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateMalwareWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateMalwareWhiteListResponse`
        def CreateMalwareWhiteList(request)
          body = send_request('CreateMalwareWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMalwareWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建网络攻击白名单

        # @param request: Request instance for CreateNetAttackWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateNetAttackWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateNetAttackWhiteListResponse`
        def CreateNetAttackWhiteList(request)
          body = send_request('CreateNetAttackWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetAttackWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加网站防护服务器

        # @param request: Request instance for CreateProtectServer.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateProtectServerRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateProtectServerResponse`
        def CreateProtectServer(request)
          body = send_request('CreateProtectServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProtectServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或修改防勒索策略

        # @param request: Request instance for CreateRansomDefenseStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateRansomDefenseStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateRansomDefenseStrategyResponse`
        def CreateRansomDefenseStrategy(request)
          body = send_request('CreateRansomDefenseStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRansomDefenseStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口可以对入侵检测-文件查杀扫描检测

        # @param request: Request instance for CreateScanMalwareSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateScanMalwareSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateScanMalwareSettingResponse`
        def CreateScanMalwareSetting(request)
          body = send_request('CreateScanMalwareSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScanMalwareSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加历史搜索记录

        # @param request: Request instance for CreateSearchLog.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateSearchLogRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateSearchLogResponse`
        def CreateSearchLog(request)
          body = send_request('CreateSearchLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSearchLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateSearchTemplateResponse`
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

        # 提交漏洞修护

        # @param request: Request instance for CreateVulFix.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateVulFixRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateVulFixResponse`
        def CreateVulFix(request)
          body = send_request('CreateVulFix', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulFixResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口可以创建白名单订单

        # @param request: Request instance for CreateWhiteListOrder.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateWhiteListOrderRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateWhiteListOrderResponse`
        def CreateWhiteListOrder(request)
          body = send_request('CreateWhiteListOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWhiteListOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除全部java内存马事件

        # @param request: Request instance for DeleteAllJavaMemShells.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteAllJavaMemShellsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteAllJavaMemShellsResponse`
        def DeleteAllJavaMemShells(request)
          body = send_request('DeleteAllJavaMemShells', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAllJavaMemShellsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除阻断白名单列表

        # @param request: Request instance for DeleteBanWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBanWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBanWhiteListResponse`
        def DeleteBanWhiteList(request)
          body = send_request('DeleteBanWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBanWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除基线策略配置

        # @param request: Request instance for DeleteBaselinePolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBaselinePolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBaselinePolicyResponse`
        def DeleteBaselinePolicy(request)
          body = send_request('DeleteBaselinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselinePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除基线规则

        # @param request: Request instance for DeleteBaselineRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineRuleResponse`
        def DeleteBaselineRule(request)
          body = send_request('DeleteBaselineRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除基线忽略规则

        # @param request: Request instance for DeleteBaselineRuleIgnore.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineRuleIgnoreRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineRuleIgnoreResponse`
        def DeleteBaselineRuleIgnore(request)
          body = send_request('DeleteBaselineRuleIgnore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineRuleIgnoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线策略id删除策略

        # @param request: Request instance for DeleteBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineStrategyResponse`
        def DeleteBaselineStrategy(request)
          body = send_request('DeleteBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除基线弱口令

        # @param request: Request instance for DeleteBaselineWeakPassword.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineWeakPasswordRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBaselineWeakPasswordResponse`
        def DeleteBaselineWeakPassword(request)
          body = send_request('DeleteBaselineWeakPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBaselineWeakPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除高危命令事件

        # @param request: Request instance for DeleteBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsResponse`
        def DeleteBashEvents(request)
          body = send_request('DeleteBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除高危命令策略

        # @param request: Request instance for DeleteBashPolicies.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashPoliciesResponse`
        def DeleteBashPolicies(request)
          body = send_request('DeleteBashPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除高危命令规则

        # @param request: Request instance for DeleteBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesResponse`
        def DeleteBashRules(request)
          body = send_request('DeleteBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteBruteAttacks) 用于删除暴力破解记录。

        # @param request: Request instance for DeleteBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksResponse`
        def DeleteBruteAttacks(request)
          body = send_request('DeleteBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对授权管理-订单列表内已过期的订单进行删除.(删除后的订单不在统计范畴内)

        # @param request: Request instance for DeleteLicenseRecord.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLicenseRecordRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLicenseRecordResponse`
        def DeleteLicenseRecord(request)
          body = send_request('DeleteLicenseRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLicenseRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除授权全部记录

        # @param request: Request instance for DeleteLicenseRecordAll.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLicenseRecordAllRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLicenseRecordAllResponse`
        def DeleteLicenseRecordAll(request)
          body = send_request('DeleteLicenseRecordAll', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLicenseRecordAllResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除日志下载任务

        # @param request: Request instance for DeleteLogExport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLogExportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLogExportResponse`
        def DeleteLogExport(request)
          body = send_request('DeleteLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListResponse`
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

        # 本接口（DeleteMachine）用于卸载主机安全客户端。

        # @param request: Request instance for DeleteMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineResponse`
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

        # 删除机器清理记录

        # @param request: Request instance for DeleteMachineClearHistory.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineClearHistoryRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineClearHistoryResponse`
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

        # 删除服务器关联的标签

        # @param request: Request instance for DeleteMachineTag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagResponse`
        def DeleteMachineTag(request)
          body = send_request('DeleteMachineTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除恶意请求白名单

        # @param request: Request instance for DeleteMaliciousRequestWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestWhiteListResponse`
        def DeleteMaliciousRequestWhiteList(request)
          body = send_request('DeleteMaliciousRequestWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMaliciousRequestWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteMaliciousRequests) 用于删除恶意请求记录。

        # @param request: Request instance for DeleteMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsResponse`
        def DeleteMaliciousRequests(request)
          body = send_request('DeleteMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMaliciousRequestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 入侵管理-终止扫描任务

        # @param request: Request instance for DeleteMalwareScanTask.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMalwareScanTaskRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMalwareScanTaskResponse`
        def DeleteMalwareScanTask(request)
          body = send_request('DeleteMalwareScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMalwareScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除木马白名单

        # @param request: Request instance for DeleteMalwareWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMalwareWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMalwareWhiteListResponse`
        def DeleteMalwareWhiteList(request)
          body = send_request('DeleteMalwareWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMalwareWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteMalwares) 用于删除木马记录。

        # @param request: Request instance for DeleteMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresResponse`
        def DeleteMalwares(request)
          body = send_request('DeleteMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网络攻击白名单

        # @param request: Request instance for DeleteNetAttackWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteNetAttackWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteNetAttackWhiteListResponse`
        def DeleteNetAttackWhiteList(request)
          body = send_request('DeleteNetAttackWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetAttackWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。

        # @param request: Request instance for DeleteNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesResponse`
        def DeleteNonlocalLoginPlaces(request)
          body = send_request('DeleteNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除本地提权

        # @param request: Request instance for DeletePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsResponse`
        def DeletePrivilegeEvents(request)
          body = send_request('DeletePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除本地提权规则

        # @param request: Request instance for DeletePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesResponse`
        def DeletePrivilegeRules(request)
          body = send_request('DeletePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除防护网站

        # @param request: Request instance for DeleteProtectDir.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteProtectDirRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteProtectDirResponse`
        def DeleteProtectDir(request)
          body = send_request('DeleteProtectDir', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProtectDirResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除漏洞防御白名单

        # @param request: Request instance for DeleteRaspRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteRaspRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteRaspRulesResponse`
        def DeleteRaspRules(request)
          body = send_request('DeleteRaspRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRaspRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据Ids删除反弹Shell事件

        # @param request: Request instance for DeleteReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsResponse`
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

        # 删除反弹Shell规则

        # @param request: Request instance for DeleteReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesResponse`
        def DeleteReverseShellRules(request)
          body = send_request('DeleteReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除恶意请求事件

        # @param request: Request instance for DeleteRiskDnsEvent.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteRiskDnsEventRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteRiskDnsEventResponse`
        def DeleteRiskDnsEvent(request)
          body = send_request('DeleteRiskDnsEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskDnsEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除恶意请求策略

        # @param request: Request instance for DeleteRiskDnsPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteRiskDnsPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteRiskDnsPolicyResponse`
        def DeleteRiskDnsPolicy(request)
          body = send_request('DeleteRiskDnsPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRiskDnsPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteScanTask 该接口可以对指定类型的扫描任务进行停止扫描;

        # @param request: Request instance for DeleteScanTask.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteScanTaskRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteScanTaskResponse`
        def DeleteScanTask(request)
          body = send_request('DeleteScanTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScanTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteSearchTemplateResponse`
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

        # 删除标签

        # @param request: Request instance for DeleteTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteTagsResponse`
        def DeleteTags(request)
          body = send_request('DeleteTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警策略

        # @param request: Request instance for DeleteWebHookPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookPolicyResponse`
        def DeleteWebHookPolicy(request)
          body = send_request('DeleteWebHookPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebHookPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除告警接收人

        # @param request: Request instance for DeleteWebHookReceiver.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookReceiverRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookReceiverResponse`
        def DeleteWebHookReceiver(request)
          body = send_request('DeleteWebHookReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebHookReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除企微机器人规则

        # @param request: Request instance for DeleteWebHookRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteWebHookRuleResponse`
        def DeleteWebHookRule(request)
          body = send_request('DeleteWebHookRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebHookRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网站防篡改-删除事件记录

        # @param request: Request instance for DeleteWebPageEventLog.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteWebPageEventLogRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteWebPageEventLogResponse`
        def DeleteWebPageEventLog(request)
          body = send_request('DeleteWebPageEventLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebPageEventLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeABTestConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeABTestConfigResponse`
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

        # 获取配置的aeskey和aesiv

        # @param request: Request instance for DescribeAESKey.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAESKeyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAESKeyResponse`
        def DescribeAESKey(request)
          body = send_request('DescribeAESKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAESKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。

        # @param request: Request instance for DescribeAccountStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsResponse`
        def DescribeAccountStatistics(request)
          body = send_request('DescribeAccountStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取agent安装命令

        # @param request: Request instance for DescribeAgentInstallCommand.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAgentInstallCommandRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAgentInstallCommandResponse`
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

        # 混合云安装agent token获取

        # @param request: Request instance for DescribeAgentInstallationToken.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAgentInstallationTokenRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAgentInstallationTokenResponse`
        def DescribeAgentInstallationToken(request)
          body = send_request('DescribeAgentInstallationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentInstallationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取告警点所在事件的所有节点信息

        # @param request: Request instance for DescribeAlarmIncidentNodes.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmIncidentNodesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmIncidentNodesResponse`
        def DescribeAlarmIncidentNodes(request)
          body = send_request('DescribeAlarmIncidentNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmIncidentNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警点id列表

        # @param request: Request instance for DescribeAlarmVertexId.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmVertexIdRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAlarmVertexIdResponse`
        def DescribeAlarmVertexId(request)
          body = send_request('DescribeAlarmVertexId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmVertexIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有软件应用数量

        # @param request: Request instance for DescribeAssetAppCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppCountResponse`
        def DescribeAssetAppCount(request)
          body = send_request('DescribeAssetAppCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetAppCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询应用列表

        # @param request: Request instance for DescribeAssetAppList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppListResponse`
        def DescribeAssetAppList(request)
          body = send_request('DescribeAssetAppList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetAppListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取软件关联进程列表

        # @param request: Request instance for DescribeAssetAppProcessList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppProcessListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetAppProcessListResponse`
        def DescribeAssetAppProcessList(request)
          body = send_request('DescribeAssetAppProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetAppProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取内核模块详情

        # @param request: Request instance for DescribeAssetCoreModuleInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetCoreModuleInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetCoreModuleInfoResponse`
        def DescribeAssetCoreModuleInfo(request)
          body = send_request('DescribeAssetCoreModuleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetCoreModuleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产管理内核模块列表

        # @param request: Request instance for DescribeAssetCoreModuleList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetCoreModuleListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetCoreModuleListResponse`
        def DescribeAssetCoreModuleList(request)
          body = send_request('DescribeAssetCoreModuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetCoreModuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有数据库数量

        # @param request: Request instance for DescribeAssetDatabaseCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseCountResponse`
        def DescribeAssetDatabaseCount(request)
          body = send_request('DescribeAssetDatabaseCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDatabaseCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理数据库详情

        # @param request: Request instance for DescribeAssetDatabaseInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseInfoResponse`
        def DescribeAssetDatabaseInfo(request)
          body = send_request('DescribeAssetDatabaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDatabaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产管理数据库列表

        # @param request: Request instance for DescribeAssetDatabaseList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDatabaseListResponse`
        def DescribeAssetDatabaseList(request)
          body = send_request('DescribeAssetDatabaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDatabaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机磁盘分区列表

        # @param request: Request instance for DescribeAssetDiskList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDiskListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetDiskListResponse`
        def DescribeAssetDiskList(request)
          body = send_request('DescribeAssetDiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产管理环境变量列表

        # @param request: Request instance for DescribeAssetEnvList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetEnvListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetEnvListResponse`
        def DescribeAssetEnvList(request)
          body = send_request('DescribeAssetEnvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetEnvListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机所有资源数量

        # @param request: Request instance for DescribeAssetHostTotalCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetHostTotalCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetHostTotalCountResponse`
        def DescribeAssetHostTotalCount(request)
          body = send_request('DescribeAssetHostTotalCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetHostTotalCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数

        # @param request: Request instance for DescribeAssetInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInfoResponse`
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

        # 查询资产管理启动服务列表

        # @param request: Request instance for DescribeAssetInitServiceList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInitServiceListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInitServiceListResponse`
        def DescribeAssetInitServiceList(request)
          body = send_request('DescribeAssetInitServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetInitServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Jar包详情

        # @param request: Request instance for DescribeAssetJarInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetJarInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetJarInfoResponse`
        def DescribeAssetJarInfo(request)
          body = send_request('DescribeAssetJarInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetJarInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Jar包列表

        # @param request: Request instance for DescribeAssetJarList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetJarListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetJarListResponse`
        def DescribeAssetJarList(request)
          body = send_request('DescribeAssetJarList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetJarListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取系统负载、内存使用率、硬盘使用率情况

        # @param request: Request instance for DescribeAssetLoadInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetLoadInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetLoadInfoResponse`
        def DescribeAssetLoadInfo(request)
          body = send_request('DescribeAssetLoadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetLoadInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理主机资源详细信息

        # @param request: Request instance for DescribeAssetMachineDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineDetailResponse`
        def DescribeAssetMachineDetail(request)
          body = send_request('DescribeAssetMachineDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetMachineDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产指纹页面的资源监控列表

        # @param request: Request instance for DescribeAssetMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineListResponse`
        def DescribeAssetMachineList(request)
          body = send_request('DescribeAssetMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机标签Top5

        # @param request: Request instance for DescribeAssetMachineTagTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineTagTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetMachineTagTopResponse`
        def DescribeAssetMachineTagTop(request)
          body = send_request('DescribeAssetMachineTagTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetMachineTagTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产管理计划任务列表

        # @param request: Request instance for DescribeAssetPlanTaskList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPlanTaskListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPlanTaskListResponse`
        def DescribeAssetPlanTaskList(request)
          body = send_request('DescribeAssetPlanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetPlanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有端口数量

        # @param request: Request instance for DescribeAssetPortCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPortCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPortCountResponse`
        def DescribeAssetPortCount(request)
          body = send_request('DescribeAssetPortCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetPortCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理端口列表

        # @param request: Request instance for DescribeAssetPortInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPortInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetPortInfoListResponse`
        def DescribeAssetPortInfoList(request)
          body = send_request('DescribeAssetPortInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetPortInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有进程数量

        # @param request: Request instance for DescribeAssetProcessCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetProcessCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetProcessCountResponse`
        def DescribeAssetProcessCount(request)
          body = send_request('DescribeAssetProcessCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetProcessCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理进程列表

        # @param request: Request instance for DescribeAssetProcessInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetProcessInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetProcessInfoListResponse`
        def DescribeAssetProcessInfoList(request)
          body = send_request('DescribeAssetProcessInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetProcessInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机最近趋势情况

        # @param request: Request instance for DescribeAssetRecentMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetRecentMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetRecentMachineInfoResponse`
        def DescribeAssetRecentMachineInfo(request)
          body = send_request('DescribeAssetRecentMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetRecentMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理系统安装包列表

        # @param request: Request instance for DescribeAssetSystemPackageList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetSystemPackageListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetSystemPackageListResponse`
        def DescribeAssetSystemPackageList(request)
          body = send_request('DescribeAssetSystemPackageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetSystemPackageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有资源数量：主机、账号、端口、进程、软件、数据库、Web应用、Web框架、Web服务、Web站点

        # @param request: Request instance for DescribeAssetTotalCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTotalCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTotalCountResponse`
        def DescribeAssetTotalCount(request)
          body = send_request('DescribeAssetTotalCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTotalCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取各种类型资源Top5

        # @param request: Request instance for DescribeAssetTypeTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTypeTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTypeTopResponse`
        def DescribeAssetTypeTop(request)
          body = send_request('DescribeAssetTypeTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTypeTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产指纹类型列表

        # @param request: Request instance for DescribeAssetTypes.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTypesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetTypesResponse`
        def DescribeAssetTypes(request)
          body = send_request('DescribeAssetTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有账号数量

        # @param request: Request instance for DescribeAssetUserCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserCountResponse`
        def DescribeAssetUserCount(request)
          body = send_request('DescribeAssetUserCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetUserCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机账号详情

        # @param request: Request instance for DescribeAssetUserInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserInfoResponse`
        def DescribeAssetUserInfo(request)
          body = send_request('DescribeAssetUserInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetUserInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机账号Key列表

        # @param request: Request instance for DescribeAssetUserKeyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserKeyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserKeyListResponse`
        def DescribeAssetUserKeyList(request)
          body = send_request('DescribeAssetUserKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetUserKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号列表

        # @param request: Request instance for DescribeAssetUserList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetUserListResponse`
        def DescribeAssetUserList(request)
          body = send_request('DescribeAssetUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有Web应用数量

        # @param request: Request instance for DescribeAssetWebAppCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppCountResponse`
        def DescribeAssetWebAppCount(request)
          body = send_request('DescribeAssetWebAppCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebAppCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理Web应用列表

        # @param request: Request instance for DescribeAssetWebAppList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppListResponse`
        def DescribeAssetWebAppList(request)
          body = send_request('DescribeAssetWebAppList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebAppListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理Web应用插件列表

        # @param request: Request instance for DescribeAssetWebAppPluginList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppPluginListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebAppPluginListResponse`
        def DescribeAssetWebAppPluginList(request)
          body = send_request('DescribeAssetWebAppPluginList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebAppPluginListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有Web框架数量

        # @param request: Request instance for DescribeAssetWebFrameCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebFrameCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebFrameCountResponse`
        def DescribeAssetWebFrameCount(request)
          body = send_request('DescribeAssetWebFrameCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebFrameCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产管理Web框架列表

        # @param request: Request instance for DescribeAssetWebFrameList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebFrameListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebFrameListResponse`
        def DescribeAssetWebFrameList(request)
          body = send_request('DescribeAssetWebFrameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebFrameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有Web站点数量

        # @param request: Request instance for DescribeAssetWebLocationCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationCountResponse`
        def DescribeAssetWebLocationCount(request)
          body = send_request('DescribeAssetWebLocationCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebLocationCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Web站点详情

        # @param request: Request instance for DescribeAssetWebLocationInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationInfoResponse`
        def DescribeAssetWebLocationInfo(request)
          body = send_request('DescribeAssetWebLocationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebLocationInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Web站点列表

        # @param request: Request instance for DescribeAssetWebLocationList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationListResponse`
        def DescribeAssetWebLocationList(request)
          body = send_request('DescribeAssetWebLocationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebLocationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Web站点虚拟目录列表

        # @param request: Request instance for DescribeAssetWebLocationPathList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationPathListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebLocationPathListResponse`
        def DescribeAssetWebLocationPathList(request)
          body = send_request('DescribeAssetWebLocationPathList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebLocationPathListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有Web服务数量

        # @param request: Request instance for DescribeAssetWebServiceCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceCountResponse`
        def DescribeAssetWebServiceCount(request)
          body = send_request('DescribeAssetWebServiceCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebServiceCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询资产管理Web服务列表

        # @param request: Request instance for DescribeAssetWebServiceInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceInfoListResponse`
        def DescribeAssetWebServiceInfoList(request)
          body = send_request('DescribeAssetWebServiceInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebServiceInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Web服务关联进程列表

        # @param request: Request instance for DescribeAssetWebServiceProcessList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceProcessListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetWebServiceProcessListResponse`
        def DescribeAssetWebServiceProcessList(request)
          body = send_request('DescribeAssetWebServiceProcessList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetWebServiceProcessListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网络攻击事件详情

        # @param request: Request instance for DescribeAttackEventInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackEventInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackEventInfoResponse`
        def DescribeAttackEventInfo(request)
          body = send_request('DescribeAttackEventInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackEventInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按分页形式展示网络攻击检测事件列表

        # @param request: Request instance for DescribeAttackEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackEventsResponse`
        def DescribeAttackEvents(request)
          body = send_request('DescribeAttackEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeAttackEvents 代替

        # 按分页形式展示网络攻击日志列表

        # @param request: Request instance for DescribeAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsResponse`
        def DescribeAttackLogs(request)
          body = send_request('DescribeAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 已废弃

        # 查询攻击溯源

        # @param request: Request instance for DescribeAttackSource.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackSourceRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackSourceResponse`
        def DescribeAttackSource(request)
          body = send_request('DescribeAttackSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 已废弃

        # 查询攻击溯源事件

        # @param request: Request instance for DescribeAttackSourceEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackSourceEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackSourceEventsResponse`
        def DescribeAttackSourceEvents(request)
          body = send_request('DescribeAttackSourceEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackSourceEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网络攻击数据统计

        # @param request: Request instance for DescribeAttackStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackStatisticsResponse`
        def DescribeAttackStatistics(request)
          body = send_request('DescribeAttackStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网络攻击top5数据列表

        # @param request: Request instance for DescribeAttackTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackTopResponse`
        def DescribeAttackTop(request)
          body = send_request('DescribeAttackTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网络攻击趋势数据

        # @param request: Request instance for DescribeAttackTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackTrendsResponse`
        def DescribeAttackTrends(request)
          body = send_request('DescribeAttackTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackTrendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取网络攻击威胁类型列表

        # @param request: Request instance for DescribeAttackVulTypeList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListResponse`
        def DescribeAttackVulTypeList(request)
          body = send_request('DescribeAttackVulTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackVulTypeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 专家服务-可用订单详情

        # @param request: Request instance for DescribeAvailableExpertServiceDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAvailableExpertServiceDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAvailableExpertServiceDetailResponse`
        def DescribeAvailableExpertServiceDetail(request)
          body = send_request('DescribeAvailableExpertServiceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableExpertServiceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBanModeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBanModeResponse`
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

        # 获取阻断地域

        # @param request: Request instance for DescribeBanRegions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBanRegionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBanRegionsResponse`
        def DescribeBanRegions(request)
          body = send_request('DescribeBanRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBanRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBanStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBanStatusResponse`
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

        # 获取阻断白名单列表

        # @param request: Request instance for DescribeBanWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBanWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBanWhiteListResponse`
        def DescribeBanWhiteList(request)
          body = send_request('DescribeBanWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBanWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线策略id查询基线策略数据概览统计

        # @param request: Request instance for DescribeBaselineAnalysisData.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineAnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineAnalysisDataResponse`
        def DescribeBaselineAnalysisData(request)
          body = send_request('DescribeBaselineAnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineAnalysisDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线基础信息列表

        # @param request: Request instance for DescribeBaselineBasicInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineBasicInfoResponse`
        def DescribeBaselineBasicInfo(request)
          body = send_request('DescribeBaselineBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineBasicInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线默认策略列表信息

        # @param request: Request instance for DescribeBaselineDefaultStrategyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDefaultStrategyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDefaultStrategyListResponse`
        def DescribeBaselineDefaultStrategyList(request)
          body = send_request('DescribeBaselineDefaultStrategyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineDefaultStrategyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线id查询基线详情接口

        # @param request: Request instance for DescribeBaselineDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetailResponse`
        def DescribeBaselineDetail(request)
          body = send_request('DescribeBaselineDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测详情记录

        # @param request: Request instance for DescribeBaselineDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetectListResponse`
        def DescribeBaselineDetectList(request)
          body = send_request('DescribeBaselineDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测概览

        # @param request: Request instance for DescribeBaselineDetectOverview.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetectOverviewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDetectOverviewResponse`
        def DescribeBaselineDetectOverview(request)
          body = send_request('DescribeBaselineDetectOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineDetectOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线下载列表

        # @param request: Request instance for DescribeBaselineDownloadList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDownloadListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineDownloadListResponse`
        def DescribeBaselineDownloadList(request)
          body = send_request('DescribeBaselineDownloadList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineDownloadListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线id查询基线影响主机列表

        # @param request: Request instance for DescribeBaselineEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineEffectHostListResponse`
        def DescribeBaselineEffectHostList(request)
          body = send_request('DescribeBaselineEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线修复列表

        # @param request: Request instance for DescribeBaselineFixList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineFixListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineFixListResponse`
        def DescribeBaselineFixList(request)
          body = send_request('DescribeBaselineFixList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineFixListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测主机列表

        # @param request: Request instance for DescribeBaselineHostDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostDetectListResponse`
        def DescribeBaselineHostDetectList(request)
          body = send_request('DescribeBaselineHostDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineHostDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取忽略规则主机列表

        # @param request: Request instance for DescribeBaselineHostIgnoreList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostIgnoreListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostIgnoreListResponse`
        def DescribeBaselineHostIgnoreList(request)
          body = send_request('DescribeBaselineHostIgnoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineHostIgnoreListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线服务器风险TOP5

        # @param request: Request instance for DescribeBaselineHostRiskTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostRiskTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostRiskTopResponse`
        def DescribeBaselineHostRiskTop(request)
          body = send_request('DescribeBaselineHostRiskTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineHostRiskTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口返回TopN的风险服务器

        # @param request: Request instance for DescribeBaselineHostTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineHostTopResponse`
        def DescribeBaselineHostTop(request)
          body = send_request('DescribeBaselineHostTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineHostTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测项的列表

        # @param request: Request instance for DescribeBaselineItemDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemDetectListResponse`
        def DescribeBaselineItemDetectList(request)
          body = send_request('DescribeBaselineItemDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取忽略规则项列表

        # @param request: Request instance for DescribeBaselineItemIgnoreList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemIgnoreListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemIgnoreListResponse`
        def DescribeBaselineItemIgnoreList(request)
          body = send_request('DescribeBaselineItemIgnoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemIgnoreListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测项信息

        # @param request: Request instance for DescribeBaselineItemInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemInfoResponse`
        def DescribeBaselineItemInfo(request)
          body = send_request('DescribeBaselineItemInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线项检测结果列表

        # @param request: Request instance for DescribeBaselineItemList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemListResponse`
        def DescribeBaselineItemList(request)
          body = send_request('DescribeBaselineItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线检测项TOP5

        # @param request: Request instance for DescribeBaselineItemRiskTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemRiskTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineItemRiskTopResponse`
        def DescribeBaselineItemRiskTop(request)
          body = send_request('DescribeBaselineItemRiskTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineItemRiskTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询基线列表信息

        # @param request: Request instance for DescribeBaselineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineListResponse`
        def DescribeBaselineList(request)
          body = send_request('DescribeBaselineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线策略列表

        # @param request: Request instance for DescribeBaselinePolicyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselinePolicyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselinePolicyListResponse`
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

        # 根据基线id查询下属检测项信息

        # @param request: Request instance for DescribeBaselineRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleResponse`
        def DescribeBaselineRule(request)
          body = send_request('DescribeBaselineRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线分类列表

        # @param request: Request instance for DescribeBaselineRuleCategoryList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleCategoryListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleCategoryListResponse`
        def DescribeBaselineRuleCategoryList(request)
          body = send_request('DescribeBaselineRuleCategoryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineRuleCategoryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线规则检测列表

        # @param request: Request instance for DescribeBaselineRuleDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleDetectListResponse`
        def DescribeBaselineRuleDetectList(request)
          body = send_request('DescribeBaselineRuleDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineRuleDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线忽略规则列表

        # @param request: Request instance for DescribeBaselineRuleIgnoreList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleIgnoreListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleIgnoreListResponse`
        def DescribeBaselineRuleIgnoreList(request)
          body = send_request('DescribeBaselineRuleIgnoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineRuleIgnoreListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线规则列表

        # @param request: Request instance for DescribeBaselineRuleList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineRuleListResponse`
        def DescribeBaselineRuleList(request)
          body = send_request('DescribeBaselineRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务id查询基线检测进度

        # @param request: Request instance for DescribeBaselineScanSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineScanScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineScanScheduleResponse`
        def DescribeBaselineScanSchedule(request)
          body = send_request('DescribeBaselineScanSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineScanScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线策略id查询策略详情

        # @param request: Request instance for DescribeBaselineStrategyDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineStrategyDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineStrategyDetailResponse`
        def DescribeBaselineStrategyDetail(request)
          body = send_request('DescribeBaselineStrategyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineStrategyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询一个用户下的基线策略信息

        # @param request: Request instance for DescribeBaselineStrategyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineStrategyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineStrategyListResponse`
        def DescribeBaselineStrategyList(request)
          body = send_request('DescribeBaselineStrategyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineStrategyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据策略id查询基线检测项TOP

        # @param request: Request instance for DescribeBaselineTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineTopResponse`
        def DescribeBaselineTop(request)
          body = send_request('DescribeBaselineTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取基线弱口令列表

        # @param request: Request instance for DescribeBaselineWeakPasswordList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineWeakPasswordListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBaselineWeakPasswordListResponse`
        def DescribeBaselineWeakPasswordList(request)
          body = send_request('DescribeBaselineWeakPasswordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaselineWeakPasswordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令列表

        # @param request: Request instance for DescribeBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsResponse`
        def DescribeBashEvents(request)
          body = send_request('DescribeBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询高危命令事件详情

        # @param request: Request instance for DescribeBashEventsInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsInfoResponse`
        def DescribeBashEventsInfo(request)
          body = send_request('DescribeBashEventsInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询高危命令事件详情(新)

        # @param request: Request instance for DescribeBashEventsInfoNew.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsInfoNewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsInfoNewResponse`
        def DescribeBashEventsInfoNew(request)
          body = send_request('DescribeBashEventsInfoNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsInfoNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令列表(新)

        # @param request: Request instance for DescribeBashEventsNew.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsNewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsNewResponse`
        def DescribeBashEventsNew(request)
          body = send_request('DescribeBashEventsNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令策略列表

        # @param request: Request instance for DescribeBashPolicies.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashPoliciesResponse`
        def DescribeBashPolicies(request)
          body = send_request('DescribeBashPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取高危命令规则列表

        # @param request: Request instance for DescribeBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesResponse`
        def DescribeBashRules(request)
          body = send_request('DescribeBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取密码破解列表

        # @param request: Request instance for DescribeBruteAttackList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackListResponse`
        def DescribeBruteAttackList(request)
          body = send_request('DescribeBruteAttackList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBruteAttackListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackRulesResponse`
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

        # 漏洞修护-查询可修护主机信息

        # @param request: Request instance for DescribeCanFixVulMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeCanFixVulMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeCanFixVulMachineResponse`
        def DescribeCanFixVulMachine(request)
          body = send_request('DescribeCanFixVulMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCanFixVulMachineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取木马不可隔离的主机

        # @param request: Request instance for DescribeCanNotSeparateMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeCanNotSeparateMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeCanNotSeparateMachineResponse`
        def DescribeCanNotSeparateMachine(request)
          body = send_request('DescribeCanNotSeparateMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCanNotSeparateMachineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取客户端异常事件

        # @param request: Request instance for DescribeClientException.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeClientExceptionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeClientExceptionResponse`
        def DescribeClientException(request)
          body = send_request('DescribeClientException', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientExceptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已无效

        # 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。

        # @param request: Request instance for DescribeComponentStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsResponse`
        def DescribeComponentStatistics(request)
          body = send_request('DescribeComponentStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞防御事件详情

        # @param request: Request instance for DescribeDefenceEventDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeDefenceEventDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeDefenceEventDetailResponse`
        def DescribeDefenceEventDetail(request)
          body = send_request('DescribeDefenceEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefenceEventDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取专线agent安装命令，包含token

        # @param request: Request instance for DescribeDirectConnectInstallCommand.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeDirectConnectInstallCommandRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeDirectConnectInstallCommandResponse`
        def DescribeDirectConnectInstallCommand(request)
          body = send_request('DescribeDirectConnectInstallCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDirectConnectInstallCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeESAggregationsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeESAggregationsResponse`
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

        # 专家服务-应急响应列表

        # @param request: Request instance for DescribeEmergencyResponseList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeEmergencyResponseListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeEmergencyResponseListResponse`
        def DescribeEmergencyResponseList(request)
          body = send_request('DescribeEmergencyResponseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEmergencyResponseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应急漏洞列表

        # @param request: Request instance for DescribeEmergencyVulList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeEmergencyVulListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeEmergencyVulListResponse`
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

        # 根据事件表名和id查询告警事件详情

        # @param request: Request instance for DescribeEventByTable.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeEventByTableRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeEventByTableResponse`
        def DescribeEventByTable(request)
          body = send_request('DescribeEventByTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventByTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 专家服务-安全管家列表

        # @param request: Request instance for DescribeExpertServiceList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeExpertServiceListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeExpertServiceListResponse`
        def DescribeExpertServiceList(request)
          body = send_request('DescribeExpertServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExpertServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 专家服务-专家服务订单列表

        # @param request: Request instance for DescribeExpertServiceOrderList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeExpertServiceOrderListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeExpertServiceOrderListResponse`
        def DescribeExpertServiceOrderList(request)
          body = send_request('DescribeExpertServiceOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExpertServiceOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeExportMachines) 用于导出区域主机列表。

        # @param request: Request instance for DescribeExportMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesResponse`
        def DescribeExportMachines(request)
          body = send_request('DescribeExportMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 日志快速分析统计

        # @param request: Request instance for DescribeFastAnalysis.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFastAnalysisRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFastAnalysisResponse`
        def DescribeFastAnalysis(request)
          body = send_request('DescribeFastAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFastAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看产生事件时规则详情接口

        # @param request: Request instance for DescribeFileTamperEventRuleInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperEventRuleInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperEventRuleInfoResponse`
        def DescribeFileTamperEventRuleInfo(request)
          body = send_request('DescribeFileTamperEventRuleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTamperEventRuleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核心文件监控事件列表

        # @param request: Request instance for DescribeFileTamperEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperEventsResponse`
        def DescribeFileTamperEvents(request)
          body = send_request('DescribeFileTamperEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTamperEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机关联文件监控规则数量

        # @param request: Request instance for DescribeFileTamperRuleCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRuleCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRuleCountResponse`
        def DescribeFileTamperRuleCount(request)
          body = send_request('DescribeFileTamperRuleCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTamperRuleCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个监控规则的详情

        # @param request: Request instance for DescribeFileTamperRuleInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRuleInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRuleInfoResponse`
        def DescribeFileTamperRuleInfo(request)
          body = send_request('DescribeFileTamperRuleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTamperRuleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核心文件监控规则列表

        # @param request: Request instance for DescribeFileTamperRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeFileTamperRulesResponse`
        def DescribeFileTamperRules(request)
          body = send_request('DescribeFileTamperRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileTamperRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机相关统计

        # @param request: Request instance for DescribeGeneralStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatResponse`
        def DescribeGeneralStat(request)
          body = send_request('DescribeGeneralStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。

        # @param request: Request instance for DescribeHistoryAccounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsResponse`
        def DescribeHistoryAccounts(request)
          body = send_request('DescribeHistoryAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志检索服务信息

        # @param request: Request instance for DescribeHistoryService.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryServiceRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryServiceResponse`
        def DescribeHistoryService(request)
          body = send_request('DescribeHistoryService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 主机信息与标签信息查询

        # @param request: Request instance for DescribeHostInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHostInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHostInfoResponse`
        def DescribeHostInfo(request)
          body = send_request('DescribeHostInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取登录审计列表

        # @param request: Request instance for DescribeHostLoginList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHostLoginListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHostLoginListResponse`
        def DescribeHostLoginList(request)
          body = send_request('DescribeHostLoginList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostLoginListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取全网热点漏洞

        # @param request: Request instance for DescribeHotVulTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHotVulTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHotVulTopResponse`
        def DescribeHotVulTop(request)
          body = send_request('DescribeHotVulTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHotVulTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询已经忽略的检测项信息

        # @param request: Request instance for DescribeIgnoreBaselineRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreBaselineRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreBaselineRuleResponse`
        def DescribeIgnoreBaselineRule(request)
          body = send_request('DescribeIgnoreBaselineRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIgnoreBaselineRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取一键忽略受影响的检测项和主机信息

        # @param request: Request instance for DescribeIgnoreHostAndItemConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreHostAndItemConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreHostAndItemConfigResponse`
        def DescribeIgnoreHostAndItemConfig(request)
          body = send_request('DescribeIgnoreHostAndItemConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIgnoreHostAndItemConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据检测项id与筛选条件查询忽略检测项影响主机列表信息

        # @param request: Request instance for DescribeIgnoreRuleEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreRuleEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeIgnoreRuleEffectHostListResponse`
        def DescribeIgnoreRuleEffectHostList(request)
          body = send_request('DescribeIgnoreRuleEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIgnoreRuleEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询批量导入机器信息

        # @param request: Request instance for DescribeImportMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoResponse`
        def DescribeImportMachineInfo(request)
          body = send_request('DescribeImportMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImportMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已废弃

        # 获取索引列表

        # @param request: Request instance for DescribeIndexList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeIndexListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeIndexListResponse`
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

        # 查询java内存马事件详细信息

        # @param request: Request instance for DescribeJavaMemShellInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellInfoResponse`
        def DescribeJavaMemShellInfo(request)
          body = send_request('DescribeJavaMemShellInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJavaMemShellInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询java内存马事件列表

        # @param request: Request instance for DescribeJavaMemShellList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellListResponse`
        def DescribeJavaMemShellList(request)
          body = send_request('DescribeJavaMemShellList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJavaMemShellListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询给定主机java内存马插件信息

        # @param request: Request instance for DescribeJavaMemShellPluginInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellPluginInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellPluginInfoResponse`
        def DescribeJavaMemShellPluginInfo(request)
          body = send_request('DescribeJavaMemShellPluginInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJavaMemShellPluginInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询java内存马插件列表

        # @param request: Request instance for DescribeJavaMemShellPluginList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellPluginListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeJavaMemShellPluginListResponse`
        def DescribeJavaMemShellPluginList(request)
          body = send_request('DescribeJavaMemShellPluginList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJavaMemShellPluginListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询授权信息

        # @param request: Request instance for DescribeLicense.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseResponse`
        def DescribeLicense(request)
          body = send_request('DescribeLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口可以获取设置中心-授权管理,某个授权下已绑定的授权机器列表

        # @param request: Request instance for DescribeLicenseBindList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseBindListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseBindListResponse`
        def DescribeLicenseBindList(request)
          body = send_request('DescribeLicenseBindList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseBindListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeLicenseBindSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseBindScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseBindScheduleResponse`
        def DescribeLicenseBindSchedule(request)
          body = send_request('DescribeLicenseBindSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseBindScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 授权管理-授权概览信息

        # @param request: Request instance for DescribeLicenseGeneral.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseGeneralRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseGeneralResponse`
        def DescribeLicenseGeneral(request)
          body = send_request('DescribeLicenseGeneral', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseGeneralResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户所有授权订单信息

        # @param request: Request instance for DescribeLicenseList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseListResponse`
        def DescribeLicenseList(request)
          body = send_request('DescribeLicenseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询授权白名单的可用配置

        # @param request: Request instance for DescribeLicenseWhiteConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseWhiteConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLicenseWhiteConfigResponse`
        def DescribeLicenseWhiteConfig(request)
          body = send_request('DescribeLicenseWhiteConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseWhiteConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志投递kafka可选项列表

        # @param request: Request instance for DescribeLogDeliveryKafkaOptions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogDeliveryKafkaOptionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogDeliveryKafkaOptionsResponse`
        def DescribeLogDeliveryKafkaOptions(request)
          body = send_request('DescribeLogDeliveryKafkaOptions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogDeliveryKafkaOptionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志下载任务列表

        # @param request: Request instance for DescribeLogExports.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogExportsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogExportsResponse`
        def DescribeLogExports(request)
          body = send_request('DescribeLogExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志直方图信息

        # @param request: Request instance for DescribeLogHistogram.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogHistogramRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogHistogramResponse`
        def DescribeLogHistogram(request)
          body = send_request('DescribeLogHistogram', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogHistogramResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询索引

        # @param request: Request instance for DescribeLogIndex.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogIndexRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogIndexResponse`
        def DescribeLogIndex(request)
          body = send_request('DescribeLogIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取kafka投递信息

        # @param request: Request instance for DescribeLogKafkaDeliverInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogKafkaDeliverInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogKafkaDeliverInfoResponse`
        def DescribeLogKafkaDeliverInfo(request)
          body = send_request('DescribeLogKafkaDeliverInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogKafkaDeliverInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志存储配置

        # @param request: Request instance for DescribeLogStorageConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageConfigResponse`
        def DescribeLogStorageConfig(request)
          body = send_request('DescribeLogStorageConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogStorageConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日志存储量记录

        # @param request: Request instance for DescribeLogStorageRecord.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageRecordRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageRecordResponse`
        def DescribeLogStorageRecord(request)
          body = send_request('DescribeLogStorageRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogStorageRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageStatisticRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageStatisticResponse`
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

        # 日志分析功能-获取日志类型，使用该接口返回的结果暂时可过滤的日志类型

        # @param request: Request instance for DescribeLogType.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogTypeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogTypeResponse`
        def DescribeLogType(request)
          body = send_request('DescribeLogType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteCombinedListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteCombinedListResponse`
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteHostListResponse`
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

        # 获取异地登录白名单列表

        # @param request: Request instance for DescribeLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListResponse`
        def DescribeLoginWhiteList(request)
          body = send_request('DescribeLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineClearHistoryRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineClearHistoryResponse`
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

        # 查询主机高级防御事件数统计

        # @param request: Request instance for DescribeMachineDefenseCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineDefenseCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineDefenseCntResponse`
        def DescribeMachineDefenseCnt(request)
          body = send_request('DescribeMachineDefenseCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineDefenseCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机相关核心文件监控规则列表

        # @param request: Request instance for DescribeMachineFileTamperRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineFileTamperRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineFileTamperRulesResponse`
        def DescribeMachineFileTamperRules(request)
          body = send_request('DescribeMachineFileTamperRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineFileTamperRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineGeneralRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineGeneralResponse`
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

        # 本接口（DescribeMachineInfo）用于获取机器详细信息。

        # @param request: Request instance for DescribeMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoResponse`
        def DescribeMachineInfo(request)
          body = send_request('DescribeMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMachineLicenseDetail)查询机器授权信息

        # @param request: Request instance for DescribeMachineLicenseDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineLicenseDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineLicenseDetailResponse`
        def DescribeMachineLicenseDetail(request)
          body = send_request('DescribeMachineLicenseDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineLicenseDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于网页防篡改获取区域主机列表。

        # @param request: Request instance for DescribeMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListResponse`
        def DescribeMachineList(request)
          body = send_request('DescribeMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeMachineOsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListResponse`
        def DescribeMachineOsList(request)
          body = send_request('DescribeMachineOsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineOsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机地域列表

        # @param request: Request instance for DescribeMachineRegionList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionListResponse`
        def DescribeMachineRegionList(request)
          body = send_request('DescribeMachineRegionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineRegionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取机器地域列表

        # @param request: Request instance for DescribeMachineRegions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsResponse`
        def DescribeMachineRegions(request)
          body = send_request('DescribeMachineRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机入侵检测事件统计

        # @param request: Request instance for DescribeMachineRiskCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRiskCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRiskCntResponse`
        def DescribeMachineRiskCnt(request)
          body = send_request('DescribeMachineRiskCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineRiskCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞修护-查询主机创建的快照

        # @param request: Request instance for DescribeMachineSnapshot.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineSnapshotRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineSnapshotResponse`
        def DescribeMachineSnapshot(request)
          body = send_request('DescribeMachineSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMachines) 用于获取区域主机列表。

        # @param request: Request instance for DescribeMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesResponse`
        def DescribeMachines(request)
          body = send_request('DescribeMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMachinesSimple) 用于获取主机列表。

        # @param request: Request instance for DescribeMachinesSimple.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesSimpleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesSimpleResponse`
        def DescribeMachinesSimple(request)
          body = send_request('DescribeMachinesSimple', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachinesSimpleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 入侵检测获取木马列表

        # @param request: Request instance for DescribeMalWareList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalWareListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalWareListResponse`
        def DescribeMalWareList(request)
          body = send_request('DescribeMalWareList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalWareListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询恶意请求白名单列表

        # @param request: Request instance for DescribeMaliciousRequestWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMaliciousRequestWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMaliciousRequestWhiteListResponse`
        def DescribeMaliciousRequestWhiteList(request)
          body = send_request('DescribeMaliciousRequestWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaliciousRequestWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取木马文件下载地址

        # @param request: Request instance for DescribeMalwareFile.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareFileRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareFileResponse`
        def DescribeMalwareFile(request)
          body = send_request('DescribeMalwareFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看恶意文件详情

        # @param request: Request instance for DescribeMalwareInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoResponse`
        def DescribeMalwareInfo(request)
          body = send_request('DescribeMalwareInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取文件查杀概览信息

        # @param request: Request instance for DescribeMalwareRiskOverview.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareRiskOverviewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareRiskOverviewResponse`
        def DescribeMalwareRiskOverview(request)
          body = send_request('DescribeMalwareRiskOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareRiskOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 打开入侵检测-恶意文件检测,弹出风险预警内容

        # @param request: Request instance for DescribeMalwareRiskWarning.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareRiskWarningRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareRiskWarningResponse`
        def DescribeMalwareRiskWarning(request)
          body = send_request('DescribeMalwareRiskWarning', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareRiskWarningResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询定时扫描配置

        # @param request: Request instance for DescribeMalwareTimingScanSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareTimingScanSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareTimingScanSettingResponse`
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

        # 获取木马白名单列表

        # @param request: Request instance for DescribeMalwareWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareWhiteListResponse`
        def DescribeMalwareWhiteList(request)
          body = send_request('DescribeMalwareWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取木马白名单受影响列表

        # @param request: Request instance for DescribeMalwareWhiteListAffectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareWhiteListAffectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareWhiteListAffectListResponse`
        def DescribeMalwareWhiteListAffectList(request)
          body = send_request('DescribeMalwareWhiteListAffectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareWhiteListAffectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 专家服务-安全管家月巡检报告下载

        # @param request: Request instance for DescribeMonthInspectionReport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMonthInspectionReportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMonthInspectionReportResponse`
        def DescribeMonthInspectionReport(request)
          body = send_request('DescribeMonthInspectionReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonthInspectionReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网络攻击设置

        # @param request: Request instance for DescribeNetAttackSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeNetAttackSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeNetAttackSettingResponse`
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

        # 获取网络攻击白名单列表

        # @param request: Request instance for DescribeNetAttackWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeNetAttackWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeNetAttackWhiteListResponse`
        def DescribeNetAttackWhiteList(request)
          body = send_request('DescribeNetAttackWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetAttackWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。

        # @param request: Request instance for DescribeOpenPortStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsResponse`
        def DescribeOpenPortStatistics(request)
          body = send_request('DescribeOpenPortStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpenPortStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取概览统计数据。

        # @param request: Request instance for DescribeOverviewStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsResponse`
        def DescribeOverviewStatistics(request)
          body = send_request('DescribeOverviewStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本地提权信息详情

        # @param request: Request instance for DescribePrivilegeEventInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventInfoResponse`
        def DescribePrivilegeEventInfo(request)
          body = send_request('DescribePrivilegeEventInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeEventInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地提权事件列表

        # @param request: Request instance for DescribePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsResponse`
        def DescribePrivilegeEvents(request)
          body = send_request('DescribePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地提权规则列表

        # @param request: Request instance for DescribePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesResponse`
        def DescribePrivilegeRules(request)
          body = send_request('DescribePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取专业版概览信息。

        # @param request: Request instance for DescribeProVersionInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoResponse`
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

        # 用于获取单台主机或所有主机是否开通专业版状态。

        # @param request: Request instance for DescribeProVersionStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionStatusResponse`
        def DescribeProVersionStatus(request)
          body = send_request('DescribeProVersionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProVersionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。

        # @param request: Request instance for DescribeProcessStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsResponse`
        def DescribeProcessStatistics(request)
          body = send_request('DescribeProcessStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 产品试用状态查询接口

        # @param request: Request instance for DescribeProductStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProductStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProductStatusResponse`
        def DescribeProductStatus(request)
          body = send_request('DescribeProductStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网页防篡改防护目录列表

        # @param request: Request instance for DescribeProtectDirList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProtectDirListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProtectDirListResponse`
        def DescribeProtectDirList(request)
          body = send_request('DescribeProtectDirList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectDirListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询防护目录关联服务器列表信息

        # @param request: Request instance for DescribeProtectDirRelatedServer.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProtectDirRelatedServerRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProtectDirRelatedServerResponse`
        def DescribeProtectDirRelatedServer(request)
          body = send_request('DescribeProtectDirRelatedServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectDirRelatedServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 专家服务-旗舰重保列表

        # @param request: Request instance for DescribeProtectNetList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProtectNetListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProtectNetListResponse`
        def DescribeProtectNetList(request)
          body = send_request('DescribeProtectNetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectNetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取公网接入代理安装命令

        # @param request: Request instance for DescribePublicProxyInstallCommand.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePublicProxyInstallCommandRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePublicProxyInstallCommandResponse`
        def DescribePublicProxyInstallCommand(request)
          body = send_request('DescribePublicProxyInstallCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicProxyInstallCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机快照备份列表

        # @param request: Request instance for DescribeRansomDefenseBackupList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseBackupListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseBackupListResponse`
        def DescribeRansomDefenseBackupList(request)
          body = send_request('DescribeRansomDefenseBackupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseBackupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询防勒索事件列表

        # @param request: Request instance for DescribeRansomDefenseEventsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseEventsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseEventsListResponse`
        def DescribeRansomDefenseEventsList(request)
          body = send_request('DescribeRansomDefenseEventsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseEventsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份详情列表

        # @param request: Request instance for DescribeRansomDefenseMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseMachineListResponse`
        def DescribeRansomDefenseMachineList(request)
          body = send_request('DescribeRansomDefenseMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主机绑定策略列表

        # @param request: Request instance for DescribeRansomDefenseMachineStrategyInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseMachineStrategyInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseMachineStrategyInfoResponse`
        def DescribeRansomDefenseMachineStrategyInfo(request)
          body = send_request('DescribeRansomDefenseMachineStrategyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseMachineStrategyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询回滚任务列表

        # @param request: Request instance for DescribeRansomDefenseRollBackTaskList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseRollBackTaskListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseRollBackTaskListResponse`
        def DescribeRansomDefenseRollBackTaskList(request)
          body = send_request('DescribeRansomDefenseRollBackTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseRollBackTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户防勒索趋势

        # @param request: Request instance for DescribeRansomDefenseState.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStateResponse`
        def DescribeRansomDefenseState(request)
          body = send_request('DescribeRansomDefenseState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取策略详情

        # @param request: Request instance for DescribeRansomDefenseStrategyDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyDetailResponse`
        def DescribeRansomDefenseStrategyDetail(request)
          body = send_request('DescribeRansomDefenseStrategyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseStrategyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询防勒索策略列表

        # @param request: Request instance for DescribeRansomDefenseStrategyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyListResponse`
        def DescribeRansomDefenseStrategyList(request)
          body = send_request('DescribeRansomDefenseStrategyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseStrategyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询防勒索策略绑定机器列表

        # @param request: Request instance for DescribeRansomDefenseStrategyMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseStrategyMachinesResponse`
        def DescribeRansomDefenseStrategyMachines(request)
          body = send_request('DescribeRansomDefenseStrategyMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseStrategyMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取全网勒索态势

        # @param request: Request instance for DescribeRansomDefenseTrend.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseTrendRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRansomDefenseTrendResponse`
        def DescribeRansomDefenseTrend(request)
          body = send_request('DescribeRansomDefenseTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRansomDefenseTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看漏洞防御最大cpu限制

        # @param request: Request instance for DescribeRaspMaxCpu.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRaspMaxCpuRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRaspMaxCpuResponse`
        def DescribeRaspMaxCpu(request)
          body = send_request('DescribeRaspMaxCpu', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRaspMaxCpuResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞防御白名单漏洞列表

        # @param request: Request instance for DescribeRaspRuleVuls.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRaspRuleVulsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRaspRuleVulsResponse`
        def DescribeRaspRuleVuls(request)
          body = send_request('DescribeRaspRuleVuls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRaspRuleVulsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询漏洞防御白名单

        # @param request: Request instance for DescribeRaspRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRaspRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRaspRulesResponse`
        def DescribeRaspRules(request)
          body = send_request('DescribeRaspRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRaspRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询推荐购买防护核数

        # @param request: Request instance for DescribeRecommendedProtectCpu.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRecommendedProtectCpuRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRecommendedProtectCpuResponse`
        def DescribeRecommendedProtectCpu(request)
          body = send_request('DescribeRecommendedProtectCpu', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecommendedProtectCpuResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 反弹shell信息详情

        # @param request: Request instance for DescribeReverseShellEventInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventInfoResponse`
        def DescribeReverseShellEventInfo(request)
          body = send_request('DescribeReverseShellEventInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellEventInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取反弹Shell列表

        # @param request: Request instance for DescribeReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsResponse`
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

        # 获取反弹Shell规则列表

        # @param request: Request instance for DescribeReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesResponse`
        def DescribeReverseShellRules(request)
          body = send_request('DescribeReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询入侵检测事件更新状态任务是否完成

        # @param request: Request instance for DescribeRiskBatchStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskBatchStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskBatchStatusResponse`
        def DescribeRiskBatchStatus(request)
          body = send_request('DescribeRiskBatchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskBatchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询恶意请求事件详情

        # @param request: Request instance for DescribeRiskDnsEventInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsEventInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsEventInfoResponse`
        def DescribeRiskDnsEventInfo(request)
          body = send_request('DescribeRiskDnsEventInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsEventInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取恶意请求事件列表

        # @param request: Request instance for DescribeRiskDnsEventList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsEventListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsEventListResponse`
        def DescribeRiskDnsEventList(request)
          body = send_request('DescribeRiskDnsEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询恶意请求详情

        # @param request: Request instance for DescribeRiskDnsInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsInfoResponse`
        def DescribeRiskDnsInfo(request)
          body = send_request('DescribeRiskDnsInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 入侵检测，获取恶意请求列表

        # @param request: Request instance for DescribeRiskDnsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListResponse`
        def DescribeRiskDnsList(request)
          body = send_request('DescribeRiskDnsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取恶意请求策略列表

        # @param request: Request instance for DescribeRiskDnsPolicyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsPolicyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsPolicyListResponse`
        def DescribeRiskDnsPolicyList(request)
          body = send_request('DescribeRiskDnsPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取异常进程列表

        # @param request: Request instance for DescribeRiskProcessEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskProcessEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskProcessEventsResponse`
        def DescribeRiskProcessEvents(request)
          body = send_request('DescribeRiskProcessEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskProcessEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全通知信息

        # @param request: Request instance for DescribeSafeInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSafeInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSafeInfoResponse`
        def DescribeSafeInfo(request)
          body = send_request('DescribeSafeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询木马扫描进度

        # @param request: Request instance for DescribeScanMalwareSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleResponse`
        def DescribeScanMalwareSchedule(request)
          body = send_request('DescribeScanMalwareSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanMalwareScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据taskid查询检测进度

        # @param request: Request instance for DescribeScanSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanScheduleResponse`
        def DescribeScanSchedule(request)
          body = send_request('DescribeScanSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeScanState 该接口能查询对应模块正在进行的扫描任务状态

        # @param request: Request instance for DescribeScanState.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanStateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanStateResponse`
        def DescribeScanState(request)
          body = send_request('DescribeScanState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeScanTaskDetails 查询扫描任务详情 , 可以查询扫描进度信息/异常;

        # @param request: Request instance for DescribeScanTaskDetails.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskDetailsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskDetailsResponse`
        def DescribeScanTaskDetails(request)
          body = send_request('DescribeScanTaskDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeScanTaskStatus 查询机器扫描状态列表用于过滤筛选

        # @param request: Request instance for DescribeScanTaskStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskStatusResponse`
        def DescribeScanTaskStatus(request)
          body = send_request('DescribeScanTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询定期检测的配置

        # @param request: Request instance for DescribeScanVulSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanVulSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanVulSettingResponse`
        def DescribeScanVulSetting(request)
          body = send_request('DescribeScanVulSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanVulSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化获取全网攻击热点

        # @param request: Request instance for DescribeScreenAttackHotspot.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenAttackHotspotRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenAttackHotspotResponse`
        def DescribeScreenAttackHotspot(request)
          body = send_request('DescribeScreenAttackHotspot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenAttackHotspotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化安全播报

        # @param request: Request instance for DescribeScreenBroadcasts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenBroadcastsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenBroadcastsResponse`
        def DescribeScreenBroadcasts(request)
          body = send_request('DescribeScreenBroadcasts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenBroadcastsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化防趋势接口

        # @param request: Request instance for DescribeScreenDefenseTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenDefenseTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenDefenseTrendsResponse`
        def DescribeScreenDefenseTrends(request)
          body = send_request('DescribeScreenDefenseTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenDefenseTrendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化紧急通知

        # @param request: Request instance for DescribeScreenEmergentMsg.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenEmergentMsgRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenEmergentMsgResponse`
        def DescribeScreenEmergentMsg(request)
          body = send_request('DescribeScreenEmergentMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenEmergentMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化获取安全概览相关事件统计数据接口

        # @param request: Request instance for DescribeScreenEventsCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenEventsCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenEventsCntResponse`
        def DescribeScreenEventsCnt(request)
          body = send_request('DescribeScreenEventsCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenEventsCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化获取主机相关统计

        # @param request: Request instance for DescribeScreenGeneralStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenGeneralStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenGeneralStatResponse`
        def DescribeScreenGeneralStat(request)
          body = send_request('DescribeScreenGeneralStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenGeneralStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化主机入侵详情

        # @param request: Request instance for DescribeScreenHostInvasion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenHostInvasionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenHostInvasionResponse`
        def DescribeScreenHostInvasion(request)
          body = send_request('DescribeScreenHostInvasion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenHostInvasionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化主机区域选项列表

        # @param request: Request instance for DescribeScreenMachineRegions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenMachineRegionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenMachineRegionsResponse`
        def DescribeScreenMachineRegions(request)
          body = send_request('DescribeScreenMachineRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenMachineRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化主机区域列表

        # @param request: Request instance for DescribeScreenMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenMachinesResponse`
        def DescribeScreenMachines(request)
          body = send_request('DescribeScreenMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化主机安全防护引擎介绍

        # @param request: Request instance for DescribeScreenProtectionCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenProtectionCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenProtectionCntResponse`
        def DescribeScreenProtectionCnt(request)
          body = send_request('DescribeScreenProtectionCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenProtectionCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏获取安全防护状态

        # @param request: Request instance for DescribeScreenProtectionStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenProtectionStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenProtectionStatResponse`
        def DescribeScreenProtectionStat(request)
          body = send_request('DescribeScreenProtectionStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenProtectionStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 大屏可视化风险资产top5（今日），统计今日风险资产

        # @param request: Request instance for DescribeScreenRiskAssetsTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScreenRiskAssetsTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScreenRiskAssetsTopResponse`
        def DescribeScreenRiskAssetsTop(request)
          body = send_request('DescribeScreenRiskAssetsTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenRiskAssetsTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSearchLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSearchLogsResponse`
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSearchTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSearchTemplatesResponse`
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

        # 查询安全播报文章信息

        # @param request: Request instance for DescribeSecurityBroadcastInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityBroadcastInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityBroadcastInfoResponse`
        def DescribeSecurityBroadcastInfo(request)
          body = send_request('DescribeSecurityBroadcastInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityBroadcastInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全播报列表页

        # @param request: Request instance for DescribeSecurityBroadcasts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityBroadcastsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityBroadcastsResponse`
        def DescribeSecurityBroadcasts(request)
          body = send_request('DescribeSecurityBroadcasts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityBroadcastsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSecurityDynamics) 用于获取安全事件动态消息数据。

        # @param request: Request instance for DescribeSecurityDynamics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsResponse`
        def DescribeSecurityDynamics(request)
          body = send_request('DescribeSecurityDynamics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityDynamicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全事件统计

        # @param request: Request instance for DescribeSecurityEventStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventStatResponse`
        def DescribeSecurityEventStat(request)
          body = send_request('DescribeSecurityEventStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityEventStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全概览相关事件统计数据接口

        # @param request: Request instance for DescribeSecurityEventsCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntResponse`
        def DescribeSecurityEventsCnt(request)
          body = send_request('DescribeSecurityEventsCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityEventsCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已无效

        # 获取安全防护状态汇总

        # @param request: Request instance for DescribeSecurityProtectionStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityProtectionStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityProtectionStatResponse`
        def DescribeSecurityProtectionStat(request)
          body = send_request('DescribeSecurityProtectionStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityProtectionStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。

        # @param request: Request instance for DescribeSecurityTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsResponse`
        def DescribeSecurityTrends(request)
          body = send_request('DescribeSecurityTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityTrendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务区关联目录详情

        # @param request: Request instance for DescribeServerRelatedDirInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeServerRelatedDirInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeServerRelatedDirInfoResponse`
        def DescribeServerRelatedDirInfo(request)
          body = send_request('DescribeServerRelatedDirInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerRelatedDirInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取待处理风险文件数+影响服务器数+是否试用检测+最近检测时间

        # @param request: Request instance for DescribeServersAndRiskAndFirstInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeServersAndRiskAndFirstInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeServersAndRiskAndFirstInfoResponse`
        def DescribeServersAndRiskAndFirstInfo(request)
          body = send_request('DescribeServersAndRiskAndFirstInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServersAndRiskAndFirstInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据策略名查询策略是否存在

        # @param request: Request instance for DescribeStrategyExist.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeStrategyExistRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeStrategyExistResponse`
        def DescribeStrategyExist(request)
          body = send_request('DescribeStrategyExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyExistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定标签关联的服务器信息

        # @param request: Request instance for DescribeTagMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesResponse`
        def DescribeTagMachines(request)
          body = send_request('DescribeTagMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有主机标签

        # @param request: Request instance for DescribeTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagsResponse`
        def DescribeTags(request)
          body = send_request('DescribeTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询主机安全授权试用报告(仅限控制台申领的)

        # @param request: Request instance for DescribeTrialReport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTrialReportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTrialReportResponse`
        def DescribeTrialReport(request)
          body = send_request('DescribeTrialReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrialReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞管理模块指定类型的待处理漏洞数、主机数和非专业版主机数量

        # @param request: Request instance for DescribeUndoVulCounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeUndoVulCountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeUndoVulCountsResponse`
        def DescribeUndoVulCounts(request)
          body = send_request('DescribeUndoVulCounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUndoVulCountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询用户自定义配置

        # @param request: Request instance for DescribeUsersConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeUsersConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeUsersConfigResponse`
        def DescribeUsersConfig(request)
          body = send_request('DescribeUsersConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。

        # @param request: Request instance for DescribeUsualLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesResponse`
        def DescribeUsualLoginPlaces(request)
          body = send_request('DescribeUsualLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsualLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVdbAndPocInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVdbAndPocInfoResponse`
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

        # 获取版本对比信息

        # @param request: Request instance for DescribeVersionCompareChart.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVersionCompareChartRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVersionCompareChartResponse`
        def DescribeVersionCompareChart(request)
          body = send_request('DescribeVersionCompareChart', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVersionCompareChartResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于统计专业版和基础版机器数。

        # @param request: Request instance for DescribeVersionStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVersionStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVersionStatisticsResponse`
        def DescribeVersionStatistics(request)
          body = send_request('DescribeVersionStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVersionStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定点属性信息

        # @param request: Request instance for DescribeVertexDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVertexDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVertexDetailResponse`
        def DescribeVertexDetail(request)
          body = send_request('DescribeVertexDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVertexDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞管理模块，获取近日指定类型的漏洞数量和主机数量

        # @param request: Request instance for DescribeVulCountByDates.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulCountByDatesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulCountByDatesResponse`
        def DescribeVulCountByDates(request)
          body = send_request('DescribeVulCountByDates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulCountByDatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CveId查询漏洞详情

        # @param request: Request instance for DescribeVulCveIdInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulCveIdInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulCveIdInfoResponse`
        def DescribeVulCveIdInfo(request)
          body = send_request('DescribeVulCveIdInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulCveIdInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞防御事件列表

        # @param request: Request instance for DescribeVulDefenceEvent.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceEventRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceEventResponse`
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

        # 查询漏洞防御列表

        # @param request: Request instance for DescribeVulDefenceList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceListResponse`
        def DescribeVulDefenceList(request)
          body = send_request('DescribeVulDefenceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞防御概览信息，包括事件趋势及插件开启情况

        # @param request: Request instance for DescribeVulDefenceOverview.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceOverviewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceOverviewResponse`
        def DescribeVulDefenceOverview(request)
          body = send_request('DescribeVulDefenceOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefenceOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单台主机漏洞防御插件信息

        # @param request: Request instance for DescribeVulDefencePluginDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginDetailResponse`
        def DescribeVulDefencePluginDetail(request)
          body = send_request('DescribeVulDefencePluginDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefencePluginDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前异常插件数

        # @param request: Request instance for DescribeVulDefencePluginExceptionCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginExceptionCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginExceptionCountResponse`
        def DescribeVulDefencePluginExceptionCount(request)
          body = send_request('DescribeVulDefencePluginExceptionCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefencePluginExceptionCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取各主机漏洞防御插件状态

        # @param request: Request instance for DescribeVulDefencePluginStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefencePluginStatusResponse`
        def DescribeVulDefencePluginStatus(request)
          body = send_request('DescribeVulDefencePluginStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulDefencePluginStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前漏洞防御插件设置

        # @param request: Request instance for DescribeVulDefenceSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulDefenceSettingResponse`
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

        # 漏洞影响主机列表

        # @param request: Request instance for DescribeVulEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulEffectHostListResponse`
        def DescribeVulEffectHostList(request)
          body = send_request('DescribeVulEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞影响组件列表

        # @param request: Request instance for DescribeVulEffectModules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulEffectModulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulEffectModulesResponse`
        def DescribeVulEffectModules(request)
          body = send_request('DescribeVulEffectModules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulEffectModulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞紧急通知

        # @param request: Request instance for DescribeVulEmergentMsg.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulEmergentMsgRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulEmergentMsgResponse`
        def DescribeVulEmergentMsg(request)
          body = send_request('DescribeVulEmergentMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulEmergentMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞修护-查找主机漏洞修护进度

        # @param request: Request instance for DescribeVulFixStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulFixStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulFixStatusResponse`
        def DescribeVulFixStatus(request)
          body = send_request('DescribeVulFixStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulFixStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取待处理漏洞数+影响主机数

        # @param request: Request instance for DescribeVulHostCountScanTime.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulHostCountScanTimeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulHostCountScanTimeResponse`
        def DescribeVulHostCountScanTime(request)
          body = send_request('DescribeVulHostCountScanTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulHostCountScanTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取服务器风险top列表

        # @param request: Request instance for DescribeVulHostTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulHostTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulHostTopResponse`
        def DescribeVulHostTop(request)
          body = send_request('DescribeVulHostTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulHostTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞详情，带CVSS版本

        # @param request: Request instance for DescribeVulInfoCvss.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulInfoCvssRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulInfoCvssResponse`
        def DescribeVulInfoCvss(request)
          body = send_request('DescribeVulInfoCvss', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulInfoCvssResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户漏洞所有标签列表

        # @param request: Request instance for DescribeVulLabels.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulLabelsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulLabelsResponse`
        def DescribeVulLabels(request)
          body = send_request('DescribeVulLabels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulLabelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞数量等级分布统计

        # @param request: Request instance for DescribeVulLevelCount.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulLevelCountRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulLevelCountResponse`
        def DescribeVulLevelCount(request)
          body = send_request('DescribeVulLevelCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulLevelCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞列表数据

        # @param request: Request instance for DescribeVulList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulListResponse`
        def DescribeVulList(request)
          body = send_request('DescribeVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞概览数据

        # @param request: Request instance for DescribeVulOverview.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulOverviewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulOverviewResponse`
        def DescribeVulOverview(request)
          body = send_request('DescribeVulOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞库列表

        # @param request: Request instance for DescribeVulStoreList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulStoreListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulStoreListResponse`
        def DescribeVulStoreList(request)
          body = send_request('DescribeVulStoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulStoreListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞top统计

        # @param request: Request instance for DescribeVulTop.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulTopRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulTopResponse`
        def DescribeVulTop(request)
          body = send_request('DescribeVulTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取漏洞态势信息

        # @param request: Request instance for DescribeVulTrend.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeVulTrendRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeVulTrendResponse`
        def DescribeVulTrend(request)
          body = send_request('DescribeVulTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警机器范围配置

        # @param request: Request instance for DescribeWarningHostConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWarningHostConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWarningHostConfigResponse`
        def DescribeWarningHostConfig(request)
          body = send_request('DescribeWarningHostConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarningHostConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前用户告警列表

        # @param request: Request instance for DescribeWarningList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWarningListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWarningListResponse`
        def DescribeWarningList(request)
          body = send_request('DescribeWarningList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarningListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警策略

        # @param request: Request instance for DescribeWebHookPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookPolicyResponse`
        def DescribeWebHookPolicy(request)
          body = send_request('DescribeWebHookPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebHookPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询告警接收人列表

        # @param request: Request instance for DescribeWebHookReceiver.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookReceiverRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookReceiverResponse`
        def DescribeWebHookReceiver(request)
          body = send_request('DescribeWebHookReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebHookReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定告警接收人的关联策略使用信息

        # @param request: Request instance for DescribeWebHookReceiverUsage.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookReceiverUsageRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookReceiverUsageResponse`
        def DescribeWebHookReceiverUsage(request)
          body = send_request('DescribeWebHookReceiverUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebHookReceiverUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企微机器人规则详情

        # @param request: Request instance for DescribeWebHookRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookRuleResponse`
        def DescribeWebHookRule(request)
          body = send_request('DescribeWebHookRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebHookRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取企微机器人规则列表

        # @param request: Request instance for DescribeWebHookRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebHookRulesResponse`
        def DescribeWebHookRules(request)
          body = send_request('DescribeWebHookRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebHookRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询篡改事件列表

        # @param request: Request instance for DescribeWebPageEventList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageEventListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageEventListResponse`
        def DescribeWebPageEventList(request)
          body = send_request('DescribeWebPageEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebPageEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网站防篡改概览信息

        # @param request: Request instance for DescribeWebPageGeneralize.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageGeneralizeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageGeneralizeResponse`
        def DescribeWebPageGeneralize(request)
          body = send_request('DescribeWebPageGeneralize', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebPageGeneralizeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网站防篡改-查询动态防护信息

        # @param request: Request instance for DescribeWebPageProtectStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageProtectStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageProtectStatResponse`
        def DescribeWebPageProtectStat(request)
          body = send_request('DescribeWebPageProtectStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebPageProtectStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网站防篡改-查询网页防篡改服务器购买信息及服务器信息

        # @param request: Request instance for DescribeWebPageServiceInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageServiceInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageServiceInfoResponse`
        def DescribeWebPageServiceInfo(request)
          body = send_request('DescribeWebPageServiceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebPageServiceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DestroyOrder  该接口可以对资源销毁.

        # @param request: Request instance for DestroyOrder.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DestroyOrderRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DestroyOrderResponse`
        def DestroyOrder(request)
          body = send_request('DestroyOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改高危命令规则

        # @param request: Request instance for EditBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditBashRulesResponse`
        def EditBashRules(request)
          body = send_request('EditBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改本地提权规则（支持多服务器选择）

        # @param request: Request instance for EditPrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditPrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditPrivilegeRulesResponse`
        def EditPrivilegeRules(request)
          body = send_request('EditPrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditPrivilegeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑反弹Shell规则（支持多服务器选择）

        # @param request: Request instance for EditReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditReverseShellRulesResponse`
        def EditReverseShellRules(request)
          body = send_request('EditReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditReverseShellRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或编辑标签

        # @param request: Request instance for EditTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditTagsResponse`
        def EditTags(request)
          body = send_request('EditTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理应用列表

        # @param request: Request instance for ExportAssetAppList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetAppListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetAppListResponse`
        def ExportAssetAppList(request)
          body = send_request('ExportAssetAppList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetAppListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理内核模块列表

        # @param request: Request instance for ExportAssetCoreModuleList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetCoreModuleListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetCoreModuleListResponse`
        def ExportAssetCoreModuleList(request)
          body = send_request('ExportAssetCoreModuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetCoreModuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理数据库列表

        # @param request: Request instance for ExportAssetDatabaseList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetDatabaseListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetDatabaseListResponse`
        def ExportAssetDatabaseList(request)
          body = send_request('ExportAssetDatabaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetDatabaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理环境变量列表

        # @param request: Request instance for ExportAssetEnvList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetEnvListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetEnvListResponse`
        def ExportAssetEnvList(request)
          body = send_request('ExportAssetEnvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetEnvListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理启动服务列表

        # @param request: Request instance for ExportAssetInitServiceList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetInitServiceListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetInitServiceListResponse`
        def ExportAssetInitServiceList(request)
          body = send_request('ExportAssetInitServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetInitServiceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出Jar包列表

        # @param request: Request instance for ExportAssetJarList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetJarListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetJarListResponse`
        def ExportAssetJarList(request)
          body = send_request('ExportAssetJarList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetJarListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理主机资源详细信息

        # @param request: Request instance for ExportAssetMachineDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetMachineDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetMachineDetailResponse`
        def ExportAssetMachineDetail(request)
          body = send_request('ExportAssetMachineDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetMachineDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资源监控列表

        # @param request: Request instance for ExportAssetMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetMachineListResponse`
        def ExportAssetMachineList(request)
          body = send_request('ExportAssetMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理计划任务列表

        # @param request: Request instance for ExportAssetPlanTaskList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetPlanTaskListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetPlanTaskListResponse`
        def ExportAssetPlanTaskList(request)
          body = send_request('ExportAssetPlanTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetPlanTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理端口列表

        # @param request: Request instance for ExportAssetPortInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetPortInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetPortInfoListResponse`
        def ExportAssetPortInfoList(request)
          body = send_request('ExportAssetPortInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetPortInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理进程列表

        # @param request: Request instance for ExportAssetProcessInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetProcessInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetProcessInfoListResponse`
        def ExportAssetProcessInfoList(request)
          body = send_request('ExportAssetProcessInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetProcessInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出主机最近趋势情况（最长最近90天）

        # @param request: Request instance for ExportAssetRecentMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetRecentMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetRecentMachineInfoResponse`
        def ExportAssetRecentMachineInfo(request)
          body = send_request('ExportAssetRecentMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetRecentMachineInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理系统安装包列表

        # @param request: Request instance for ExportAssetSystemPackageList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetSystemPackageListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetSystemPackageListResponse`
        def ExportAssetSystemPackageList(request)
          body = send_request('ExportAssetSystemPackageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetSystemPackageListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出账号列表

        # @param request: Request instance for ExportAssetUserList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetUserListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetUserListResponse`
        def ExportAssetUserList(request)
          body = send_request('ExportAssetUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理Web应用列表

        # @param request: Request instance for ExportAssetWebAppList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebAppListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebAppListResponse`
        def ExportAssetWebAppList(request)
          body = send_request('ExportAssetWebAppList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetWebAppListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理Web框架列表

        # @param request: Request instance for ExportAssetWebFrameList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebFrameListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebFrameListResponse`
        def ExportAssetWebFrameList(request)
          body = send_request('ExportAssetWebFrameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetWebFrameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出Web站点列表

        # @param request: Request instance for ExportAssetWebLocationList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebLocationListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebLocationListResponse`
        def ExportAssetWebLocationList(request)
          body = send_request('ExportAssetWebLocationList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetWebLocationListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出资产管理Web服务列表

        # @param request: Request instance for ExportAssetWebServiceInfoList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebServiceInfoListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetWebServiceInfoListResponse`
        def ExportAssetWebServiceInfoList(request)
          body = send_request('ExportAssetWebServiceInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetWebServiceInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出网络攻击事件

        # @param request: Request instance for ExportAttackEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAttackEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAttackEventsResponse`
        def ExportAttackEvents(request)
          body = send_request('ExportAttackEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAttackEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基线影响主机列表

        # @param request: Request instance for ExportBaselineEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineEffectHostListResponse`
        def ExportBaselineEffectHostList(request)
          body = send_request('ExportBaselineEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出修复列表

        # @param request: Request instance for ExportBaselineFixList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineFixListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineFixListResponse`
        def ExportBaselineFixList(request)
          body = send_request('ExportBaselineFixList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineFixListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基线主机检测

        # @param request: Request instance for ExportBaselineHostDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineHostDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineHostDetectListResponse`
        def ExportBaselineHostDetectList(request)
          body = send_request('ExportBaselineHostDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineHostDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基线检测项

        # @param request: Request instance for ExportBaselineItemDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineItemDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineItemDetectListResponse`
        def ExportBaselineItemDetectList(request)
          body = send_request('ExportBaselineItemDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineItemDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出检测项结果列表

        # @param request: Request instance for ExportBaselineItemList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineItemListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineItemListResponse`
        def ExportBaselineItemList(request)
          body = send_request('ExportBaselineItemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineItemListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基线列表

        # @param request: Request instance for ExportBaselineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineListResponse`
        def ExportBaselineList(request)
          body = send_request('ExportBaselineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出基线检测规则

        # @param request: Request instance for ExportBaselineRuleDetectList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineRuleDetectListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineRuleDetectListResponse`
        def ExportBaselineRuleDetectList(request)
          body = send_request('ExportBaselineRuleDetectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineRuleDetectListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出弱口令配置列表

        # @param request: Request instance for ExportBaselineWeakPasswordList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBaselineWeakPasswordListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBaselineWeakPasswordListResponse`
        def ExportBaselineWeakPasswordList(request)
          body = send_request('ExportBaselineWeakPasswordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBaselineWeakPasswordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出高危命令事件

        # @param request: Request instance for ExportBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsResponse`
        def ExportBashEvents(request)
          body = send_request('ExportBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBashEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出高危命令事件(新)

        # @param request: Request instance for ExportBashEventsNew.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsNewRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsNewResponse`
        def ExportBashEventsNew(request)
          body = send_request('ExportBashEventsNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBashEventsNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出高危命令策略

        # @param request: Request instance for ExportBashPolicies.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBashPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBashPoliciesResponse`
        def ExportBashPolicies(request)
          body = send_request('ExportBashPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBashPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportBruteAttacks) 用于导出密码破解记录成CSV文件。

        # @param request: Request instance for ExportBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksResponse`
        def ExportBruteAttacks(request)
          body = send_request('ExportBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBruteAttacksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出核心文件事件

        # @param request: Request instance for ExportFileTamperEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportFileTamperEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportFileTamperEventsResponse`
        def ExportFileTamperEvents(request)
          body = send_request('ExportFileTamperEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportFileTamperEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出核心文件监控规则

        # @param request: Request instance for ExportFileTamperRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportFileTamperRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportFileTamperRulesResponse`
        def ExportFileTamperRules(request)
          body = send_request('ExportFileTamperRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportFileTamperRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出已忽略基线检测项信息

        # @param request: Request instance for ExportIgnoreBaselineRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportIgnoreBaselineRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportIgnoreBaselineRuleResponse`
        def ExportIgnoreBaselineRule(request)
          body = send_request('ExportIgnoreBaselineRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportIgnoreBaselineRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据检测项id导出忽略检测项影响主机列表

        # @param request: Request instance for ExportIgnoreRuleEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportIgnoreRuleEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportIgnoreRuleEffectHostListResponse`
        def ExportIgnoreRuleEffectHostList(request)
          body = send_request('ExportIgnoreRuleEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportIgnoreRuleEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出java内存马插件信息

        # @param request: Request instance for ExportJavaMemShellPlugins.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportJavaMemShellPluginsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportJavaMemShellPluginsResponse`
        def ExportJavaMemShellPlugins(request)
          body = send_request('ExportJavaMemShellPlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportJavaMemShellPluginsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出java内存马事件列表

        # @param request: Request instance for ExportJavaMemShells.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportJavaMemShellsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportJavaMemShellsResponse`
        def ExportJavaMemShells(request)
          body = send_request('ExportJavaMemShells', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportJavaMemShellsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出授权列表对应的绑定信息

        # @param request: Request instance for ExportLicenseDetail.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportLicenseDetailRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportLicenseDetailResponse`
        def ExportLicenseDetail(request)
          body = send_request('ExportLicenseDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportLicenseDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportMaliciousRequests) 用于导出下载恶意请求文件。

        # @param request: Request instance for ExportMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsResponse`
        def ExportMaliciousRequests(request)
          body = send_request('ExportMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMaliciousRequestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportMalwares) 用于导出木马记录CSV文件。

        # @param request: Request instance for ExportMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresResponse`
        def ExportMalwares(request)
          body = send_request('ExportMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。

        # @param request: Request instance for ExportNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesResponse`
        def ExportNonlocalLoginPlaces(request)
          body = send_request('ExportNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportNonlocalLoginPlacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出本地提权事件

        # @param request: Request instance for ExportPrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsResponse`
        def ExportPrivilegeEvents(request)
          body = send_request('ExportPrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportPrivilegeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出网页防篡改防护目录列表

        # @param request: Request instance for ExportProtectDirList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportProtectDirListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportProtectDirListResponse`
        def ExportProtectDirList(request)
          body = send_request('ExportProtectDirList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportProtectDirListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出主机快照备份列表

        # @param request: Request instance for ExportRansomDefenseBackupList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseBackupListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseBackupListResponse`
        def ExportRansomDefenseBackupList(request)
          body = send_request('ExportRansomDefenseBackupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRansomDefenseBackupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出防勒索事件列表

        # @param request: Request instance for ExportRansomDefenseEventsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseEventsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseEventsListResponse`
        def ExportRansomDefenseEventsList(request)
          body = send_request('ExportRansomDefenseEventsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRansomDefenseEventsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出备份详情列表

        # @param request: Request instance for ExportRansomDefenseMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseMachineListResponse`
        def ExportRansomDefenseMachineList(request)
          body = send_request('ExportRansomDefenseMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRansomDefenseMachineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出防勒索策略列表

        # @param request: Request instance for ExportRansomDefenseStrategyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseStrategyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseStrategyListResponse`
        def ExportRansomDefenseStrategyList(request)
          body = send_request('ExportRansomDefenseStrategyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRansomDefenseStrategyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出勒索防御策略绑定机器列表

        # @param request: Request instance for ExportRansomDefenseStrategyMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseStrategyMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRansomDefenseStrategyMachinesResponse`
        def ExportRansomDefenseStrategyMachines(request)
          body = send_request('ExportRansomDefenseStrategyMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRansomDefenseStrategyMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出反弹Shell事件

        # @param request: Request instance for ExportReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsResponse`
        def ExportReverseShellEvents(request)
          body = send_request('ExportReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportReverseShellEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出恶意请求事件列表

        # @param request: Request instance for ExportRiskDnsEventList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRiskDnsEventListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRiskDnsEventListResponse`
        def ExportRiskDnsEventList(request)
          body = send_request('ExportRiskDnsEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRiskDnsEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出恶意请求策略列表

        # @param request: Request instance for ExportRiskDnsPolicyList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRiskDnsPolicyListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRiskDnsPolicyListResponse`
        def ExportRiskDnsPolicyList(request)
          body = send_request('ExportRiskDnsPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRiskDnsPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出异常进程事件

        # @param request: Request instance for ExportRiskProcessEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportRiskProcessEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportRiskProcessEventsResponse`
        def ExportRiskProcessEvents(request)
          body = send_request('ExportRiskProcessEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportRiskProcessEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务id导出指定扫描任务详情

        # @param request: Request instance for ExportScanTaskDetails.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportScanTaskDetailsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportScanTaskDetailsResponse`
        def ExportScanTaskDetails(request)
          body = send_request('ExportScanTaskDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportScanTaskDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出风险趋势

        # @param request: Request instance for ExportSecurityTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportSecurityTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportSecurityTrendsResponse`
        def ExportSecurityTrends(request)
          body = send_request('ExportSecurityTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportSecurityTrendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportTasksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportTasksResponse`
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

        # 导出漏洞防御事件

        # @param request: Request instance for ExportVulDefenceEvent.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDefenceEventRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDefenceEventResponse`
        def ExportVulDefenceEvent(request)
          body = send_request('ExportVulDefenceEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDefenceEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞防御列表

        # @param request: Request instance for ExportVulDefenceList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDefenceListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDefenceListResponse`
        def ExportVulDefenceList(request)
          body = send_request('ExportVulDefenceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDefenceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞防御插件事件

        # @param request: Request instance for ExportVulDefencePluginEvent.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDefencePluginEventRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDefencePluginEventResponse`
        def ExportVulDefencePluginEvent(request)
          body = send_request('ExportVulDefencePluginEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDefencePluginEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出本次漏洞检测Excel

        # @param request: Request instance for ExportVulDetectionExcel.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelResponse`
        def ExportVulDetectionExcel(request)
          body = send_request('ExportVulDetectionExcel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionExcelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞检测报告。

        # @param request: Request instance for ExportVulDetectionReport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportResponse`
        def ExportVulDetectionReport(request)
          body = send_request('ExportVulDetectionReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞影响主机列表

        # @param request: Request instance for ExportVulEffectHostList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulEffectHostListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulEffectHostListResponse`
        def ExportVulEffectHostList(request)
          body = send_request('ExportVulEffectHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulEffectHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出漏洞信息，包括影响主机列表，组件信息

        # @param request: Request instance for ExportVulInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulInfoResponse`
        def ExportVulInfo(request)
          body = send_request('ExportVulInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞管理-导出漏洞列表

        # @param request: Request instance for ExportVulList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulListResponse`
        def ExportVulList(request)
          body = send_request('ExportVulList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出篡改事件列表

        # @param request: Request instance for ExportWebPageEventList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportWebPageEventListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportWebPageEventListResponse`
        def ExportWebPageEventList(request)
          body = send_request('ExportWebPageEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportWebPageEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修复基线检测

        # @param request: Request instance for FixBaselineDetect.
        # @type request: :class:`Tencentcloud::cwp::V20180228::FixBaselineDetectRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::FixBaselineDetectResponse`
        def FixBaselineDetect(request)
          body = send_request('FixBaselineDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FixBaselineDetectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地存储数据

        # @param request: Request instance for GetLocalStorageItem.
        # @type request: :class:`Tencentcloud::cwp::V20180228::GetLocalStorageItemRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::GetLocalStorageItemResponse`
        def GetLocalStorageItem(request)
          body = send_request('GetLocalStorageItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLocalStorageItemResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。

        # @param request: Request instance for IgnoreImpactedHosts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsResponse`
        def IgnoreImpactedHosts(request)
          body = send_request('IgnoreImpactedHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnoreImpactedHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取本地存储键值列表

        # @param request: Request instance for KeysLocalStorage.
        # @type request: :class:`Tencentcloud::cwp::V20180228::KeysLocalStorageRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::KeysLocalStorageResponse`
        def KeysLocalStorage(request)
          body = send_request('KeysLocalStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KeysLocalStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于设置新增主机自动开通专业防护配置。

        # @param request: Request instance for ModifyAutoOpenProVersionConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigResponse`
        def ModifyAutoOpenProVersionConfig(request)
          body = send_request('ModifyAutoOpenProVersionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoOpenProVersionConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBanModeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBanModeResponse`
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

        # 设置阻断开关状态

        # @param request: Request instance for ModifyBanStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBanStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBanStatusResponse`
        def ModifyBanStatus(request)
          body = send_request('ModifyBanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改阻断白名单列表

        # @param request: Request instance for ModifyBanWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBanWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBanWhiteListResponse`
        def ModifyBanWhiteList(request)
          body = send_request('ModifyBanWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBanWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改基线策略设置

        # @param request: Request instance for ModifyBaselinePolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBaselinePolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBaselinePolicyResponse`
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

        # 更改基线策略状态

        # @param request: Request instance for ModifyBaselinePolicyState.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBaselinePolicyStateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBaselinePolicyStateResponse`
        def ModifyBaselinePolicyState(request)
          body = send_request('ModifyBaselinePolicyState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselinePolicyStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改基线检测规则

        # @param request: Request instance for ModifyBaselineRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineRuleResponse`
        def ModifyBaselineRule(request)
          body = send_request('ModifyBaselineRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改基线忽略规则

        # @param request: Request instance for ModifyBaselineRuleIgnore.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineRuleIgnoreRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineRuleIgnoreResponse`
        def ModifyBaselineRuleIgnore(request)
          body = send_request('ModifyBaselineRuleIgnore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineRuleIgnoreResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改或新增弱口令

        # @param request: Request instance for ModifyBaselineWeakPassword.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineWeakPasswordRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBaselineWeakPasswordResponse`
        def ModifyBaselineWeakPassword(request)
          body = send_request('ModifyBaselineWeakPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBaselineWeakPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改高危命令策略

        # @param request: Request instance for ModifyBashPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBashPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBashPolicyResponse`
        def ModifyBashPolicy(request)
          body = send_request('ModifyBashPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBashPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换高危命令策略状态

        # @param request: Request instance for ModifyBashPolicyStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBashPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBashPolicyStatusResponse`
        def ModifyBashPolicyStatus(request)
          body = send_request('ModifyBashPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBashPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyBruteAttackRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyBruteAttackRulesResponse`
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

        # 修改网络攻击事件状态

        # @param request: Request instance for ModifyEventAttackStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyEventAttackStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyEventAttackStatusResponse`
        def ModifyEventAttackStatus(request)
          body = send_request('ModifyEventAttackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEventAttackStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核心文件事件更新

        # @param request: Request instance for ModifyFileTamperEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperEventsResponse`
        def ModifyFileTamperEvents(request)
          body = send_request('ModifyFileTamperEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileTamperEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑、新增核心文件监控规则

        # @param request: Request instance for ModifyFileTamperRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperRuleResponse`
        def ModifyFileTamperRule(request)
          body = send_request('ModifyFileTamperRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileTamperRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核心文件规则状态更新，支持批量删除 关闭

        # @param request: Request instance for ModifyFileTamperRuleStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyFileTamperRuleStatusResponse`
        def ModifyFileTamperRuleStatus(request)
          body = send_request('ModifyFileTamperRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileTamperRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开关java内存马插件

        # @param request: Request instance for ModifyJavaMemShellPluginSwitch.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyJavaMemShellPluginSwitchRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyJavaMemShellPluginSwitchResponse`
        def ModifyJavaMemShellPluginSwitch(request)
          body = send_request('ModifyJavaMemShellPluginSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJavaMemShellPluginSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改java内存马事件状态

        # @param request: Request instance for ModifyJavaMemShellsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyJavaMemShellsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyJavaMemShellsStatusResponse`
        def ModifyJavaMemShellsStatus(request)
          body = send_request('ModifyJavaMemShellsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJavaMemShellsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置中心-授权管理 对某个授权批量绑定机器

        # @param request: Request instance for ModifyLicenseBinds.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseBindsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseBindsResponse`
        def ModifyLicenseBinds(request)
          body = send_request('ModifyLicenseBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLicenseBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑《主机安全-按量计费》授权订单

        # @param request: Request instance for ModifyLicenseOrder.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseOrderRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseOrderResponse`
        def ModifyLicenseOrder(request)
          body = send_request('ModifyLicenseOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLicenseOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置中心-授权管理 对某个授权批量解绑机器

        # @param request: Request instance for ModifyLicenseUnBinds.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseUnBindsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLicenseUnBindsResponse`
        def ModifyLicenseUnBinds(request)
          body = send_request('ModifyLicenseUnBinds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLicenseUnBindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改日志投递kafka接入配置

        # @param request: Request instance for ModifyLogKafkaAccess.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaAccessRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaAccessResponse`
        def ModifyLogKafkaAccess(request)
          body = send_request('ModifyLogKafkaAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogKafkaAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指定日志类别投递配置、开关

        # @param request: Request instance for ModifyLogKafkaDeliverType.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaDeliverTypeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaDeliverTypeResponse`
        def ModifyLogKafkaDeliverType(request)
          body = send_request('ModifyLogKafkaDeliverType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogKafkaDeliverTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改日志投递状态信息

        # @param request: Request instance for ModifyLogKafkaState.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaStateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLogKafkaStateResponse`
        def ModifyLogKafkaState(request)
          body = send_request('ModifyLogKafkaState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogKafkaStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改日志存储配置

        # @param request: Request instance for ModifyLogStorageConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLogStorageConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLogStorageConfigResponse`
        def ModifyLogStorageConfig(request)
          body = send_request('ModifyLogStorageConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLogStorageConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新登录审计白名单信息

        # @param request: Request instance for ModifyLoginWhiteInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteInfoResponse`
        def ModifyLoginWhiteInfo(request)
          body = send_request('ModifyLoginWhiteInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoginWhiteInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteRecordRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyLoginWhiteRecordResponse`
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
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMachineAutoClearConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMachineAutoClearConfigResponse`
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

        # 修改主机备注信息

        # @param request: Request instance for ModifyMachineRemark.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMachineRemarkRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMachineRemarkResponse`
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

        # 更新恶意请求白名单

        # @param request: Request instance for ModifyMaliciousRequestWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMaliciousRequestWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMaliciousRequestWhiteListResponse`
        def ModifyMaliciousRequestWhiteList(request)
          body = send_request('ModifyMaliciousRequestWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaliciousRequestWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 定时扫描设置

        # @param request: Request instance for ModifyMalwareTimingScanSettings.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsResponse`
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

        # 编辑木马白名单

        # @param request: Request instance for ModifyMalwareWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareWhiteListResponse`
        def ModifyMalwareWhiteList(request)
          body = send_request('ModifyMalwareWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMalwareWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网络攻击设置

        # @param request: Request instance for ModifyNetAttackSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyNetAttackSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyNetAttackSettingResponse`
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

        # 编辑网络攻击白名单

        # @param request: Request instance for ModifyNetAttackWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyNetAttackWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyNetAttackWhiteListResponse`
        def ModifyNetAttackWhiteList(request)
          body = send_request('ModifyNetAttackWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetAttackWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对订单属性编辑

        # @param request: Request instance for ModifyOrderAttribute.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyOrderAttributeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyOrderAttributeResponse`
        def ModifyOrderAttribute(request)
          body = send_request('ModifyOrderAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOrderAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改防勒索事件状态

        # @param request: Request instance for ModifyRansomDefenseEventsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRansomDefenseEventsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRansomDefenseEventsStatusResponse`
        def ModifyRansomDefenseEventsStatus(request)
          body = send_request('ModifyRansomDefenseEventsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRansomDefenseEventsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改防勒索策略状态

        # @param request: Request instance for ModifyRansomDefenseStrategyStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRansomDefenseStrategyStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRansomDefenseStrategyStatusResponse`
        def ModifyRansomDefenseStrategyStatus(request)
          body = send_request('ModifyRansomDefenseStrategyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRansomDefenseStrategyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑漏洞防御最大cpu配置

        # @param request: Request instance for ModifyRaspMaxCpu.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRaspMaxCpuRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRaspMaxCpuResponse`
        def ModifyRaspMaxCpu(request)
          body = send_request('ModifyRaspMaxCpu', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRaspMaxCpuResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加漏洞防御白名单

        # @param request: Request instance for ModifyRaspRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRaspRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRaspRulesResponse`
        def ModifyRaspRules(request)
          body = send_request('ModifyRaspRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRaspRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑反弹Shell规则（支持多服务器选择）

        # @param request: Request instance for ModifyReverseShellRulesAggregation.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyReverseShellRulesAggregationRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyReverseShellRulesAggregationResponse`
        def ModifyReverseShellRulesAggregation(request)
          body = send_request('ModifyReverseShellRulesAggregation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReverseShellRulesAggregationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改恶意请求策略

        # @param request: Request instance for ModifyRiskDnsPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRiskDnsPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRiskDnsPolicyResponse`
        def ModifyRiskDnsPolicy(request)
          body = send_request('ModifyRiskDnsPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskDnsPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改恶意请求策略状态

        # @param request: Request instance for ModifyRiskDnsPolicyStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRiskDnsPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRiskDnsPolicyStatusResponse`
        def ModifyRiskDnsPolicyStatus(request)
          body = send_request('ModifyRiskDnsPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskDnsPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 入侵检测所有事件的状态，包括：文件查杀，异常登录，密码破解，高危命令，反弹shell，本地提取

        # @param request: Request instance for ModifyRiskEventsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyRiskEventsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyRiskEventsStatusResponse`
        def ModifyRiskEventsStatus(request)
          body = send_request('ModifyRiskEventsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRiskEventsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建/修改用户自定义配置

        # @param request: Request instance for ModifyUsersConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyUsersConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyUsersConfigResponse`
        def ModifyUsersConfig(request)
          body = send_request('ModifyUsersConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUsersConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改漏洞防御事件状态（修复漏洞通过其他接口实现）

        # @param request: Request instance for ModifyVulDefenceEventStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyVulDefenceEventStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyVulDefenceEventStatusResponse`
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

        # 修改漏洞防御插件设置
        # 1）新增主机自动加入，scope为1，quuids为空
        # 2）全量旗舰版不自动加入，scope为0，quuids为当前quuid列表，
        # 3）给定quuid列表，scope为0，quuids为用户选择quuid

        # @param request: Request instance for ModifyVulDefenceSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyVulDefenceSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyVulDefenceSettingResponse`
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

        # 修改告警机器范围配置

        # @param request: Request instance for ModifyWarningHostConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWarningHostConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWarningHostConfigResponse`
        def ModifyWarningHostConfig(request)
          body = send_request('ModifyWarningHostConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWarningHostConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警设置

        # @param request: Request instance for ModifyWarningSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWarningSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWarningSettingResponse`
        def ModifyWarningSetting(request)
          body = send_request('ModifyWarningSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWarningSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改告警策略

        # @param request: Request instance for ModifyWebHookPolicy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookPolicyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookPolicyResponse`
        def ModifyWebHookPolicy(request)
          body = send_request('ModifyWebHookPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebHookPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改告警策略开关

        # @param request: Request instance for ModifyWebHookPolicyStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookPolicyStatusResponse`
        def ModifyWebHookPolicyStatus(request)
          body = send_request('ModifyWebHookPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebHookPolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或更新告警接收人

        # @param request: Request instance for ModifyWebHookReceiver.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookReceiverRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookReceiverResponse`
        def ModifyWebHookReceiver(request)
          body = send_request('ModifyWebHookReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebHookReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增或修改企微机器人规则

        # @param request: Request instance for ModifyWebHookRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookRuleResponse`
        def ModifyWebHookRule(request)
          body = send_request('ModifyWebHookRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebHookRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改企微机器人规则状态

        # @param request: Request instance for ModifyWebHookRuleStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebHookRuleStatusResponse`
        def ModifyWebHookRuleStatus(request)
          body = send_request('ModifyWebHookRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebHookRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建/修改网站防护目录

        # @param request: Request instance for ModifyWebPageProtectDir.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectDirRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectDirResponse`
        def ModifyWebPageProtectDir(request)
          body = send_request('ModifyWebPageProtectDir', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebPageProtectDirResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网站防护设置

        # @param request: Request instance for ModifyWebPageProtectSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSettingResponse`
        def ModifyWebPageProtectSetting(request)
          body = send_request('ModifyWebPageProtectSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebPageProtectSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 网站防篡改防护设置开关

        # @param request: Request instance for ModifyWebPageProtectSwitch.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSwitchRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSwitchResponse`
        def ModifyWebPageProtectSwitch(request)
          body = send_request('ModifyWebPageProtectSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebPageProtectSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 防勒索快照回滚

        # @param request: Request instance for RansomDefenseRollback.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RansomDefenseRollbackRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RansomDefenseRollbackResponse`
        def RansomDefenseRollback(request)
          body = send_request('RansomDefenseRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RansomDefenseRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RecoverMalwares）用于批量恢复已经被隔离的木马文件。

        # @param request: Request instance for RecoverMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresResponse`
        def RecoverMalwares(request)
          body = send_request('RecoverMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除本地存储数据

        # @param request: Request instance for RemoveLocalStorageItem.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RemoveLocalStorageItemRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RemoveLocalStorageItemResponse`
        def RemoveLocalStorageItem(request)
          body = send_request('RemoveLocalStorageItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveLocalStorageItemResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主机所有记录，目前只支持非腾讯云主机，且需要主机在离线状态

        # @param request: Request instance for RemoveMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RemoveMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RemoveMachineResponse`
        def RemoveMachine(request)
          body = send_request('RemoveMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveMachineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 快照创建失败时可以重试创建快照并且自动进行漏洞修复

        # @param request: Request instance for RetryCreateSnapshot.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RetryCreateSnapshotRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RetryCreateSnapshotResponse`
        def RetryCreateSnapshot(request)
          body = send_request('RetryCreateSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryCreateSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修复失败时单独对某一个主机修复漏洞

        # @param request: Request instance for RetryVulFix.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RetryVulFixRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RetryVulFixResponse`
        def RetryVulFix(request)
          body = send_request('RetryVulFix', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RetryVulFixResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产指纹启动扫描

        # @param request: Request instance for ScanAsset.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanAssetRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanAssetResponse`
        def ScanAsset(request)
          body = send_request('ScanAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 基线检测与基线重新检测接口

        # @param request: Request instance for ScanBaseline.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanBaselineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanBaselineResponse`
        def ScanBaseline(request)
          body = send_request('ScanBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ScanTaskAgain  重新开始扫描任务，可以指定机器

        # @param request: Request instance for ScanTaskAgain.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanTaskAgainRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanTaskAgainResponse`
        def ScanTaskAgain(request)
          body = send_request('ScanTaskAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanTaskAgainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞一键检测

        # @param request: Request instance for ScanVul.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulResponse`
        def ScanVul(request)
          body = send_request('ScanVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 漏洞管理-重新检测接口

        # @param request: Request instance for ScanVulAgain.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulAgainRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulAgainResponse`
        def ScanVulAgain(request)
          body = send_request('ScanVulAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulAgainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 定期扫描漏洞设置

        # @param request: Request instance for ScanVulSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulSettingResponse`
        def ScanVulSetting(request)
          body = send_request('ScanVulSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询日志

        # @param request: Request instance for SearchLog.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SearchLogRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SearchLogResponse`
        def SearchLog(request)
          body = send_request('SearchLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SeparateMalwares）用于隔离木马。

        # @param request: Request instance for SeparateMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresResponse`
        def SeparateMalwares(request)
          body = send_request('SeparateMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SeparateMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置高危命令事件状态

        # @param request: Request instance for SetBashEventsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusResponse`
        def SetBashEventsStatus(request)
          body = send_request('SetBashEventsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetBashEventsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置本地存储过期时间

        # @param request: Request instance for SetLocalStorageExpire.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SetLocalStorageExpireRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SetLocalStorageExpireResponse`
        def SetLocalStorageExpire(request)
          body = send_request('SetLocalStorageExpire', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLocalStorageExpireResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置本地存储数据

        # @param request: Request instance for SetLocalStorageItem.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SetLocalStorageItemRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SetLocalStorageItemResponse`
        def SetLocalStorageItem(request)
          body = send_request('SetLocalStorageItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLocalStorageItemResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测基线

        # @param request: Request instance for StartBaselineDetect.
        # @type request: :class:`Tencentcloud::cwp::V20180228::StartBaselineDetectRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::StartBaselineDetectResponse`
        def StartBaselineDetect(request)
          body = send_request('StartBaselineDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartBaselineDetectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止资产扫描任务

        # @param request: Request instance for StopAssetScan.
        # @type request: :class:`Tencentcloud::cwp::V20180228::StopAssetScanRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::StopAssetScanResponse`
        def StopAssetScan(request)
          body = send_request('StopAssetScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopAssetScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止基线检测

        # @param request: Request instance for StopBaselineDetect.
        # @type request: :class:`Tencentcloud::cwp::V20180228::StopBaselineDetectRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::StopBaselineDetectResponse`
        def StopBaselineDetect(request)
          body = send_request('StopBaselineDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopBaselineDetectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 不再提醒爆破阻断提示弹窗

        # @param request: Request instance for StopNoticeBanTips.
        # @type request: :class:`Tencentcloud::cwp::V20180228::StopNoticeBanTipsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::StopNoticeBanTipsResponse`
        def StopNoticeBanTips(request)
          body = send_request('StopNoticeBanTips', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopNoticeBanTipsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换高危命令规则状态

        # @param request: Request instance for SwitchBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesResponse`
        def SwitchBashRules(request)
          body = send_request('SwitchBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchBashRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步资产扫描信息

        # @param request: Request instance for SyncAssetScan.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SyncAssetScanRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SyncAssetScanResponse`
        def SyncAssetScan(request)
          body = send_request('SyncAssetScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncAssetScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步基线检测进度概要

        # @param request: Request instance for SyncBaselineDetectSummary.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SyncBaselineDetectSummaryRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SyncBaselineDetectSummaryResponse`
        def SyncBaselineDetectSummary(request)
          body = send_request('SyncBaselineDetectSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncBaselineDetectSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步机器信息

        # @param request: Request instance for SyncMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SyncMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SyncMachinesResponse`
        def SyncMachines(request)
          body = send_request('SyncMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncMachinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 测试企微机器人规则

        # @param request: Request instance for TestWebHookRule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::TestWebHookRuleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::TestWebHookRuleResponse`
        def TestWebHookRule(request)
          body = send_request('TestWebHookRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TestWebHookRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(TrustMalwares)将被识别木马文件设为信任。

        # @param request: Request instance for TrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresResponse`
        def TrustMalwares(request)
          body = send_request('TrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrustMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UntrustMalwares）用于取消信任木马文件。

        # @param request: Request instance for UntrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresResponse`
        def UntrustMalwares(request)
          body = send_request('UntrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UntrustMalwaresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据基线策略id更新策略信息

        # @param request: Request instance for UpdateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyResponse`
        def UpdateBaselineStrategy(request)
          body = send_request('UpdateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBaselineStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关联机器标签列表

        # @param request: Request instance for UpdateMachineTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UpdateMachineTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UpdateMachineTagsResponse`
        def UpdateMachineTags(request)
          body = send_request('UpdateMachineTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateMachineTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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