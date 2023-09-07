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

        # 添加Spart防护域名

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

        # 一键接入

        # @param request: Request instance for AddSpartaProtectionAuto.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionAutoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionAutoResponse`
        def AddSpartaProtectionAuto(request)
          body = send_request('AddSpartaProtectionAuto', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSpartaProtectionAutoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加域名

        # @param request: Request instance for AddSpartaProtectionsAuto.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionsAutoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddSpartaProtectionsAutoResponse`
        def AddSpartaProtectionsAuto(request)
          body = send_request('AddSpartaProtectionsAuto', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSpartaProtectionsAutoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # clb-waf中添加防护的域名

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

        # 删除访问日志下载记录

        # @param request: Request instance for DeleteDownloadRecord.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteDownloadRecordRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteDownloadRecordResponse`
        def DeleteDownloadRecord(request)
          body = send_request('DeleteDownloadRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDownloadRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CLB-WAF防护域名
        # 支持批量操作

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

        # Waf IP黑白名单Delete接口

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

        # waf斯巴达-删除防护域名

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

        # 获取防篡改url

        # @param request: Request instance for DescribeAntiFakeUrl.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAntiFakeUrlRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAntiFakeUrlResponse`
        def DescribeAntiFakeUrl(request)
          body = send_request('DescribeAntiFakeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAntiFakeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 老接口已经不再使用。

        # 获取信息防泄漏规则列表

        # @param request: Request instance for DescribeAntiInfoLeakRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeAntiInfoLeakRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeAntiInfoLeakRulesResponse`
        def DescribeAntiInfoLeakRules(request)
          body = send_request('DescribeAntiInfoLeakRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAntiInfoLeakRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 接口已废弃

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

        # Waf 多域名ip黑白名单查询

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

        # 查询加密套件信息

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

        # 获取一个clb域名详情

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

        # 查询单个saas域名详情

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

        # 查询用户TLS版本

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

        # 获取负载均衡绑定的WAF信息，可以根据租户负载均衡实例ID、负载均衡监听器ID、负载均衡的域名信息来查询对应绑定的 Waf的状态信息。
        # 查询的范围：负载均衡实例ID、负载均衡实例ID+监听器ID、负载均衡实例ID+监听器ID+域名。
        # 可能的错误码：ResourceNotFound（没有找到对应的资源）、UnsupportedRegion（目前clb-waf只支持北京、广州、上海、成都、重庆、香港地域）。

        # @param request: Request instance for DescribeWafInfo.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeWafInfoRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeWafInfoResponse`
        def DescribeWafInfo(request)
          body = send_request('DescribeWafInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口用于修改访问日志保存期限及大字段是否存储

        # @param request: Request instance for ModifyAccessPeriod.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAccessPeriodRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAccessPeriodResponse`
        def ModifyAccessPeriod(request)
          body = send_request('ModifyAccessPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改ipv6开关

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

        # 更改某一条规则

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

        # clb-waf编辑防护域名配置

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

        # clb-waf 设置防护域名的流量模式

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

        # waf斯巴达-waf开关

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

        # 修改域名配置

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

        # 配置WAF自动封禁模块状态

        # @param request: Request instance for ModifyWafAutoDenyStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyWafAutoDenyStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyWafAutoDenyStatusResponse`
        def ModifyWafAutoDenyStatus(request)
          body = send_request('ModifyWafAutoDenyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWafAutoDenyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # Waf IP黑白名单Upsert接口

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