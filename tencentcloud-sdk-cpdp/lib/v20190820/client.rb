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


        # 云支付-添加合同接口

        # @param request: Request instance for AddContract.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddContractRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddContractResponse`
        def AddContract(request)
          body = send_request('AddContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddContractResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-绑定收款用户资金账号信息

        # @param request: Request instance for AddFlexFundingAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddFlexFundingAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddFlexFundingAccountResponse`
        def AddFlexFundingAccount(request)
          body = send_request('AddFlexFundingAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddFlexFundingAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-补充证件信息

        # @param request: Request instance for AddFlexIdInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddFlexIdInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddFlexIdInfoResponse`
        def AddFlexIdInfo(request)
          body = send_request('AddFlexIdInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddFlexIdInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-补充手机号信息

        # @param request: Request instance for AddFlexPhoneNo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddFlexPhoneNoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddFlexPhoneNoResponse`
        def AddFlexPhoneNo(request)
          body = send_request('AddFlexPhoneNo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddFlexPhoneNoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-添加商户接口

        # @param request: Request instance for AddMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddMerchantResponse`
        def AddMerchant(request)
          body = send_request('AddMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-添加门店接口

        # @param request: Request instance for AddShop.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::AddShopRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::AddShopResponse`
        def AddShop(request)
          body = send_request('AddShop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddShopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
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

        # 灵云V2-付款

        # @param request: Request instance for ApplyFlexPayment.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexPaymentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexPaymentResponse`
        def ApplyFlexPayment(request)
          body = send_request('ApplyFlexPayment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyFlexPaymentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-结算

        # @param request: Request instance for ApplyFlexSettlement.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexSettlementRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexSettlementResponse`
        def ApplyFlexSettlement(request)
          body = send_request('ApplyFlexSettlement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyFlexSettlementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 微工卡开通预核身接口

        # @param request: Request instance for ApplyFlexWechatPreAuth.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexWechatPreAuthRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyFlexWechatPreAuthResponse`
        def ApplyFlexWechatPreAuth(request)
          body = send_request('ApplyFlexWechatPreAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyFlexWechatPreAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-申请单笔交易回单

        # @param request: Request instance for ApplyOpenBankOrderDetailReceipt.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankOrderDetailReceiptRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankOrderDetailReceiptResponse`
        def ApplyOpenBankOrderDetailReceipt(request)
          body = send_request('ApplyOpenBankOrderDetailReceipt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyOpenBankOrderDetailReceiptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-结算申请接口

        # @param request: Request instance for ApplyOpenBankSettleOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankSettleOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankSettleOrderResponse`
        def ApplyOpenBankSettleOrder(request)
          body = send_request('ApplyOpenBankSettleOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyOpenBankSettleOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 子商户在线签约

        # @param request: Request instance for ApplyOpenBankSubMerchantSignOnline.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankSubMerchantSignOnlineRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyOpenBankSubMerchantSignOnlineResponse`
        def ApplyOpenBankSubMerchantSignOnline(request)
          body = send_request('ApplyOpenBankSubMerchantSignOnline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyOpenBankSubMerchantSignOnlineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 聚鑫-申请对账文件

        # @param request: Request instance for ApplyReconciliationFile.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ApplyReconciliationFileRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ApplyReconciliationFileResponse`
        def ApplyReconciliationFile(request)
          body = send_request('ApplyReconciliationFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyReconciliationFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-子商户银行卡绑定

        # @param request: Request instance for BindOpenBankExternalSubMerchantBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindOpenBankExternalSubMerchantBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindOpenBankExternalSubMerchantBankAccountResponse`
        def BindOpenBankExternalSubMerchantBankAccount(request)
          body = send_request('BindOpenBankExternalSubMerchantBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindOpenBankExternalSubMerchantBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-绑定分账收款方

        # @param request: Request instance for BindOpenBankProfitSharePayee.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::BindOpenBankProfitSharePayeeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::BindOpenBankProfitSharePayeeResponse`
        def BindOpenBankProfitSharePayee(request)
          body = send_request('BindOpenBankProfitSharePayee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindOpenBankProfitSharePayeeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 通过此接口关闭此前已创建的订单。关闭后，用户将无法继续付款，仅能关闭创建后未支付的订单。

        # @param request: Request instance for CloseCloudOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CloseCloudOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CloseCloudOrderResponse`
        def CloseCloudOrder(request)
          body = send_request('CloseCloudOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseCloudOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-关闭订单

        # @param request: Request instance for CloseOpenBankPaymentOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CloseOpenBankPaymentOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CloseOpenBankPaymentOrderResponse`
        def CloseOpenBankPaymentOrder(request)
          body = send_request('CloseOpenBankPaymentOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseOpenBankPaymentOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 直播平台-主播入驻

        # @param request: Request instance for CreateAnchor.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateAnchorRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateAnchorResponse`
        def CreateAnchor(request)
          body = send_request('CreateAnchor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAnchorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建子商户

        # @param request: Request instance for CreateCloudSubMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateCloudSubMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateCloudSubMerchantResponse`
        def CreateCloudSubMerchant(request)
          body = send_request('CreateCloudSubMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudSubMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 灵云V2-收款用户开立

        # @param request: Request instance for CreateFlexPayee.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateFlexPayeeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateFlexPayeeResponse`
        def CreateFlexPayee(request)
          body = send_request('CreateFlexPayee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlexPayeeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-子商户进件V2

        # @param request: Request instance for CreateOpenBankAggregatedSubMerchantRegistration.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankAggregatedSubMerchantRegistrationRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankAggregatedSubMerchantRegistrationResponse`
        def CreateOpenBankAggregatedSubMerchantRegistration(request)
          body = send_request('CreateOpenBankAggregatedSubMerchantRegistration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankAggregatedSubMerchantRegistrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方子商户电子记账本创建接口

        # @param request: Request instance for CreateOpenBankExternalSubMerchantAccountBook.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankExternalSubMerchantAccountBookRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankExternalSubMerchantAccountBookResponse`
        def CreateOpenBankExternalSubMerchantAccountBook(request)
          body = send_request('CreateOpenBankExternalSubMerchantAccountBook', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankExternalSubMerchantAccountBookResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户进件

        # @param request: Request instance for CreateOpenBankExternalSubMerchantRegistration.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankExternalSubMerchantRegistrationRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankExternalSubMerchantRegistrationResponse`
        def CreateOpenBankExternalSubMerchantRegistration(request)
          body = send_request('CreateOpenBankExternalSubMerchantRegistration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankExternalSubMerchantRegistrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-跨境支付下单

        # @param request: Request instance for CreateOpenBankGlobalPaymentOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankGlobalPaymentOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankGlobalPaymentOrderResponse`
        def CreateOpenBankGlobalPaymentOrder(request)
          body = send_request('CreateOpenBankGlobalPaymentOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankGlobalPaymentOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-创建商户

        # @param request: Request instance for CreateOpenBankMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankMerchantResponse`
        def CreateOpenBankMerchant(request)
          body = send_request('CreateOpenBankMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-创建支付订单。支持B2B网关支付，B2C转账下单。

        # @param request: Request instance for CreateOpenBankPaymentOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankPaymentOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankPaymentOrderResponse`
        def CreateOpenBankPaymentOrder(request)
          body = send_request('CreateOpenBankPaymentOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankPaymentOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-创建充值订单

        # @param request: Request instance for CreateOpenBankRechargeOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankRechargeOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankRechargeOrderResponse`
        def CreateOpenBankRechargeOrder(request)
          body = send_request('CreateOpenBankRechargeOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankRechargeOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户费率配置

        # @param request: Request instance for CreateOpenBankSubMerchantRateConfigure.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankSubMerchantRateConfigureRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankSubMerchantRateConfigureResponse`
        def CreateOpenBankSubMerchantRateConfigure(request)
          body = send_request('CreateOpenBankSubMerchantRateConfigure', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankSubMerchantRateConfigureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-聚合下单

        # @param request: Request instance for CreateOpenBankUnifiedOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankUnifiedOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankUnifiedOrderResponse`
        def CreateOpenBankUnifiedOrder(request)
          body = send_request('CreateOpenBankUnifiedOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankUnifiedOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-创建核销申请，适用于针对支付订单维度的确认收货，解冻等业务场景。目前支持的渠道有TENPAY下的EBANK_PAYMENT付款方式创建支付订单时，选择担保支付下单的订单进行解冻。

        # @param request: Request instance for CreateOpenBankVerificationOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankVerificationOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreateOpenBankVerificationOrderResponse`
        def CreateOpenBankVerificationOrder(request)
          body = send_request('CreateOpenBankVerificationOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOpenBankVerificationOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 务工卡-核身预下单

        # @param request: Request instance for CreatePayRollPreOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollPreOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollPreOrderResponse`
        def CreatePayRollPreOrder(request)
          body = send_request('CreatePayRollPreOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePayRollPreOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 务工卡-核身预下单带授权

        # @param request: Request instance for CreatePayRollPreOrderWithAuth.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollPreOrderWithAuthRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollPreOrderWithAuthResponse`
        def CreatePayRollPreOrderWithAuth(request)
          body = send_request('CreatePayRollPreOrderWithAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePayRollPreOrderWithAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 务工卡-生成授权令牌

        # @param request: Request instance for CreatePayRollToken.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollTokenRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::CreatePayRollTokenResponse`
        def CreatePayRollToken(request)
          body = send_request('CreatePayRollToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePayRollTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 直播平台-扣减额度

        # @param request: Request instance for DeduceQuota.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DeduceQuotaRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DeduceQuotaResponse`
        def DeduceQuota(request)
          body = send_request('DeduceQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeduceQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-分账授权申请查询接口

        # @param request: Request instance for DistributeAccreditQuery.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeAccreditQueryRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeAccreditQueryResponse`
        def DistributeAccreditQuery(request)
          body = send_request('DistributeAccreditQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeAccreditQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账授权申请接口

        # @param request: Request instance for DistributeAccreditTlinx.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeAccreditTlinxRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeAccreditTlinxResponse`
        def DistributeAccreditTlinx(request)
          body = send_request('DistributeAccreditTlinx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeAccreditTlinxResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账添加分账接收方接口

        # @param request: Request instance for DistributeAddReceiver.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeAddReceiverRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeAddReceiverResponse`
        def DistributeAddReceiver(request)
          body = send_request('DistributeAddReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeAddReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账请求接口

        # @param request: Request instance for DistributeApply.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeApplyRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeApplyResponse`
        def DistributeApply(request)
          body = send_request('DistributeApply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeApplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账撤销接口

        # @param request: Request instance for DistributeCancel.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeCancelRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeCancelResponse`
        def DistributeCancel(request)
          body = send_request('DistributeCancel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeCancelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账结果查询接口

        # @param request: Request instance for DistributeQuery.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeQueryRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeQueryResponse`
        def DistributeQuery(request)
          body = send_request('DistributeQuery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeQueryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询已添加分账接收方接口

        # @param request: Request instance for DistributeQueryReceiver.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeQueryReceiverRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeQueryReceiverResponse`
        def DistributeQueryReceiver(request)
          body = send_request('DistributeQueryReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeQueryReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-分账解除分账接收方接口

        # @param request: Request instance for DistributeRemoveReceiver.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DistributeRemoveReceiverRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DistributeRemoveReceiverResponse`
        def DistributeRemoveReceiver(request)
          body = send_request('DistributeRemoveReceiver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DistributeRemoveReceiverResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-下载机构文件接口

        # @param request: Request instance for DownloadOrgFile.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::DownloadOrgFileRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::DownloadOrgFileResponse`
        def DownloadOrgFile(request)
          body = send_request('DownloadOrgFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadOrgFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 灵云V2-冻结余额

        # @param request: Request instance for FreezeFlexBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::FreezeFlexBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::FreezeFlexBalanceResponse`
        def FreezeFlexBalance(request)
          body = send_request('FreezeFlexBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeFlexBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
        # 订单号,订单归属日期,机构编号,订单描述,交易类型,订单状态,支付场景,原始金额,折扣金额,实际交易金额,支付渠道优惠金额,抹零金额,币种,下单时间,付款成功时间,商户编号,门店编号,付款方式编号,付款方式名称,商户手续费T1,商户扣率,是否信用卡交易,原始订单号,用户账号,外部订单号,订单备注

        # @param request: Request instance for GetBillDownloadUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::GetBillDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::GetBillDownloadUrlResponse`
        def GetBillDownloadUrl(request)
          body = send_request('GetBillDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBillDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用该接口返回对账单下载地址，对账单下载URL通过GET方式访问，返回zip包，解压后为csv格式文件。文件首行如下：
        # 商户号,订单号,支付订单号,分账订单总金额,分账详情（通过|分割每笔明细：商户号1#分账金额1|商户号2#分账金额2）,交易手续费承担方商户号,交易手续费,发起时间,分账状态,结算日期,非交易主体分账金额,商户退款订单号,商户分账单号

        # @param request: Request instance for GetDistributeBillDownloadUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::GetDistributeBillDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::GetDistributeBillDownloadUrlResponse`
        def GetDistributeBillDownloadUrl(request)
          body = send_request('GetDistributeBillDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDistributeBillDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 务工卡-查询授权关系

        # @param request: Request instance for GetPayRollAuth.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthResponse`
        def GetPayRollAuth(request)
          body = send_request('GetPayRollAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPayRollAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 务工卡-查询核身记录

        # @param request: Request instance for GetPayRollAuthList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthListResponse`
        def GetPayRollAuthList(request)
          body = send_request('GetPayRollAuthList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPayRollAuthListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 务工卡-获取核身结果

        # @param request: Request instance for GetPayRollAuthResult.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthResultRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::GetPayRollAuthResultResponse`
        def GetPayRollAuthResult(request)
          body = send_request('GetPayRollAuthResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPayRollAuthResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 山姆聚合支付项目-存量订单退款接口。可以通过本接口将支付款全部或部分退还给付款方，在收到用户退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付账号。

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

        # 灵云V2-修改收款用户资金账号信息

        # @param request: Request instance for ModifyFlexFundingAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyFlexFundingAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyFlexFundingAccountResponse`
        def ModifyFlexFundingAccount(request)
          body = send_request('ModifyFlexFundingAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFlexFundingAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-收款用户账户权益状态修改

        # @param request: Request instance for ModifyFlexPayeeAccountRightStatus.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ModifyFlexPayeeAccountRightStatusRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ModifyFlexPayeeAccountRightStatusResponse`
        def ModifyFlexPayeeAccountRightStatus(request)
          body = send_request('ModifyFlexPayeeAccountRightStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFlexPayeeAccountRightStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 直播平台-查询分配关系

        # @param request: Request instance for QueryAssignment.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryAssignmentRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryAssignmentResponse`
        def QueryAssignment(request)
          body = send_request('QueryAssignment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAssignmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-查询城市编码接口

        # @param request: Request instance for QueryCityCode.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCityCodeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCityCodeResponse`
        def QueryCityCode(request)
          body = send_request('QueryCityCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCityCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起支付等渠道操作后，可以调用该接口查询渠道的数据。

        # @param request: Request instance for QueryCloudChannelData.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCloudChannelDataRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCloudChannelDataResponse`
        def QueryCloudChannelData(request)
          body = send_request('QueryCloudChannelData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCloudChannelDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据订单号或用户ID，查询支付订单状态。

        # @param request: Request instance for QueryCloudOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCloudOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCloudOrderResponse`
        def QueryCloudOrder(request)
          body = send_request('QueryCloudOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCloudOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for QueryCloudRefundOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCloudRefundOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCloudRefundOrderResponse`
        def QueryCloudRefundOrder(request)
          body = send_request('QueryCloudRefundOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCloudRefundOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 智慧零售-查询公司抬头

        # @param request: Request instance for QueryCompanyTitle.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryCompanyTitleRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryCompanyTitleResponse`
        def QueryCompanyTitle(request)
          body = send_request('QueryCompanyTitle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCompanyTitleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-查询支付方式费率及自定义表单项接口

        # @param request: Request instance for QueryContractPayFee.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryContractPayFeeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryContractPayFeeResponse`
        def QueryContractPayFee(request)
          body = send_request('QueryContractPayFee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryContractPayFeeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询合同支付方式列表接口

        # @param request: Request instance for QueryContractPayWayList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryContractPayWayListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryContractPayWayListResponse`
        def QueryContractPayWayList(request)
          body = send_request('QueryContractPayWayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryContractPayWayListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询合同可关联门店接口

        # @param request: Request instance for QueryContractRelateShop.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryContractRelateShopRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryContractRelateShopResponse`
        def QueryContractRelateShop(request)
          body = send_request('QueryContractRelateShop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryContractRelateShopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 灵云-查询超额信息

        # @param request: Request instance for QueryExceedingInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryExceedingInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryExceedingInfoResponse`
        def QueryExceedingInfo(request)
          body = send_request('QueryExceedingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExceedingInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 财税-查询金融数据文件下载链接

        # @param request: Request instance for QueryFinancialDataUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFinancialDataUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFinancialDataUrlResponse`
        def QueryFinancialDataUrl(request)
          body = send_request('QueryFinancialDataUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFinancialDataUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询税前金额

        # @param request: Request instance for QueryFlexAmountBeforeTax.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexAmountBeforeTaxRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexAmountBeforeTaxResponse`
        def QueryFlexAmountBeforeTax(request)
          body = send_request('QueryFlexAmountBeforeTax', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexAmountBeforeTaxResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询对账单文件下载链接

        # @param request: Request instance for QueryFlexBillDownloadUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexBillDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexBillDownloadUrlResponse`
        def QueryFlexBillDownloadUrl(request)
          body = send_request('QueryFlexBillDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexBillDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询冻结订单列表

        # @param request: Request instance for QueryFlexFreezeOrderList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexFreezeOrderListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexFreezeOrderListResponse`
        def QueryFlexFreezeOrderList(request)
          body = send_request('QueryFlexFreezeOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexFreezeOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-订单汇总列表查询

        # @param request: Request instance for QueryFlexOrderSummaryList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexOrderSummaryListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexOrderSummaryListResponse`
        def QueryFlexOrderSummaryList(request)
          body = send_request('QueryFlexOrderSummaryList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexOrderSummaryListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-收款用户账户余额查询

        # @param request: Request instance for QueryFlexPayeeAccountBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountBalanceResponse`
        def QueryFlexPayeeAccountBalance(request)
          body = send_request('QueryFlexPayeeAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPayeeAccountBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-收款用户账户信息查询

        # @param request: Request instance for QueryFlexPayeeAccountInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountInfoResponse`
        def QueryFlexPayeeAccountInfo(request)
          body = send_request('QueryFlexPayeeAccountInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPayeeAccountInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-收款用户账户列表查询

        # @param request: Request instance for QueryFlexPayeeAccountList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeAccountListResponse`
        def QueryFlexPayeeAccountList(request)
          body = send_request('QueryFlexPayeeAccountList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPayeeAccountListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-收款用户信息查询

        # @param request: Request instance for QueryFlexPayeeInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPayeeInfoResponse`
        def QueryFlexPayeeInfo(request)
          body = send_request('QueryFlexPayeeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPayeeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询付款订单列表

        # @param request: Request instance for QueryFlexPaymentOrderList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPaymentOrderListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPaymentOrderListResponse`
        def QueryFlexPaymentOrderList(request)
          body = send_request('QueryFlexPaymentOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPaymentOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询付款订单状态

        # @param request: Request instance for QueryFlexPaymentOrderStatus.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPaymentOrderStatusRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPaymentOrderStatusResponse`
        def QueryFlexPaymentOrderStatus(request)
          body = send_request('QueryFlexPaymentOrderStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPaymentOrderStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-平台账户余额查询

        # @param request: Request instance for QueryFlexPlatformAccountBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPlatformAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexPlatformAccountBalanceResponse`
        def QueryFlexPlatformAccountBalance(request)
          body = send_request('QueryFlexPlatformAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexPlatformAccountBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询服务商账户余额

        # @param request: Request instance for QueryFlexServiceProviderAccountBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexServiceProviderAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexServiceProviderAccountBalanceResponse`
        def QueryFlexServiceProviderAccountBalance(request)
          body = send_request('QueryFlexServiceProviderAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexServiceProviderAccountBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灵云V2-查询结算订单列表

        # @param request: Request instance for QueryFlexSettlementOrderList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexSettlementOrderListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexSettlementOrderListResponse`
        def QueryFlexSettlementOrderList(request)
          body = send_request('QueryFlexSettlementOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexSettlementOrderListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询微工卡核身结果

        # @param request: Request instance for QueryFlexWechatAuthResult.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFlexWechatAuthResultRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFlexWechatAuthResultResponse`
        def QueryFlexWechatAuthResult(request)
          body = send_request('QueryFlexWechatAuthResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFlexWechatAuthResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 聚鑫-查询会员资金交易信息列表

        # @param request: Request instance for QueryFundsTransactionDetails.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryFundsTransactionDetailsRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryFundsTransactionDetailsResponse`
        def QueryFundsTransactionDetails(request)
          body = send_request('QueryFundsTransactionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFundsTransactionDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 聚鑫-查询会员间交易信息列表

        # @param request: Request instance for QueryMemberTransactionDetails.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMemberTransactionDetailsRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMemberTransactionDetailsResponse`
        def QueryMemberTransactionDetails(request)
          body = send_request('QueryMemberTransactionDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMemberTransactionDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-查询商户分类接口

        # @param request: Request instance for QueryMerchantClassification.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantClassificationRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryMerchantClassificationResponse`
        def QueryMerchantClassification(request)
          body = send_request('QueryMerchantClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMerchantClassificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-子商户银行卡余额查询

        # @param request: Request instance for QueryOpenBankBankAccountBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBankAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBankAccountBalanceResponse`
        def QueryOpenBankBankAccountBalance(request)
          body = send_request('QueryOpenBankBankAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankBankAccountBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-查询联行号

        # @param request: Request instance for QueryOpenBankBankBranchList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBankBranchListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBankBranchListResponse`
        def QueryOpenBankBankBranchList(request)
          body = send_request('QueryOpenBankBankBranchList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankBankBranchListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-分页查询对账单数据

        # @param request: Request instance for QueryOpenBankBillDataPage.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBillDataPageRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBillDataPageResponse`
        def QueryOpenBankBillDataPage(request)
          body = send_request('QueryOpenBankBillDataPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankBillDataPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户银行卡绑定结果查询

        # @param request: Request instance for QueryOpenBankBindExternalSubMerchantBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBindExternalSubMerchantBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankBindExternalSubMerchantBankAccountResponse`
        def QueryOpenBankBindExternalSubMerchantBankAccount(request)
          body = send_request('QueryOpenBankBindExternalSubMerchantBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankBindExternalSubMerchantBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-按日期批量查询回单下载地址

        # @param request: Request instance for QueryOpenBankDailyReceiptDownloadUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankDailyReceiptDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankDailyReceiptDownloadUrlResponse`
        def QueryOpenBankDailyReceiptDownloadUrl(request)
          body = send_request('QueryOpenBankDailyReceiptDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankDailyReceiptDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-查询对账单下载地址

        # @param request: Request instance for QueryOpenBankDownLoadUrl.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankDownLoadUrlRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankDownLoadUrlResponse`
        def QueryOpenBankDownLoadUrl(request)
          body = send_request('QueryOpenBankDownLoadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankDownLoadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方子商户电子记账本余额查询接口

        # @param request: Request instance for QueryOpenBankExternalSubAccountBookBalance.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubAccountBookBalanceRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubAccountBookBalanceResponse`
        def QueryOpenBankExternalSubAccountBookBalance(request)
          body = send_request('QueryOpenBankExternalSubAccountBookBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankExternalSubAccountBookBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户银行卡列表查询

        # @param request: Request instance for QueryOpenBankExternalSubMerchantBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubMerchantBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubMerchantBankAccountResponse`
        def QueryOpenBankExternalSubMerchantBankAccount(request)
          body = send_request('QueryOpenBankExternalSubMerchantBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankExternalSubMerchantBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户进件结果查询

        # @param request: Request instance for QueryOpenBankExternalSubMerchantRegistration.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubMerchantRegistrationRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankExternalSubMerchantRegistrationResponse`
        def QueryOpenBankExternalSubMerchantRegistration(request)
          body = send_request('QueryOpenBankExternalSubMerchantRegistration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankExternalSubMerchantRegistrationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-单笔交易回单申请结果查询

        # @param request: Request instance for QueryOpenBankOrderDetailReceiptInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankOrderDetailReceiptInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankOrderDetailReceiptInfoResponse`
        def QueryOpenBankOrderDetailReceiptInfo(request)
          body = send_request('QueryOpenBankOrderDetailReceiptInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankOrderDetailReceiptInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-查询订单支付结果

        # @param request: Request instance for QueryOpenBankPaymentOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankPaymentOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankPaymentOrderResponse`
        def QueryOpenBankPaymentOrder(request)
          body = send_request('QueryOpenBankPaymentOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankPaymentOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-绑定分账收款方查询

        # @param request: Request instance for QueryOpenBankProfitSharePayee.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankProfitSharePayeeRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankProfitSharePayeeResponse`
        def QueryOpenBankProfitSharePayee(request)
          body = send_request('QueryOpenBankProfitSharePayee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankProfitSharePayeeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-退款结果查询

        # @param request: Request instance for QueryOpenBankRefundOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankRefundOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankRefundOrderResponse`
        def QueryOpenBankRefundOrder(request)
          body = send_request('QueryOpenBankRefundOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankRefundOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-结算单查询结果

        # @param request: Request instance for QueryOpenBankSettleOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSettleOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSettleOrderResponse`
        def QueryOpenBankSettleOrder(request)
          body = send_request('QueryOpenBankSettleOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankSettleOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户资质文件查询

        # @param request: Request instance for QueryOpenBankSubMerchantCredential.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantCredentialRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantCredentialResponse`
        def QueryOpenBankSubMerchantCredential(request)
          body = send_request('QueryOpenBankSubMerchantCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankSubMerchantCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户费率配置结果查询

        # @param request: Request instance for QueryOpenBankSubMerchantRateConfigure.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantRateConfigureRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantRateConfigureResponse`
        def QueryOpenBankSubMerchantRateConfigure(request)
          body = send_request('QueryOpenBankSubMerchantRateConfigure', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankSubMerchantRateConfigureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 子商户在线签约查询

        # @param request: Request instance for QueryOpenBankSubMerchantSignOnline.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantSignOnlineRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSubMerchantSignOnlineResponse`
        def QueryOpenBankSubMerchantSignOnline(request)
          body = send_request('QueryOpenBankSubMerchantSignOnline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankSubMerchantSignOnlineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-查询支持银行列表

        # @param request: Request instance for QueryOpenBankSupportBankList.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSupportBankListRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankSupportBankListResponse`
        def QueryOpenBankSupportBankList(request)
          body = send_request('QueryOpenBankSupportBankList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankSupportBankListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户银行卡解绑结果查询

        # @param request: Request instance for QueryOpenBankUnbindExternalSubMerchantBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankUnbindExternalSubMerchantBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankUnbindExternalSubMerchantBankAccountResponse`
        def QueryOpenBankUnbindExternalSubMerchantBankAccount(request)
          body = send_request('QueryOpenBankUnbindExternalSubMerchantBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankUnbindExternalSubMerchantBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-查询核销订单状态，客户可以使用该接口来查询核销申请的订单状态。目前仅支持TENPAY渠道EBANK_PAYMENT付款方式的担保支付订单查询。

        # @param request: Request instance for QueryOpenBankVerificationOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankVerificationOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryOpenBankVerificationOrderResponse`
        def QueryOpenBankVerificationOrder(request)
          body = send_request('QueryOpenBankVerificationOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryOpenBankVerificationOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 聚鑫-查询对账文件申请结果

        # @param request: Request instance for QueryReconciliationFileApplyInfo.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryReconciliationFileApplyInfoRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryReconciliationFileApplyInfoResponse`
        def QueryReconciliationFileApplyInfo(request)
          body = send_request('QueryReconciliationFileApplyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryReconciliationFileApplyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云支付-获取门店OpenId接口

        # @param request: Request instance for QueryShopOpenId.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::QueryShopOpenIdRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::QueryShopOpenIdResponse`
        def QueryShopOpenId(request)
          body = send_request('QueryShopOpenId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryShopOpenIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 如交易订单需退款，可以通过本接口将支付款全部或部分退还给付款方，聚鑫将在收到退款请求并且验证成功之后，按照退款规则将支付款按原路退回到支付帐号。最长支持1年的订单退款。在订单包含多个子订单的情况下，如果使用本接口传入OutTradeNo或TransactionId退款，则只支持全单退款；如果需要部分退款，请通过传入子订单的方式来指定部分金额退款。

        # @param request: Request instance for RefundCloudOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundCloudOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundCloudOrderResponse`
        def RefundCloudOrder(request)
          body = send_request('RefundCloudOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundCloudOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-退款申请

        # @param request: Request instance for RefundOpenBankOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::RefundOpenBankOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::RefundOpenBankOrderResponse`
        def RefundOpenBankOrder(request)
          body = send_request('RefundOpenBankOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefundOpenBankOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-子商户银行卡解绑

        # @param request: Request instance for UnbindOpenBankExternalSubMerchantBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnbindOpenBankExternalSubMerchantBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnbindOpenBankExternalSubMerchantBankAccountResponse`
        def UnbindOpenBankExternalSubMerchantBankAccount(request)
          body = send_request('UnbindOpenBankExternalSubMerchantBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindOpenBankExternalSubMerchantBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for UnifiedCloudOrder.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UnifiedCloudOrderRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UnifiedCloudOrderResponse`
        def UnifiedCloudOrder(request)
          body = send_request('UnifiedCloudOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnifiedCloudOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 直播平台-文件上传

        # @param request: Request instance for UploadFile.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadFileRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadFileResponse`
        def UploadFile(request)
          body = send_request('UploadFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云企付-子商户资质文件上传

        # @param request: Request instance for UploadOpenBankSubMerchantCredential.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadOpenBankSubMerchantCredentialRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadOpenBankSubMerchantCredentialResponse`
        def UploadOpenBankSubMerchantCredential(request)
          body = send_request('UploadOpenBankSubMerchantCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadOpenBankSubMerchantCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-上传机构文件接口

        # @param request: Request instance for UploadOrgFile.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::UploadOrgFileRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::UploadOrgFileResponse`
        def UploadOrgFile(request)
          body = send_request('UploadOrgFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadOrgFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 云企付-子商户银行卡打款验证，在接入TENPAY渠道EBANK_PAYMENT付款时，若客户期望接入担保支付，需在接入前先完成，收款商户绑定的银行卡进行打款验证。验证成功后，才可以调用CreateOpenBankPaymentOrder接口进行担保支付下单。

        # @param request: Request instance for VerifyOpenBankAccount.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::VerifyOpenBankAccountRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::VerifyOpenBankAccountResponse`
        def VerifyOpenBankAccount(request)
          body = send_request('VerifyOpenBankAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyOpenBankAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询合同明细接口

        # @param request: Request instance for ViewContract.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ViewContractRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ViewContractResponse`
        def ViewContract(request)
          body = send_request('ViewContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ViewContractResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询商户明细接口

        # @param request: Request instance for ViewMerchant.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ViewMerchantRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ViewMerchantResponse`
        def ViewMerchant(request)
          body = send_request('ViewMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ViewMerchantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云支付-查询门店明细接口

        # @param request: Request instance for ViewShop.
        # @type request: :class:`Tencentcloud::cpdp::V20190820::ViewShopRequest`
        # @rtype: :class:`Tencentcloud::cpdp::V20190820::ViewShopResponse`
        def ViewShop(request)
          body = send_request('ViewShop', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ViewShopResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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