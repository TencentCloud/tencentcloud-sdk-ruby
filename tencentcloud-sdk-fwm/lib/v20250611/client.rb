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
  module Fwm
    module V20250611
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-06-11'
            api_endpoint = 'fwm.tencentcloudapi.com'
            sdk_version = 'FWM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 取消忽略策略风险

        # @param request: Request instance for CancelIgnorePolicyRisk.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CancelIgnorePolicyRiskRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CancelIgnorePolicyRiskResponse`
        def CancelIgnorePolicyRisk(request)
          body = send_request('CancelIgnorePolicyRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelIgnorePolicyRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建策略风险分析任务

        # @param request: Request instance for CreateAnalyzePolicyTask.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateAnalyzePolicyTaskRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateAnalyzePolicyTaskResponse`
        def CreateAnalyzePolicyTask(request)
          body = send_request('CreateAnalyzePolicyTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAnalyzePolicyTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 向已有的互联网边界ACL规则组中添加规则。需要先创建规则组，然后通过此接口添加规则。

        # @param request: Request instance for CreateEdgeAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateEdgeAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateEdgeAclRuleResponse`
        def CreateEdgeAclRule(request)
          body = send_request('CreateEdgeAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建互联网边界ACL规则组，支持同时创建多条规则。Product 必须为 cfw_edge_acl。规则支持 IP、域名、参数模板、实例、标签等多种源/目标类型。

        # @param request: Request instance for CreateEdgeAclRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateEdgeAclRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateEdgeAclRuleGroupResponse`
        def CreateEdgeAclRuleGroup(request)
          body = send_request('CreateEdgeAclRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeAclRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在已有规则组中添加NAT ACL规则

        # @param request: Request instance for CreateNatAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateNatAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateNatAclRuleResponse`
        def CreateNatAclRule(request)
          body = send_request('CreateNatAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建NAT ACL规则组（NAT边界防火墙规则组管理）

        # @param request: Request instance for CreateNatAclRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateNatAclRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateNatAclRuleGroupResponse`
        def CreateNatAclRuleGroup(request)
          body = send_request('CreateNatAclRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatAclRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 规则组编辑时添加规则（规则组管理）

        # @param request: Request instance for CreateSecurityGroupRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateSecurityGroupRuleResponse`
        def CreateSecurityGroupRule(request)
          body = send_request('CreateSecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建规则组（规则组管理）

        # @param request: Request instance for CreateSecurityGroupRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateSecurityGroupRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateSecurityGroupRuleGroupResponse`
        def CreateSecurityGroupRuleGroup(request)
          body = send_request('CreateSecurityGroupRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建策略

        # @param request: Request instance for CreateStrategy.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateStrategyRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateStrategyResponse`
        def CreateStrategy(request)
          body = send_request('CreateStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在已有规则组中添加VPC ACL规则

        # @param request: Request instance for CreateVpcAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateVpcAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateVpcAclRuleResponse`
        def CreateVpcAclRule(request)
          body = send_request('CreateVpcAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建VPC ACL规则组（VPC间防火墙规则组管理）

        # @param request: Request instance for CreateVpcAclRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::CreateVpcAclRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::CreateVpcAclRuleGroupResponse`
        def CreateVpcAclRuleGroup(request)
          body = send_request('CreateVpcAclRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcAclRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除互联网边界ACL规则。支持一次删除多条规则。

        # @param request: Request instance for DeleteEdgeAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteEdgeAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteEdgeAclRuleResponse`
        def DeleteEdgeAclRule(request)
          body = send_request('DeleteEdgeAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除NAT ACL规则

        # @param request: Request instance for DeleteNatAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteNatAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteNatAclRuleResponse`
        def DeleteNatAclRule(request)
          body = send_request('DeleteNatAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNatAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除规则组

        # @param request: Request instance for DeleteRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteRuleGroupResponse`
        def DeleteRuleGroup(request)
          body = send_request('DeleteRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除规则（规则组管理）

        # @param request: Request instance for DeleteSecurityGroupRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteSecurityGroupRuleResponse`
        def DeleteSecurityGroupRule(request)
          body = send_request('DeleteSecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteStrategy.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteStrategyRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteStrategyResponse`
        def DeleteStrategy(request)
          body = send_request('DeleteStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除VPC ACL规则

        # @param request: Request instance for DeleteVpcAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DeleteVpcAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DeleteVpcAclRuleResponse`
        def DeleteVpcAclRule(request)
          body = send_request('DeleteVpcAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定规则组下的互联网边界ACL规则列表。支持分页和多种过滤条件。

        # @param request: Request instance for DescribeEdgeAclRules.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeEdgeAclRulesRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeEdgeAclRulesResponse`
        def DescribeEdgeAclRules(request)
          body = send_request('DescribeEdgeAclRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeAclRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询NAT ACL规则列表

        # @param request: Request instance for DescribeNatAclRules.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeNatAclRulesRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeNatAclRulesResponse`
        def DescribeNatAclRules(request)
          body = send_request('DescribeNatAclRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatAclRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集团下所有纳管成员账号列表，支持分页、排序和多条件筛选，仅管理员可调用

        # @param request: Request instance for DescribeOrganMembers.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeOrganMembersRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeOrganMembersResponse`
        def DescribeOrganMembers(request)
          body = send_request('DescribeOrganMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganMembersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集团概览信息，包括集团名称、管理员信息、成员数量等

        # @param request: Request instance for DescribeOrganSummary.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeOrganSummaryRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeOrganSummaryResponse`
        def DescribeOrganSummary(request)
          body = send_request('DescribeOrganSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganSummaryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询账号+产品维度风险统计，按账号分组返回各产品的体检策略数、待整改风险数、整改率、最近体检时间等信息，支持按账号名称/ID搜索以及仅看待整改、仅超时未体检筛选

        # @param request: Request instance for DescribePolicyRiskAccountProductStats.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribePolicyRiskAccountProductStatsRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribePolicyRiskAccountProductStatsResponse`
        def DescribePolicyRiskAccountProductStats(request)
          body = send_request('DescribePolicyRiskAccountProductStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyRiskAccountProductStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实时分析风险详情

        # @param request: Request instance for DescribeRiskAnalysisDetails.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeRiskAnalysisDetailsRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeRiskAnalysisDetailsResponse`
        def DescribeRiskAnalysisDetails(request)
          body = send_request('DescribeRiskAnalysisDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskAnalysisDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询策略体检风险分类统计数据,包含各类风险的规则数量、处置状态、整改率等信息

        # @param request: Request instance for DescribeRiskCategoryStats.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeRiskCategoryStatsRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeRiskCategoryStatsResponse`
        def DescribeRiskCategoryStats(request)
          body = send_request('DescribeRiskCategoryStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskCategoryStatsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户所有规则的策略问题

        # @param request: Request instance for DescribeRiskList.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeRiskListRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeRiskListResponse`
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

        # 查询规则详情（规则组管理）

        # @param request: Request instance for DescribeSecurityGroupRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeSecurityGroupRuleResponse`
        def DescribeSecurityGroupRule(request)
          body = send_request('DescribeSecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则组中规则列表接口

        # @param request: Request instance for DescribeSecurityGroupRules.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeSecurityGroupRulesRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeSecurityGroupRulesResponse`
        def DescribeSecurityGroupRules(request)
          body = send_request('DescribeSecurityGroupRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询策略列表

        # @param request: Request instance for DescribeStrategies.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeStrategiesRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeStrategiesResponse`
        def DescribeStrategies(request)
          body = send_request('DescribeStrategies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询策略详情

        # @param request: Request instance for DescribeStrategy.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyResponse`
        def DescribeStrategy(request)
          body = send_request('DescribeStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看防火墙管理规则下发账号列表

        # @param request: Request instance for DescribeStrategyAccounts.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyAccountsRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyAccountsResponse`
        def DescribeStrategyAccounts(request)
          body = send_request('DescribeStrategyAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询策略下发状态

        # @param request: Request instance for DescribeStrategyDispatchStatus.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyDispatchStatusRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeStrategyDispatchStatusResponse`
        def DescribeStrategyDispatchStatus(request)
          body = send_request('DescribeStrategyDispatchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyDispatchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询VPC ACL规则列表

        # @param request: Request instance for DescribeVpcAclRules.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DescribeVpcAclRulesRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DescribeVpcAclRulesResponse`
        def DescribeVpcAclRules(request)
          body = send_request('DescribeVpcAclRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcAclRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下发策略

        # @param request: Request instance for DispatchStrategy.
        # @type request: :class:`Tencentcloud::fwm::V20250611::DispatchStrategyRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::DispatchStrategyResponse`
        def DispatchStrategy(request)
          body = send_request('DispatchStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DispatchStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 忽略策略问题

        # @param request: Request instance for IgnorePolicyRisk.
        # @type request: :class:`Tencentcloud::fwm::V20250611::IgnorePolicyRiskRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::IgnorePolicyRiskResponse`
        def IgnorePolicyRisk(request)
          body = send_request('IgnorePolicyRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnorePolicyRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改互联网边界ACL规则。Rule 参数中必须包含 RuleId 用于指定要修改的规则。

        # @param request: Request instance for ModifyEdgeAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyEdgeAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyEdgeAclRuleResponse`
        def ModifyEdgeAclRule(request)
          body = send_request('ModifyEdgeAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量调整互联网边界ACL规则的执行顺序。Sequences 参数必须包含所有受影响的规则序号映射关系。

        # @param request: Request instance for ModifyEdgeAclRuleSequence.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyEdgeAclRuleSequenceRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyEdgeAclRuleSequenceResponse`
        def ModifyEdgeAclRuleSequence(request)
          body = send_request('ModifyEdgeAclRuleSequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeAclRuleSequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改NAT ACL规则

        # @param request: Request instance for ModifyNatAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyNatAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyNatAclRuleResponse`
        def ModifyNatAclRule(request)
          body = send_request('ModifyNatAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整NAT ACL规则优先级顺序

        # @param request: Request instance for ModifyNatAclRuleSequence.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyNatAclRuleSequenceRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyNatAclRuleSequenceResponse`
        def ModifyNatAclRuleSequence(request)
          body = send_request('ModifyNatAclRuleSequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatAclRuleSequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改规则组信息（规则组管理）

        # @param request: Request instance for ModifyRuleGroup.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyRuleGroupRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyRuleGroupResponse`
        def ModifyRuleGroup(request)
          body = send_request('ModifyRuleGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改规则（规则组管理）

        # @param request: Request instance for ModifySecurityGroupRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifySecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifySecurityGroupRuleResponse`
        def ModifySecurityGroupRule(request)
          body = send_request('ModifySecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改策略信息

        # @param request: Request instance for ModifyStrategy.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyStrategyRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyStrategyResponse`
        def ModifyStrategy(request)
          body = send_request('ModifyStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 快速排序修改策略优先级

        # @param request: Request instance for ModifyStrategySequence.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyStrategySequenceRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyStrategySequenceResponse`
        def ModifyStrategySequence(request)
          body = send_request('ModifyStrategySequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStrategySequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改VPC ACL规则

        # @param request: Request instance for ModifyVpcAclRule.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyVpcAclRuleRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyVpcAclRuleResponse`
        def ModifyVpcAclRule(request)
          body = send_request('ModifyVpcAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcAclRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整VPC ACL规则优先级顺序

        # @param request: Request instance for ModifyVpcAclRuleSequence.
        # @type request: :class:`Tencentcloud::fwm::V20250611::ModifyVpcAclRuleSequenceRequest`
        # @rtype: :class:`Tencentcloud::fwm::V20250611::ModifyVpcAclRuleSequenceResponse`
        def ModifyVpcAclRuleSequence(request)
          body = send_request('ModifyVpcAclRuleSequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcAclRuleSequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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