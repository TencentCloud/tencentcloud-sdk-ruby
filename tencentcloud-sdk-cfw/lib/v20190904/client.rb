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
  module Cfw
    module V20190904
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-09-04'
            api_endpoint = 'cfw.tencentcloudapi.com'
            sdk_version = 'CFW_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加互联网边界规则

        # @param request: Request instance for AddAcRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::AddAcRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::AddAcRuleResponse`
        def AddAcRule(request)
          body = send_request('AddAcRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAcRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建新企业安全组规则

        # @param request: Request instance for AddEnterpriseSecurityGroupRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::AddEnterpriseSecurityGroupRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::AddEnterpriseSecurityGroupRulesResponse`
        def AddEnterpriseSecurityGroupRules(request)
          body = send_request('AddEnterpriseSecurityGroupRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddEnterpriseSecurityGroupRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建规则

        # @param request: Request instance for CreateAcRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateAcRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateAcRulesResponse`
        def CreateAcRules(request)
          body = send_request('CreateAcRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAcRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建、选择vpc

        # @param request: Request instance for CreateChooseVpcs.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateChooseVpcsRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateChooseVpcsResponse`
        def CreateChooseVpcs(request)
          body = send_request('CreateChooseVpcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChooseVpcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建暴露数据库白名单规则

        # @param request: Request instance for CreateDatabaseWhiteListRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateDatabaseWhiteListRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateDatabaseWhiteListRulesResponse`
        def CreateDatabaseWhiteListRules(request)
          body = send_request('CreateDatabaseWhiteListRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDatabaseWhiteListRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建NAT防火墙实例（Region参数必填）

        # @param request: Request instance for CreateNatFwInstance.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateNatFwInstanceRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateNatFwInstanceResponse`
        def CreateNatFwInstance(request)
          body = send_request('CreateNatFwInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatFwInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建防火墙实例和接入域名（Region参数必填）

        # @param request: Request instance for CreateNatFwInstanceWithDomain.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateNatFwInstanceWithDomainRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateNatFwInstanceWithDomainResponse`
        def CreateNatFwInstanceWithDomain(request)
          body = send_request('CreateNatFwInstanceWithDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatFwInstanceWithDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建企业安全组规则

        # @param request: Request instance for CreateSecurityGroupRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateSecurityGroupRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateSecurityGroupRulesResponse`
        def CreateSecurityGroupRules(request)
          body = send_request('CreateSecurityGroupRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除规则

        # @param request: Request instance for DeleteAcRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteAcRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteAcRuleResponse`
        def DeleteAcRule(request)
          body = send_request('DeleteAcRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAcRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 全部删除规则

        # @param request: Request instance for DeleteAllAccessControlRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteAllAccessControlRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteAllAccessControlRuleResponse`
        def DeleteAllAccessControlRule(request)
          body = send_request('DeleteAllAccessControlRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAllAccessControlRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁防火墙实例

        # @param request: Request instance for DeleteNatFwInstance.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteNatFwInstanceRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteNatFwInstanceResponse`
        def DeleteNatFwInstance(request)
          body = send_request('DeleteNatFwInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNatFwInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteResourceGroup-资产中心资产组删除

        # @param request: Request instance for DeleteResourceGroup.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteResourceGroupResponse`
        def DeleteResourceGroup(request)
          body = send_request('DeleteResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除规则

        # @param request: Request instance for DeleteSecurityGroupRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteSecurityGroupRuleResponse`
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

        # 删除防火墙实例

        # @param request: Request instance for DeleteVpcInstance.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteVpcInstanceRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteVpcInstanceResponse`
        def DeleteVpcInstance(request)
          body = send_request('DeleteVpcInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 访问控制列表

        # @param request: Request instance for DescribeAcLists.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeAcListsRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeAcListsResponse`
        def DescribeAcLists(request)
          body = send_request('DescribeAcLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAcListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全组关联实例列表

        # @param request: Request instance for DescribeAssociatedInstanceList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeAssociatedInstanceListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeAssociatedInstanceListResponse`
        def DescribeAssociatedInstanceList(request)
          body = send_request('DescribeAssociatedInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssociatedInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeBlockByIpTimesList 告警中心阻断IP折线图

        # @param request: Request instance for DescribeBlockByIpTimesList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeBlockByIpTimesListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeBlockByIpTimesListResponse`
        def DescribeBlockByIpTimesList(request)
          body = send_request('DescribeBlockByIpTimesList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlockByIpTimesListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeBlockStaticList 告警中心柱形图

        # @param request: Request instance for DescribeBlockStaticList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeBlockStaticListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeBlockStaticListResponse`
        def DescribeBlockStaticList(request)
          body = send_request('DescribeBlockStaticList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlockStaticListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询防火墙弹性公网IP

        # @param request: Request instance for DescribeCfwEips.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeCfwEipsRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeCfwEipsResponse`
        def DescribeCfwEips(request)
          body = send_request('DescribeCfwEips', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfwEipsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取入侵防御按钮列表

        # @param request: Request instance for DescribeDefenseSwitch.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeDefenseSwitchRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeDefenseSwitchResponse`
        def DescribeDefenseSwitch(request)
          body = send_request('DescribeDefenseSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefenseSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询新企业安全组规则

        # @param request: Request instance for DescribeEnterpriseSecurityGroupRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeEnterpriseSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeEnterpriseSecurityGroupRuleResponse`
        def DescribeEnterpriseSecurityGroupRule(request)
          body = send_request('DescribeEnterpriseSecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnterpriseSecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeGuideScanInfo新手引导扫描接口信息

        # @param request: Request instance for DescribeGuideScanInfo.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeGuideScanInfoRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeGuideScanInfoResponse`
        def DescribeGuideScanInfo(request)
          body = send_request('DescribeGuideScanInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGuideScanInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ip防护状态查询

        # @param request: Request instance for DescribeIPStatusList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeIPStatusListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeIPStatusListResponse`
        def DescribeIPStatusList(request)
          body = send_request('DescribeIPStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPStatusListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前用户接入nat防火墙的所有子网数及natfw实例个数

        # @param request: Request instance for DescribeNatFwInfoCount.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInfoCountRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInfoCountResponse`
        def DescribeNatFwInfoCount(request)
          body = send_request('DescribeNatFwInfoCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatFwInfoCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeNatFwInstance 获取租户所有NAT实例

        # @param request: Request instance for DescribeNatFwInstance.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstanceRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstanceResponse`
        def DescribeNatFwInstance(request)
          body = send_request('DescribeNatFwInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatFwInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # GetNatFwInstanceWithRegion 获取租户新增运维的NAT实例，带上地域

        # @param request: Request instance for DescribeNatFwInstanceWithRegion.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstanceWithRegionRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstanceWithRegionResponse`
        def DescribeNatFwInstanceWithRegion(request)
          body = send_request('DescribeNatFwInstanceWithRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatFwInstanceWithRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # GetNatInstance 获取租户所有NAT实例及实例卡片信息

        # @param request: Request instance for DescribeNatFwInstancesInfo.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstancesInfoRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwInstancesInfoResponse`
        def DescribeNatFwInstancesInfo(request)
          body = send_request('DescribeNatFwInstancesInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatFwInstancesInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示当前natfw 实例对应的vpc dns开关

        # @param request: Request instance for DescribeNatFwVpcDnsLst.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwVpcDnsLstRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatFwVpcDnsLstResponse`
        def DescribeNatFwVpcDnsLst(request)
          body = send_request('DescribeNatFwVpcDnsLst', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatFwVpcDnsLstResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeResourceGroup资产中心资产树信息

        # @param request: Request instance for DescribeResourceGroup.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeResourceGroupResponse`
        def DescribeResourceGroup(request)
          body = send_request('DescribeResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeResourceGroupNew资产中心资产树信息

        # @param request: Request instance for DescribeResourceGroupNew.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeResourceGroupNewRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeResourceGroupNewResponse`
        def DescribeResourceGroupNew(request)
          body = send_request('DescribeResourceGroupNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceGroupNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则列表概况

        # @param request: Request instance for DescribeRuleOverview.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeRuleOverviewRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeRuleOverviewResponse`
        def DescribeRuleOverview(request)
          body = send_request('DescribeRuleOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全组规则列表

        # @param request: Request instance for DescribeSecurityGroupList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeSecurityGroupListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeSecurityGroupListResponse`
        def DescribeSecurityGroupList(request)
          body = send_request('DescribeSecurityGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeSourceAsset-查询资产组全部资产信息

        # @param request: Request instance for DescribeSourceAsset.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeSourceAssetRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeSourceAssetResponse`
        def DescribeSourceAsset(request)
          body = send_request('DescribeSourceAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSourceAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 防火墙开关列表

        # @param request: Request instance for DescribeSwitchLists.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeSwitchListsRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeSwitchListsResponse`
        def DescribeSwitchLists(request)
          body = send_request('DescribeSwitchLists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSwitchListsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeTLogInfo告警中心概况

        # @param request: Request instance for DescribeTLogInfo.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeTLogInfoRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeTLogInfoResponse`
        def DescribeTLogInfo(request)
          body = send_request('DescribeTLogInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTLogInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeTLogIpList告警中心IP柱形图

        # @param request: Request instance for DescribeTLogIpList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeTLogIpListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeTLogIpListResponse`
        def DescribeTLogIpList(request)
          body = send_request('DescribeTLogIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTLogIpListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询规则表状态

        # @param request: Request instance for DescribeTableStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeTableStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeTableStatusResponse`
        def DescribeTableStatus(request)
          body = send_request('DescribeTableStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeUnHandleEventTabList 告警中心伪攻击链事件未处置接口

        # @param request: Request instance for DescribeUnHandleEventTabList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeUnHandleEventTabListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeUnHandleEventTabListResponse`
        def DescribeUnHandleEventTabList(request)
          body = send_request('DescribeUnHandleEventTabList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnHandleEventTabListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # vpc规则列表概况

        # @param request: Request instance for DescribeVpcRuleOverview.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeVpcRuleOverviewRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeVpcRuleOverviewResponse`
        def DescribeVpcRuleOverview(request)
          body = send_request('DescribeVpcRuleOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcRuleOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 防火墙垂直扩容

        # @param request: Request instance for ExpandCfwVertical.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ExpandCfwVerticalRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ExpandCfwVerticalResponse`
        def ExpandCfwVertical(request)
          body = send_request('ExpandCfwVertical', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExpandCfwVerticalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改规则

        # @param request: Request instance for ModifyAcRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAcRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAcRuleResponse`
        def ModifyAcRule(request)
          body = send_request('ModifyAcRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAcRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 互联网边界防火墙一键开关

        # @param request: Request instance for ModifyAllPublicIPSwitchStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAllPublicIPSwitchStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAllPublicIPSwitchStatusResponse`
        def ModifyAllPublicIPSwitchStatus(request)
          body = send_request('ModifyAllPublicIPSwitchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllPublicIPSwitchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用停用全部规则

        # @param request: Request instance for ModifyAllRuleStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAllRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAllRuleStatusResponse`
        def ModifyAllRuleStatus(request)
          body = send_request('ModifyAllRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # VPC防火墙一键开关

        # @param request: Request instance for ModifyAllVPCSwitchStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAllVPCSwitchStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAllVPCSwitchStatusResponse`
        def ModifyAllVPCSwitchStatus(request)
          body = send_request('ModifyAllVPCSwitchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllVPCSwitchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 资产扫描

        # @param request: Request instance for ModifyAssetScan.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAssetScanRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAssetScanResponse`
        def ModifyAssetScan(request)
          body = send_request('ModifyAssetScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssetScanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持对拦截列表、忽略列表如下操作：
        # 批量增加拦截IP、忽略IP/域名
        # 批量删除拦截IP、忽略IP/域名
        # 批量修改拦截IP、忽略IP/域名生效事件

        # @param request: Request instance for ModifyBlockIgnoreList.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyBlockIgnoreListRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyBlockIgnoreListResponse`
        def ModifyBlockIgnoreList(request)
          body = send_request('ModifyBlockIgnoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBlockIgnoreListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyBlockTop取消置顶接口

        # @param request: Request instance for ModifyBlockTop.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyBlockTopRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyBlockTopResponse`
        def ModifyBlockTop(request)
          body = send_request('ModifyBlockTop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBlockTopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 防火墙实例重新选择vpc或nat

        # @param request: Request instance for ModifyNatFwReSelect.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwReSelectRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwReSelectResponse`
        def ModifyNatFwReSelect(request)
          body = send_request('ModifyNatFwReSelect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatFwReSelectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改NAT防火墙开关

        # @param request: Request instance for ModifyNatFwSwitch.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwSwitchRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwSwitchResponse`
        def ModifyNatFwSwitch(request)
          body = send_request('ModifyNatFwSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatFwSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # nat 防火墙VPC DNS 开关切换

        # @param request: Request instance for ModifyNatFwVpcDnsSwitch.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwVpcDnsSwitchRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyNatFwVpcDnsSwitchResponse`
        def ModifyNatFwVpcDnsSwitch(request)
          body = send_request('ModifyNatFwVpcDnsSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatFwVpcDnsSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 单个修改互联网边界防火墙开关

        # @param request: Request instance for ModifyPublicIPSwitchStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyPublicIPSwitchStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyPublicIPSwitchStatusResponse`
        def ModifyPublicIPSwitchStatus(request)
          body = send_request('ModifyPublicIPSwitchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPublicIPSwitchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyResourceGroup-资产中心资产组信息修改


        # @param request: Request instance for ModifyResourceGroup.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyResourceGroupRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyResourceGroupResponse`
        def ModifyResourceGroup(request)
          body = send_request('ModifyResourceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步资产-互联网&VPC（新）

        # @param request: Request instance for ModifyRunSyncAsset.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyRunSyncAssetRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyRunSyncAssetResponse`
        def ModifyRunSyncAsset(request)
          body = send_request('ModifyRunSyncAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRunSyncAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用停用单条企业安全组规则

        # @param request: Request instance for ModifySecurityGroupItemRuleStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupItemRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupItemRuleStatusResponse`
        def ModifySecurityGroupItemRuleStatus(request)
          body = send_request('ModifySecurityGroupItemRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupItemRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑单条安全组规则

        # @param request: Request instance for ModifySecurityGroupRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupRuleResponse`
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

        # 企业安全组规则快速排序

        # @param request: Request instance for ModifySecurityGroupSequenceRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupSequenceRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupSequenceRulesResponse`
        def ModifySecurityGroupSequenceRules(request)
          body = send_request('ModifySecurityGroupSequenceRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupSequenceRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改规则执行顺序

        # @param request: Request instance for ModifySequenceRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifySequenceRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifySequenceRulesResponse`
        def ModifySequenceRules(request)
          body = send_request('ModifySequenceRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySequenceRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改规则表状态

        # @param request: Request instance for ModifyTableStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyTableStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyTableStatusResponse`
        def ModifyTableStatus(request)
          body = send_request('ModifyTableStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除互联网边界规则

        # @param request: Request instance for RemoveAcRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::RemoveAcRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::RemoveAcRuleResponse`
        def RemoveAcRule(request)
          body = send_request('RemoveAcRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveAcRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除新企业安全组规则

        # @param request: Request instance for RemoveEnterpriseSecurityGroupRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::RemoveEnterpriseSecurityGroupRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::RemoveEnterpriseSecurityGroupRuleResponse`
        def RemoveEnterpriseSecurityGroupRule(request)
          body = send_request('RemoveEnterpriseSecurityGroupRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveEnterpriseSecurityGroupRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置防火墙Dnat规则

        # @param request: Request instance for SetNatFwDnatRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::SetNatFwDnatRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::SetNatFwDnatRuleResponse`
        def SetNatFwDnatRule(request)
          body = send_request('SetNatFwDnatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetNatFwDnatRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置防火墙实例弹性公网ip，目前仅支持新增模式的防火墙实例

        # @param request: Request instance for SetNatFwEip.
        # @type request: :class:`Tencentcloud::cfw::V20190904::SetNatFwEipRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::SetNatFwEipResponse`
        def SetNatFwEip(request)
          body = send_request('SetNatFwEip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetNatFwEipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 中止安全组规则下发

        # @param request: Request instance for StopSecurityGroupRuleDispatch.
        # @type request: :class:`Tencentcloud::cfw::V20190904::StopSecurityGroupRuleDispatchRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::StopSecurityGroupRuleDispatchResponse`
        def StopSecurityGroupRuleDispatch(request)
          body = send_request('StopSecurityGroupRuleDispatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSecurityGroupRuleDispatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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