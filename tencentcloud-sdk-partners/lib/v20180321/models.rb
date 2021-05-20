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
        # @param AuthType: 认证类型, 0：个人，1：企业；其他：未认证
        # @type AuthType: String
        # @param AppId: 代客APPID
        # @type AppId: String
        # @param LastMonthAmt: 上月消费金额
        # @type LastMonthAmt: Integer
        # @param ThisMonthAmt: 本月消费金额
        # @type ThisMonthAmt: Integer
        # @param HasOverdueBill: 是否欠费,0：不欠费；1：欠费
        # @type HasOverdueBill: Integer
        # @param ClientType: 客户类型：可以为new(新拓)/assign(指定)/old(存量)/direct(直销)/direct_newopp(直销(新商机))/空
        # @type ClientType: String
        # @param ProjectType: 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        # @type ProjectType: String
        # @param SalesUin: 业务员ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesUin: String
        # @param SalesName: 业务员姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesName: String
        # @param Mail: 代客邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mail: String

        attr_accessor :Uin, :ClientUin, :AgentTime, :ClientFlag, :ClientRemark, :ClientName, :AuthType, :AppId, :LastMonthAmt, :ThisMonthAmt, :HasOverdueBill, :ClientType, :ProjectType, :SalesUin, :SalesName, :Mail
        
        def initialize(uin=nil, clientuin=nil, agenttime=nil, clientflag=nil, clientremark=nil, clientname=nil, authtype=nil, appid=nil, lastmonthamt=nil, thismonthamt=nil, hasoverduebill=nil, clienttype=nil, projecttype=nil, salesuin=nil, salesname=nil, mail=nil)
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
        # @param ClientType: 客户类型：可以为new(新拓)/assign(指定)/old(存量)/空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientType: String
        # @param ProjectType: 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectType: String
        # @param ActivityId: 活动ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param ClientFlag: 代客类型，可能值为a/b/c
        # @type ClientFlag: String
        # @param Mail: 代客邮箱，打码显示
        # @type Mail: String
        # @param Phone: 代客手机，打码显示
        # @type Phone: String
        # @param HasOverdueBill: 0表示不欠费，1表示欠费
        # @type HasOverdueBill: Integer
        # @param Status: 1:待代理商审核;2:待腾讯云审核
        # @type Status: Integer
        # @param SalesUin: 业务员ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesUin: String
        # @param SalesName: 业务员姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesName: String

        attr_accessor :Uin, :ClientUin, :ApplyTime, :ClientFlag, :Mail, :Phone, :HasOverdueBill, :Status, :SalesUin, :SalesName
        
        def initialize(uin=nil, clientuin=nil, applytime=nil, clientflag=nil, mail=nil, phone=nil, hasoverduebill=nil, status=nil, salesuin=nil, salesname=nil)
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
        end
      end

      # 描述代理商代付的订单信息
      class AgentDealElem < TencentCloud::Common::AbstractModel
        # @param DealId: 订单自增 ID
        # @type DealId: String
        # @param DealName: 订单号
        # @type DealName: String
        # @param GoodsCategoryId: 商品类型 ID
        # @type GoodsCategoryId: String
        # @param OwnerUin: 订单所有者
        # @type OwnerUin: String
        # @param AppId: 订单所有者对应 appId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param GoodsNum: 商品数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsNum: String
        # @param GoodsPrice: 价格详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsPrice: :class:`Tencentcloud::Partners.v20180321.models.DealGoodsPriceElem`
        # @param Creater: 下单人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creater: String
        # @param CreatTime: 下单时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatTime: String
        # @param PayEndTime: 支付结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayEndTime: String
        # @param BillId: 扣费流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillId: String
        # @param Payer: 支付人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Payer: String
        # @param DealStatus: 订单状态，中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealStatus: String
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param GoodsName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsName: String
        # @param ClientRemark: 客户备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientRemark: String
        # @param ActionType: 订单操作类型，purchase（新购），renew（续费），modify（配置变更）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param VoucherDecline: 代金券抵扣金额，单位分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherDecline: String
        # @param BigDealId: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealId: String
        # @param ClientType: 客户类型（new：新拓；old：存量；assign：指派）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientType: String
        # @param ProjectType: 项目类型（self：自拓；repeat：直销；platform：官网合作）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectType: String
        # @param SalesUin: 业务员账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesUin: String
        # @param PayerMode: 支付方式，0：自付；1：代付
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerMode: String
        # @param ActivityId: 活动ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: String
        # @param OverdueTime: 订单过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverdueTime: String
        # @param ProductInfo: 产品详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductInfo: Array

        attr_accessor :DealId, :DealName, :GoodsCategoryId, :OwnerUin, :AppId, :GoodsNum, :GoodsPrice, :Creater, :CreatTime, :PayEndTime, :BillId, :Payer, :DealStatus, :Status, :GoodsName, :ClientRemark, :ActionType, :VoucherDecline, :BigDealId, :ClientType, :ProjectType, :SalesUin, :PayerMode, :ActivityId, :OverdueTime, :ProductInfo
        
        def initialize(dealid=nil, dealname=nil, goodscategoryid=nil, owneruin=nil, appid=nil, goodsnum=nil, goodsprice=nil, creater=nil, creattime=nil, payendtime=nil, billid=nil, payer=nil, dealstatus=nil, status=nil, goodsname=nil, clientremark=nil, actiontype=nil, voucherdecline=nil, bigdealid=nil, clienttype=nil, projecttype=nil, salesuin=nil, payermode=nil, activityid=nil, overduetime=nil, productinfo=nil)
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
        end

        def deserialize(params)
          @DealId = params['DealId']
          @DealName = params['DealName']
          @GoodsCategoryId = params['GoodsCategoryId']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @GoodsNum = params['GoodsNum']
          unless params['GoodsPrice'].nil?
            @GoodsPrice = DealGoodsPriceElem.new.deserialize(params['GoodsPrice'])
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
              @ProductInfo << ProductInfoElem.new.deserialize(i)
            end
          end
        end
      end

      # 描述代理商代付的订单信息
      class AgentDealNewElem < TencentCloud::Common::AbstractModel
        # @param DealId: 订单自增 ID
        # @type DealId: String
        # @param DealName: 订单号
        # @type DealName: String
        # @param GoodsCategoryId: 商品类型 ID
        # @type GoodsCategoryId: String
        # @param OwnerUin: 订单所有者
        # @type OwnerUin: String
        # @param AppId: 订单所有者对应 appId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param GoodsNum: 商品数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsNum: String
        # @param GoodsPrice: 价格详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsPrice: :class:`Tencentcloud::Partners.v20180321.models.DealGoodsPriceNewElem`
        # @param Creater: 下单人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creater: String
        # @param CreatTime: 下单时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatTime: String
        # @param PayEndTime: 支付结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayEndTime: String
        # @param BillId: 扣费流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillId: String
        # @param Payer: 支付人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Payer: String
        # @param DealStatus: 订单状态，中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealStatus: String
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param GoodsName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsName: String
        # @param ClientRemark: 客户备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientRemark: String
        # @param ActionType: 订单操作类型，purchase（新购），renew（续费），modify（配置变更）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param VoucherDecline: 代金券抵扣金额，单位分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherDecline: String
        # @param BigDealId: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealId: String
        # @param ClientType: 客户类型（new：新拓；old：存量；assign：指派）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientType: String
        # @param ProjectType: 项目类型（self：自拓；repeat：直销；platform：官网合作）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectType: String
        # @param SalesUin: 业务员账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesUin: String
        # @param PayerMode: 支付方式，0：自付；1：代付
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerMode: String
        # @param ActivityId: 活动ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: String
        # @param OverdueTime: 订单过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverdueTime: String
        # @param ProductInfo: 产品详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductInfo: Array

        attr_accessor :DealId, :DealName, :GoodsCategoryId, :OwnerUin, :AppId, :GoodsNum, :GoodsPrice, :Creater, :CreatTime, :PayEndTime, :BillId, :Payer, :DealStatus, :Status, :GoodsName, :ClientRemark, :ActionType, :VoucherDecline, :BigDealId, :ClientType, :ProjectType, :SalesUin, :PayerMode, :ActivityId, :OverdueTime, :ProductInfo
        
        def initialize(dealid=nil, dealname=nil, goodscategoryid=nil, owneruin=nil, appid=nil, goodsnum=nil, goodsprice=nil, creater=nil, creattime=nil, payendtime=nil, billid=nil, payer=nil, dealstatus=nil, status=nil, goodsname=nil, clientremark=nil, actiontype=nil, voucherdecline=nil, bigdealid=nil, clienttype=nil, projecttype=nil, salesuin=nil, payermode=nil, activityid=nil, overduetime=nil, productinfo=nil)
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
        end

        def deserialize(params)
          @DealId = params['DealId']
          @DealName = params['DealName']
          @GoodsCategoryId = params['GoodsCategoryId']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @GoodsNum = params['GoodsNum']
          unless params['GoodsPrice'].nil?
            @GoodsPrice = DealGoodsPriceNewElem.new.deserialize(params['GoodsPrice'])
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
              @ProductInfo << ProductInfoElem.new.deserialize(i)
            end
          end
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 代客基础信息
      class ClientBaseElem < TencentCloud::Common::AbstractModel
        # @param AgentUin: 代客关联的代理商UIN
        # @type AgentUin: String
        # @param ClientUin: 代客UIN
        # @type ClientUin: String
        # @param ClientRelateType: 代客关联类型 0:代理 1:转售
        # @type ClientRelateType: Integer
        # @param AgentCooperationMode: 代理商合作模式 0:代理 1:转售
        # @type AgentCooperationMode: Integer
        # @param AgentCountry: 代理商国家编码 China:中国  其他:海外，如US等
        # @type AgentCountry: String

        attr_accessor :AgentUin, :ClientUin, :ClientRelateType, :AgentCooperationMode, :AgentCountry
        
        def initialize(agentuin=nil, clientuin=nil, clientrelatetype=nil, agentcooperationmode=nil, agentcountry=nil)
          @AgentUin = agentuin
          @ClientUin = clientuin
          @ClientRelateType = clientrelatetype
          @AgentCooperationMode = agentcooperationmode
          @AgentCountry = agentcountry
        end

        def deserialize(params)
          @AgentUin = params['AgentUin']
          @ClientUin = params['ClientUin']
          @ClientRelateType = params['ClientRelateType']
          @AgentCooperationMode = params['AgentCooperationMode']
          @AgentCountry = params['AgentCountry']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
      class DealGoodsPriceElem < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 实付金额
        # @type RealTotalCost: Integer

        attr_accessor :RealTotalCost
        
        def initialize(realtotalcost=nil)
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 订单价格详情
      class DealGoodsPriceNewElem < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 实付金额
        # @type RealTotalCost: Integer

        attr_accessor :RealTotalCost
        
        def initialize(realtotalcost=nil)
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
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
        # @param ClientType: 客户类型：可以为new(新拓)/assign(指定)/old(存量)/空
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentClientSet << AgentAuditedClient.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentBillSet << AgentBillElem.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentClientSet << AgentClientElem.new.deserialize(i)
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
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param OwnerUins: 下单人账号ID列表
        # @type OwnerUins: Array
        # @param DealNames: 订单号列表
        # @type DealNames: Array
        # @param PayerMode: 支付方式，0：自付；1：代付
        # @type PayerMode: Integer

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames, :PayerMode
        
        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil, payermode=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
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
          @PayerMode = params['PayerMode']
        end
      end

      # DescribeAgentDealsByCache返回参数结构体
      class DescribeAgentDealsByCacheResponse < TencentCloud::Common::AbstractModel
        # @param AgentDealSet: 订单数组
        # @type AgentDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentDealSet << AgentDealNewElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentDealsCache请求参数结构体
      class DescribeAgentDealsCacheRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param OwnerUins: 下单人账号ID列表
        # @type OwnerUins: Array
        # @param DealNames: 订单号列表
        # @type DealNames: Array
        # @param PayerMode: 支付方式，0：自付；1：代付
        # @type PayerMode: Integer

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames, :PayerMode
        
        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil, payermode=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
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
          @PayerMode = params['PayerMode']
        end
      end

      # DescribeAgentDealsCache返回参数结构体
      class DescribeAgentDealsCacheResponse < TencentCloud::Common::AbstractModel
        # @param AgentDealSet: 订单数组
        # @type AgentDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentDealSet << AgentDealElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentPayDeals请求参数结构体
      class DescribeAgentPayDealsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
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
        # @param DealNames: 订单号列表
        # @type DealNames: Array

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames
        
        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
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
        end
      end

      # DescribeAgentPayDeals返回参数结构体
      class DescribeAgentPayDealsResponse < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentPayDealSet << AgentDealElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentPayDealsV2请求参数结构体
      class DescribeAgentPayDealsV2Request < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
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
        # @param DealNames: 订单号列表
        # @type DealNames: Array

        attr_accessor :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :OwnerUins, :DealNames
        
        def initialize(offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, owneruins=nil, dealnames=nil)
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @OwnerUins = owneruins
          @DealNames = dealnames
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
        end
      end

      # DescribeAgentPayDealsV2返回参数结构体
      class DescribeAgentPayDealsV2Response < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentPayDealSet << AgentDealNewElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentSelfPayDeals请求参数结构体
      class DescribeAgentSelfPayDealsRequest < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 下单人账号ID
        # @type OwnerUin: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点(不传时会默认查15天内订单，传值时需要传15天内的起始时间)
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param DealNames: 订单号列表
        # @type DealNames: Array

        attr_accessor :OwnerUin, :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :DealNames
        
        def initialize(owneruin=nil, offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, dealnames=nil)
          @OwnerUin = owneruin
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @DealNames = dealnames
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
        end
      end

      # DescribeAgentSelfPayDeals返回参数结构体
      class DescribeAgentSelfPayDealsResponse < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentPayDealSet << AgentDealElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentSelfPayDealsV2请求参数结构体
      class DescribeAgentSelfPayDealsV2Request < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 下单人账号ID
        # @type OwnerUin: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param CreatTimeRangeStart: 下单时间范围起始点(不传时会默认查15天内订单，传值时需要传15天内的起始时间)
        # @type CreatTimeRangeStart: String
        # @param CreatTimeRangeEnd: 下单时间范围终止点
        # @type CreatTimeRangeEnd: String
        # @param Order: 0:下单时间降序；其他：下单时间升序
        # @type Order: Integer
        # @param Status: 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        # @type Status: Integer
        # @param DealNames: 订单号列表
        # @type DealNames: Array

        attr_accessor :OwnerUin, :Offset, :Limit, :CreatTimeRangeStart, :CreatTimeRangeEnd, :Order, :Status, :DealNames
        
        def initialize(owneruin=nil, offset=nil, limit=nil, creattimerangestart=nil, creattimerangeend=nil, order=nil, status=nil, dealnames=nil)
          @OwnerUin = owneruin
          @Offset = offset
          @Limit = limit
          @CreatTimeRangeStart = creattimerangestart
          @CreatTimeRangeEnd = creattimerangeend
          @Order = order
          @Status = status
          @DealNames = dealnames
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
        end
      end

      # DescribeAgentSelfPayDealsV2返回参数结构体
      class DescribeAgentSelfPayDealsV2Response < TencentCloud::Common::AbstractModel
        # @param AgentPayDealSet: 订单数组
        # @type AgentPayDealSet: Array
        # @param TotalCount: 符合条件的订单总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentPayDealSet << AgentDealNewElem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientBalance请求参数结构体
      class DescribeClientBalanceRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClientBalance返回参数结构体
      class DescribeClientBalanceResponse < TencentCloud::Common::AbstractModel
        # @param Balance: 账户可用余额，单位分 （可用余额 = 现金余额 - 冻结金额）
        # @type Balance: Integer
        # @param Cash: 账户现金余额，单位分
        # @type Cash: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeClientBaseInfo请求参数结构体
      class DescribeClientBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 代客UIN
        # @type ClientUin: String

        attr_accessor :ClientUin
        
        def initialize(clientuin=nil)
          @ClientUin = clientuin
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
        end
      end

      # DescribeClientBaseInfo返回参数结构体
      class DescribeClientBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param ClientBaseSet: 代客基础信息数组
        # @type ClientBaseSet: Array
        # @param TotalCount: 符合条件的代客数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientBaseSet, :TotalCount, :RequestId
        
        def initialize(clientbaseset=nil, totalcount=nil, requestid=nil)
          @ClientBaseSet = clientbaseset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientBaseSet'].nil?
            @ClientBaseSet = []
            params['ClientBaseSet'].each do |i|
              @ClientBaseSet << ClientBaseElem.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @RebateInfoSet << RebateInfoElem.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @AgentSalesmanSet << AgentSalesmanElem.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @UnbindClientList << UnbindClientElem.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyTime: String
        # @param ActionTime: 解绑/撤销时间
        # 注意：此字段可能返回 null，表示取不到有效值。
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

