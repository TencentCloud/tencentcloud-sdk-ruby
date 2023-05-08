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


      end
    end
  end
end