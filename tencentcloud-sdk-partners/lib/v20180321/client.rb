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
  module Partners
    module V20180321
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-03-21'
        @@endpoint = 'partners.tencentcloudapi.com'
        @@sdk_version = 'PARTNERS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 代理商支付订单接口，支持自付/代付

        # @param request: Request instance for AgentPayDeals.
        # @type request: :class:`Tencentcloud::partners::V20180321::AgentPayDealsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::AgentPayDealsResponse`
        def AgentPayDeals(request)
          body = send_request('AgentPayDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AgentPayDealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为合作伙伴提供转账给客户能力。仅支持合作伙伴为自己名下客户转账。

        # @param request: Request instance for AgentTransferMoney.
        # @type request: :class:`Tencentcloud::partners::V20180321::AgentTransferMoneyRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::AgentTransferMoneyResponse`
        def AgentTransferMoney(request)
          body = send_request('AgentTransferMoney', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AgentTransferMoneyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商可以审核其名下申请中代客

        # @param request: Request instance for AuditApplyClient.
        # @type request: :class:`Tencentcloud::partners::V20180321::AuditApplyClientRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::AuditApplyClientResponse`
        def AuditApplyClient(request)
          body = send_request('AuditApplyClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuditApplyClientResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 合作伙伴为客户创建强代付关系

        # @param request: Request instance for CreatePayRelationForClient.
        # @type request: :class:`Tencentcloud::partners::V20180321::CreatePayRelationForClientRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::CreatePayRelationForClientResponse`
        def CreatePayRelationForClient(request)
          body = send_request('CreatePayRelationForClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePayRelationForClientResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询已审核客户列表

        # @param request: Request instance for DescribeAgentAuditedClients.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentAuditedClientsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentAuditedClientsResponse`
        def DescribeAgentAuditedClients(request)
          body = send_request('DescribeAgentAuditedClients', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentAuditedClientsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商可查询自己及名下代客所有业务明细

        # @param request: Request instance for DescribeAgentBills.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentBillsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentBillsResponse`
        def DescribeAgentBills(request)
          body = send_request('DescribeAgentBills', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentBillsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入代客uin，查客户级别，客户审核状态，客户实名认证状态

        # @param request: Request instance for DescribeAgentClientGrade.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentClientGradeRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentClientGradeResponse`
        def DescribeAgentClientGrade(request)
          body = send_request('DescribeAgentClientGrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentClientGradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商可查询自己名下待审核客户列表

        # @param request: Request instance for DescribeAgentClients.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentClientsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentClientsResponse`
        def DescribeAgentClients(request)
          body = send_request('DescribeAgentClients', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentClientsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 供超大型代理商（代客数量>=3000 ）拉取缓存的全量客户订单。

        # @param request: Request instance for DescribeAgentDealsCache.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentDealsCacheRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentDealsCacheResponse`
        def DescribeAgentDealsCache(request)
          body = send_request('DescribeAgentDealsCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDealsCacheResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可以查询代理商代付的所有订单

        # @param request: Request instance for DescribeAgentPayDeals.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentPayDealsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentPayDealsResponse`
        def DescribeAgentPayDeals(request)
          body = send_request('DescribeAgentPayDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentPayDealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可以查询代理商下指定客户的自付订单

        # @param request: Request instance for DescribeAgentSelfPayDeals.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentSelfPayDealsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentSelfPayDealsResponse`
        def DescribeAgentSelfPayDeals(request)
          body = send_request('DescribeAgentSelfPayDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentSelfPayDealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额

        # @param request: Request instance for DescribeClientBalance.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeClientBalanceRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeClientBalanceResponse`
        def DescribeClientBalance(request)
          body = send_request('DescribeClientBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商可查询自己名下全部返佣信息

        # @param request: Request instance for DescribeRebateInfos.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeRebateInfosRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeRebateInfosResponse`
        def DescribeRebateInfos(request)
          body = send_request('DescribeRebateInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRebateInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商查询名下业务员列表信息

        # @param request: Request instance for DescribeSalesmans.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeSalesmansRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeSalesmansResponse`
        def DescribeSalesmans(request)
          body = send_request('DescribeSalesmans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSalesmansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 代理商可以对名下客户添加备注、修改备注

        # @param request: Request instance for ModifyClientRemark.
        # @type request: :class:`Tencentcloud::partners::V20180321::ModifyClientRemarkRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::ModifyClientRemarkResponse`
        def ModifyClientRemark(request)
          body = send_request('ModifyClientRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClientRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 合作伙伴为客户消除强代付关系

        # @param request: Request instance for RemovePayRelationForClient.
        # @type request: :class:`Tencentcloud::partners::V20180321::RemovePayRelationForClientRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::RemovePayRelationForClientResponse`
        def RemovePayRelationForClient(request)
          body = send_request('RemovePayRelationForClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemovePayRelationForClientResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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