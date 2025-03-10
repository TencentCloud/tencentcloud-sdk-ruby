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

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-21'
            api_endpoint = 'partners.tencentcloudapi.com'
            sdk_version = 'PARTNERS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


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

        # 为代客or申请中代客分派跟进人（业务员），入参可从以下API获取
        # - 代客列表获取API： [DescribeAgentAuditedClients](https://cloud.tencent.com/document/product/563/19184)
        # - 申请中代客列表获取API：[DescribeAgentClients](https://cloud.tencent.com/document/product/563/16046)
        # - 业务员列表获取API：[DescribeSalesmans](https://cloud.tencent.com/document/product/563/35196) <br><br>

        # @param request: Request instance for AssignClientsToSales.
        # @type request: :class:`Tencentcloud::partners::V20180321::AssignClientsToSalesRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::AssignClientsToSalesResponse`
        def AssignClientsToSales(request)
          body = send_request('AssignClientsToSales', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignClientsToSalesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 供代理商拉取缓存的全量预付费客户订单

        # @param request: Request instance for DescribeAgentDealsByCache.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentDealsByCacheRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentDealsByCacheResponse`
        def DescribeAgentDealsByCache(request)
          body = send_request('DescribeAgentDealsByCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentDealsByCacheResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可以查询代理商代付的预付费订单

        # @param request: Request instance for DescribeAgentPayDealsV2.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentPayDealsV2Request`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentPayDealsV2Response`
        def DescribeAgentPayDealsV2(request)
          body = send_request('DescribeAgentPayDealsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentPayDealsV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据大订单号查询关联申请合并支付的其他订单号

        # @param request: Request instance for DescribeAgentRelateBigDealIds.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentRelateBigDealIdsRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentRelateBigDealIdsResponse`
        def DescribeAgentRelateBigDealIds(request)
          body = send_request('DescribeAgentRelateBigDealIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentRelateBigDealIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询代理商名下指定代客的自付订单（预付费）

        # @param request: Request instance for DescribeAgentSelfPayDealsV2.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeAgentSelfPayDealsV2Request`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeAgentSelfPayDealsV2Response`
        def DescribeAgentSelfPayDealsV2(request)
          body = send_request('DescribeAgentSelfPayDealsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentSelfPayDealsV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeClientBalanceNew.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeClientBalanceNewRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeClientBalanceNewResponse`
        def DescribeClientBalanceNew(request)
          body = send_request('DescribeClientBalanceNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientBalanceNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询合作伙伴名下客户的参与增量激励考核信息列表

        # @param request: Request instance for DescribeClientJoinIncreaseList.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeClientJoinIncreaseListRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeClientJoinIncreaseListResponse`
        def DescribeClientJoinIncreaseList(request)
          body = send_request('DescribeClientJoinIncreaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientJoinIncreaseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 【该接口已下线，请切换使用升级版本DescribeRebateInfosNew】代理商可查询自己名下全部返佣信息

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

        # 代理商可查询自己名下全部返佣信息

        # @param request: Request instance for DescribeRebateInfosNew.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeRebateInfosNewRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeRebateInfosNewResponse`
        def DescribeRebateInfosNew(request)
          body = send_request('DescribeRebateInfosNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRebateInfosNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 代理商名下客户解绑记录查询接口

        # @param request: Request instance for DescribeUnbindClientList.
        # @type request: :class:`Tencentcloud::partners::V20180321::DescribeUnbindClientListRequest`
        # @rtype: :class:`Tencentcloud::partners::V20180321::DescribeUnbindClientListResponse`
        def DescribeUnbindClientList(request)
          body = send_request('DescribeUnbindClientList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnbindClientListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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