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
  module Waf
    module V20180125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-01-25'
            api_endpoint = 'waf.tencentcloudapi.com'
            sdk_version = 'WAF_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加防篡改url

        # @param request: Request instance for AddAntiFakeUrl.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddAntiFakeUrlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddAntiFakeUrlResponse`
        def AddAntiFakeUrl(request)
          body = send_request('AddAntiFakeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAntiFakeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加信息防泄漏规则

        # @param request: Request instance for AddAntiInfoLeakRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddAntiInfoLeakRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddAntiInfoLeakRulesResponse`
        def AddAntiInfoLeakRules(request)
          body = send_request('AddAntiInfoLeakRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAntiInfoLeakRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加地域封禁中的地域信息

        # @param request: Request instance for AddAreaBanAreas.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddAreaBanAreasRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddAreaBanAreasResponse`
        def AddAreaBanAreas(request)
          body = send_request('AddAreaBanAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAreaBanAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 供用户控制台调用，增加Tiga规则引擎白名单。

        # @param request: Request instance for AddAttackWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddAttackWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddAttackWhiteRuleResponse`
        def AddAttackWhiteRule(request)
          body = send_request('AddAttackWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAttackWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加一键bypass能力支持,直接添加APPID

        # @param request: Request instance for AddBypassAllRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddBypassAllRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddBypassAllRuleResponse`
        def AddBypassAllRule(request)
          body = send_request('AddBypassAllRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddBypassAllRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加访问控制（自定义策略）

        # @param request: Request instance for AddCustomRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddCustomRuleResponse`
        def AddCustomRule(request)
          body = send_request('AddCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCustomRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加精准白名单规则

        # @param request: Request instance for AddCustomWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddCustomWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddCustomWhiteRuleResponse`
        def AddCustomWhiteRule(request)
          body = send_request('AddCustomWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCustomWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加域名规则白名单

        # @param request: Request instance for AddDomainWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddDomainWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddDomainWhiteRuleResponse`
        def AddDomainWhiteRule(request)
          body = send_request('AddDomainWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDomainWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加SaaS型WAF防护域名

        # @param request: Request instance for AddSpartaProtection.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionResponse`
        def AddSpartaProtection(request)
          body = send_request('AddSpartaProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSpartaProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量操作tiga子规则

        # @param request: Request instance for BatchOperateUserSignatureRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::BatchOperateUserSignatureRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::BatchOperateUserSignatureRulesResponse`
        def BatchOperateUserSignatureRules(request)
          body = send_request('BatchOperateUserSignatureRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchOperateUserSignatureRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建访问日志导出

        # @param request: Request instance for CreateAccessExport.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateAccessExportRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateAccessExportResponse`
        def CreateAccessExport(request)
          body = send_request('CreateAccessExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加（编辑）地域封禁中的地域信息

        # @param request: Request instance for CreateAreaBanRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateAreaBanRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateAreaBanRuleResponse`
        def CreateAreaBanRule(request)
          body = send_request('CreateAreaBanRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAreaBanRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量IP黑白名单新增接口

        # @param request: Request instance for CreateBatchIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateBatchIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateBatchIpAccessControlResponse`
        def CreateBatchIpAccessControl(request)
          body = send_request('CreateBatchIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 计费资源购买、续费下单接口

        # @param request: Request instance for CreateDeals.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateDealsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateDealsResponse`
        def CreateDeals(request)
          body = send_request('CreateDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口仅创建下载任务，任务返回的下载地址，请用户调用DescribeExports查看任务列表。其中有下载地址CosPath参数。参考文档https://cloud.tencent.com/document/product/614/56449

        # @param request: Request instance for CreateExport.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateExportRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateExportResponse`
        def CreateExport(request)
          body = send_request('CreateExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # clb-waf中添加防护域名

        # @param request: Request instance for CreateHost.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateHostRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateHostResponse`
        def CreateHost(request)
          body = send_request('CreateHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf IP黑白名单新增接口

        # @param request: Request instance for CreateIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateIpAccessControlResponse`
        def CreateIpAccessControl(request)
          body = send_request('CreateIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加规则引擎白名单

        # @param request: Request instance for CreateOwaspWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateOwaspWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateOwaspWhiteRuleResponse`
        def CreateOwaspWhiteRule(request)
          body = send_request('CreateOwaspWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOwaspWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建CKafka投递流任务

        # @param request: Request instance for CreatePostCKafkaFlow.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreatePostCKafkaFlowRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreatePostCKafkaFlowResponse`
        def CreatePostCKafkaFlow(request)
          body = send_request('CreatePostCKafkaFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePostCKafkaFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建CLS投递流任务

        # @param request: Request instance for CreatePostCLSFlow.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreatePostCLSFlowRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreatePostCLSFlowResponse`
        def CreatePostCLSFlow(request)
          body = send_request('CreatePostCLSFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePostCLSFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建限流规则

        # @param request: Request instance for CreateRateLimitV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateRateLimitV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateRateLimitV2Response`
        def CreateRateLimitV2(request)
          body = send_request('CreateRateLimitV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRateLimitV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除访问日志导出

        # @param request: Request instance for DeleteAccessExport.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAccessExportRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAccessExportResponse`
        def DeleteAccessExport(request)
          body = send_request('DeleteAccessExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccessExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除防篡改url

        # @param request: Request instance for DeleteAntiFakeUrl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAntiFakeUrlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAntiFakeUrlResponse`
        def DeleteAntiFakeUrl(request)
          body = send_request('DeleteAntiFakeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAntiFakeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 信息防泄漏删除规则

        # @param request: Request instance for DeleteAntiInfoLeakRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAntiInfoLeakRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAntiInfoLeakRuleResponse`
        def DeleteAntiInfoLeakRule(request)
          body = send_request('DeleteAntiInfoLeakRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAntiInfoLeakRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除攻击日志下载任务记录

        # @param request: Request instance for DeleteAttackDownloadRecord.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAttackDownloadRecordRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAttackDownloadRecordResponse`
        def DeleteAttackDownloadRecord(request)
          body = send_request('DeleteAttackDownloadRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttackDownloadRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 供用户控制台调用，删除Tiga规则引擎白名单。

        # @param request: Request instance for DeleteAttackWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAttackWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAttackWhiteRuleResponse`
        def DeleteAttackWhiteRule(request)
          body = send_request('DeleteAttackWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttackWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量黑白名单删除接口

        # @param request: Request instance for DeleteBatchIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteBatchIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteBatchIpAccessControlResponse`
        def DeleteBatchIpAccessControl(request)
          body = send_request('DeleteBatchIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBatchIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 场景化后删除Bot的UCB自定义规则

        # @param request: Request instance for DeleteBotSceneUCBRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteBotSceneUCBRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteBotSceneUCBRuleResponse`
        def DeleteBotSceneUCBRule(request)
          body = send_request('DeleteBotSceneUCBRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBotSceneUCBRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf  CC V2 Delete接口

        # @param request: Request instance for DeleteCCRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteCCRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteCCRuleResponse`
        def DeleteCCRule(request)
          body = send_request('DeleteCCRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义规则

        # @param request: Request instance for DeleteCustomRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteCustomRuleResponse`
        def DeleteCustomRule(request)
          body = send_request('DeleteCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除精准白名单规则

        # @param request: Request instance for DeleteCustomWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteCustomWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteCustomWhiteRuleResponse`
        def DeleteCustomWhiteRule(request)
          body = send_request('DeleteCustomWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名规则白名单

        # @param request: Request instance for DeleteDomainWhiteRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteDomainWhiteRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteDomainWhiteRulesResponse`
        def DeleteDomainWhiteRules(request)
          body = send_request('DeleteDomainWhiteRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainWhiteRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除日志下载任务

        # @param request: Request instance for DeleteExport.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteExportRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteExportResponse`
        def DeleteExport(request)
          body = send_request('DeleteExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除负载均衡型域名，支持批量操作。

        # @param request: Request instance for DeleteHost.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteHostRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteHostResponse`
        def DeleteHost(request)
          body = send_request('DeleteHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf IP黑白名单Delete接口（建议使用DeleteIpAccessControlV2来替换当前接口）

        # @param request: Request instance for DeleteIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteIpAccessControlResponse`
        def DeleteIpAccessControl(request)
          body = send_request('DeleteIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf IP黑白名单最新版本删除接口

        # @param request: Request instance for DeleteIpAccessControlV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteIpAccessControlV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteIpAccessControlV2Response`
        def DeleteIpAccessControlV2(request)
          body = send_request('DeleteIpAccessControlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIpAccessControlV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除门神规则的状态锁

        # @param request: Request instance for DeleteOwaspRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteOwaspRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteOwaspRuleStatusResponse`
        def DeleteOwaspRuleStatus(request)
          body = send_request('DeleteOwaspRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOwaspRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户规则引擎白名单

        # @param request: Request instance for DeleteOwaspWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteOwaspWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteOwaspWhiteRuleResponse`
        def DeleteOwaspWhiteRule(request)
          body = send_request('DeleteOwaspWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOwaspWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自研版限流规则

        # @param request: Request instance for DeleteRateLimitsV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteRateLimitsV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteRateLimitsV2Response`
        def DeleteRateLimitsV2(request)
          body = send_request('DeleteRateLimitsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRateLimitsV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC攻击的session设置

        # @param request: Request instance for DeleteSession.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteSessionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteSessionResponse`
        def DeleteSession(request)
          body = send_request('DeleteSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SaaS型WAF删除防护域名

        # @param request: Request instance for DeleteSpartaProtection.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteSpartaProtectionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteSpartaProtectionResponse`
        def DeleteSpartaProtection(request)
          body = send_request('DeleteSpartaProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSpartaProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取访问日志导出列表

        # @param request: Request instance for DescribeAccessExports.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAccessExportsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAccessExportsResponse`
        def DescribeAccessExports(request)
          body = send_request('DescribeAccessExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于访问日志的快速分析

        # @param request: Request instance for DescribeAccessFastAnalysis.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAccessFastAnalysisRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAccessFastAnalysisResponse`
        def DescribeAccessFastAnalysis(request)
          body = send_request('DescribeAccessFastAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessFastAnalysisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于访问日志柱状趋势图

        # @param request: Request instance for DescribeAccessHistogram.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAccessHistogramRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAccessHistogramResponse`
        def DescribeAccessHistogram(request)
          body = send_request('DescribeAccessHistogram', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessHistogramResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取访问日志索引配置信息

        # @param request: Request instance for DescribeAccessIndex.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAccessIndexRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAccessIndexResponse`
        def DescribeAccessIndex(request)
          body = send_request('DescribeAccessIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防篡改url

        # @param request: Request instance for DescribeAntiFakeRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAntiFakeRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAntiFakeRulesResponse`
        def DescribeAntiFakeRules(request)
          body = send_request('DescribeAntiFakeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAntiFakeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取得信息防泄漏规则列表

        # @param request: Request instance for DescribeAntiInfoLeakageRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAntiInfoLeakageRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAntiInfoLeakageRulesResponse`
        def DescribeAntiInfoLeakageRules(request)
          body = send_request('DescribeAntiInfoLeakageRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAntiInfoLeakageRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Api安全模块的访问日志聚合topN

        # @param request: Request instance for DescribeApiAggregateTopN.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeApiAggregateTopNRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeApiAggregateTopNResponse`
        def DescribeApiAggregateTopN(request)
          body = send_request('DescribeApiAggregateTopN', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiAggregateTopNResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Api请求详情信息

        # @param request: Request instance for DescribeApiDetail.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeApiDetailRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeApiDetailResponse`
        def DescribeApiDetail(request)
          body = send_request('DescribeApiDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # api资产列表

        # @param request: Request instance for DescribeApiListVersionTwo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeApiListVersionTwoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeApiListVersionTwoResponse`
        def DescribeApiListVersionTwo(request)
          body = send_request('DescribeApiListVersionTwo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiListVersionTwoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取api安全敏感规则列表

        # @param request: Request instance for DescribeApiSecSensitiveRuleList.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeApiSecSensitiveRuleListRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeApiSecSensitiveRuleListResponse`
        def DescribeApiSecSensitiveRuleList(request)
          body = send_request('DescribeApiSecSensitiveRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiSecSensitiveRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取地域封禁配置包括地域封禁开关，设置封禁的地区信息

        # @param request: Request instance for DescribeAreaBanAreas.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanAreasRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanAreasResponse`
        def DescribeAreaBanAreas(request)
          body = send_request('DescribeAreaBanAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAreaBanAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取地域封禁规则配置

        # @param request: Request instance for DescribeAreaBanRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanRuleResponse`
        def DescribeAreaBanRule(request)
          body = send_request('DescribeAreaBanRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAreaBanRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取WAF地域封禁支持的地域列表

        # @param request: Request instance for DescribeAreaBanSupportAreas.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanSupportAreasRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAreaBanSupportAreasResponse`
        def DescribeAreaBanSupportAreas(request)
          body = send_request('DescribeAreaBanSupportAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAreaBanSupportAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 攻击总览

        # @param request: Request instance for DescribeAttackOverview.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAttackOverviewRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAttackOverviewResponse`
        def DescribeAttackOverview(request)
          body = send_request('DescribeAttackOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定域名TOP N攻击类型

        # @param request: Request instance for DescribeAttackType.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAttackTypeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAttackTypeResponse`
        def DescribeAttackType(request)
          body = send_request('DescribeAttackType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户规则白名单列表

        # @param request: Request instance for DescribeAttackWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAttackWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAttackWhiteRuleResponse`
        def DescribeAttackWhiteRule(request)
          body = send_request('DescribeAttackWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述WAF自动封禁IP详情,对齐自动封堵状态

        # @param request: Request instance for DescribeAutoDenyIP.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAutoDenyIPRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAutoDenyIPResponse`
        def DescribeAutoDenyIP(request)
          body = send_request('DescribeAutoDenyIP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoDenyIPResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf 批量防护IP黑白名单查询

        # @param request: Request instance for DescribeBatchIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeBatchIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeBatchIpAccessControlResponse`
        def DescribeBatchIpAccessControl(request)
          body = send_request('DescribeBatchIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取BotId规则列表1

        # @param request: Request instance for DescribeBotIdRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeBotIdRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeBotIdRuleResponse`
        def DescribeBotIdRule(request)
          body = send_request('DescribeBotIdRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotIdRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取BOT场景列表与概览

        # @param request: Request instance for DescribeBotSceneList.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneListRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneListResponse`
        def DescribeBotSceneList(request)
          body = send_request('DescribeBotSceneList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotSceneListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Bot场景全局概览

        # @param request: Request instance for DescribeBotSceneOverview.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneOverviewRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneOverviewResponse`
        def DescribeBotSceneOverview(request)
          body = send_request('DescribeBotSceneOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotSceneOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 场景化后Bot获取UCB自定义规则策略

        # @param request: Request instance for DescribeBotSceneUCBRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneUCBRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeBotSceneUCBRuleResponse`
        def DescribeBotSceneUCBRule(request)
          body = send_request('DescribeBotSceneUCBRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBotSceneUCBRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取SAAS型接入的紧急CC防护状态

        # @param request: Request instance for DescribeCCAutoStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCCAutoStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCCAutoStatusResponse`
        def DescribeCCAutoStatus(request)
          body = send_request('DescribeCCAutoStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCAutoStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf  CC V2 Query接口

        # @param request: Request instance for DescribeCCRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCCRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCCRuleResponse`
        def DescribeCCRule(request)
          body = send_request('DescribeCCRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据多条件查询CC规则

        # @param request: Request instance for DescribeCCRuleList.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCCRuleListRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCCRuleListResponse`
        def DescribeCCRuleList(request)
          body = send_request('DescribeCCRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取证书的检查结果

        # @param request: Request instance for DescribeCertificateVerifyResult.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCertificateVerifyResultRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCertificateVerifyResultResponse`
        def DescribeCertificateVerifyResult(request)
          body = send_request('DescribeCertificateVerifyResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateVerifyResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Saas型WAF接入查询加密套件信息

        # @param request: Request instance for DescribeCiphersDetail.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCiphersDetailRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCiphersDetailResponse`
        def DescribeCiphersDetail(request)
          body = send_request('DescribeCiphersDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCiphersDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护配置中的访问控制策略列表

        # @param request: Request instance for DescribeCustomRuleList.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCustomRuleListRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCustomRuleListResponse`
        def DescribeCustomRuleList(request)
          body = send_request('DescribeCustomRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护配置中的精准白名单策略列表

        # @param request: Request instance for DescribeCustomWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCustomWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCustomWhiteRuleResponse`
        def DescribeCustomWhiteRule(request)
          body = send_request('DescribeCustomWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名概况

        # @param request: Request instance for DescribeDomainCountInfo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainCountInfoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainCountInfoResponse`
        def DescribeDomainCountInfo(request)
          body = send_request('DescribeDomainCountInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainCountInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取一个clbwaf域名详情

        # @param request: Request instance for DescribeDomainDetailsClb.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainDetailsClbRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainDetailsClbResponse`
        def DescribeDomainDetailsClb(request)
          body = send_request('DescribeDomainDetailsClb', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainDetailsClbResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个saaswaf域名详情

        # @param request: Request instance for DescribeDomainDetailsSaas.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainDetailsSaasRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainDetailsSaasResponse`
        def DescribeDomainDetailsSaas(request)
          body = send_request('DescribeDomainDetailsSaas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainDetailsSaasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取域名的防护规则列表

        # @param request: Request instance for DescribeDomainRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainRulesResponse`
        def DescribeDomainRules(request)
          body = send_request('DescribeDomainRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取添加域名操作的结果

        # @param request: Request instance for DescribeDomainVerifyResult.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainVerifyResultRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainVerifyResultResponse`
        def DescribeDomainVerifyResult(request)
          body = send_request('DescribeDomainVerifyResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainVerifyResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名的规则白名单

        # @param request: Request instance for DescribeDomainWhiteRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainWhiteRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainWhiteRulesResponse`
        def DescribeDomainWhiteRules(request)
          body = send_request('DescribeDomainWhiteRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainWhiteRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户所有域名的详细信息

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeDomainsResponse`
        def DescribeDomains(request)
          body = send_request('DescribeDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取日志下载任务列表

        # @param request: Request instance for DescribeExports.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeExportsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeExportsResponse`
        def DescribeExports(request)
          body = send_request('DescribeExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取发现域名列表接口

        # @param request: Request instance for DescribeFindDomainList.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeFindDomainListRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeFindDomainListResponse`
        def DescribeFindDomainList(request)
          body = send_request('DescribeFindDomainList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFindDomainListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取waf流量访问趋势

        # @param request: Request instance for DescribeFlowTrend.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeFlowTrendRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeFlowTrendResponse`
        def DescribeFlowTrend(request)
          body = send_request('DescribeFlowTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询多种条件的聚类分析

        # @param request: Request instance for DescribeHistogram.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeHistogramRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeHistogramResponse`
        def DescribeHistogram(request)
          body = send_request('DescribeHistogram', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistogramResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # clb-waf获取防护域名详情

        # @param request: Request instance for DescribeHost.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeHostRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeHostResponse`
        def DescribeHost(request)
          body = send_request('DescribeHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加域名的首先验证是否购买了套餐，是否没有达到购买套餐的限制，域名是否已经添加

        # @param request: Request instance for DescribeHostLimit.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeHostLimitRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeHostLimitResponse`
        def DescribeHostLimit(request)
          body = send_request('DescribeHostLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # clb-waf中获取防护域名列表

        # @param request: Request instance for DescribeHosts.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeHostsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeHostsResponse`
        def DescribeHosts(request)
          body = send_request('DescribeHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户所有实例的详细信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeInstancesResponse`
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

        # Waf ip黑白名单查询

        # @param request: Request instance for DescribeIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeIpAccessControlResponse`
        def DescribeIpAccessControl(request)
          body = send_request('DescribeIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf  IP封堵状态查询

        # @param request: Request instance for DescribeIpHitItems.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeIpHitItemsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeIpHitItemsResponse`
        def DescribeIpHitItems(request)
          body = send_request('DescribeIpHitItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpHitItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于构建日志数量直方图

        # @param request: Request instance for DescribeLogHistogram.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeLogHistogramRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeLogHistogramResponse`
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

        # 查询各个waf基础安全模块的开关状态，看每个模块是否开启

        # @param request: Request instance for DescribeModuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeModuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeModuleStatusResponse`
        def DescribeModuleStatus(request)
          body = send_request('DescribeModuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看防护对象列表

        # @param request: Request instance for DescribeObjects.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeObjectsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeObjectsResponse`
        def DescribeObjects(request)
          body = send_request('DescribeObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则引擎的规则类型列表

        # @param request: Request instance for DescribeOwaspRuleTypes.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeOwaspRuleTypesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeOwaspRuleTypesResponse`
        def DescribeOwaspRuleTypes(request)
          body = send_request('DescribeOwaspRuleTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOwaspRuleTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则引擎的规则列表

        # @param request: Request instance for DescribeOwaspRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeOwaspRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeOwaspRulesResponse`
        def DescribeOwaspRules(request)
          body = send_request('DescribeOwaspRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOwaspRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取规则引擎白名单列表

        # @param request: Request instance for DescribeOwaspWhiteRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeOwaspWhiteRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeOwaspWhiteRulesResponse`
        def DescribeOwaspWhiteRules(request)
          body = send_request('DescribeOwaspWhiteRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOwaspWhiteRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询业务和攻击概要趋势

        # @param request: Request instance for DescribePeakPoints.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePeakPointsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePeakPointsResponse`
        def DescribePeakPoints(request)
          body = send_request('DescribePeakPoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakPointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取业务和攻击概览峰值

        # @param request: Request instance for DescribePeakValue.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePeakValueRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePeakValueResponse`
        def DescribePeakValue(request)
          body = send_request('DescribePeakValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护状态以及生效的实例id

        # @param request: Request instance for DescribePolicyStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePolicyStatusResponse`
        def DescribePolicyStatus(request)
          body = send_request('DescribePolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Saas型WAF防护端口列表

        # @param request: Request instance for DescribePorts.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePortsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePortsResponse`
        def DescribePorts(request)
          body = send_request('DescribePorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CKafka投递流任务列表

        # @param request: Request instance for DescribePostCKafkaFlows.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePostCKafkaFlowsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePostCKafkaFlowsResponse`
        def DescribePostCKafkaFlows(request)
          body = send_request('DescribePostCKafkaFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostCKafkaFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CLS投递流任务列表

        # @param request: Request instance for DescribePostCLSFlows.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribePostCLSFlowsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribePostCLSFlowsResponse`
        def DescribePostCLSFlows(request)
          body = send_request('DescribePostCLSFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostCLSFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Tiga引擎大类规则及其防护模式

        # @param request: Request instance for DescribeProtectionModes.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeProtectionModesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeProtectionModesResponse`
        def DescribeProtectionModes(request)
          body = send_request('DescribeProtectionModes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectionModesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询限流规则列表接口

        # @param request: Request instance for DescribeRateLimitsV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeRateLimitsV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeRateLimitsV2Response`
        def DescribeRateLimitsV2(request)
          body = send_request('DescribeRateLimitsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRateLimitsV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取各个模块具体的规格限制

        # @param request: Request instance for DescribeRuleLimit.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeRuleLimitRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeRuleLimitResponse`
        def DescribeRuleLimit(request)
          body = send_request('DescribeRuleLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询扫描ip

        # @param request: Request instance for DescribeScanIp.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeScanIpRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeScanIpResponse`
        def DescribeScanIp(request)
          body = send_request('DescribeScanIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf 会话定义查询接口

        # @param request: Request instance for DescribeSession.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeSessionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeSessionResponse`
        def DescribeSession(request)
          body = send_request('DescribeSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # waf斯巴达-获取防护域名信息

        # @param request: Request instance for DescribeSpartaProtectionInfo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeSpartaProtectionInfoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeSpartaProtectionInfoResponse`
        def DescribeSpartaProtectionInfo(request)
          body = send_request('DescribeSpartaProtectionInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpartaProtectionInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询SaaS型WAF支持的TLS版本

        # @param request: Request instance for DescribeTlsVersion.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeTlsVersionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeTlsVersionResponse`
        def DescribeTlsVersion(request)
          body = send_request('DescribeTlsVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTlsVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Top5的攻击域名

        # @param request: Request instance for DescribeTopAttackDomain.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeTopAttackDomainRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeTopAttackDomainResponse`
        def DescribeTopAttackDomain(request)
          body = send_request('DescribeTopAttackDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopAttackDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取日志主题列表，支持分页

        # @param request: Request instance for DescribeTopics.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeTopicsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeTopicsResponse`
        def DescribeTopics(request)
          body = send_request('DescribeTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在CDC场景下，负载均衡型WAF的添加、编辑域名配置的时候，需要展示CDC负载均衡型WAF（cdc-clb-waf)支持的地域列表，通过DescribeUserCdcClbWafRegions既可以获得当前对客户已经开放的地域列表

        # @param request: Request instance for DescribeUserCdcClbWafRegions.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserCdcClbWafRegionsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserCdcClbWafRegionsResponse`
        def DescribeUserCdcClbWafRegions(request)
          body = send_request('DescribeUserCdcClbWafRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserCdcClbWafRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表

        # @param request: Request instance for DescribeUserClbWafRegions.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserClbWafRegionsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserClbWafRegionsResponse`
        def DescribeUserClbWafRegions(request)
          body = send_request('DescribeUserClbWafRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserClbWafRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询saas和clb的域名信息

        # @param request: Request instance for DescribeUserDomainInfo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserDomainInfoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserDomainInfoResponse`
        def DescribeUserDomainInfo(request)
          body = send_request('DescribeUserDomainInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDomainInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户防护规则等级

        # @param request: Request instance for DescribeUserLevel.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserLevelRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserLevelResponse`
        def DescribeUserLevel(request)
          body = send_request('DescribeUserLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Tiga引擎规则类型及状态

        # @param request: Request instance for DescribeUserSignatureClass.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureClassRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureClassResponse`
        def DescribeUserSignatureClass(request)
          body = send_request('DescribeUserSignatureClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserSignatureClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户特征规则列表

        # @param request: Request instance for DescribeUserSignatureRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureRuleResponse`
        def DescribeUserSignatureRule(request)
          body = send_request('DescribeUserSignatureRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserSignatureRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户特征规则列表

        # @param request: Request instance for DescribeUserSignatureRuleV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureRuleV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserSignatureRuleV2Response`
        def DescribeUserSignatureRuleV2(request)
          body = send_request('DescribeUserSignatureRuleV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserSignatureRuleV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据过滤条件查询VIP信息

        # @param request: Request instance for DescribeVipInfo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeVipInfoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeVipInfoResponse`
        def DescribeVipInfo(request)
          body = send_request('DescribeVipInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVipInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回ip惩罚规则详细信息

        # @param request: Request instance for DescribeWafAutoDenyRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeWafAutoDenyRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeWafAutoDenyRulesResponse`
        def DescribeWafAutoDenyRules(request)
          body = send_request('DescribeWafAutoDenyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafAutoDenyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 废弃接口

        # 描述WAF自动封禁模块详情

        # @param request: Request instance for DescribeWafAutoDenyStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeWafAutoDenyStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeWafAutoDenyStatusResponse`
        def DescribeWafAutoDenyStatus(request)
          body = send_request('DescribeWafAutoDenyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafAutoDenyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述WAF威胁情报封禁模块配置详情

        # @param request: Request instance for DescribeWafThreatenIntelligence.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeWafThreatenIntelligenceRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeWafThreatenIntelligenceResponse`
        def DescribeWafThreatenIntelligence(request)
          body = send_request('DescribeWafThreatenIntelligence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafThreatenIntelligenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名的webshell状态

        # @param request: Request instance for DescribeWebshellStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeWebshellStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeWebshellStatusResponse`
        def DescribeWebshellStatus(request)
          body = send_request('DescribeWebshellStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebshellStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁CKafka投递流任务

        # @param request: Request instance for DestroyPostCKafkaFlow.
        # @type request: :class:`Tencentcloud::waf::V20180125::DestroyPostCKafkaFlowRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DestroyPostCKafkaFlowResponse`
        def DestroyPostCKafkaFlow(request)
          body = send_request('DestroyPostCKafkaFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPostCKafkaFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁CLS投递流任务

        # @param request: Request instance for DestroyPostCLSFlow.
        # @type request: :class:`Tencentcloud::waf::V20180125::DestroyPostCLSFlowRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DestroyPostCLSFlowResponse`
        def DestroyPostCLSFlow(request)
          body = send_request('DestroyPostCLSFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPostCLSFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量更改自研版限流规则开关

        # @param request: Request instance for EnableRateLimitsV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::EnableRateLimitsV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::EnableRateLimitsV2Response`
        def EnableRateLimitsV2(request)
          body = send_request('EnableRateLimitsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableRateLimitsV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 刷新防篡改url

        # @param request: Request instance for FreshAntiFakeUrl.
        # @type request: :class:`Tencentcloud::waf::V20180125::FreshAntiFakeUrlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::FreshAntiFakeUrlResponse`
        def FreshAntiFakeUrl(request)
          body = send_request('FreshAntiFakeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreshAntiFakeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 计费资源购买、续费下单接口

        # @param request: Request instance for GenerateDealsAndPayNew.
        # @type request: :class:`Tencentcloud::waf::V20180125::GenerateDealsAndPayNewRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GenerateDealsAndPayNewResponse`
        def GenerateDealsAndPayNew(request)
          body = send_request('GenerateDealsAndPayNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateDealsAndPayNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询下载攻击日志任务记录列表

        # @param request: Request instance for GetAttackDownloadRecords.
        # @type request: :class:`Tencentcloud::waf::V20180125::GetAttackDownloadRecordsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GetAttackDownloadRecordsResponse`
        def GetAttackDownloadRecords(request)
          body = send_request('GetAttackDownloadRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAttackDownloadRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成攻击日志的产生时间柱状图

        # @param request: Request instance for GetAttackHistogram.
        # @type request: :class:`Tencentcloud::waf::V20180125::GetAttackHistogramRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GetAttackHistogramResponse`
        def GetAttackHistogram(request)
          body = send_request('GetAttackHistogram', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAttackHistogramResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照条件查询展示攻击总次数

        # @param request: Request instance for GetAttackTotalCount.
        # @type request: :class:`Tencentcloud::waf::V20180125::GetAttackTotalCountRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GetAttackTotalCountResponse`
        def GetAttackTotalCount(request)
          body = send_request('GetAttackTotalCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAttackTotalCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取套餐实例的弹性qps上限

        # @param request: Request instance for GetInstanceQpsLimit.
        # @type request: :class:`Tencentcloud::waf::V20180125::GetInstanceQpsLimitRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GetInstanceQpsLimitResponse`
        def GetInstanceQpsLimit(request)
          body = send_request('GetInstanceQpsLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInstanceQpsLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团账号角色

        # @param request: Request instance for GetOrganizationRole.
        # @type request: :class:`Tencentcloud::waf::V20180125::GetOrganizationRoleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::GetOrganizationRoleResponse`
        def GetOrganizationRole(request)
          body = send_request('GetOrganizationRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOrganizationRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入IP黑白名单

        # @param request: Request instance for ImportIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::ImportIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ImportIpAccessControlResponse`
        def ImportIpAccessControl(request)
          body = send_request('ImportIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑防篡改url

        # @param request: Request instance for ModifyAntiFakeUrl.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAntiFakeUrlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAntiFakeUrlResponse`
        def ModifyAntiFakeUrl(request)
          body = send_request('ModifyAntiFakeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAntiFakeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换防篡改开关

        # @param request: Request instance for ModifyAntiFakeUrlStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAntiFakeUrlStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAntiFakeUrlStatusResponse`
        def ModifyAntiFakeUrlStatus(request)
          body = send_request('ModifyAntiFakeUrlStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAntiFakeUrlStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 信息防泄漏切换规则开关

        # @param request: Request instance for ModifyAntiInfoLeakRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAntiInfoLeakRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAntiInfoLeakRuleStatusResponse`
        def ModifyAntiInfoLeakRuleStatus(request)
          body = send_request('ModifyAntiInfoLeakRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAntiInfoLeakRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑信息防泄漏规则

        # @param request: Request instance for ModifyAntiInfoLeakRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAntiInfoLeakRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAntiInfoLeakRulesResponse`
        def ModifyAntiInfoLeakRules(request)
          body = send_request('ModifyAntiInfoLeakRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAntiInfoLeakRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # api分析页面开关

        # @param request: Request instance for ModifyApiAnalyzeStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyApiAnalyzeStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyApiAnalyzeStatusResponse`
        def ModifyApiAnalyzeStatus(request)
          body = send_request('ModifyApiAnalyzeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiAnalyzeStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # api安全状态变更接口

        # @param request: Request instance for ModifyApiSecEventChange.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyApiSecEventChangeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyApiSecEventChangeResponse`
        def ModifyApiSecEventChange(request)
          body = send_request('ModifyApiSecEventChange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiSecEventChangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改api安全敏感检测规则

        # @param request: Request instance for ModifyApiSecSensitiveRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyApiSecSensitiveRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyApiSecSensitiveRuleResponse`
        def ModifyApiSecSensitiveRule(request)
          body = send_request('ModifyApiSecSensitiveRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiSecSensitiveRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改地域封禁中的地域信息

        # @param request: Request instance for ModifyAreaBanAreas.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanAreasRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanAreasResponse`
        def ModifyAreaBanAreas(request)
          body = send_request('ModifyAreaBanAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAreaBanAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加（编辑）地域封禁中的地域信息

        # @param request: Request instance for ModifyAreaBanRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanRuleResponse`
        def ModifyAreaBanRule(request)
          body = send_request('ModifyAreaBanRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAreaBanRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改防护域名的地域封禁状态

        # @param request: Request instance for ModifyAreaBanStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAreaBanStatusResponse`
        def ModifyAreaBanStatus(request)
          body = send_request('ModifyAreaBanStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAreaBanStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 供用户控制台调用，修改Tiga规则引擎白名单。

        # @param request: Request instance for ModifyAttackWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAttackWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAttackWhiteRuleResponse`
        def ModifyAttackWhiteRule(request)
          body = send_request('ModifyAttackWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAttackWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量IP黑白名单新增接口

        # @param request: Request instance for ModifyBatchIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyBatchIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyBatchIpAccessControlResponse`
        def ModifyBatchIpAccessControl(request)
          body = send_request('ModifyBatchIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBatchIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Bot-ID规则配置1

        # @param request: Request instance for ModifyBotIdRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyBotIdRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyBotIdRuleResponse`
        def ModifyBotIdRule(request)
          body = send_request('ModifyBotIdRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBotIdRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # bot子场景开关

        # @param request: Request instance for ModifyBotSceneStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyBotSceneStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyBotSceneStatusResponse`
        def ModifyBotSceneStatus(request)
          body = send_request('ModifyBotSceneStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBotSceneStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 【接口复用】场景化后更新Bot的UCB自定义规则，两个调用位置：1.BOT全局白名单 2.BOT场景配置

        # @param request: Request instance for ModifyBotSceneUCBRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyBotSceneUCBRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyBotSceneUCBRuleResponse`
        def ModifyBotSceneUCBRule(request)
          body = send_request('ModifyBotSceneUCBRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBotSceneUCBRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Bot_V2 bot总开关更新

        # @param request: Request instance for ModifyBotStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyBotStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyBotStatusResponse`
        def ModifyBotStatus(request)
          body = send_request('ModifyBotStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBotStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑自定义规则

        # @param request: Request instance for ModifyCustomRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleResponse`
        def ModifyCustomRule(request)
          body = send_request('ModifyCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或禁用访问控制（自定义策略）

        # @param request: Request instance for ModifyCustomRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleStatusResponse`
        def ModifyCustomRuleStatus(request)
          body = send_request('ModifyCustomRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑精准白名单

        # @param request: Request instance for ModifyCustomWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyCustomWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyCustomWhiteRuleResponse`
        def ModifyCustomWhiteRule(request)
          body = send_request('ModifyCustomWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或禁用精准白名单

        # @param request: Request instance for ModifyCustomWhiteRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyCustomWhiteRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyCustomWhiteRuleStatusResponse`
        def ModifyCustomWhiteRuleStatus(request)
          body = send_request('ModifyCustomWhiteRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomWhiteRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换ipv6开关

        # @param request: Request instance for ModifyDomainIpv6Status.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyDomainIpv6StatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyDomainIpv6StatusResponse`
        def ModifyDomainIpv6Status(request)
          body = send_request('ModifyDomainIpv6Status', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainIpv6StatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名投递状态

        # @param request: Request instance for ModifyDomainPostAction.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyDomainPostActionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyDomainPostActionResponse`
        def ModifyDomainPostAction(request)
          body = send_request('ModifyDomainPostAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainPostActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名规则白名单

        # @param request: Request instance for ModifyDomainWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyDomainWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyDomainWhiteRuleResponse`
        def ModifyDomainWhiteRule(request)
          body = send_request('ModifyDomainWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名列表的访问日志开关

        # @param request: Request instance for ModifyDomainsCLSStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyDomainsCLSStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyDomainsCLSStatusResponse`
        def ModifyDomainsCLSStatus(request)
          body = send_request('ModifyDomainsCLSStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainsCLSStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供给clb等使用的waf实例下单接口，目前只支持clb旗舰版实例的下单，该接口会进行入参校验，然后调用是否为收购用户，然后调用计费接口下单。目前只支持预付费下单

        # @param request: Request instance for ModifyGenerateDeals.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyGenerateDealsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyGenerateDealsResponse`
        def ModifyGenerateDeals(request)
          body = send_request('ModifyGenerateDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGenerateDealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑负载均衡型WAF防护域名配置

        # @param request: Request instance for ModifyHost.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyHostRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyHostResponse`
        def ModifyHost(request)
          body = send_request('ModifyHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置负载均衡型WAF防护域名的流量模式，切换镜像模式和清洗模式

        # @param request: Request instance for ModifyHostFlowMode.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyHostFlowModeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyHostFlowModeResponse`
        def ModifyHostFlowMode(request)
          body = send_request('ModifyHostFlowMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostFlowModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # clb-waf设置防护域名防护状态

        # @param request: Request instance for ModifyHostMode.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyHostModeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyHostModeResponse`
        def ModifyHostMode(request)
          body = send_request('ModifyHostMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # clb-waf 设置防护域名WAF开关
        # 支持批量操作。

        # @param request: Request instance for ModifyHostStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyHostStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyHostStatusResponse`
        def ModifyHostStatus(request)
          body = send_request('ModifyHostStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例攻击日志投递开关，企业版及以上版本可以开通，否则返回错误

        # @param request: Request instance for ModifyInstanceAttackLogPost.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyInstanceAttackLogPostRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyInstanceAttackLogPostResponse`
        def ModifyInstanceAttackLogPost(request)
          body = send_request('ModifyInstanceAttackLogPost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceAttackLogPostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的QPS弹性计费开关

        # @param request: Request instance for ModifyInstanceElasticMode.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyInstanceElasticModeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyInstanceElasticModeResponse`
        def ModifyInstanceElasticMode(request)
          body = send_request('ModifyInstanceElasticMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceElasticModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的名称

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyInstanceNameResponse`
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

        # 设置套餐实例的弹性qps上限

        # @param request: Request instance for ModifyInstanceQpsLimit.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyInstanceQpsLimitRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyInstanceQpsLimitResponse`
        def ModifyInstanceQpsLimit(request)
          body = send_request('ModifyInstanceQpsLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceQpsLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的自动续费开关

        # @param request: Request instance for ModifyInstanceRenewFlag.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyInstanceRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyInstanceRenewFlagResponse`
        def ModifyInstanceRenewFlag(request)
          body = send_request('ModifyInstanceRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf IP黑白名单编辑接口

        # @param request: Request instance for ModifyIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyIpAccessControlResponse`
        def ModifyIpAccessControl(request)
          body = send_request('ModifyIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置某个domain下基础安全模块的开关

        # @param request: Request instance for ModifyModuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyModuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyModuleStatusResponse`
        def ModifyModuleStatus(request)
          body = send_request('ModifyModuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改防护对象

        # @param request: Request instance for ModifyObject.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyObjectRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyObjectResponse`
        def ModifyObject(request)
          body = send_request('ModifyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyObjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改防护对象

        # @param request: Request instance for ModifyObjects.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyObjectsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyObjectsResponse`
        def ModifyObjects(request)
          body = send_request('ModifyObjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyObjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则的开关

        # @param request: Request instance for ModifyOwaspRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleStatusResponse`
        def ModifyOwaspRuleStatus(request)
          body = send_request('ModifyOwaspRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwaspRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则类型的防护模式

        # @param request: Request instance for ModifyOwaspRuleTypeAction.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeActionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeActionResponse`
        def ModifyOwaspRuleTypeAction(request)
          body = send_request('ModifyOwaspRuleTypeAction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwaspRuleTypeActionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则类型的防护等级

        # @param request: Request instance for ModifyOwaspRuleTypeLevel.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeLevelRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeLevelResponse`
        def ModifyOwaspRuleTypeLevel(request)
          body = send_request('ModifyOwaspRuleTypeLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwaspRuleTypeLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新规则类型的开关

        # @param request: Request instance for ModifyOwaspRuleTypeStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyOwaspRuleTypeStatusResponse`
        def ModifyOwaspRuleTypeStatus(request)
          body = send_request('ModifyOwaspRuleTypeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwaspRuleTypeStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑规则引擎白名单

        # @param request: Request instance for ModifyOwaspWhiteRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyOwaspWhiteRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyOwaspWhiteRuleResponse`
        def ModifyOwaspWhiteRule(request)
          body = send_request('ModifyOwaspWhiteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwaspWhiteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改防护等级

        # @param request: Request instance for ModifyProtectionLevel.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyProtectionLevelRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyProtectionLevelResponse`
        def ModifyProtectionLevel(request)
          body = send_request('ModifyProtectionLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectionLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启、关闭WAF开关

        # @param request: Request instance for ModifyProtectionStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyProtectionStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyProtectionStatusResponse`
        def ModifyProtectionStatus(request)
          body = send_request('ModifyProtectionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProtectionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑SaaS型WAF域名配置

        # @param request: Request instance for ModifySpartaProtection.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifySpartaProtectionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifySpartaProtectionResponse`
        def ModifySpartaProtection(request)
          body = send_request('ModifySpartaProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySpartaProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置waf防护状态

        # @param request: Request instance for ModifySpartaProtectionMode.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifySpartaProtectionModeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifySpartaProtectionModeResponse`
        def ModifySpartaProtectionMode(request)
          body = send_request('ModifySpartaProtectionMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySpartaProtectionModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户防护规则等级

        # @param request: Request instance for ModifyUserLevel.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyUserLevelRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyUserLevelResponse`
        def ModifyUserLevel(request)
          body = send_request('ModifyUserLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换Tiga引擎规则类型的生效开关

        # @param request: Request instance for ModifyUserSignatureClass.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureClassRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureClassResponse`
        def ModifyUserSignatureClass(request)
          body = send_request('ModifyUserSignatureClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserSignatureClassResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户防护规则，开启关闭具体的某条规则

        # @param request: Request instance for ModifyUserSignatureRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureRuleResponse`
        def ModifyUserSignatureRule(request)
          body = send_request('ModifyUserSignatureRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserSignatureRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户防护规则，开启关闭具体的某条规则

        # @param request: Request instance for ModifyUserSignatureRuleV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureRuleV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyUserSignatureRuleV2Response`
        def ModifyUserSignatureRuleV2(request)
          body = send_request('ModifyUserSignatureRuleV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserSignatureRuleV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改ip惩罚规则

        # @param request: Request instance for ModifyWafAutoDenyRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyWafAutoDenyRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyWafAutoDenyRulesResponse`
        def ModifyWafAutoDenyRules(request)
          body = send_request('ModifyWafAutoDenyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWafAutoDenyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置WAF威胁情报封禁模块详情

        # @param request: Request instance for ModifyWafThreatenIntelligence.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyWafThreatenIntelligenceRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyWafThreatenIntelligenceResponse`
        def ModifyWafThreatenIntelligence(request)
          body = send_request('ModifyWafThreatenIntelligence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWafThreatenIntelligenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置域名的webshell状态。

        # @param request: Request instance for ModifyWebshellStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyWebshellStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyWebshellStatusResponse`
        def ModifyWebshellStatus(request)
          body = send_request('ModifyWebshellStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebshellStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建搜索下载攻击日志任务，使用CLS新版本的搜索下载getlog接口

        # @param request: Request instance for PostAttackDownloadTask.
        # @type request: :class:`Tencentcloud::waf::V20180125::PostAttackDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::PostAttackDownloadTaskResponse`
        def PostAttackDownloadTask(request)
          body = send_request('PostAttackDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PostAttackDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询该用户是否被加入了全局的bypass列表

        # @param request: Request instance for QueryBypassAllStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::QueryBypassAllStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::QueryBypassAllStatusResponse`
        def QueryBypassAllStatus(request)
          body = send_request('QueryBypassAllStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBypassAllStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 刷新接入检查的结果，后台会生成接入检查任务

        # @param request: Request instance for RefreshAccessCheckResult.
        # @type request: :class:`Tencentcloud::waf::V20180125::RefreshAccessCheckResultRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::RefreshAccessCheckResultResponse`
        def RefreshAccessCheckResult(request)
          body = send_request('RefreshAccessCheckResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshAccessCheckResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除一键bypass规则

        # @param request: Request instance for RemoveBypassAllRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::RemoveBypassAllRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::RemoveBypassAllRuleResponse`
        def RemoveBypassAllRule(request)
          body = send_request('RemoveBypassAllRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveBypassAllRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于搜索WAF访问日志

        # @param request: Request instance for SearchAccessLog.
        # @type request: :class:`Tencentcloud::waf::V20180125::SearchAccessLogRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::SearchAccessLogResponse`
        def SearchAccessLog(request)
          body = send_request('SearchAccessLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchAccessLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新版本CLS接口存在参数变化，query改成了query_string支持lucence语法接口搜索查询。

        # @param request: Request instance for SearchAttackLog.
        # @type request: :class:`Tencentcloud::waf::V20180125::SearchAttackLogRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::SearchAttackLogResponse`
        def SearchAttackLog(request)
          body = send_request('SearchAttackLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchAttackLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于检索分析日志，使用该接口时请注意如下事项：
        # 1. 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
        # 2. 检索语法建议使用CQL语法规则，请使用SyntaxRule参数，将值设置为1。
        # 3. API返回数据包最大49MB，建议启用 gzip 压缩（HTTP Request Header Accept-Encoding:gzip）。

        # @param request: Request instance for SearchLog.
        # @type request: :class:`Tencentcloud::waf::V20180125::SearchLogRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::SearchLogResponse`
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

        # 切换域名的规则开关

        # @param request: Request instance for SwitchDomainRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::SwitchDomainRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::SwitchDomainRulesResponse`
        def SwitchDomainRules(request)
          body = send_request('SwitchDomainRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchDomainRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换弹性的开关

        # @param request: Request instance for SwitchElasticMode.
        # @type request: :class:`Tencentcloud::waf::V20180125::SwitchElasticModeRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::SwitchElasticModeResponse`
        def SwitchElasticMode(request)
          body = send_request('SwitchElasticMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchElasticModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新Tiga引擎下大类规则的防护模式

        # @param request: Request instance for UpdateProtectionModes.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpdateProtectionModesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpdateProtectionModesResponse`
        def UpdateProtectionModes(request)
          body = send_request('UpdateProtectionModes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProtectionModesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新自研版限流规则

        # @param request: Request instance for UpdateRateLimitV2.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpdateRateLimitV2Request`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpdateRateLimitV2Response`
        def UpdateRateLimitV2(request)
          body = send_request('UpdateRateLimitV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRateLimitV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑SAAS型接入的紧急CC防护状态

        # @param request: Request instance for UpsertCCAutoStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpsertCCAutoStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpsertCCAutoStatusResponse`
        def UpsertCCAutoStatus(request)
          body = send_request('UpsertCCAutoStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpsertCCAutoStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf  CC V2 Upsert接口

        # @param request: Request instance for UpsertCCRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpsertCCRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpsertCCRuleResponse`
        def UpsertCCRule(request)
          body = send_request('UpsertCCRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpsertCCRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf IP黑白名单Upsert接口（建议使用CreateIpAccessControl、ModifyIpAccessControl来替换当前接口）

        # @param request: Request instance for UpsertIpAccessControl.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpsertIpAccessControlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpsertIpAccessControlResponse`
        def UpsertIpAccessControl(request)
          body = send_request('UpsertIpAccessControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpsertIpAccessControlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf  会话定义 Upsert接口

        # @param request: Request instance for UpsertSession.
        # @type request: :class:`Tencentcloud::waf::V20180125::UpsertSessionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::UpsertSessionResponse`
        def UpsertSession(request)
          body = send_request('UpsertSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpsertSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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