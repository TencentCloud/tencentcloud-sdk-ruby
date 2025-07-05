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
  module Hasim
    module V20210716
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-07-16'
            api_endpoint = 'hasim.tencentcloudapi.com'
            sdk_version = 'HASIM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建自动化规则

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::hasim::V20210716::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云兔切换策略

        # @param request: Request instance for CreateTactic.
        # @type request: :class:`Tencentcloud::hasim::V20210716::CreateTacticRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::CreateTacticResponse`
        def CreateTactic(request)
          body = send_request('CreateTactic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTacticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建标签

        # @param request: Request instance for CreateTag.
        # @type request: :class:`Tencentcloud::hasim::V20210716::CreateTagRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::CreateTagResponse`
        def CreateTag(request)
          body = send_request('CreateTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自动化规则

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteTactic.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DeleteTacticRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DeleteTacticResponse`
        def DeleteTactic(request)
          body = send_request('DeleteTactic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTacticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DeleteTag.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DeleteTagRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DeleteTagResponse`
        def DeleteTag(request)
          body = send_request('DeleteTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云兔连接详细信息

        # @param request: Request instance for DescribeLink.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeLinkRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeLinkResponse`
        def DescribeLink(request)
          body = send_request('DescribeLink', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLinkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云兔连接列表

        # @param request: Request instance for DescribeLinks.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeLinksRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeLinksResponse`
        def DescribeLinks(request)
          body = send_request('DescribeLinks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLinksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询订单列表

        # @param request: Request instance for DescribeOrders.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeOrdersRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeOrdersResponse`
        def DescribeOrders(request)
          body = send_request('DescribeOrders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrdersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询自动化规则

        # @param request: Request instance for DescribeRule.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeRuleRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeRuleResponse`
        def DescribeRule(request)
          body = send_request('DescribeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询自动化规则列表

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeRulesResponse`
        def DescribeRules(request)
          body = send_request('DescribeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云兔切换策略信息

        # @param request: Request instance for DescribeTactic.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeTacticRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeTacticResponse`
        def DescribeTactic(request)
          body = send_request('DescribeTactic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTacticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云兔切换策略列表

        # @param request: Request instance for DescribeTactics.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeTacticsRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeTacticsResponse`
        def DescribeTactics(request)
          body = send_request('DescribeTactics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTacticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标签列表

        # @param request: Request instance for DescribeTags.
        # @type request: :class:`Tencentcloud::hasim::V20210716::DescribeTagsRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::DescribeTagsResponse`
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

        # 编辑云兔高级日志状态

        # @param request: Request instance for ModifyLinkAdvancedLog.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyLinkAdvancedLogRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyLinkAdvancedLogResponse`
        def ModifyLinkAdvancedLog(request)
          body = send_request('ModifyLinkAdvancedLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLinkAdvancedLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑云兔策略

        # @param request: Request instance for ModifyLinkTactic.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyLinkTacticRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyLinkTacticResponse`
        def ModifyLinkTactic(request)
          body = send_request('ModifyLinkTactic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLinkTacticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云兔运营商

        # @param request: Request instance for ModifyLinkTele.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyLinkTeleRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyLinkTeleResponse`
        def ModifyLinkTele(request)
          body = send_request('ModifyLinkTele', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLinkTeleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑自动化规则

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyRuleResponse`
        def ModifyRule(request)
          body = send_request('ModifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑自动化规则状态

        # @param request: Request instance for ModifyRuleStatus.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyRuleStatusResponse`
        def ModifyRuleStatus(request)
          body = send_request('ModifyRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云兔切换策略

        # @param request: Request instance for ModifyTactic.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyTacticRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyTacticResponse`
        def ModifyTactic(request)
          body = send_request('ModifyTactic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTacticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑标签

        # @param request: Request instance for ModifyTag.
        # @type request: :class:`Tencentcloud::hasim::V20210716::ModifyTagRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::ModifyTagResponse`
        def ModifyTag(request)
          body = send_request('ModifyTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 刷新云兔连接信息同步

        # @param request: Request instance for RenewLinkInfo.
        # @type request: :class:`Tencentcloud::hasim::V20210716::RenewLinkInfoRequest`
        # @rtype: :class:`Tencentcloud::hasim::V20210716::RenewLinkInfoResponse`
        def RenewLinkInfo(request)
          body = send_request('RenewLinkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewLinkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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