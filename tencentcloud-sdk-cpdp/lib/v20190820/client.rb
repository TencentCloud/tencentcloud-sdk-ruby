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
  module Cpdp
    module V20190820
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-08-20'
            api_endpoint = 'cpdp.tencentcloudapi.com'
            sdk_version = 'CPDP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 跨境-提交申报材料。申报材料的主体是付款人，需要提前调用【跨境-付款人申请】接口提交付款人信息且审核通过后调用。

        # @param request: Request instance for ApplyApplicationMaterial.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyApplicationMaterialRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyApplicationMaterialResponse`
        def ApplyApplicationMaterial(request)
          body = send_request('ApplyApplicationMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyApplicationMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-汇出指令申请。通过该接口可将对接方账户中的人民币余额汇兑成外币，再汇出至指定银行账户。

        # @param request: Request instance for ApplyOutwardOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyOutwardOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyOutwardOrderResponse`
        def ApplyOutwardOrder(request)
          body = send_request('ApplyOutwardOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyOutwardOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-付款人申请。通过该接口提交付款人信息并进行 kyc 审核。

        # @param request: Request instance for ApplyPayerInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyPayerInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyPayerInfoResponse`
        def ApplyPayerInfo(request)
          body = send_request('ApplyPayerInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyPayerInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 正常结算提现失败情况下，发起重新提现的请求接口

        # @param request: Request instance for ApplyReWithdrawal.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyReWithdrawalRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyReWithdrawalResponse`
        def ApplyReWithdrawal(request)
          body = send_request('ApplyReWithdrawal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyReWithdrawalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-提交贸易材料。通过提交贸易材料接口可为对接方累计贸易额度，在额度范围内可发起汇兑汇出交易。

        # @param request: Request instance for ApplyTrade.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyTradeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyTradeResponse`
        def ApplyTrade(request)
          body = send_request('ApplyTrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyTradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户提现

        # @param request: Request instance for ApplyWithdrawal.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyWithdrawalRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyWithdrawalResponse`
        def ApplyWithdrawal(request)
          body = send_request('ApplyWithdrawal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyWithdrawalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-绑定账号

        # @param request: Request instance for BindAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindAccountResponse`
        def BindAccount(request)
          body = send_request('BindAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户绑定提现银行卡，每个商户只能绑定一张提现银行卡

        # @param request: Request instance for BindAcct.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindAcctRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindAcctResponse`
        def BindAcct(request)
          body = send_request('BindAcct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAcctResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员绑定提现账户-回填银联鉴权短信码。用于会员填写动态验证码后，发往银行进行验证，验证成功则完成绑定。

        # @param request: Request instance for BindRelateAccReUnionPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindRelateAccReUnionPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindRelateAccReUnionPayResponse`
        def BindRelateAccReUnionPay(request)
          body = send_request('BindRelateAccReUnionPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindRelateAccReUnionPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员绑定提现账户-小额鉴权。会员申请绑定提现账户，绑定后从会员子账户中提现到绑定账户。
        # 转账鉴权有两种形式：往账鉴权和来账鉴权。
        # 往账鉴权：该接口发起成功后，银行会向提现账户转入小于等于0.5元的随机金额，并短信通知客户查看，客户查看后，需将收到的金额大小，在电商平台页面上回填，并通知银行。银行验证通过后，完成提现账户绑定。
        # 来账鉴权：该接口发起成功后，银行以短信通知客户查看，客户查看后，需通过待绑定的账户往市场的监管账户转入短信上指定的金额。银行检索到该笔指定金额的来账是源自待绑定账户，则绑定成功。平安银行的账户，即BankType送1时，大小额行号和超级网银号都不用送。

        # @param request: Request instance for BindRelateAcctSmallAmount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindRelateAcctSmallAmountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindRelateAcctSmallAmountResponse`
        def BindRelateAcctSmallAmount(request)
          body = send_request('BindRelateAcctSmallAmount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindRelateAcctSmallAmountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员绑定提现账户-银联鉴权。用于会员申请绑定提现账户，申请后银行前往银联验证卡信息：姓名、证件、卡号、银行预留手机是否相符，相符则发送给会员手机动态验证码并返回成功，不相符则返回失败。
        # 平台接收到银行返回成功后，进入输入动态验证码的页面，有效期120秒，若120秒未输入，客户可点击重新发送动态验证码，这个步骤重新调用该接口即可。
        # 平安银行的账户，大小额行号和超级网银号都不用送。
        # 超级网银号：单笔转账金额不超过5万，不限制笔数，只用选XX银行，不用具体到支行，可实时知道对方是否收款成功。
        # 大小额联行号：单笔转账可超过5万，需具体到支行，不能实时知道对方是否收款成功。金额超过5万的，在工作日的8点30-17点间才会成功。

        # @param request: Request instance for BindRelateAcctUnionPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindRelateAcctUnionPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindRelateAcctUnionPayResponse`
        def BindRelateAcctUnionPay(request)
          body = send_request('BindRelateAcctUnionPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindRelateAcctUnionPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户绑定提现银行卡的验证接口

        # @param request: Request instance for CheckAcct.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CheckAcctRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CheckAcctResponse`
        def CheckAcct(request)
          body = send_request('CheckAcct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAcctResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证鉴权金额。此接口可受理BindRelateAcctSmallAmount接口发起的转账金额（往账鉴权方式）的验证处理。若所回填的验证金额验证通过，则会绑定原申请中的银行账户作为提现账户。通过此接口也可以查得BindRelateAcctSmallAmount接口发起的来账鉴权方式的申请的当前状态。

        # @param request: Request instance for CheckAmount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CheckAmountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CheckAmountResponse`
        def CheckAmount(request)
          body = send_request('CheckAmount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAmountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口关闭此前已创建的订单，关闭后，用户将无法继续付款。仅能关闭创建后未支付的订单

        # @param request: Request instance for CloseOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CloseOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CloseOrderResponse`
        def CloseOrder(request)
          body = send_request('CloseOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-消费订单确认接口

        # @param request: Request instance for ConfirmOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ConfirmOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ConfirmOrderResponse`
        def ConfirmOrder(request)
          body = send_request('ConfirmOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 应用需要先带上签约信息调用本接口生成支付订单号，并将应答的PayInfo透传给聚鑫SDK，拉起客户端（包括微信公众号/微信小程序/客户端App）支付。

        # @param request: Request instance for ContractOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ContractOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ContractOrderResponse`
        def ContractOrder(request)
          body = send_request('ContractOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ContractOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 子商户入驻聚鑫平台

        # @param request: Request instance for CreateAcct.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateAcctRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateAcctResponse`
        def CreateAcct(request)
          body = send_request('CreateAcct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAcctResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-代理商完税信息录入

        # @param request: Request instance for CreateAgentTaxPaymentInfos.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateAgentTaxPaymentInfosRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateAgentTaxPaymentInfosResponse`
        def CreateAgentTaxPaymentInfos(request)
          body = send_request('CreateAgentTaxPaymentInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentTaxPaymentInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-批量主播转账接口

        # @param request: Request instance for CreateBatchPayment.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateBatchPaymentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateBatchPaymentResponse`
        def CreateBatchPayment(request)
          body = send_request('CreateBatchPayment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchPaymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员子账户开立。会员在银行注册，并开立会员子账户，交易网会员代码即会员在平台端系统的会员编号。
        # 平台需保存银行返回的子账户账号，后续交易接口都会用到。会员属性字段为预留扩展字段，当前必须送默认值。

        # @param request: Request instance for CreateCustAcctId.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateCustAcctIdRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateCustAcctIdResponse`
        def CreateCustAcctId(request)
          body = send_request('CreateCustAcctId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustAcctIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-主播入驻

        # @param request: Request instance for CreateExternalAnchor.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateExternalAnchorRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateExternalAnchorResponse`
        def CreateExternalAnchor(request)
          body = send_request('CreateExternalAnchor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExternalAnchorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票开具

        # @param request: Request instance for CreateInvoice.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateInvoiceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateInvoiceResponse`
        def CreateInvoice(request)
          body = send_request('CreateInvoice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInvoiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票开具V2

        # @param request: Request instance for CreateInvoiceV2.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateInvoiceV2Request`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateInvoiceV2Response`
        def CreateInvoiceV2(request)
          body = send_request('CreateInvoiceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInvoiceV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-商户注册

        # @param request: Request instance for CreateMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateMerchantResponse`
        def CreateMerchant(request)
          body = send_request('CreateMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-消费订单发起的接口

        # @param request: Request instance for CreateOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOrderResponse`
        def CreateOrder(request)
          body = send_request('CreateOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户新增的接口

        # @param request: Request instance for CreatePayMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreatePayMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreatePayMerchantResponse`
        def CreatePayMerchant(request)
          body = send_request('CreatePayMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePayMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票红冲

        # @param request: Request instance for CreateRedInvoice.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateRedInvoiceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateRedInvoiceResponse`
        def CreateRedInvoice(request)
          body = send_request('CreateRedInvoice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRedInvoiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票红冲V2

        # @param request: Request instance for CreateRedInvoiceV2.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateRedInvoiceV2Request`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateRedInvoiceV2Response`
        def CreateRedInvoiceV2(request)
          body = send_request('CreateRedInvoiceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRedInvoiceV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 银企直连-单笔支付接口

        # @param request: Request instance for CreateSinglePay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateSinglePayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateSinglePayResponse`
        def CreateSinglePay(request)
          body = send_request('CreateSinglePay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSinglePayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-单笔主播转账接口

        # @param request: Request instance for CreateSinglePayment.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateSinglePaymentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateSinglePaymentResponse`
        def CreateSinglePayment(request)
          body = send_request('CreateSinglePayment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSinglePaymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 微信商户发起批量转账

        # @param request: Request instance for CreateTransferBatch.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateTransferBatchRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateTransferBatchResponse`
        def CreateTransferBatch(request)
          body = send_request('CreateTransferBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTransferBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-删除代理商完税信息

        # @param request: Request instance for DeleteAgentTaxPaymentInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DeleteAgentTaxPaymentInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DeleteAgentTaxPaymentInfoResponse`
        def DeleteAgentTaxPaymentInfo(request)
          body = send_request('DeleteAgentTaxPaymentInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentTaxPaymentInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-删除代理商完税信息

        # @param request: Request instance for DeleteAgentTaxPaymentInfos.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DeleteAgentTaxPaymentInfosRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DeleteAgentTaxPaymentInfosResponse`
        def DeleteAgentTaxPaymentInfos(request)
          body = send_request('DeleteAgentTaxPaymentInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAgentTaxPaymentInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询充值明细接口

        # @param request: Request instance for DescribeChargeDetail.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DescribeChargeDetailRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DescribeChargeDetailResponse`
        def DescribeChargeDetail(request)
          body = send_request('DescribeChargeDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChargeDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单笔订单交易状态

        # @param request: Request instance for DescribeOrderStatus.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DescribeOrderStatusRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DescribeOrderStatusResponse`
        def DescribeOrderStatus(request)
          body = send_request('DescribeOrderStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrderStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 账单下载接口，根据本接口返回的URL地址，在D+1日下载对账单。注意，本接口返回的URL地址有时效，请尽快下载。URL超时时效后，请重新调用本接口再次获取。

        # @param request: Request instance for DownloadBill.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DownloadBillRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DownloadBillResponse`
        def DownloadBill(request)
          body = send_request('DownloadBill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadBillResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取对账中心账单下载地址的接口

        # @param request: Request instance for DownloadReconciliationUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DownloadReconciliationUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DownloadReconciliationUrlResponse`
        def DownloadReconciliationUrl(request)
          body = send_request('DownloadReconciliationUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadReconciliationUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员间交易接口

        # @param request: Request instance for ExecuteMemberTransaction.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ExecuteMemberTransactionRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ExecuteMemberTransactionResponse`
        def ExecuteMemberTransaction(request)
          body = send_request('ExecuteMemberTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteMemberTransactionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。

        # @param request: Request instance for MigrateOrderRefund.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::MigrateOrderRefundRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::MigrateOrderRefundResponse`
        def MigrateOrderRefund(request)
          body = send_request('MigrateOrderRefund', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateOrderRefundResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交退款申请后，通过调用该接口查询退款状态。退款可能有一定延时。

        # @param request: Request instance for MigrateOrderRefundQuery.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::MigrateOrderRefundQueryRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::MigrateOrderRefundQueryResponse`
        def MigrateOrderRefundQuery(request)
          body = send_request('MigrateOrderRefundQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateOrderRefundQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-修改代理商完税信息

        # @param request: Request instance for ModifyAgentTaxPaymentInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyAgentTaxPaymentInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyAgentTaxPaymentInfoResponse`
        def ModifyAgentTaxPaymentInfo(request)
          body = send_request('ModifyAgentTaxPaymentInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAgentTaxPaymentInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-重新绑定账号

        # @param request: Request instance for ModifyBindedAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyBindedAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyBindedAccountResponse`
        def ModifyBindedAccount(request)
          body = send_request('ModifyBindedAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBindedAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-商户信息修改的接口

        # @param request: Request instance for ModifyMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyMerchantResponse`
        def ModifyMerchant(request)
          body = send_request('ModifyMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 维护会员绑定提现账户联行号。此接口可以支持市场修改会员的提现账户的开户行信息，具体包括开户行行名、开户行的银行联行号（大小额联行号）和超级网银行号。

        # @param request: Request instance for ModifyMntMbrBindRelateAcctBankCode.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyMntMbrBindRelateAcctBankCodeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyMntMbrBindRelateAcctBankCodeResponse`
        def ModifyMntMbrBindRelateAcctBankCode(request)
          body = send_request('ModifyMntMbrBindRelateAcctBankCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMntMbrBindRelateAcctBankCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚鑫-查询子账户绑定银行卡

        # @param request: Request instance for QueryAcctBinding.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAcctBindingRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAcctBindingResponse`
        def QueryAcctBinding(request)
          body = send_request('QueryAcctBinding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAcctBindingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚鑫-开户信息查询

        # @param request: Request instance for QueryAcctInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAcctInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAcctInfoResponse`
        def QueryAcctInfo(request)
          body = send_request('QueryAcctInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAcctInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚鑫-开户信息列表查询, 查询某一段时间的开户信息

        # @param request: Request instance for QueryAcctInfoList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAcctInfoListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAcctInfoListResponse`
        def QueryAcctInfoList(request)
          body = send_request('QueryAcctInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAcctInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-查询代理商结算单链接

        # @param request: Request instance for QueryAgentStatements.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAgentStatementsRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAgentStatementsResponse`
        def QueryAgentStatements(request)
          body = send_request('QueryAgentStatements', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAgentStatementsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-查询批次信息

        # @param request: Request instance for QueryAgentTaxPaymentBatch.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAgentTaxPaymentBatchRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAgentTaxPaymentBatchResponse`
        def QueryAgentTaxPaymentBatch(request)
          body = send_request('QueryAgentTaxPaymentBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAgentTaxPaymentBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-查询主播签约信息

        # @param request: Request instance for QueryAnchorContractInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAnchorContractInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAnchorContractInfoResponse`
        def QueryAnchorContractInfo(request)
          body = send_request('QueryAnchorContractInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAnchorContractInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-成功申报材料查询。查询成功入库的申报材料。

        # @param request: Request instance for QueryApplicationMaterial.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryApplicationMaterialRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryApplicationMaterialResponse`
        def QueryApplicationMaterial(request)
          body = send_request('QueryApplicationMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryApplicationMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 子商户余额查询

        # @param request: Request instance for QueryBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBalanceResponse`
        def QueryBalance(request)
          body = send_request('QueryBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询银行在途清算结果。查询时间段内交易网的在途清算结果。

        # @param request: Request instance for QueryBankClear.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBankClearRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBankClearResponse`
        def QueryBankClear(request)
          body = send_request('QueryBankClear', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBankClearResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询银行时间段内交易明细。查询时间段的会员成功交易。

        # @param request: Request instance for QueryBankTransactionDetails.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBankTransactionDetailsRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBankTransactionDetailsResponse`
        def QueryBankTransactionDetails(request)
          body = send_request('QueryBankTransactionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBankTransactionDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询银行时间段内清分提现明细。查询银行时间段内清分提现明细接口：若为“见证+收单退款”“见证+收单充值”记录时备注Note为“见证+收单充值,订单号”“见证+收单退款,订单号”，此接口可以查到T0/T1的充值明细和退款记录。查询标志：充值记录仍用3清分选项查询，退款记录同提现用2选项查询。

        # @param request: Request instance for QueryBankWithdrawCashDetails.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBankWithdrawCashDetailsRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBankWithdrawCashDetailsResponse`
        def QueryBankWithdrawCashDetails(request)
          body = send_request('QueryBankWithdrawCashDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBankWithdrawCashDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-批量转账结果查询

        # @param request: Request instance for QueryBatchPaymentResult.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBatchPaymentResultRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBatchPaymentResultResponse`
        def QueryBatchPaymentResult(request)
          body = send_request('QueryBatchPaymentResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBatchPaymentResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单笔代发转账对账单下载URL

        # @param request: Request instance for QueryBillDownloadURL.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryBillDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryBillDownloadURLResponse`
        def QueryBillDownloadURL(request)
          body = send_request('QueryBillDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBillDownloadURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询普通转账充值明细。接口用于查询会员主动转账进资金汇总账户的明细情况。若会员使用绑定账号转入，则直接入账到会员子账户。若未使用绑定账号转入，则系统无法自动清分到对应子账户，则转入挂账子账户由平台自行清分。若是 “见证+收单充值”T0充值记录时备注Note为“见证+收单充值,订单号” 此接口可以查到T0到账的“见证+收单充值”充值记录。

        # @param request: Request instance for QueryCommonTransferRecharge.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCommonTransferRechargeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCommonTransferRechargeResponse`
        def QueryCommonTransferRecharge(request)
          body = send_request('QueryCommonTransferRecharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCommonTransferRechargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口查询签约数据

        # @param request: Request instance for QueryContract.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryContractRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryContractResponse`
        def QueryContract(request)
          body = send_request('QueryContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryContractResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询银行子账户余额。查询会员子账户以及平台的功能子账户的余额。

        # @param request: Request instance for QueryCustAcctIdBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCustAcctIdBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCustAcctIdBalanceResponse`
        def QueryCustAcctIdBalance(request)
          body = send_request('QueryCustAcctIdBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCustAcctIdBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-查询对账单下载地址的接口

        # @param request: Request instance for QueryDownloadBillURL.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryDownloadBillURLRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryDownloadBillURLResponse`
        def QueryDownloadBillURL(request)
          body = send_request('QueryDownloadBillURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDownloadBillURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-查询汇率

        # @param request: Request instance for QueryExchangeRate.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryExchangeRateRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryExchangeRateResponse`
        def QueryExchangeRate(request)
          body = send_request('QueryExchangeRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExchangeRateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票查询

        # @param request: Request instance for QueryInvoice.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryInvoiceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryInvoiceResponse`
        def QueryInvoice(request)
          body = send_request('QueryInvoice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryInvoiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-发票查询V2

        # @param request: Request instance for QueryInvoiceV2.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryInvoiceV2Request`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryInvoiceV2Response`
        def QueryInvoiceV2(request)
          body = send_request('QueryInvoiceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryInvoiceV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户恶意注册接口

        # @param request: Request instance for QueryMaliciousRegistration.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMaliciousRegistrationRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMaliciousRegistrationResponse`
        def QueryMaliciousRegistration(request)
          body = send_request('QueryMaliciousRegistration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMaliciousRegistrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员绑定信息查询。查询标志为“单个会员”的情况下，返回该会员的有效的绑定账户信息。
        # 查询标志为“全部会员”的情况下，返回市场下的全部的有效的绑定账户信息。查询标志为“单个会员的证件信息”的情况下，返回市场下的指定的会员的留存在电商见证宝系统的证件信息。

        # @param request: Request instance for QueryMemberBind.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMemberBindRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMemberBindResponse`
        def QueryMemberBind(request)
          body = send_request('QueryMemberBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMemberBindResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员间交易-不验证。此接口可以实现会员间的余额的交易，实现资金在会员之间流动。

        # @param request: Request instance for QueryMemberTransaction.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMemberTransactionRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMemberTransactionResponse`
        def QueryMemberTransaction(request)
          body = send_request('QueryMemberTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMemberTransactionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-商户信息查询接口

        # @param request: Request instance for QueryMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantResponse`
        def QueryMerchant(request)
          body = send_request('QueryMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-对接方账户余额查询

        # @param request: Request instance for QueryMerchantBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantBalanceResponse`
        def QueryMerchantBalance(request)
          body = send_request('QueryMerchantBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智慧零售-查询管理端商户

        # @param request: Request instance for QueryMerchantInfoForManagement.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantInfoForManagementRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantInfoForManagementResponse`
        def QueryMerchantInfoForManagement(request)
          body = send_request('QueryMerchantInfoForManagement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantInfoForManagementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-消费订单查询接口

        # @param request: Request instance for QueryMerchantOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantOrderResponse`
        def QueryMerchantOrder(request)
          body = send_request('QueryMerchantOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户查询已开通的支付方式列表

        # @param request: Request instance for QueryMerchantPayWayList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantPayWayListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantPayWayListResponse`
        def QueryMerchantPayWayList(request)
          body = send_request('QueryMerchantPayWayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantPayWayListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据订单号，或者用户Id，查询支付订单状态

        # @param request: Request instance for QueryOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOrderResponse`
        def QueryOrder(request)
          body = send_request('QueryOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询订单付款状态

        # @param request: Request instance for QueryOrderStatus.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOrderStatusRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOrderStatusResponse`
        def QueryOrderStatus(request)
          body = send_request('QueryOrderStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOrderStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-查询汇出结果

        # @param request: Request instance for QueryOutwardOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOutwardOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOutwardOrderResponse`
        def QueryOutwardOrder(request)
          body = send_request('QueryOutwardOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOutwardOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-付款人查询

        # @param request: Request instance for QueryPayerInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryPayerInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryPayerInfoResponse`
        def QueryPayerInfo(request)
          body = send_request('QueryPayerInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryPayerInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询对账文件信息。平台调用该接口获取需下载对账文件的文件名称以及密钥。 平台获取到信息后， 可以再调用OPENAPI的文件下载功能。

        # @param request: Request instance for QueryReconciliationDocument.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryReconciliationDocumentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryReconciliationDocumentResponse`
        def QueryReconciliationDocument(request)
          body = send_request('QueryReconciliationDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryReconciliationDocumentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交退款申请后，通过调用该接口查询退款状态。退款可能有一定延时，用微信零钱支付的退款约20分钟内到账，银行卡支付的退款约3个工作日后到账。

        # @param request: Request instance for QueryRefund.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryRefundRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryRefundResponse`
        def QueryRefund(request)
          body = send_request('QueryRefund', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryRefundResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 银企直连-单笔支付状态查询接口

        # @param request: Request instance for QuerySinglePay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QuerySinglePayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QuerySinglePayResponse`
        def QuerySinglePay(request)
          body = send_request('QuerySinglePay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuerySinglePayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-单笔转账结果查询

        # @param request: Request instance for QuerySinglePaymentResult.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QuerySinglePaymentResultRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QuerySinglePaymentResultResponse`
        def QuerySinglePaymentResult(request)
          body = send_request('QuerySinglePaymentResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuerySinglePaymentResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询银行单笔交易状态。查询单笔交易的状态。

        # @param request: Request instance for QuerySingleTransactionStatus.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QuerySingleTransactionStatusRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QuerySingleTransactionStatusResponse`
        def QuerySingleTransactionStatus(request)
          body = send_request('QuerySingleTransactionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuerySingleTransactionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询小额鉴权转账结果。查询小额往账鉴权的转账状态。

        # @param request: Request instance for QuerySmallAmountTransfer.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QuerySmallAmountTransferRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QuerySmallAmountTransferResponse`
        def QuerySmallAmountTransfer(request)
          body = send_request('QuerySmallAmountTransfer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuerySmallAmountTransferResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 跨境-贸易材料明细查询。

        # @param request: Request instance for QueryTrade.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryTradeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryTradeResponse`
        def QueryTrade(request)
          body = send_request('QueryTrade', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTradeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过商家批次单号或者微信批次号查询批次单

        # @param request: Request instance for QueryTransferBatch.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryTransferBatchRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryTransferBatchResponse`
        def QueryTransferBatch(request)
          body = send_request('QueryTransferBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTransferBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过商家或者微信批次明细单号查询明细单

        # @param request: Request instance for QueryTransferDetail.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryTransferDetailRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryTransferDetailResponse`
        def QueryTransferDetail(request)
          body = send_request('QueryTransferDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTransferDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智能代发-单笔代发转账查询接口

        # @param request: Request instance for QueryTransferResult.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryTransferResultRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryTransferResultResponse`
        def QueryTransferResult(request)
          body = send_request('QueryTransferResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTransferResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员在途充值(经第三方支付渠道)接口

        # @param request: Request instance for RechargeByThirdPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RechargeByThirdPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RechargeByThirdPayResponse`
        def RechargeByThirdPay(request)
          body = send_request('RechargeByThirdPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RechargeByThirdPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 见证宝-会员在途充值(经第三方支付渠道)

        # @param request: Request instance for RechargeMemberThirdPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RechargeMemberThirdPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RechargeMemberThirdPayResponse`
        def RechargeMemberThirdPay(request)
          body = send_request('RechargeMemberThirdPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RechargeMemberThirdPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。

        # @param request: Request instance for Refund.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundResponse`
        def Refund(request)
          body = send_request('Refund', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员间交易退款

        # @param request: Request instance for RefundMemberTransaction.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundMemberTransactionRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundMemberTransactionResponse`
        def RefundMemberTransaction(request)
          body = send_request('RefundMemberTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundMemberTransactionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云鉴-消费订单退款的接口

        # @param request: Request instance for RefundOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundOrderResponse`
        def RefundOrder(request)
          body = send_request('RefundOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付订单退款接口

        # @param request: Request instance for RefundTlinxOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundTlinxOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundTlinxOrderResponse`
        def RefundTlinxOrder(request)
          body = send_request('RefundTlinxOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundTlinxOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户查询是否签约和签约行为上报

        # @param request: Request instance for RegisterBehavior.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RegisterBehaviorRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RegisterBehaviorResponse`
        def RegisterBehavior(request)
          body = send_request('RegisterBehavior', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterBehaviorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 登记挂账(支持撤销)

        # @param request: Request instance for RegisterBill.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RegisterBillRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RegisterBillResponse`
        def RegisterBill(request)
          body = send_request('RegisterBill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterBillResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 登记挂账(支持撤销)。此接口可实现把不明来账或自有资金等已登记在挂账子账户下的资金调整到普通会员子账户。即通过申请调用此接口，将会减少挂账子账户的资金，调增指定的普通会员子账户的可提现余额及可用余额。此接口不支持把挂账子账户资金清分到功能子账户。

        # @param request: Request instance for RegisterBillSupportWithdraw.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RegisterBillSupportWithdrawRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RegisterBillSupportWithdrawResponse`
        def RegisterBillSupportWithdraw(request)
          body = send_request('RegisterBillSupportWithdraw', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterBillSupportWithdrawResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 登记挂账撤销。此接口可以实现把RegisterBillSupportWithdraw接口完成的登记挂账进行撤销，即调减普通会员子账户的可提现和可用余额，调增挂账子账户的可用余额。

        # @param request: Request instance for RevResigterBillSupportWithdraw.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RevResigterBillSupportWithdrawRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RevResigterBillSupportWithdrawResponse`
        def RevResigterBillSupportWithdraw(request)
          body = send_request('RevResigterBillSupportWithdraw', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevResigterBillSupportWithdrawResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改会员属性-普通商户子账户。修改会员的会员属性。

        # @param request: Request instance for ReviseMbrProperty.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ReviseMbrPropertyRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ReviseMbrPropertyResponse`
        def ReviseMbrProperty(request)
          body = send_request('ReviseMbrProperty', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReviseMbrPropertyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 撤销会员在途充值(经第三方支付渠道)

        # @param request: Request instance for RevokeMemberRechargeThirdPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RevokeMemberRechargeThirdPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RevokeMemberRechargeThirdPayResponse`
        def RevokeMemberRechargeThirdPay(request)
          body = send_request('RevokeMemberRechargeThirdPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeMemberRechargeThirdPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 撤销会员在途充值(经第三方支付渠道)接口

        # @param request: Request instance for RevokeRechargeByThirdPay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RevokeRechargeByThirdPayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RevokeRechargeByThirdPayResponse`
        def RevokeRechargeByThirdPay(request)
          body = send_request('RevokeRechargeByThirdPay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeRechargeByThirdPayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对于存量的签约关系导入或者部分场景下米大师无法收到签约通知的场景，需要由调用方主动将签约状态同步至米大师

        # @param request: Request instance for SyncContractData.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::SyncContractDataRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::SyncContractDataResponse`
        def SyncContractData(request)
          body = send_request('SyncContractData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncContractDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口进行解约

        # @param request: Request instance for TerminateContract.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::TerminateContractRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::TerminateContractResponse`
        def TerminateContract(request)
          body = send_request('TerminateContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateContractResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智能代发-单笔代发转账接口

        # @param request: Request instance for TransferSinglePay.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::TransferSinglePayRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::TransferSinglePayResponse`
        def TransferSinglePay(request)
          body = send_request('TransferSinglePay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransferSinglePayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商户解除绑定的提现银行卡

        # @param request: Request instance for UnBindAcct.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnBindAcctRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnBindAcctResponse`
        def UnBindAcct(request)
          body = send_request('UnBindAcct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindAcctResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员解绑提现账户。此接口可以支持会员解除名下的绑定账户关系。

        # @param request: Request instance for UnbindRelateAcct.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnbindRelateAcctRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnbindRelateAcctResponse`
        def UnbindRelateAcct(request)
          body = send_request('UnbindRelateAcct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindRelateAcctResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 应用需要先调用本接口生成支付订单号，并将应答的PayInfo透传给聚鑫SDK，拉起客户端（包括微信公众号/微信小程序/客户端App）支付。

        # @param request: Request instance for UnifiedOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnifiedOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnifiedOrderResponse`
        def UnifiedOrder(request)
          body = send_request('UnifiedOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnifiedOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-统一下单接口

        # @param request: Request instance for UnifiedTlinxOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnifiedTlinxOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnifiedTlinxOrderResponse`
        def UnifiedTlinxOrder(request)
          body = send_request('UnifiedTlinxOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnifiedTlinxOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云-上传主播信息

        # @param request: Request instance for UploadExternalAnchorInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadExternalAnchorInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadExternalAnchorInfoResponse`
        def UploadExternalAnchorInfo(request)
          body = send_request('UploadExternalAnchorInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadExternalAnchorInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-上传代理商完税列表

        # @param request: Request instance for UploadTaxList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadTaxListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadTaxListResponse`
        def UploadTaxList(request)
          body = send_request('UploadTaxList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadTaxListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播平台-上传代理商完税证明

        # @param request: Request instance for UploadTaxPayment.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadTaxPaymentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadTaxPaymentResponse`
        def UploadTaxPayment(request)
          body = send_request('UploadTaxPayment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadTaxPaymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会员提现-不验证。此接口受理会员发起的提现申请。会员子账户的可提现余额、可用余额会减少，市场的资金汇总账户(监管账户)会减少相应的发生金额，提现到会员申请的收款账户。

        # @param request: Request instance for WithdrawCashMembership.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::WithdrawCashMembershipRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::WithdrawCashMembershipResponse`
        def WithdrawCashMembership(request)
          body = send_request('WithdrawCashMembership', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WithdrawCashMembershipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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