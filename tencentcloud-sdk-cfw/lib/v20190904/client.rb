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
        @@api_version = '2019-09-04'
        @@endpoint = 'cfw.tencentcloudapi.com'
        @@sdk_version = 'CFW_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 创建安全组API规则

        # @param request: Request instance for CreateSecurityGroupApiRules.
        # @type request: :class:`Tencentcloud::cfw::V20190904::CreateSecurityGroupApiRulesRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::CreateSecurityGroupApiRulesResponse`
        def CreateSecurityGroupApiRules(request)
          body = send_request('CreateSecurityGroupApiRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupApiRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除全部规则

        # @param request: Request instance for DeleteSecurityGroupAllRule.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DeleteSecurityGroupAllRuleRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DeleteSecurityGroupAllRuleResponse`
        def DeleteSecurityGroupAllRule(request)
          body = send_request('DeleteSecurityGroupAllRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityGroupAllRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询防火墙弹性公网ip

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

        # nat规则列表概况

        # @param request: Request instance for DescribeNatRuleOverview.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeNatRuleOverviewRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeNatRuleOverviewResponse`
        def DescribeNatRuleOverview(request)
          body = send_request('DescribeNatRuleOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatRuleOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 同步资产状态查询-互联网&VPC

        # @param request: Request instance for DescribeSyncAssetStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::DescribeSyncAssetStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::DescribeSyncAssetStatusResponse`
        def DescribeSyncAssetStatus(request)
          body = send_request('DescribeSyncAssetStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSyncAssetStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 一键开启和关闭

        # @param request: Request instance for ModifyAllSwitchStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyAllSwitchStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyAllSwitchStatusResponse`
        def ModifyAllSwitchStatus(request)
          body = send_request('ModifyAllSwitchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAllSwitchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 修改单个防火墙开关

        # @param request: Request instance for ModifyItemSwitchStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifyItemSwitchStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifyItemSwitchStatusResponse`
        def ModifyItemSwitchStatus(request)
          body = send_request('ModifyItemSwitchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyItemSwitchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifySecurityGroupAllRuleStatus.
        # @type request: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupAllRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::ModifySecurityGroupAllRuleStatusResponse`
        def ModifySecurityGroupAllRuleStatus(request)
          body = send_request('ModifySecurityGroupAllRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupAllRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 同步资产-互联网&VPC

        # @param request: Request instance for RunSyncAsset.
        # @type request: :class:`Tencentcloud::cfw::V20190904::RunSyncAssetRequest`
        # @rtype: :class:`Tencentcloud::cfw::V20190904::RunSyncAssetResponse`
        def RunSyncAsset(request)
          body = send_request('RunSyncAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunSyncAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end