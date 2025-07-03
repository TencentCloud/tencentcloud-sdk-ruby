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

module TencentCloud
  module Partners
    module V20180321
      # 已审核代客信息
      class AgentAuditedClient < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param ClientUin: 代客账号ID
        # @type ClientUin: String
        # @param AgentTime: 代客审核通过时间戳
        # @type AgentTime: String
        # @param ClientFlag: 代客类型，可能值为a/b/c
        # @type ClientFlag: String
        # @param ClientRemark: 代客备注
        # @type ClientRemark: String
        # @param ClientName: 代客名称（首选实名认证名称）
        # @type ClientName: String
        # @param AuthType: 认证类型, 0：个人，1：企业；其他：未认证或无效值
        # @type AuthType: String
        # @param AppId: 代客APPID
        # @type AppId: String
        # @param LastMonthAmt: 上月消费金额
        # @type LastMonthAmt: Integer
        # @param ThisMonthAmt: 本月消费金额
        # @type ThisMonthAmt: Integer
        # @param HasOverdueBill: 是否欠费,0：不欠费；1：欠费
        # @type HasOverdueBill: Integer
        # @param ClientType: 客户类型：可以为new(自拓)/assign(指派)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        # @type ClientType: String
        # @param ProjectType: 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        # @type ProjectType: String
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param SalesName: 业务员姓名
        # @type SalesName: String
        # @param Mail: 代客邮箱
        # @type Mail: String
        # @param TransactionType: 交易类型:交易类型 1-原类型 2-代理型  3-代采型
        # @type TransactionType: String

        attr_accessor :Uin, :ClientUin, :AgentTime, :ClientFlag, :ClientRemark, :ClientName, :AuthType, :AppId, :LastMonthAmt, :ThisMonthAmt, :HasOverdueBill, :ClientType, :ProjectType, :SalesUin, :SalesName, :Mail, :TransactionType

        def initialize(uin=nil, clientuin=nil, agenttime=nil, clientflag=nil, clientremark=nil, clientname=nil, authtype=nil, appid=nil, lastmonthamt=nil, thismonthamt=nil, hasoverduebill=nil, clienttype=nil, projecttype=nil, salesuin=nil, salesname=nil, mail=nil, transactiontype=nil)
          @Uin = uin
          @ClientUin = clientuin
          @AgentTime = agenttime
          @ClientFlag = clientflag
          @ClientRemark = clientremark
          @ClientName = clientname
          @AuthType = authtype
          @AppId = appid
          @LastMonthAmt = lastmonthamt
          @ThisMonthAmt = thismonthamt
          @HasOverdueBill = hasoverduebill
          @ClientType = clienttype
          @ProjectType = projecttype
          @SalesUin = salesuin
          @SalesName = salesname
          @Mail = mail
          @TransactionType = transactiontype
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ClientUin = params['ClientUin']
          @AgentTime = params['AgentTime']
          @ClientFlag = params['ClientFlag']
          @ClientRemark = params['ClientRemark']
          @ClientName = params['ClientName']
          @AuthType = params['AuthType']
          @AppId = params['AppId']
          @LastMonthAmt = params['LastMonthAmt']
          @ThisMonthAmt = params['ThisMonthAmt']
          @HasOverdueBill = params['HasOverdueBill']
          @ClientType = params['ClientType']
          @ProjectType = params['ProjectType']
          @SalesUin = params['SalesUin']
          @SalesName = params['SalesName']
          @Mail = params['Mail']
          @TransactionType = params['TransactionType']
        end
      end

      # 业务信息定义
      class AgentBillElem < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param OrderId: 订单号，仅对预付费账单有意义
        # @type OrderId: String
        # @param ClientUin: 代客账号ID
        # @type ClientUin: String
        # @param ClientRemark: 代客备注名称
        # @type ClientRemark: String
        # @param PayTime: 支付时间
        # @type PayTime: String
        # @param GoodsType: 云产品名称
        # @type GoodsType: String
        # @param PayMode: 预付费/后付费
        # @type PayMode: String
        # @param SettleMonth: 支付月份
        # @type SettleMonth: String
        # @param Amt: 支付金额，单位分
        # @type Amt: Integer
        # @param PayerMode: agentpay：代付；selfpay：自付
        # @type PayerMode: String
        # @param ClientType: 客户类型：可以为new(自拓)/assign(指定)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        # @type ClientType: String
        # @param ProjectType: 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        # @type ProjectType: String
        # @param ActivityId: 活动ID
        # @type ActivityId: String

        attr_accessor :Uin, :OrderId, :ClientUin, :ClientRemark, :PayTime, :GoodsType, :PayMode, :SettleMonth, :Amt, :PayerMode, :ClientType, :ProjectType, :ActivityId

        def initialize(uin=nil, orderid=nil, clientuin=nil, clientremark=nil, paytime=nil, goodstype=nil, paymode=nil, settlemonth=nil, amt=nil, payermode=nil, clienttype=nil, projecttype=nil, activityid=nil)
          @Uin = uin
          @OrderId = orderid
          @ClientUin = clientuin
          @ClientRemark = clientremark
          @PayTime = paytime
          @GoodsType = goodstype
          @PayMode = paymode
          @SettleMonth = settlemonth
          @Amt = amt
          @PayerMode = payermode
          @ClientType = clienttype
          @ProjectType = projecttype
          @ActivityId = activityid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @OrderId = params['OrderId']
          @ClientUin = params['ClientUin']
          @ClientRemark = params['ClientRemark']
          @PayTime = params['PayTime']
          @GoodsType = params['GoodsType']
          @PayMode = params['PayMode']
          @SettleMonth = params['SettleMonth']
          @Amt = params['Amt']
          @PayerMode = params['PayerMode']
          @ClientType = params['ClientType']
          @ProjectType = params['ProjectType']
          @ActivityId = params['ActivityId']
        end
      end

      # 描述待审核代客信息
      class AgentClientElem < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param ClientUin: 代客账号ID
        # @type ClientUin: String
        # @param ApplyTime: 代客申请时间戳
        # @type ApplyTime: Integer
        # @param ClientFlag: 代客类型，可能值为a/b/c/other
        # @type ClientFlag: String
        # @param Mail: 代客邮箱，打码显示
        # @type Mail: String
        # @param Phone: 代客手机，打码显示
        # @type Phone: String
        # @param HasOverdueBill: 0表示不欠费，1表示欠费
        # @type HasOverdueBill: Integer
        # @param Status: 1:待代理商审核;2:待腾讯云审核4:待腾讯云渠道审批
        # @type Status: Integer
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param SalesName: 业务员姓名
        # @type SalesName: String
        # @param ClientName: 客户名称，此字段和控制台返回一致。
        # @type ClientName: String
        # @param IncreaseGoal: 增量目标金额(分)
        # @type IncreaseGoal: String

        attr_accessor :Uin, :ClientUin, :ApplyTime, :ClientFlag, :Mail, :Phone, :HasOverdueBill, :Status, :SalesUin, :SalesName, :ClientName, :IncreaseGoal

        def initialize(uin=nil, clientuin=nil, applytime=nil, clientflag=nil, mail=nil, phone=nil, hasoverduebill=nil, status=nil, salesuin=nil, salesname=nil, clientname=nil, increasegoal=nil)
          @Uin = uin
          @ClientUin = clientuin
          @ApplyTime = applytime
          @ClientFlag = clientflag
          @Mail = mail
          @Phone = phone
          @HasOverdueBill = hasoverduebill
          @Status = status
          @SalesUin = salesuin
          @SalesName = salesname
          @ClientName = clientname
          @IncreaseGoal = increasegoal
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ClientUin = params['ClientUin']
          @ApplyTime = params['ApplyTime']
          @ClientFlag = params['ClientFlag']
          @Mail = params['Mail']
          @Phone = params['Phone']
          @HasOverdueBill = params['HasOverdueBill']
          @Status = params['Status']
          @SalesUin = params['SalesUin']
          @SalesName = params['SalesName']
          @ClientName = params['ClientName']
          @IncreaseGoal = params['IncreaseGoal']
        end
      end

      # 描述代理商代付的订单信息
      class AgentDealNewElem < TencentCloud::Common::AbstractModel
        # @param DealId: 订单自增 ID【请勿依赖该字段作为唯一标识】
        # @type DealId: String
        # @param DealName: 订单号【订单唯一键】
        # @type DealName: String
        # @param GoodsCategoryId: 商品类型 ID
        # @type GoodsCategoryId: String
        # @param OwnerUin: 订单所有者
        # @type OwnerUin: String
        # @param AppId: 订单所有者对应 appId
        # @type AppId: String
        # @param GoodsNum: 商品数量
        # @type GoodsNum: String
        # @param GoodsPrice: 价格详情
        # @type GoodsPrice: :class:`Tencentcloud::Partners.v20180321.models.DealGoodsPriceNewElem`
        # @param Creater: 下单人
        # @type Creater: String
        # @param CreatTime: 下单时间
        # @type CreatTime: String
        # @param PayEndTime: 支付结束时间
        # @type PayEndTime: String
        # @param BillId: 扣费流水号
        # @type BillId: String
        # @param Payer: 支付人
        # @type Payer: String
        # @param DealStatus: 订单状态，中文描述
        # @type DealStatus: String
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: String
        # @param GoodsName: 产品名称
        # @type GoodsName: String
        # @param ClientRemark: 客户备注
        # @type ClientRemark: String
        # @param ActionType: 订单操作类型，"purchase":"新购","upgrade":"升配","upConvertExpire":"升配","downgrade":"降配","downConvertExpire":"降配","renew":"续费","refund":"退货","modifyNetworkMode":"调整带宽模式","modifyNetworkSize":"调整带宽大小","preMoveOut":"资源迁出","preMoveIn":"资源迁入","preToPost":"包年包月转按量","modify":"变配","postMoveOut":"资源迁出","postMoveIn":"资源迁入","recoverRefundForward":"调账补偿","recoverPayReserve":"调账补偿","recoverPayForward":"调账扣费","recoverRefundReserve":"调账扣费"
        # @type ActionType: String
        # @param VoucherDecline: 代金券抵扣金额，单位分
        # @type VoucherDecline: String
        # @param BigDealId: 大订单号
        # @type BigDealId: String
        # @param ClientType: 客户类型（new：自拓；old：官网；assign：指派；direct：直销；direct_newopp：直销(新商机)）
        # @type ClientType: String
        # @param ProjectType: 项目类型（self：自拓；repeat：直销；platform：官网合作）
        # @type ProjectType: String
        # @param SalesUin: 业务员账号ID
        # @type SalesUin: String
        # @param PayerMode: 支付方式，0：自付；1：代付
        # @type PayerMode: String
        # @param ActivityId: 活动ID
        # @type ActivityId: String
        # @param OverdueTime: 订单过期时间
        # @type OverdueTime: String
        # @param ProductInfo: 产品详情
        # @type ProductInfo: Array
        # @param PaymentMethod: 付款方式
        # @type PaymentMethod: String
        # @param UpdateTime: 订单更新时间
        # @type UpdateTime: String
        # @param ResourceIds: 资源id
        # @type ResourceIds: Array
        # @param RefundMap: 退款单的原订单信息。当前仅 DescribeClientDealsByCache 接口会返回该字段
        # @type RefundMap: Array
        # @param SubGoodsName: 子产品名称
        # @type SubGoodsName: String

        attr_accessor :DealId, :DealName, :GoodsCategoryId, :OwnerUin, :AppId, :GoodsNum, :GoodsPrice, :Creater, :CreatTime, :PayEndTime, :BillId, :Payer, :DealStatus, :Status, :GoodsName, :ClientRemark, :ActionType, :VoucherDecline, :BigDealId, :ClientType, :ProjectType, :SalesUin, :PayerMode, :ActivityId, :OverdueTime, :ProductInfo, :PaymentMethod, :UpdateTime, :ResourceIds, :RefundMap, :SubGoodsName

        def initialize(dealid=nil, dealname=nil, goodscategoryid=nil, owneruin=nil, appid=nil, goodsnum=nil, goodsprice=nil, creater=nil, creattime=nil, payendtime=nil, billid=nil, payer=nil, dealstatus=nil, status=nil, goodsname=nil, clientremark=nil, actiontype=nil, voucherdecline=nil, bigdealid=nil, clienttype=nil, projecttype=nil, salesuin=nil, payermode=nil, activityid=nil, overduetime=nil, productinfo=nil, paymentmethod=nil, updatetime=nil, resourceids=nil, refundmap=nil, subgoodsname=nil)
          @DealId = dealid
          @DealName = dealname
          @GoodsCategoryId = goodscategoryid
          @OwnerUin = owneruin
          @AppId = appid
          @GoodsNum = goodsnum
          @GoodsPrice = goodsprice
          @Creater = creater
          @CreatTime = creattime
          @PayEndTime = payendtime
          @BillId = billid
          @Payer = payer
          @DealStatus = dealstatus
          @Status = status
          @GoodsName = goodsname
          @ClientRemark = clientremark
          @ActionType = actiontype
          @VoucherDecline = voucherdecline
          @BigDealId = bigdealid
          @ClientType = clienttype
          @ProjectType = projecttype
          @SalesUin = salesuin
          @PayerMode = payermode
          @ActivityId = activityid
          @OverdueTime = overduetime
          @ProductInfo = productinfo
          @PaymentMethod = paymentmethod
          @UpdateTime = updatetime
          @ResourceIds = resourceids
          @RefundMap = refundmap
          @SubGoodsName = subgoodsname
        end

        def deserialize(params)
          @DealId = params['DealId']
          @DealName = params['DealName']
          @GoodsCategoryId = params['GoodsCategoryId']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @GoodsNum = params['GoodsNum']
          unless params['GoodsPrice'].nil?
            @GoodsPrice = DealGoodsPriceNewElem.new
            @GoodsPrice.deserialize(params['GoodsPrice'])
          end
          @Creater = params['Creater']
          @CreatTime = params['CreatTime']
          @PayEndTime = params['PayEndTime']
          @BillId = params['BillId']
          @Payer = params['Payer']
          @DealStatus = params['DealStatus']
          @Status = params['Status']
          @GoodsName = params['GoodsName']
          @ClientRemark = params['ClientRemark']
          @ActionType = params['ActionType']
          @VoucherDecline = params['VoucherDecline']
          @BigDealId = params['BigDealId']
          @ClientType = params['ClientType']
          @ProjectType = params['ProjectType']
          @SalesUin = params['SalesUin']
          @PayerMode = params['PayerMode']
          @ActivityId = params['ActivityId']
          @OverdueTime = params['OverdueTime']
          unless params['ProductInfo'].nil?
            @ProductInfo = []
            params['ProductInfo'].each do |i|
              productinfoelem_tmp = ProductInfoElem.new
              productinfoelem_tmp.deserialize(i)
              @ProductInfo << productinfoelem_tmp
            end
          end
          @PaymentMethod = params['PaymentMethod']
          @UpdateTime = params['UpdateTime']
          @ResourceIds = params['ResourceIds']
          unless params['RefundMap'].nil?
            @RefundMap = []
            params['RefundMap'].each do |i|
              refundmap_tmp = RefundMap.new
              refundmap_tmp.deserialize(i)
              @RefundMap << refundmap_tmp
            end
          end
          @SubGoodsName = params['SubGoodsName']
        end
      end

      # AgentPayDeals请求参数结构体
      class AgentPayDealsRequest < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 订单所有者uin
        # @type OwnerUin: String
        # @param AgentPay: 代付标志，1：代付；0：自付
        # @type AgentPay: Integer
        # @param DealNames: 订单号数组
        # @type DealNames: Array

        attr_accessor :OwnerUin, :AgentPay, :DealNames

        def initialize(owneruin=nil, agentpay=nil, dealnames=nil)
          @OwnerUin = owneruin
          @AgentPay = agentpay
          @DealNames = dealnames
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @AgentPay = params['AgentPay']
          @DealNames = params['DealNames']
        end
      end

      # AgentPayDeals返回参数结构体
      class AgentPayDealsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 代理商业务员信息
      class AgentSalesmanElem < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param SalesName: 业务员姓名
        # @type SalesName: String
        # @param CreateTime: 业务员创建时间
        # @type CreateTime: String

        attr_accessor :Uin, :SalesUin, :SalesName, :CreateTime

        def initialize(uin=nil, salesuin=nil, salesname=nil, createtime=nil)
          @Uin = uin
          @SalesUin = salesuin
          @SalesName = salesname
          @CreateTime = createtime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @SalesUin = params['SalesUin']
          @SalesName = params['SalesName']
          @CreateTime = params['CreateTime']
        end
      end

      # AgentTransferMoney请求参数结构体
      class AgentTransferMoneyRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String
        # @param Amount: 转账金额，单位分
        # @type Amount: Integer

        attr_accessor :ClientUin, :Amount

        def initialize(clientuin=nil, amount=nil)
          @ClientUin = clientuin
          @Amount = amount
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @Amount = params['Amount']
        end
      end

      # AgentTransferMoney返回参数结构体
      class AgentTransferMoneyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # AssignClientsToSales请求参数结构体
      class AssignClientsToSalesRequest < TencentCloud::Common::AbstractModel
        # @param ClientUins: 代客/申请中代客uin列表，最大50条
        # @type ClientUins: Array
        # @param SalesUin: 业务员uin
        # @type SalesUin: String
        # @param AssignClientStatus: 代客类型:normal-代客 apply-申请中代客
        # @type AssignClientStatus: String
        # @param AssignActionType: 操作类型:assign-执行分派 cancel-取消分派
        # @type AssignActionType: String

        attr_accessor :ClientUins, :SalesUin, :AssignClientStatus, :AssignActionType

        def initialize(clientuins=nil, salesuin=nil, assignclientstatus=nil, assignactiontype=nil)
          @ClientUins = clientuins
          @SalesUin = salesuin
          @AssignClientStatus = assignclientstatus
          @AssignActionType = assignactiontype
        end

        def deserialize(params)
          @ClientUins = params['ClientUins']
          @SalesUin = params['SalesUin']
          @AssignClientStatus = params['AssignClientStatus']
          @AssignActionType = params['AssignActionType']
        end
      end

      # AssignClientsToSales返回参数结构体
      class AssignClientsToSalesResponse < TencentCloud::Common::AbstractModel
        # @param SucceedUins: 处理成功的代客uin列表
        # @type SucceedUins: Array
        # @param FailedUins: 处理失败的代客uin列表
        # @type FailedUins: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SucceedUins, :FailedUins, :RequestId

        def initialize(succeeduins=nil, faileduins=nil, requestid=nil)
          @SucceedUins = succeeduins
          @FailedUins = faileduins
          @RequestId = requestid
        end

        def deserialize(params)
          @SucceedUins = params['SucceedUins']
          @FailedUins = params['FailedUins']
          @RequestId = params['RequestId']
        end
      end

      # AuditApplyClient请求参数结构体
      class AuditApplyClientRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 待审核客户账号ID
        # @type ClientUin: String
        # @param AuditResult: 审核结果，可能的取值：accept/reject
        # @type AuditResult: String
        # @param Note: 申请理由，B类客户审核通过时必须填写申请理由
        # @type Note: String

        attr_accessor :ClientUin, :AuditResult, :Note

        def initialize(clientuin=nil, auditresult=nil, note=nil)
          @ClientUin = clientuin
          @AuditResult = auditresult
          @Note = note
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @AuditResult = params['AuditResult']
          @Note = params['Note']
        end
      end

      # AuditApplyClient返回参数结构体
      class AuditApplyClientResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String
        # @param AuditResult: 审核结果，包括accept/reject/qcloudaudit（腾讯云审核）
        # @type AuditResult: String
        # @param AgentTime: 关联时间对应的时间戳
        # @type AgentTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :ClientUin, :AuditResult, :AgentTime, :RequestId

        def initialize(uin=nil, clientuin=nil, auditresult=nil, agenttime=nil, requestid=nil)
          @Uin = uin
          @ClientUin = clientuin
          @AuditResult = auditresult
          @AgentTime = agenttime
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ClientUin = params['ClientUin']
          @AuditResult = params['AuditResult']
          @AgentTime = params['AgentTime']
          @RequestId = params['RequestId']
        end
      end

      # 客户增量激励考核信息列表
      class ClientIncreaseInfoList < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户UIN
        # @type ClientUin: String
        # @param IsJoinIncrease: 是否参与增量政策，
        # Y：是，N：否
        # @type IsJoinIncrease: String
        # @param IncreaseUseAssociateDate: 增量考核关联时间
        # @type IncreaseUseAssociateDate: String
        # @param TLevel: 参与增量考核的原始客户等级
        # @type TLevel: String
        # @param IncreaseGoal: 增量考核目标,分
        # @type IncreaseGoal: String
        # @param TotalBaseAmt: 完成订单金额,分
        # @type TotalBaseAmt: String

        attr_accessor :ClientUin, :IsJoinIncrease, :IncreaseUseAssociateDate, :TLevel, :IncreaseGoal, :TotalBaseAmt

        def initialize(clientuin=nil, isjoinincrease=nil, increaseuseassociatedate=nil, tlevel=nil, increasegoal=nil, totalbaseamt=nil)
          @ClientUin = clientuin
          @IsJoinIncrease = isjoinincrease
          @IncreaseUseAssociateDate = increaseuseassociatedate
          @TLevel = tlevel
          @IncreaseGoal = increasegoal
          @TotalBaseAmt = totalbaseamt
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @IsJoinIncrease = params['IsJoinIncrease']
          @IncreaseUseAssociateDate = params['IncreaseUseAssociateDate']
          @TLevel = params['TLevel']
          @IncreaseGoal = params['IncreaseGoal']
          @TotalBaseAmt = params['TotalBaseAmt']
        end
      end

      # CreatePayRelationForClient请求参数结构体
      class CreatePayRelationForClientRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String

        attr_accessor :ClientUin

        def initialize(clientuin=nil)
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
        end
      end

      # CreatePayRelationForClient返回参数结构体
      class CreatePayRelationForClientResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 订单价格详情
      class DealGoodsPriceNewElem < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 实付金额（单位：分）
        # @type RealTotalCost: Integer
        # @param OriginalTotalCost: 原始金额（不含折扣，单位：分）
        # @type OriginalTotalCost: Integer

        attr_accessor :RealTotalCost, :OriginalTotalCost

        def initialize(realtotalcost=nil, originaltotalcost=nil)
          @RealTotalCost = realtotalcost
          @OriginalTotalCost = originaltotalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @OriginalTotalCost = params['OriginalTotalCost']
        end
      end

      # 订单价格详情
      class DealPriceDetail < TencentCloud::Common::AbstractModel
        # @param DealName: 子订单号
        # @type DealName: String
        # @param OwnerUin: 订单归属人uin（代客uin）
        # @type OwnerUin: String
        # @param SubProductPriceDetail: 子产品价格详情列表
        # @type SubProductPriceDetail: Array

        attr_accessor :DealName, :OwnerUin, :SubProductPriceDetail

        def initialize(dealname=nil, owneruin=nil, subproductpricedetail=nil)
          @DealName = dealname
          @OwnerUin = owneruin
          @SubProductPriceDetail = subproductpricedetail
        end

        def deserialize(params)
          @DealName = params['DealName']
          @OwnerUin = params['OwnerUin']
          unless params['SubProductPriceDetail'].nil?
            @SubProductPriceDetail = []
            params['SubProductPriceDetail'].each do |i|
              subproductpricedetail_tmp = SubProductPriceDetail.new
              subproductpricedetail_tmp.deserialize(i)
              @SubProductPriceDetail << subproductpricedetail_tmp
            end
          end
        end
      end

      # DescribeAgentAuditedClients请求参数结构体
      class DescribeAgentAuditedClientsRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String
        # @param ClientName: 客户名称。由于涉及隐私，名称打码显示，故名称仅支持打码后的模糊搜索
        # @type ClientName: String
        # @param ClientFlag: 客户类型，a/b，类型定义参考代理商相关政策文档
        # @type ClientFlag: String
        # @param OrderDirection: ASC/DESC， 不区分大小写，按审核通过时间排序
        # @type OrderDirection: String
        # @param ClientUins: 客户账号ID列表
        # @type ClientUins: Array
        # @param HasOverdueBill: 是否欠费。0：不欠费；1：欠费
        # @type HasOverdueBill: Integer
        # @param ClientRemark: 客户备注
        # @type ClientRemark: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param ClientType: 可以为new(自拓)/assign(指派)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        # @type ClientType: String
        # @param ProjectType: 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        # @type ProjectType: String
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param SalesName: 业务员姓名（模糊查询）
        # @type SalesName: String

        attr_accessor :ClientUin, :ClientName, :ClientFlag, :OrderDirection, :ClientUins, :HasOverdueBill, :ClientRemark, :Offset, :Limit, :ClientType, :ProjectType, :SalesUin, :SalesName

        def initialize(clientuin=nil, clientname=nil, clientflag=nil, orderdirection=nil, clientuins=nil, hasoverduebill=nil, clientremark=nil, offset=nil, limit=nil, clienttype=nil, projecttype=nil, salesuin=nil, salesname=nil)
          @ClientUin = clientuin
          @ClientName = clientname
          @ClientFlag = clientflag
          @OrderDirection = orderdirection
          @ClientUins = clientuins
          @HasOverdueBill = hasoverduebill
          @ClientRemark = clientremark
          @Offset = offset
          @Limit = limit
          @ClientType = clienttype
          @ProjectType = projecttype
          @SalesUin = salesuin
          @SalesName = salesname
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @ClientName = params['ClientName']
          @ClientFlag = params['ClientFlag']
          @OrderDirection = params['OrderDirection']
          @ClientUins = params['ClientUins']
          @HasOverdueBill = params['HasOverdueBill']
          @ClientRemark = params['ClientRemark']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClientType = params['ClientType']
          @ProjectType = params['ProjectType']
          @SalesUin = params['SalesUin']
          @SalesName = params['SalesName']
        end
      end

      # DescribeAgentAuditedClients返回参数结构体
      class DescribeAgentAuditedClientsResponse < TencentCloud::Common::AbstractModel
        # @param AgentClientSet: 已审核代客列表
        # @type AgentClientSet: Array
        # @param TotalCount: 符合条件的代客总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentClientSet, :TotalCount, :RequestId

        def initialize(agentclientset=nil, totalcount=nil, requestid=nil)
          @AgentClientSet = agentclientset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentClientSet'].nil?
            @AgentClientSet = []
            params['AgentClientSet'].each do |i|
              agentauditedclient_tmp = AgentAuditedClient.new
              agentauditedclient_tmp.deserialize(i)
              @AgentClientSet << agentauditedclient_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentBills请求参数结构体
      class DescribeAgentBillsRequest < TencentCloud::Common::AbstractModel
        # @param SettleMonth: 支付月份，如2018-02
        # @type SettleMonth: String
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String
        # @param PayMode: 支付方式，prepay/postpay
        # @type PayMode: String
        # @param OrderId: 预付费订单号
        # @type OrderId: String
        # @param ClientRemark: 客户备注名称
        # @type ClientRemark: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :SettleMonth, :ClientUin, :PayMode, :OrderId, :ClientRemark, :Offset, :Limit

        def initialize(settlemonth=nil, clientuin=nil, paymode=nil, orderid=nil, clientremark=nil, offset=nil, limit=nil)
          @SettleMonth = settlemonth
          @ClientUin = clientuin
          @PayMode = paymode
          @OrderId = orderid
          @ClientRemark = clientremark
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SettleMonth = params['SettleMonth']
          @ClientUin = params['ClientUin']
          @PayMode = params['PayMode']
          @OrderId = params['OrderId']
          @ClientRemark = params['ClientRemark']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAgentBills返回参数结构体
      class DescribeAgentBillsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件列表总数量
        # @type TotalCount: Integer
        # @param AgentBillSet: 业务明细列表
        # @type AgentBillSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AgentBillSet, :RequestId

        def initialize(totalcount=nil, agentbillset=nil, requestid=nil)
          @TotalCount = totalcount
          @AgentBillSet = agentbillset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AgentBillSet'].nil?
            @AgentBillSet = []
            params['AgentBillSet'].each do |i|
              agentbillelem_tmp = AgentBillElem.new
              agentbillelem_tmp.deserialize(i)
              @AgentBillSet << agentbillelem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentClientGrade请求参数结构体
      class DescribeAgentClientGradeRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 代客uin
        # @type ClientUin: String

        attr_accessor :ClientUin

        def initialize(clientuin=nil)
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
        end
      end

      # DescribeAgentClientGrade返回参数结构体
      class DescribeAgentClientGradeResponse < TencentCloud::Common::AbstractModel
        # @param AuditStatus: 审核状态：0待审核，1，已审核
        # @type AuditStatus: Integer
        # @param AuthState: 实名认证状态：0，未实名认证，1实名认证
        # @type AuthState: Integer
        # @param ClientGrade: 客户级别
        # @type ClientGrade: String
        # @param ClientType: 客户类型：1，个人；2，企业；3，其他
        # @type ClientType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditStatus, :AuthState, :ClientGrade, :ClientType, :RequestId

        def initialize(auditstatus=nil, authstate=nil, clientgrade=nil, clienttype=nil, requestid=nil)
          @AuditStatus = auditstatus
          @AuthState = authstate
          @ClientGrade = clientgrade
          @ClientType = clienttype
          @RequestId = requestid
        end

        def deserialize(params)
          @AuditStatus = params['AuditStatus']
          @AuthState = params['AuthState']
          @ClientGrade = params['ClientGrade']
          @ClientType = params['ClientType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentClients请求参数结构体
      class DescribeAgentClientsRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String
        # @param ClientName: 客户名称。由于涉及隐私，名称打码显示，故名称仅支持打码后的模糊搜索
        # @type ClientName: String
        # @param ClientFlag: 客户类型，a/b，类型定义参考代理商相关政策文档
        # @type ClientFlag: String
        # @param OrderDirection: ASC/DESC， 不区分大小写，按申请时间排序
        # @type OrderDirection: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param SalesName: 业务员姓名（模糊查询）
        # @type SalesName: String

        attr_accessor :ClientUin, :ClientName, :ClientFlag, :OrderDirection, :Offset, :Limit, :SalesUin, :SalesName

        def initialize(clientuin=nil, clientname=nil, clientflag=nil, orderdirection=nil, offset=nil, limit=nil, salesuin=nil, salesname=nil)
          @ClientUin = clientuin
          @ClientName = clientname
          @ClientFlag = clientflag
          @OrderDirection = orderdirection
          @Offset = offset
          @Limit = limit
          @SalesUin = salesuin
          @SalesName = salesname
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @ClientName = params['ClientName']
          @ClientFlag = params['ClientFlag']
          @OrderDirection = params['OrderDirection']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SalesUin = params['SalesUin']
          @SalesName = params['SalesName']
        end
      end

      # DescribeAgentClients返回参数结构体
      class DescribeAgentClientsResponse < TencentCloud::Common::AbstractModel
        # @param AgentClientSet: 待审核代客列表
        # @type AgentClientSet: Array
        # @param TotalCount: 符合条件的代客总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentClientSet, :TotalCount, :RequestId

        def initialize(agentclientset=nil, totalcount=nil, requestid=nil)
          @AgentClientSet = agentclientset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentClientSet'].nil?
            @AgentClientSet = []
            params['AgentClientSet'].each do |i|
              agentclientelem_tmp = AgentClientElem.new
              agentclientelem_tmp.deserialize(i)
              @AgentClientSet << agentclientelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentDealsByCache请求参数结构体
      class DescribeAgentDealsByCacheRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目 最大200
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点【*请必传并控制时间范围最大90天，避免出现超时】
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点【*请必传并控制时间范围最大90天，避免出现超时】
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 子订单状态(1-待支付,2-已支付,3-发货中,4-已发货,5-发货失败,6-已退款,7-已取消,8-已过期,9-已失效,12-支付中,13-退款中,30-处理中)

        # 控制台订单状态为以上状态的组合：未支付(1) 处理中(2,3,5,12,13,30) 已取消(7) 交易成功(4) 已过期(8) 已退款(6) 订单错误(9)
        # @type Status: Integer
        # @param OwnerUins: 下单人账号ID列表
        # @type OwnerUins: Array
        # @param DealNames: 子订单号列表
        # @type DealNames: Array
        # @param BigDealIds: 大订单号列表
        # @type BigDealIds: Array
        # @param PayerMode: 支付方式，0：自付；1：代付
        # @type PayerMode: Integer

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames, :BigDealIds, :PayerMode

        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil, bigdealids=nil, payermode=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
          @BigDealIds = bigdealids
          @PayerMode = payermode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreatTimeRangeStart = params['CreatTimeRangeStart']
          @CreatTimeRangeEnd = params['CreatTimeRangeEnd']
          @Order = params['Order']
          @Status = params['Status']
          @OwnerUins = params['OwnerUins']
          @DealNames = params['DealNames']
          @BigDealIds = params['BigDealIds']
          @PayerMode = params['PayerMode']
        end
      end

      # DescribeAgentDealsByCache返回参数结构体
      class DescribeAgentDealsByCacheResponse < TencentCloud::Common::AbstractModel
        # @param AgentDealSet: 订单数组
        # @type AgentDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentDealSet, :TotalCount, :RequestId

        def initialize(agentdealset=nil, totalcount=nil, requestid=nil)
          @AgentDealSet = agentdealset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentDealSet'].nil?
            @AgentDealSet = []
            params['AgentDealSet'].each do |i|
              agentdealnewelem_tmp = AgentDealNewElem.new
              agentdealnewelem_tmp.deserialize(i)
              @AgentDealSet << agentdealnewelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentDealsPriceDetailByDealName请求参数结构体
      class DescribeAgentDealsPriceDetailByDealNameRequest < TencentCloud::Common::AbstractModel
        # @param DealCreatYear: 下单年份（订单创建时间归属年份）
        # @type DealCreatYear: Integer
        # @param DealNames: 子订单号，每个请求最多查询100条
        # @type DealNames: Array
        # @param OwnerUin: 订单归属代客uin
        # @type OwnerUin: String

        attr_accessor :DealCreatYear, :DealNames, :OwnerUin

        def initialize(dealcreatyear=nil, dealnames=nil, owneruin=nil)
          @DealCreatYear = dealcreatyear
          @DealNames = dealnames
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @DealCreatYear = params['DealCreatYear']
          @DealNames = params['DealNames']
          @OwnerUin = params['OwnerUin']
        end
      end

      # DescribeAgentDealsPriceDetailByDealName返回参数结构体
      class DescribeAgentDealsPriceDetailByDealNameResponse < TencentCloud::Common::AbstractModel
        # @param DealList: 子订单的费用详情
        # @type DealList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealList, :RequestId

        def initialize(deallist=nil, requestid=nil)
          @DealList = deallist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DealList'].nil?
            @DealList = []
            params['DealList'].each do |i|
              dealpricedetail_tmp = DealPriceDetail.new
              dealpricedetail_tmp.deserialize(i)
              @DealList << dealpricedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentPayDealsV2请求参数结构体
      class DescribeAgentPayDealsV2Request < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目 最大100
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点(不传时会默认查15天内订单，传值时需要传15天内的起始时间)
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param OwnerUins: 下单人账号ID列表
        # @type OwnerUins: Array
        # @param DealNames: 子订单号列表
        # @type DealNames: Array
        # @param BigDealIds: 大订单号列表
        # @type BigDealIds: Array

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames, :BigDealIds

        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil, bigdealids=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
          @BigDealIds = bigdealids
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreatTimeRangeStart = params['CreatTimeRangeStart']
          @CreatTimeRangeEnd = params['CreatTimeRangeEnd']
          @Order = params['Order']
          @Status = params['Status']
          @OwnerUins = params['OwnerUins']
          @DealNames = params['DealNames']
          @BigDealIds = params['BigDealIds']
        end
      end

      # DescribeAgentPayDealsV2返回参数结构体
      class DescribeAgentPayDealsV2Response < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentPayDealSet, :TotalCount, :RequestId

        def initialize(agentpaydealset=nil, totalcount=nil, requestid=nil)
          @AgentPayDealSet = agentpaydealset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentPayDealSet'].nil?
            @AgentPayDealSet = []
            params['AgentPayDealSet'].each do |i|
              agentdealnewelem_tmp = AgentDealNewElem.new
              agentdealnewelem_tmp.deserialize(i)
              @AgentPayDealSet << agentdealnewelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentRelateBigDealIds请求参数结构体
      class DescribeAgentRelateBigDealIdsRequest < TencentCloud::Common::AbstractModel
        # @param BigDealId: 大订单号
        # @type BigDealId: String

        attr_accessor :BigDealId

        def initialize(bigdealid=nil)
          @BigDealId = bigdealid
        end

        def deserialize(params)
          @BigDealId = params['BigDealId']
        end
      end

      # DescribeAgentRelateBigDealIds返回参数结构体
      class DescribeAgentRelateBigDealIdsResponse < TencentCloud::Common::AbstractModel
        # @param BigDealIdList: 申请合并支付的关联大订单号列表（不包含请求的订单号）
        # @type BigDealIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigDealIdList, :RequestId

        def initialize(bigdealidlist=nil, requestid=nil)
          @BigDealIdList = bigdealidlist
          @RequestId = requestid
        end

        def deserialize(params)
          @BigDealIdList = params['BigDealIdList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentSelfPayDealsV2请求参数结构体
      class DescribeAgentSelfPayDealsV2Request < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 下单人账号ID
        # @type OwnerUin: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目 最大100
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点(不传时会默认查15天内订单，传值时需要传15天内的起始时间)
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param DealNames: 子订单号列表
        # @type DealNames: Array
        # @param BigDealIds: 大订单号列表
        # @type BigDealIds: Array

        attr_accessor :OwnerUin, :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :DealNames, :BigDealIds

        def initialize(owneruin=nil, offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, dealnames=nil, bigdealids=nil)
          @OwnerUin = owneruin
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @DealNames = dealnames
          @BigDealIds = bigdealids
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreatTimeRangeStart = params['CreatTimeRangeStart']
          @CreatTimeRangeEnd = params['CreatTimeRangeEnd']
          @Order = params['Order']
          @Status = params['Status']
          @DealNames = params['DealNames']
          @BigDealIds = params['BigDealIds']
        end
      end

      # DescribeAgentSelfPayDealsV2返回参数结构体
      class DescribeAgentSelfPayDealsV2Response < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentPayDealSet, :TotalCount, :RequestId

        def initialize(agentpaydealset=nil, totalcount=nil, requestid=nil)
          @AgentPayDealSet = agentpaydealset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentPayDealSet'].nil?
            @AgentPayDealSet = []
            params['AgentPayDealSet'].each do |i|
              agentdealnewelem_tmp = AgentDealNewElem.new
              agentdealnewelem_tmp.deserialize(i)
              @AgentPayDealSet << agentdealnewelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientBalanceNew请求参数结构体
      class DescribeClientBalanceNewRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户(代客)账号ID
        # @type ClientUin: String

        attr_accessor :ClientUin

        def initialize(clientuin=nil)
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
        end
      end

      # DescribeClientBalanceNew返回参数结构体
      class DescribeClientBalanceNewResponse < TencentCloud::Common::AbstractModel
        # @param Balance: 账户可用余额，单位分 （可用余额 = 现金余额 + 赠送金余额 - 欠费金额 - 冻结金额）
        # @type Balance: Integer
        # @param Cash: 账户现金余额，单位分
        # @type Cash: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Balance, :Cash, :RequestId

        def initialize(balance=nil, cash=nil, requestid=nil)
          @Balance = balance
          @Cash = cash
          @RequestId = requestid
        end

        def deserialize(params)
          @Balance = params['Balance']
          @Cash = params['Cash']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientJoinIncreaseList请求参数结构体
      class DescribeClientJoinIncreaseListRequest < TencentCloud::Common::AbstractModel
        # @param ClientUins: 客户UIN列表
        # @type ClientUins: Array

        attr_accessor :ClientUins

        def initialize(clientuins=nil)
          @ClientUins = clientuins
        end

        def deserialize(params)
          @ClientUins = params['ClientUins']
        end
      end

      # DescribeClientJoinIncreaseList返回参数结构体
      class DescribeClientJoinIncreaseListResponse < TencentCloud::Common::AbstractModel
        # @param List: 已审核代客列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              clientincreaseinfolist_tmp = ClientIncreaseInfoList.new
              clientincreaseinfolist_tmp.deserialize(i)
              @List << clientincreaseinfolist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientSwitchTraTaskInfo请求参数结构体
      class DescribeClientSwitchTraTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 代客UIN
        # @type ClientUin: String
        # @param SwitchType: 1：代理，2：代采
        # @type SwitchType: Integer

        attr_accessor :ClientUin, :SwitchType

        def initialize(clientuin=nil, switchtype=nil)
          @ClientUin = clientuin
          @SwitchType = switchtype
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @SwitchType = params['SwitchType']
        end
      end

      # DescribeClientSwitchTraTaskInfo返回参数结构体
      class DescribeClientSwitchTraTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户UIN
        # @type ClientUin: String
        # @param SwitchType: 切换类型：代理,代采
        # @type SwitchType: String
        # @param Result: ok，符合，fail，不符合
        # @type Result: String
        # @param SwitchUrl: 切换链接
        # @type SwitchUrl: String
        # @param ResultMsg: 不符合的原因
        # @type ResultMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientUin, :SwitchType, :Result, :SwitchUrl, :ResultMsg, :RequestId

        def initialize(clientuin=nil, switchtype=nil, result=nil, switchurl=nil, resultmsg=nil, requestid=nil)
          @ClientUin = clientuin
          @SwitchType = switchtype
          @Result = result
          @SwitchUrl = switchurl
          @ResultMsg = resultmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @SwitchType = params['SwitchType']
          @Result = params['Result']
          @SwitchUrl = params['SwitchUrl']
          @ResultMsg = params['ResultMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRebateInfosNew请求参数结构体
      class DescribeRebateInfosNewRequest < TencentCloud::Common::AbstractModel
        # @param RebateMonth: 返佣月份，如2018-02
        # @type RebateMonth: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :RebateMonth, :Offset, :Limit

        def initialize(rebatemonth=nil, offset=nil, limit=nil)
          @RebateMonth = rebatemonth
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RebateMonth = params['RebateMonth']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRebateInfosNew返回参数结构体
      class DescribeRebateInfosNewResponse < TencentCloud::Common::AbstractModel
        # @param RebateInfoSet: 返佣信息列表
        # @type RebateInfoSet: Array
        # @param TotalCount: 符合查询条件返佣信息数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RebateInfoSet, :TotalCount, :RequestId

        def initialize(rebateinfoset=nil, totalcount=nil, requestid=nil)
          @RebateInfoSet = rebateinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RebateInfoSet'].nil?
            @RebateInfoSet = []
            params['RebateInfoSet'].each do |i|
              rebateinfoelemnew_tmp = RebateInfoElemNew.new
              rebateinfoelemnew_tmp.deserialize(i)
              @RebateInfoSet << rebateinfoelemnew_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRebateInfos请求参数结构体
      class DescribeRebateInfosRequest < TencentCloud::Common::AbstractModel
        # @param RebateMonth: 返佣月份，如2018-02
        # @type RebateMonth: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :RebateMonth, :Offset, :Limit

        def initialize(rebatemonth=nil, offset=nil, limit=nil)
          @RebateMonth = rebatemonth
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RebateMonth = params['RebateMonth']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRebateInfos返回参数结构体
      class DescribeRebateInfosResponse < TencentCloud::Common::AbstractModel
        # @param RebateInfoSet: 返佣信息列表
        # @type RebateInfoSet: Array
        # @param TotalCount: 符合查询条件返佣信息数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RebateInfoSet, :TotalCount, :RequestId

        def initialize(rebateinfoset=nil, totalcount=nil, requestid=nil)
          @RebateInfoSet = rebateinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RebateInfoSet'].nil?
            @RebateInfoSet = []
            params['RebateInfoSet'].each do |i|
              rebateinfoelem_tmp = RebateInfoElem.new
              rebateinfoelem_tmp.deserialize(i)
              @RebateInfoSet << rebateinfoelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSalesmans请求参数结构体
      class DescribeSalesmansRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param SalesName: 业务员姓名(模糊查询)
        # @type SalesName: String
        # @param SalesUin: 业务员ID
        # @type SalesUin: String
        # @param OrderDirection: ASC/DESC， 不区分大小写，按创建通过时间排序
        # @type OrderDirection: String

        attr_accessor :Offset, :Limit, :SalesName, :SalesUin, :OrderDirection

        def initialize(offset=nil, limit=nil, salesname=nil, salesuin=nil, orderdirection=nil)
          @Offset = offset
          @Limit = limit
          @SalesName = salesname
          @SalesUin = salesuin
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SalesName = params['SalesName']
          @SalesUin = params['SalesUin']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeSalesmans返回参数结构体
      class DescribeSalesmansResponse < TencentCloud::Common::AbstractModel
        # @param AgentSalesmanSet: 业务员列表
        # @type AgentSalesmanSet: Array
        # @param TotalCount: 符合条件的代客总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentSalesmanSet, :TotalCount, :RequestId

        def initialize(agentsalesmanset=nil, totalcount=nil, requestid=nil)
          @AgentSalesmanSet = agentsalesmanset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentSalesmanSet'].nil?
            @AgentSalesmanSet = []
            params['AgentSalesmanSet'].each do |i|
              agentsalesmanelem_tmp = AgentSalesmanElem.new
              agentsalesmanelem_tmp.deserialize(i)
              @AgentSalesmanSet << agentsalesmanelem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnbindClientList请求参数结构体
      class DescribeUnbindClientListRequest < TencentCloud::Common::AbstractModel
        # @param Status: 解绑状态：0:所有,1:审核中,2已解绑
        # @type Status: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param UnbindUin: 解绑账号ID
        # @type UnbindUin: String
        # @param ApplyTimeStart: 解绑申请时间范围起始点
        # @type ApplyTimeStart: String
        # @param ApplyTimeEnd: 解绑申请时间范围终止点
        # @type ApplyTimeEnd: String
        # @param OrderDirection: 对申请时间的升序降序，值：asc，desc
        # @type OrderDirection: String

        attr_accessor :Status, :Offset, :Limit, :UnbindUin, :ApplyTimeStart, :ApplyTimeEnd, :OrderDirection

        def initialize(status=nil, offset=nil, limit=nil, unbinduin=nil, applytimestart=nil, applytimeend=nil, orderdirection=nil)
          @Status = status
          @Offset = offset
          @Limit = limit
          @UnbindUin = unbinduin
          @ApplyTimeStart = applytimestart
          @ApplyTimeEnd = applytimeend
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UnbindUin = params['UnbindUin']
          @ApplyTimeStart = params['ApplyTimeStart']
          @ApplyTimeEnd = params['ApplyTimeEnd']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeUnbindClientList返回参数结构体
      class DescribeUnbindClientListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的解绑客户数量
        # @type TotalCount: Integer
        # @param UnbindClientList: 符合条件的解绑客户列表
        # @type UnbindClientList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UnbindClientList, :RequestId

        def initialize(totalcount=nil, unbindclientlist=nil, requestid=nil)
          @TotalCount = totalcount
          @UnbindClientList = unbindclientlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UnbindClientList'].nil?
            @UnbindClientList = []
            params['UnbindClientList'].each do |i|
              unbindclientelem_tmp = UnbindClientElem.new
              unbindclientelem_tmp.deserialize(i)
              @UnbindClientList << unbindclientelem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyClientRemark请求参数结构体
      class ModifyClientRemarkRequest < TencentCloud::Common::AbstractModel
        # @param ClientRemark: 客户备注名称
        # @type ClientRemark: String
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String

        attr_accessor :ClientRemark, :ClientUin

        def initialize(clientremark=nil, clientuin=nil)
          @ClientRemark = clientremark
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientRemark = params['ClientRemark']
          @ClientUin = params['ClientUin']
        end
      end

      # ModifyClientRemark返回参数结构体
      class ModifyClientRemarkResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 产品详情
      class ProductInfoElem < TencentCloud::Common::AbstractModel
        # @param Name: 产品属性
        # @type Name: String
        # @param Value: 产品属性值
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 返佣信息定义
      class RebateInfoElem < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param RebateMonth: 返佣月份，如2018-02
        # @type RebateMonth: String
        # @param Amt: 返佣金额，单位分
        # @type Amt: Integer
        # @param MonthSales: 月度业绩，单位分
        # @type MonthSales: Integer
        # @param QuarterSales: 季度业绩，单位分
        # @type QuarterSales: Integer
        # @param ExceptionFlag: NORMAL(正常)/HAS_OVERDUE_BILL(欠费)/NO_CONTRACT(缺合同)
        # @type ExceptionFlag: String

        attr_accessor :Uin, :RebateMonth, :Amt, :MonthSales, :QuarterSales, :ExceptionFlag

        def initialize(uin=nil, rebatemonth=nil, amt=nil, monthsales=nil, quartersales=nil, exceptionflag=nil)
          @Uin = uin
          @RebateMonth = rebatemonth
          @Amt = amt
          @MonthSales = monthsales
          @QuarterSales = quartersales
          @ExceptionFlag = exceptionflag
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RebateMonth = params['RebateMonth']
          @Amt = params['Amt']
          @MonthSales = params['MonthSales']
          @QuarterSales = params['QuarterSales']
          @ExceptionFlag = params['ExceptionFlag']
        end
      end

      # 返佣信息定义
      class RebateInfoElemNew < TencentCloud::Common::AbstractModel
        # @param Uin: 代理商账号ID
        # @type Uin: String
        # @param RebateMonth: 返佣月份，如2018-02
        # @type RebateMonth: String
        # @param Amt: 返佣金额，单位分
        # @type Amt: Integer
        # @param MonthSales: 月度业绩，单位分
        # @type MonthSales: Integer
        # @param QuarterSales: 季度业绩，单位分
        # @type QuarterSales: Integer
        # @param ExceptionFlag: NORMAL(正常)/HAS_OVERDUE_BILL(欠费)/NO_CONTRACT(缺合同)
        # @type ExceptionFlag: String

        attr_accessor :Uin, :RebateMonth, :Amt, :MonthSales, :QuarterSales, :ExceptionFlag

        def initialize(uin=nil, rebatemonth=nil, amt=nil, monthsales=nil, quartersales=nil, exceptionflag=nil)
          @Uin = uin
          @RebateMonth = rebatemonth
          @Amt = amt
          @MonthSales = monthsales
          @QuarterSales = quartersales
          @ExceptionFlag = exceptionflag
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RebateMonth = params['RebateMonth']
          @Amt = params['Amt']
          @MonthSales = params['MonthSales']
          @QuarterSales = params['QuarterSales']
          @ExceptionFlag = params['ExceptionFlag']
        end
      end

      # 退款单关联的原始订单信息
      class RefundMap < TencentCloud::Common::AbstractModel
        # @param DealName: 退款单关联的原始子订单号
        # @type DealName: String
        # @param RefundAmount: 退款金额，单位分
        # @type RefundAmount: Integer

        attr_accessor :DealName, :RefundAmount

        def initialize(dealname=nil, refundamount=nil)
          @DealName = dealname
          @RefundAmount = refundamount
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RefundAmount = params['RefundAmount']
        end
      end

      # RemovePayRelationForClient请求参数结构体
      class RemovePayRelationForClientRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户账号ID
        # @type ClientUin: String

        attr_accessor :ClientUin

        def initialize(clientuin=nil)
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
        end
      end

      # RemovePayRelationForClient返回参数结构体
      class RemovePayRelationForClientResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 订单子产品价格详情
      class SubProductPriceDetail < TencentCloud::Common::AbstractModel
        # @param Name: 子产品名称
        # @type Name: String
        # @param DiscountValue: 折扣值，=100时表示无折扣，=85时表示8.5折
        # @type DiscountValue: Float
        # @param TotalCost: 原价，折扣前价格，单位：分
        # @type TotalCost: Integer
        # @param RealTotalCost: 折后价，单位：分
        # @type RealTotalCost: Integer

        attr_accessor :Name, :DiscountValue, :TotalCost, :RealTotalCost

        def initialize(name=nil, discountvalue=nil, totalcost=nil, realtotalcost=nil)
          @Name = name
          @DiscountValue = discountvalue
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @Name = params['Name']
          @DiscountValue = params['DiscountValue']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 解绑客户信息
      class UnbindClientElem < TencentCloud::Common::AbstractModel
        # @param Uin: 解绑账号ID
        # @type Uin: String
        # @param Name: 名称
        # @type Name: String
        # @param Status: 状态：0:审核中；1：已解绑；2：已撤销 3：关联撤销 4: 已驳回
        # @type Status: Integer
        # @param ApplyTime: 申请时间
        # @type ApplyTime: String
        # @param ActionTime: 解绑/撤销时间
        # @type ActionTime: String

        attr_accessor :Uin, :Name, :Status, :ApplyTime, :ActionTime

        def initialize(uin=nil, name=nil, status=nil, applytime=nil, actiontime=nil)
          @Uin = uin
          @Name = name
          @Status = status
          @ApplyTime = applytime
          @ActionTime = actiontime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Status = params['Status']
          @ApplyTime = params['ApplyTime']
          @ActionTime = params['ActionTime']
        end
      end

    end
  end
end

