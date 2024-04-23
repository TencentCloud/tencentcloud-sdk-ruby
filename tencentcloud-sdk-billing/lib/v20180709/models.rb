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
  module Billing
    module V20180709
      # 按交易类型汇总消费详情
      class ActionSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param ActionType: 交易类型编码
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：如包年包月新购、包年包月续费、按量计费扣费等类型
        # @type ActionTypeName: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :ActionType, :ActionTypeName, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :BillMonth, :TotalCost

        def initialize(actiontype=nil, actiontypename=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, billmonth=nil, totalcost=nil)
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
        end
      end

      # 分账账单趋势图平均值
      class AllocationAverageData < TencentCloud::Common::AbstractModel
        # @param BeginMonth: 起始月份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginMonth: String
        # @param EndMonth: 结束月份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndMonth: String
        # @param RealTotalCost: 合计费用(折后总额)平均值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String

        attr_accessor :BeginMonth, :EndMonth, :RealTotalCost

        def initialize(beginmonth=nil, endmonth=nil, realtotalcost=nil)
          @BeginMonth = beginmonth
          @EndMonth = endmonth
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @BeginMonth = params['BeginMonth']
          @EndMonth = params['EndMonth']
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 分账趋势图详情数据
      class AllocationBillTrendDetail < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Month: String
        # @param Name: 账单月份展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RealTotalCost: 合计费用(折后总额)：分账单元总费用，归集费用(折后总额) + 分摊费用(折后总额)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String

        attr_accessor :Month, :Name, :RealTotalCost

        def initialize(month=nil, name=nil, realtotalcost=nil)
          @Month = month
          @Name = name
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @Month = params['Month']
          @Name = params['Name']
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 分账账单明细
      class AllocationDetail < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param BillDate: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDate: String
        # @param PayerUin: 支付者 UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param OwnerUin: 使用者 UIN：实际使用资源的账号 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OperateUin: 操作者 UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的ID或者角色 ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String
        # @param PayMode: 计费模式编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModeName: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionName: 地域名称：资源所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneName: 可用区：资源所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param ResourceId: 资源ID：不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID； 若该产品被分拆，则展示产品分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 实例名称：用户在控制台为资源设置的名称，如未设置默认为空；若该产品被分拆，则展示分拆产品分拆后的分拆项资源别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param InstanceType: 实例类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。常规实例默认展示“-”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeName: String
        # @param SplitItemId: 分拆项 ID：涉及分拆产品的分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemId: String
        # @param SplitItemName: 分拆项名称：涉及分拆产品的分拆后的分拆项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemName: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：明细交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String
        # @param OrderId: 订单 ID：包年包月计费模式下订购的订单号

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param BillId: 交易 ID：结算扣费单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillId: String
        # @param PayTime: 扣费时间：结算扣费时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeEndTime: String
        # @param ComponentCode: 组件类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ComponentCodeName: 组件类型：用户购买的产品或服务对应的组件大类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCodeName: String
        # @param SinglePrice: 组件刊例价：组件的官网原始单价（如客户享受一口价/合同价则默认不展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinglePrice: String
        # @param ContractPrice: 组件单价：组件的折后单价，组件单价 = 刊例价 * 折扣
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractPrice: String
        # @param SinglePriceUnit: 组件价格单位：组件价格的单位，单位构成：元/用量单位/时长单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinglePriceUnit: String
        # @param UsedAmount: 组件用量：该组件实际结算用量，组件用量=组件原始用量-抵扣用量（含资源包）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedAmount: String
        # @param UsedAmountUnit: 组件用量单位：组件用量对应的单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedAmountUnit: String
        # @param TimeSpan: 使用时长：资源使用的时长，组件用量=组件原始使用时长-抵扣时长（含资源包）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: String
        # @param TimeUnit: 时长单位：资源使用时长的单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param ReserveDetail: 备注属性（实例配置）：其他备注信息，如预留实例的预留实例类型和交易类型、CCN 产品的两端地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReserveDetail: String
        # @param SplitRatio: 分拆项用量/时长占比：分拆项用量（时长）占比，分拆项用量（时长）/ 拆分前合计用量（时长）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitRatio: String
        # @param TotalCost: 组件原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如客户享受一口价/合同价则默认不展示，退费类场景也默认不展示），指定价模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String
        # @param RITimeSpan: 预留实例抵扣时长：本产品或服务使用预留实例抵扣的使用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RITimeSpan: String
        # @param RICost: 预留实例抵扣原价：本产品或服务使用预留实例抵扣的组件原价金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RICost: String
        # @param SPCost: 节省计划抵扣原价：节省计划抵扣原价 = 节省计划包抵扣面值 / 节省计划抵扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPCost: String
        # @param Discount: 折扣率：本资源享受的折扣率（如客户享受一口价/合同价则默认不展示，退费场景也默认不展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: String
        # @param BlendedDiscount: 混合折扣率：综合各类折扣抵扣信息后的最终折扣率，混合折扣率=优惠后总价/原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlendedDiscount: String
        # @param RealTotalCost: 优惠后总价：优惠后总价 =（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出(元)：通过现金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券支出(元)：使用各类优惠券（如代金券、现金券等）支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出(元)：使用赠送金支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成账户支出(元)：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param Tag: 分账标签：资源绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param RegionType: 国内国际编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionType: String
        # @param RegionTypeName: 国内国际：资源所属区域类型（国内、国际）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeName: String
        # @param ItemCode: 组件名称编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCode: String
        # @param ItemCodeName: 组件名称：用户购买的产品或服务，所包含的具体组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCodeName: String
        # @param AssociatedOrder: 关联单据ID：和本笔交易关联单据ID，如退费订单对应的原新购订单等
        # @type AssociatedOrder: String
        # @param PriceInfo: 价格属性：该组件除单价、时长外的其他影响折扣定价的属性信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceInfo: Array
        # @param Formula: 计算规则说明：特殊交易类型计费结算的详细计算说明，如退费及变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Formula: String
        # @param FormulaUrl: 计费规则：各产品详细的计费规则官网说明链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormulaUrl: String
        # @param RealTotalMeasure: 原始用量/时长：组件被资源包抵扣前的原始用量
        # （目前仅实时音视频、弹性微服务、云呼叫中心及专属可用区产品支持该信息外显，其他产品尚在接入中）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalMeasure: String
        # @param DeductedMeasure: 抵扣用量/时长（含资源包）：组件被资源包抵扣的用量
        # （目前仅实时音视频、弹性微服务、云呼叫中心及专属可用区产品支持该信息外显，其他产品尚在接入中）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductedMeasure: String
        # @param ComponentConfig: 配置描述：资源配置规格信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentConfig: String
        # @param AllocationType: 费用归集类型：费用来源类型，分摊、归集、未分配
        # 0 - 分摊
        # 1 - 归集
        # -1 - 未分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocationType: Integer

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName, :BillDate, :PayerUin, :OwnerUin, :OperateUin, :BusinessCode, :BusinessCodeName, :PayMode, :PayModeName, :ProjectId, :ProjectName, :RegionId, :RegionName, :ZoneId, :ZoneName, :ResourceId, :ResourceName, :InstanceType, :InstanceTypeName, :SplitItemId, :SplitItemName, :ProductCode, :ProductCodeName, :ActionType, :ActionTypeName, :OrderId, :BillId, :PayTime, :FeeBeginTime, :FeeEndTime, :ComponentCode, :ComponentCodeName, :SinglePrice, :ContractPrice, :SinglePriceUnit, :UsedAmount, :UsedAmountUnit, :TimeSpan, :TimeUnit, :ReserveDetail, :SplitRatio, :TotalCost, :RITimeSpan, :RICost, :SPCost, :Discount, :BlendedDiscount, :RealTotalCost, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :Tag, :RegionType, :RegionTypeName, :ItemCode, :ItemCodeName, :AssociatedOrder, :PriceInfo, :Formula, :FormulaUrl, :RealTotalMeasure, :DeductedMeasure, :ComponentConfig, :AllocationType
        extend Gem::Deprecate
        deprecate :SplitItemId, :none, 2024, 4
        deprecate :SplitItemId=, :none, 2024, 4
        deprecate :SplitItemName, :none, 2024, 4
        deprecate :SplitItemName=, :none, 2024, 4

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil, billdate=nil, payeruin=nil, owneruin=nil, operateuin=nil, businesscode=nil, businesscodename=nil, paymode=nil, paymodename=nil, projectid=nil, projectname=nil, regionid=nil, regionname=nil, zoneid=nil, zonename=nil, resourceid=nil, resourcename=nil, instancetype=nil, instancetypename=nil, splititemid=nil, splititemname=nil, productcode=nil, productcodename=nil, actiontype=nil, actiontypename=nil, orderid=nil, billid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, componentcode=nil, componentcodename=nil, singleprice=nil, contractprice=nil, singlepriceunit=nil, usedamount=nil, usedamountunit=nil, timespan=nil, timeunit=nil, reservedetail=nil, splitratio=nil, totalcost=nil, ritimespan=nil, ricost=nil, spcost=nil, discount=nil, blendeddiscount=nil, realtotalcost=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, tag=nil, regiontype=nil, regiontypename=nil, itemcode=nil, itemcodename=nil, associatedorder=nil, priceinfo=nil, formula=nil, formulaurl=nil, realtotalmeasure=nil, deductedmeasure=nil, componentconfig=nil, allocationtype=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @BillDate = billdate
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @PayMode = paymode
          @PayModeName = paymodename
          @ProjectId = projectid
          @ProjectName = projectname
          @RegionId = regionid
          @RegionName = regionname
          @ZoneId = zoneid
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
          @SplitItemId = splititemid
          @SplitItemName = splititemname
          @ProductCode = productcode
          @ProductCodeName = productcodename
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @BillId = billid
          @PayTime = paytime
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ComponentCode = componentcode
          @ComponentCodeName = componentcodename
          @SinglePrice = singleprice
          @ContractPrice = contractprice
          @SinglePriceUnit = singlepriceunit
          @UsedAmount = usedamount
          @UsedAmountUnit = usedamountunit
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ReserveDetail = reservedetail
          @SplitRatio = splitratio
          @TotalCost = totalcost
          @RITimeSpan = ritimespan
          @RICost = ricost
          @SPCost = spcost
          @Discount = discount
          @BlendedDiscount = blendeddiscount
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @Tag = tag
          @RegionType = regiontype
          @RegionTypeName = regiontypename
          @ItemCode = itemcode
          @ItemCodeName = itemcodename
          @AssociatedOrder = associatedorder
          @PriceInfo = priceinfo
          @Formula = formula
          @FormulaUrl = formulaurl
          @RealTotalMeasure = realtotalmeasure
          @DeductedMeasure = deductedmeasure
          @ComponentConfig = componentconfig
          @AllocationType = allocationtype
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @BillDate = params['BillDate']
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
          @SplitItemId = params['SplitItemId']
          @SplitItemName = params['SplitItemName']
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @BillId = params['BillId']
          @PayTime = params['PayTime']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @ComponentCode = params['ComponentCode']
          @ComponentCodeName = params['ComponentCodeName']
          @SinglePrice = params['SinglePrice']
          @ContractPrice = params['ContractPrice']
          @SinglePriceUnit = params['SinglePriceUnit']
          @UsedAmount = params['UsedAmount']
          @UsedAmountUnit = params['UsedAmountUnit']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ReserveDetail = params['ReserveDetail']
          @SplitRatio = params['SplitRatio']
          @TotalCost = params['TotalCost']
          @RITimeSpan = params['RITimeSpan']
          @RICost = params['RICost']
          @SPCost = params['SPCost']
          @Discount = params['Discount']
          @BlendedDiscount = params['BlendedDiscount']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          @RegionType = params['RegionType']
          @RegionTypeName = params['RegionTypeName']
          @ItemCode = params['ItemCode']
          @ItemCodeName = params['ItemCodeName']
          @AssociatedOrder = params['AssociatedOrder']
          @PriceInfo = params['PriceInfo']
          @Formula = params['Formula']
          @FormulaUrl = params['FormulaUrl']
          @RealTotalMeasure = params['RealTotalMeasure']
          @DeductedMeasure = params['DeductedMeasure']
          @ComponentConfig = params['ComponentConfig']
          @AllocationType = params['AllocationType']
        end
      end

      # 分账账单月概览金额明细
      class AllocationMonthOverviewDetail < TencentCloud::Common::AbstractModel
        # @param GatherCashPayAmount: 归集费用(现金)：基于归集规则直接归集到分账单元的现金
        # @type GatherCashPayAmount: String
        # @param GatherVoucherPayAmount: 归集费用(优惠券)：基于归集规则直接归集到分账单元的资源优惠券
        # @type GatherVoucherPayAmount: String
        # @param GatherIncentivePayAmount: 归集费用(赠送金)：基于归集规则直接归集到分账单元的资源赠送金
        # @type GatherIncentivePayAmount: String
        # @param GatherTransferPayAmount: 归集费用(分成金)：基于归集规则直接归集到分账单元的资源分成金
        # @type GatherTransferPayAmount: String
        # @param AllocateCashPayAmount: 分摊费用(现金)：基于分摊规则分摊到分账单元的资源现金
        # @type AllocateCashPayAmount: String
        # @param AllocateVoucherPayAmount: 分摊费用(优惠券)：基于分摊规则分摊到分账单元的资源优惠券
        # @type AllocateVoucherPayAmount: String
        # @param AllocateIncentivePayAmount: 分摊费用(赠送金)：基于分摊规则分摊到分账单元的资源赠送金
        # @type AllocateIncentivePayAmount: String
        # @param AllocateTransferPayAmount: 分摊费用(分成金)：基于分摊规则分摊到分账单元的资源分成金
        # @type AllocateTransferPayAmount: String
        # @param TotalCashPayAmount: 合计费用(现金)：分账单元总费用，归集费用(现金) + 分摊费用(现金)
        # @type TotalCashPayAmount: String
        # @param TotalVoucherPayAmount: 合计费用(优惠券)：分账单元总费用，归集费用(优惠券) + 分摊费用(优惠券)
        # @type TotalVoucherPayAmount: String
        # @param TotalIncentivePayAmount: 合计费用(赠送金)：分账单元总费用，归集费用(赠送金) + 分摊费用(赠送金)
        # @type TotalIncentivePayAmount: String
        # @param TotalTransferPayAmount: 合计费用(分成金)：分账单元总费用，归集费用(分成金)+分摊费用(分成金)
        # @type TotalTransferPayAmount: String
        # @param GatherRealCost: 归集费用(折后总额)：基于归集规则直接归集到分账单元的资源优惠后总价
        # @type GatherRealCost: String
        # @param AllocateRealCost: 分摊费用(折后总额)：基于分摊规则分摊到分账单元的资源优惠后总价
        # @type AllocateRealCost: String
        # @param RealTotalCost: 合计费用(折后总额)：分账单元总费用，归集费用(折后总额) + 分摊费用(折后总额)
        # @type RealTotalCost: String
        # @param Ratio: 占比(折后总额)：本分账单元合计费用(折后总额)/合计费用(折后总额)*100%
        # @type Ratio: String
        # @param Trend: 环比(折后总额)：[本月分账单元合计费用(折后总额) - 上月分账单元合计费用(折后总额)] / 上月分账单元合计费用(折后总额) * 100%
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trend: String
        # @param TrendType: 环比箭头
        # upward -上升
        # downward - 下降
        # none - 平稳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendType: String

        attr_accessor :GatherCashPayAmount, :GatherVoucherPayAmount, :GatherIncentivePayAmount, :GatherTransferPayAmount, :AllocateCashPayAmount, :AllocateVoucherPayAmount, :AllocateIncentivePayAmount, :AllocateTransferPayAmount, :TotalCashPayAmount, :TotalVoucherPayAmount, :TotalIncentivePayAmount, :TotalTransferPayAmount, :GatherRealCost, :AllocateRealCost, :RealTotalCost, :Ratio, :Trend, :TrendType

        def initialize(gathercashpayamount=nil, gathervoucherpayamount=nil, gatherincentivepayamount=nil, gathertransferpayamount=nil, allocatecashpayamount=nil, allocatevoucherpayamount=nil, allocateincentivepayamount=nil, allocatetransferpayamount=nil, totalcashpayamount=nil, totalvoucherpayamount=nil, totalincentivepayamount=nil, totaltransferpayamount=nil, gatherrealcost=nil, allocaterealcost=nil, realtotalcost=nil, ratio=nil, trend=nil, trendtype=nil)
          @GatherCashPayAmount = gathercashpayamount
          @GatherVoucherPayAmount = gathervoucherpayamount
          @GatherIncentivePayAmount = gatherincentivepayamount
          @GatherTransferPayAmount = gathertransferpayamount
          @AllocateCashPayAmount = allocatecashpayamount
          @AllocateVoucherPayAmount = allocatevoucherpayamount
          @AllocateIncentivePayAmount = allocateincentivepayamount
          @AllocateTransferPayAmount = allocatetransferpayamount
          @TotalCashPayAmount = totalcashpayamount
          @TotalVoucherPayAmount = totalvoucherpayamount
          @TotalIncentivePayAmount = totalincentivepayamount
          @TotalTransferPayAmount = totaltransferpayamount
          @GatherRealCost = gatherrealcost
          @AllocateRealCost = allocaterealcost
          @RealTotalCost = realtotalcost
          @Ratio = ratio
          @Trend = trend
          @TrendType = trendtype
        end

        def deserialize(params)
          @GatherCashPayAmount = params['GatherCashPayAmount']
          @GatherVoucherPayAmount = params['GatherVoucherPayAmount']
          @GatherIncentivePayAmount = params['GatherIncentivePayAmount']
          @GatherTransferPayAmount = params['GatherTransferPayAmount']
          @AllocateCashPayAmount = params['AllocateCashPayAmount']
          @AllocateVoucherPayAmount = params['AllocateVoucherPayAmount']
          @AllocateIncentivePayAmount = params['AllocateIncentivePayAmount']
          @AllocateTransferPayAmount = params['AllocateTransferPayAmount']
          @TotalCashPayAmount = params['TotalCashPayAmount']
          @TotalVoucherPayAmount = params['TotalVoucherPayAmount']
          @TotalIncentivePayAmount = params['TotalIncentivePayAmount']
          @TotalTransferPayAmount = params['TotalTransferPayAmount']
          @GatherRealCost = params['GatherRealCost']
          @AllocateRealCost = params['AllocateRealCost']
          @RealTotalCost = params['RealTotalCost']
          @Ratio = params['Ratio']
          @Trend = params['Trend']
          @TrendType = params['TrendType']
        end
      end

      # 分账概览明细
      class AllocationOverviewDetail < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param BillDate: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDate: String
        # @param GatherCashPayAmount: 归集费用(现金)：基于归集规则直接归集到分账单元的现金
        # @type GatherCashPayAmount: String
        # @param GatherVoucherPayAmount: 归集费用(优惠券)：基于归集规则直接归集到分账单元的资源优惠券
        # @type GatherVoucherPayAmount: String
        # @param GatherIncentivePayAmount: 归集费用(赠送金)：基于归集规则直接归集到分账单元的资源赠送金
        # @type GatherIncentivePayAmount: String
        # @param GatherTransferPayAmount: 归集费用(分成金)：基于归集规则直接归集到分账单元的资源分成金
        # @type GatherTransferPayAmount: String
        # @param AllocateCashPayAmount: 分摊费用(现金)：基于分摊规则分摊到分账单元的资源现金
        # @type AllocateCashPayAmount: String
        # @param AllocateVoucherPayAmount: 分摊费用(优惠券)：基于分摊规则分摊到分账单元的资源优惠券
        # @type AllocateVoucherPayAmount: String
        # @param AllocateIncentivePayAmount: 分摊费用(赠送金)：基于分摊规则分摊到分账单元的资源赠送金
        # @type AllocateIncentivePayAmount: String
        # @param AllocateTransferPayAmount: 分摊费用(分成金)：基于分摊规则分摊到分账单元的资源分成金
        # @type AllocateTransferPayAmount: String
        # @param TotalCashPayAmount: 合计费用(现金)：分账单元总费用，归集费用(现金) + 分摊费用(现金)
        # @type TotalCashPayAmount: String
        # @param TotalVoucherPayAmount: 合计费用(优惠券)：分账单元总费用，归集费用(优惠券) + 分摊费用(优惠券)
        # @type TotalVoucherPayAmount: String
        # @param TotalIncentivePayAmount: 合计费用(赠送金)：分账单元总费用，归集费用(赠送金) + 分摊费用(赠送金)
        # @type TotalIncentivePayAmount: String
        # @param TotalTransferPayAmount: 合计费用(分成金)：分账单元总费用，归集费用(分成金)+分摊费用(分成金)
        # @type TotalTransferPayAmount: String
        # @param GatherRealCost: 归集费用(折后总额)：基于归集规则直接归集到分账单元的资源优惠后总价
        # @type GatherRealCost: String
        # @param AllocateRealCost: 分摊费用(折后总额)：基于分摊规则分摊到分账单元的资源优惠后总价
        # @type AllocateRealCost: String
        # @param RealTotalCost: 合计费用(折后总额)：分账单元总费用，归集费用(折后总额) + 分摊费用(折后总额)
        # @type RealTotalCost: String
        # @param Ratio: 占比(折后总额)：本分账单元合计费用(折后总额)/合计费用(折后总额)*100%
        # @type Ratio: String
        # @param Trend: 环比(折后总额)：[本月分账单元合计费用(折后总额) - 上月分账单元合计费用(折后总额)] / 上月分账单元合计费用(折后总额) * 100%
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trend: String
        # @param TrendType: 环比箭头
        # upward -上升
        # downward - 下降
        # none - 平稳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendType: String

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName, :BillDate, :GatherCashPayAmount, :GatherVoucherPayAmount, :GatherIncentivePayAmount, :GatherTransferPayAmount, :AllocateCashPayAmount, :AllocateVoucherPayAmount, :AllocateIncentivePayAmount, :AllocateTransferPayAmount, :TotalCashPayAmount, :TotalVoucherPayAmount, :TotalIncentivePayAmount, :TotalTransferPayAmount, :GatherRealCost, :AllocateRealCost, :RealTotalCost, :Ratio, :Trend, :TrendType

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil, billdate=nil, gathercashpayamount=nil, gathervoucherpayamount=nil, gatherincentivepayamount=nil, gathertransferpayamount=nil, allocatecashpayamount=nil, allocatevoucherpayamount=nil, allocateincentivepayamount=nil, allocatetransferpayamount=nil, totalcashpayamount=nil, totalvoucherpayamount=nil, totalincentivepayamount=nil, totaltransferpayamount=nil, gatherrealcost=nil, allocaterealcost=nil, realtotalcost=nil, ratio=nil, trend=nil, trendtype=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @BillDate = billdate
          @GatherCashPayAmount = gathercashpayamount
          @GatherVoucherPayAmount = gathervoucherpayamount
          @GatherIncentivePayAmount = gatherincentivepayamount
          @GatherTransferPayAmount = gathertransferpayamount
          @AllocateCashPayAmount = allocatecashpayamount
          @AllocateVoucherPayAmount = allocatevoucherpayamount
          @AllocateIncentivePayAmount = allocateincentivepayamount
          @AllocateTransferPayAmount = allocatetransferpayamount
          @TotalCashPayAmount = totalcashpayamount
          @TotalVoucherPayAmount = totalvoucherpayamount
          @TotalIncentivePayAmount = totalincentivepayamount
          @TotalTransferPayAmount = totaltransferpayamount
          @GatherRealCost = gatherrealcost
          @AllocateRealCost = allocaterealcost
          @RealTotalCost = realtotalcost
          @Ratio = ratio
          @Trend = trend
          @TrendType = trendtype
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @BillDate = params['BillDate']
          @GatherCashPayAmount = params['GatherCashPayAmount']
          @GatherVoucherPayAmount = params['GatherVoucherPayAmount']
          @GatherIncentivePayAmount = params['GatherIncentivePayAmount']
          @GatherTransferPayAmount = params['GatherTransferPayAmount']
          @AllocateCashPayAmount = params['AllocateCashPayAmount']
          @AllocateVoucherPayAmount = params['AllocateVoucherPayAmount']
          @AllocateIncentivePayAmount = params['AllocateIncentivePayAmount']
          @AllocateTransferPayAmount = params['AllocateTransferPayAmount']
          @TotalCashPayAmount = params['TotalCashPayAmount']
          @TotalVoucherPayAmount = params['TotalVoucherPayAmount']
          @TotalIncentivePayAmount = params['TotalIncentivePayAmount']
          @TotalTransferPayAmount = params['TotalTransferPayAmount']
          @GatherRealCost = params['GatherRealCost']
          @AllocateRealCost = params['AllocateRealCost']
          @RealTotalCost = params['RealTotalCost']
          @Ratio = params['Ratio']
          @Trend = params['Trend']
          @TrendType = params['TrendType']
        end
      end

      # 分账账单月概览详情
      class AllocationOverviewNode < TencentCloud::Common::AbstractModel
        # @param Id: 分账单元ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param Symbol: 分账单元包含规则标志
        # 0 - 不存在规则
        # 1 - 同时存在归集规则和公摊规则
        # 2 - 仅存在归集规则
        # 3 - 仅存在公摊规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Symbol: Integer
        # @param Children: 子单元月概览详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param Detail: 分账账单月概览金额明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Billing.v20180709.models.AllocationMonthOverviewDetail`

        attr_accessor :Id, :Name, :TreeNodeUniqKey, :Symbol, :Children, :Detail

        def initialize(id=nil, name=nil, treenodeuniqkey=nil, symbol=nil, children=nil, detail=nil)
          @Id = id
          @Name = name
          @TreeNodeUniqKey = treenodeuniqkey
          @Symbol = symbol
          @Children = children
          @Detail = detail
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @Symbol = params['Symbol']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              allocationoverviewnode_tmp = AllocationOverviewNode.new
              allocationoverviewnode_tmp.deserialize(i)
              @Children << allocationoverviewnode_tmp
            end
          end
          unless params['Detail'].nil?
            @Detail = AllocationMonthOverviewDetail.new
            @Detail.deserialize(params['Detail'])
          end
        end
      end

      # 分账账单概览金额汇总
      class AllocationOverviewTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 总费用：现金费用合计+分成金费用合计+赠送金费用合计+优惠券费用合计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金： 现金费用合计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金：赠送金费用合计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券：优惠券费用合计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金：分成金费用合计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String

        attr_accessor :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount

        def initialize(realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil)
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 当前资源命中公摊规则信息
      class AllocationRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 公摊规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 公摊规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String

        attr_accessor :RuleId, :RuleName

        def initialize(ruleid=nil, rulename=nil)
          @RuleId = ruleid
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
        end
      end

      # 分账账单趋势图
      class AllocationStat < TencentCloud::Common::AbstractModel
        # @param Average: 费用平均信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Average: :class:`Tencentcloud::Billing.v20180709.models.AllocationAverageData`

        attr_accessor :Average

        def initialize(average=nil)
          @Average = average
        end

        def deserialize(params)
          unless params['Average'].nil?
            @Average = AllocationAverageData.new
            @Average.deserialize(params['Average'])
          end
        end
      end

      # 分账账单按产品汇总明细
      class AllocationSummaryByBusiness < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param BillDate: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDate: String
        # @param GatherCashPayAmount: 归集费用(现金)：基于归集规则直接归集到分账单元的现金
        # @type GatherCashPayAmount: String
        # @param GatherVoucherPayAmount: 归集费用(优惠券)：基于归集规则直接归集到分账单元的资源优惠券
        # @type GatherVoucherPayAmount: String
        # @param GatherIncentivePayAmount: 归集费用(赠送金)：基于归集规则直接归集到分账单元的资源赠送金
        # @type GatherIncentivePayAmount: String
        # @param GatherTransferPayAmount: 归集费用(分成金)：基于归集规则直接归集到分账单元的资源分成金
        # @type GatherTransferPayAmount: String
        # @param AllocateCashPayAmount: 分摊费用(现金)：基于分摊规则分摊到分账单元的资源现金
        # @type AllocateCashPayAmount: String
        # @param AllocateVoucherPayAmount: 分摊费用(优惠券)：基于分摊规则分摊到分账单元的资源优惠券
        # @type AllocateVoucherPayAmount: String
        # @param AllocateIncentivePayAmount: 分摊费用(赠送金)：基于分摊规则分摊到分账单元的资源赠送金
        # @type AllocateIncentivePayAmount: String
        # @param AllocateTransferPayAmount: 分摊费用(分成金)：基于分摊规则分摊到分账单元的资源分成金
        # @type AllocateTransferPayAmount: String
        # @param TotalCashPayAmount: 合计费用(现金)：分账单元总费用，归集费用(现金) + 分摊费用(现金)
        # @type TotalCashPayAmount: String
        # @param TotalVoucherPayAmount: 合计费用(优惠券)：分账单元总费用，归集费用(优惠券) + 分摊费用(优惠券)
        # @type TotalVoucherPayAmount: String
        # @param TotalIncentivePayAmount: 合计费用(赠送金)：分账单元总费用，归集费用(赠送金) + 分摊费用(赠送金)
        # @type TotalIncentivePayAmount: String
        # @param TotalTransferPayAmount: 合计费用(分成金)：分账单元总费用，归集费用(分成金)+分摊费用(分成金)
        # @type TotalTransferPayAmount: String
        # @param GatherRealCost: 归集费用(折后总额)：基于归集规则直接归集到分账单元的资源优惠后总价
        # @type GatherRealCost: String
        # @param AllocateRealCost: 分摊费用(折后总额)：基于分摊规则分摊到分账单元的资源优惠后总价
        # @type AllocateRealCost: String
        # @param RealTotalCost: 合计费用(折后总额)：分账单元总费用，归集费用(折后总额) + 分摊费用(折后总额)
        # @type RealTotalCost: String
        # @param Ratio: 占比(折后总额)：本分账单元合计费用(折后总额)/合计费用(折后总额)*100%
        # @type Ratio: String
        # @param Trend: 环比(折后总额)：[本月分账单元合计费用(折后总额) - 上月分账单元合计费用(折后总额)] / 上月分账单元合计费用(折后总额) * 100%
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trend: String
        # @param TrendType: 环比箭头
        # upward -上升
        # downward - 下降
        # none - 平稳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrendType: String
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String
        # @param TotalCost: 组件原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如客户享受一口价/合同价则默认不展示，退费类场景也默认不展示），指定价模式
        # @type TotalCost: String
        # @param RICost: 预留实例抵扣原价：本产品或服务使用预留实例抵扣的组件原价金额
        # @type RICost: String
        # @param SPCost: 节省计划抵扣原价：节省计划抵扣原价 = 节省计划包抵扣面值 / 节省计划抵扣率
        # @type SPCost: String
        # @param CashPayAmount: 现金账户支出(元)：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券支出(元)：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出(元)：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成账户支出(元)：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param AllocationRealTotalCost: 优惠后总价：优惠后总价 =（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # @type AllocationRealTotalCost: String

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName, :BillDate, :GatherCashPayAmount, :GatherVoucherPayAmount, :GatherIncentivePayAmount, :GatherTransferPayAmount, :AllocateCashPayAmount, :AllocateVoucherPayAmount, :AllocateIncentivePayAmount, :AllocateTransferPayAmount, :TotalCashPayAmount, :TotalVoucherPayAmount, :TotalIncentivePayAmount, :TotalTransferPayAmount, :GatherRealCost, :AllocateRealCost, :RealTotalCost, :Ratio, :Trend, :TrendType, :BusinessCode, :BusinessCodeName, :TotalCost, :RICost, :SPCost, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :AllocationRealTotalCost

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil, billdate=nil, gathercashpayamount=nil, gathervoucherpayamount=nil, gatherincentivepayamount=nil, gathertransferpayamount=nil, allocatecashpayamount=nil, allocatevoucherpayamount=nil, allocateincentivepayamount=nil, allocatetransferpayamount=nil, totalcashpayamount=nil, totalvoucherpayamount=nil, totalincentivepayamount=nil, totaltransferpayamount=nil, gatherrealcost=nil, allocaterealcost=nil, realtotalcost=nil, ratio=nil, trend=nil, trendtype=nil, businesscode=nil, businesscodename=nil, totalcost=nil, ricost=nil, spcost=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, allocationrealtotalcost=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @BillDate = billdate
          @GatherCashPayAmount = gathercashpayamount
          @GatherVoucherPayAmount = gathervoucherpayamount
          @GatherIncentivePayAmount = gatherincentivepayamount
          @GatherTransferPayAmount = gathertransferpayamount
          @AllocateCashPayAmount = allocatecashpayamount
          @AllocateVoucherPayAmount = allocatevoucherpayamount
          @AllocateIncentivePayAmount = allocateincentivepayamount
          @AllocateTransferPayAmount = allocatetransferpayamount
          @TotalCashPayAmount = totalcashpayamount
          @TotalVoucherPayAmount = totalvoucherpayamount
          @TotalIncentivePayAmount = totalincentivepayamount
          @TotalTransferPayAmount = totaltransferpayamount
          @GatherRealCost = gatherrealcost
          @AllocateRealCost = allocaterealcost
          @RealTotalCost = realtotalcost
          @Ratio = ratio
          @Trend = trend
          @TrendType = trendtype
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @TotalCost = totalcost
          @RICost = ricost
          @SPCost = spcost
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @AllocationRealTotalCost = allocationrealtotalcost
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @BillDate = params['BillDate']
          @GatherCashPayAmount = params['GatherCashPayAmount']
          @GatherVoucherPayAmount = params['GatherVoucherPayAmount']
          @GatherIncentivePayAmount = params['GatherIncentivePayAmount']
          @GatherTransferPayAmount = params['GatherTransferPayAmount']
          @AllocateCashPayAmount = params['AllocateCashPayAmount']
          @AllocateVoucherPayAmount = params['AllocateVoucherPayAmount']
          @AllocateIncentivePayAmount = params['AllocateIncentivePayAmount']
          @AllocateTransferPayAmount = params['AllocateTransferPayAmount']
          @TotalCashPayAmount = params['TotalCashPayAmount']
          @TotalVoucherPayAmount = params['TotalVoucherPayAmount']
          @TotalIncentivePayAmount = params['TotalIncentivePayAmount']
          @TotalTransferPayAmount = params['TotalTransferPayAmount']
          @GatherRealCost = params['GatherRealCost']
          @AllocateRealCost = params['AllocateRealCost']
          @RealTotalCost = params['RealTotalCost']
          @Ratio = params['Ratio']
          @Trend = params['Trend']
          @TrendType = params['TrendType']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @TotalCost = params['TotalCost']
          @RICost = params['RICost']
          @SPCost = params['SPCost']
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @AllocationRealTotalCost = params['AllocationRealTotalCost']
        end
      end

      # 分账账单按组件汇总明细
      class AllocationSummaryByItem < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param BillDate: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDate: String
        # @param PayerUin: 支付者 UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param OwnerUin: 使用者 UIN：实际使用资源的账号 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OperateUin: 操作者 UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的ID或者角色 ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param PayMode: 计费模式编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModeName: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：明细交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionName: 地域名称：资源所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneName: 可用区：资源所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param InstanceType: 实例类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。常规实例默认展示“-”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeName: String
        # @param ResourceId: 资源ID：不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID； 若该产品被分拆，则展示产品分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 实例名称：用户在控制台为资源设置的名称，如未设置默认为空；若该产品被分拆，则展示分拆产品分拆后的分拆项资源别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param Tag: 分账标签：资源绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param AllocationType: 费用归集类型：费用来源类型，分摊、归集、未分配
        # 0 - 分摊
        # 1 - 归集
        # -1 - 未分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocationType: Integer
        # @param TotalCost: 组件原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如客户享受一口价/合同价则默认不展示，退费类场景也默认不展示），指定价模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String
        # @param RiTimeSpan: 预留实例抵扣时长：本产品或服务使用预留实例抵扣的使用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiTimeSpan: String
        # @param RiCost: 预留实例抵扣原价：本产品或服务使用预留实例抵扣的组件原价金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiCost: String
        # @param RealTotalCost: 优惠后总价：优惠后总价 =（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出(元)：通过现金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券支出(元)：使用各类优惠券（如代金券、现金券等）支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出(元)：使用赠送金支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成账户支出(元)：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param ItemCode: 组件名称编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCode: String
        # @param ItemCodeName: 组件名称：用户购买的产品或服务，所包含的具体组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCodeName: String
        # @param ComponentCode: 组件类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ComponentCodeName: 组件类型：用户购买的产品或服务对应的组件大类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCodeName: String
        # @param SplitItemId: 分拆项 ID：涉及分拆产品的分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemId: String
        # @param SplitItemName: 分拆项名称：涉及分拆产品的分拆后的分拆项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemName: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeEndTime: String
        # @param SPCost: 节省计划抵扣原价：节省计划抵扣原价 = 节省计划包抵扣面值 / 节省计划抵扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPCost: String
        # @param RegionType: 国内国际编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionType: String
        # @param RegionTypeName: 国内国际：资源所属区域类型（国内、国际）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeName: String
        # @param SinglePrice: 组件刊例价：组件的官网原始单价（如客户享受一口价/合同价则默认不展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinglePrice: String
        # @param ContractPrice: 组件单价：组件的折后单价，组件单价 = 刊例价 * 折扣
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractPrice: String
        # @param SinglePriceUnit: 组件价格单位：组件价格的单位，单位构成：元/用量单位/时长单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinglePriceUnit: String
        # @param UsedAmount: 组件用量：该组件实际结算用量，组件用量=组件原始用量-抵扣用量（含资源包）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedAmount: String
        # @param UsedAmountUnit: 组件用量单位：组件用量对应的单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedAmountUnit: String
        # @param TimeSpan: 使用时长：资源使用的时长，组件用量=组件原始使用时长-抵扣时长（含资源包）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: String
        # @param TimeUnit: 时长单位：资源使用时长的单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param ReserveDetail: 备注属性（实例配置）：其他备注信息，如预留实例的预留实例类型和交易类型、CCN 产品的两端地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReserveDetail: String
        # @param RealTotalMeasure: 原始用量/时长：组件被资源包抵扣前的原始用量
        # （目前仅实时音视频、弹性微服务、云呼叫中心及专属可用区产品支持该信息外显，其他产品尚在接入中）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalMeasure: String
        # @param DeductedMeasure: 抵扣用量/时长（含资源包）：组件被资源包抵扣的用量
        # （目前仅实时音视频、弹性微服务、云呼叫中心及专属可用区产品支持该信息外显，其他产品尚在接入中）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductedMeasure: String
        # @param Discount: 折扣率：本资源享受的折扣率（如客户享受一口价/合同价则默认不展示，退费场景也默认不展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: String
        # @param BlendedDiscount: 混合折扣率：综合各类折扣抵扣信息后的最终折扣率，混合折扣率=优惠后总价/原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlendedDiscount: String
        # @param PriceInfo: 价格属性：该组件除单价、时长外的其他影响折扣定价的属性信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceInfo: Array
        # @param Formula: 计算规则说明：特殊交易类型计费结算的详细计算说明，如退费及变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Formula: String
        # @param FormulaUrl: 计费规则：各产品详细的计费规则官网说明链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormulaUrl: String
        # @param ComponentConfig: 配置描述：资源配置规格信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentConfig: String

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName, :BillDate, :PayerUin, :OwnerUin, :OperateUin, :PayMode, :PayModeName, :ActionType, :ActionTypeName, :BusinessCode, :BusinessCodeName, :ProductCode, :ProductCodeName, :RegionId, :RegionName, :ZoneId, :ZoneName, :InstanceType, :InstanceTypeName, :ResourceId, :ResourceName, :Tag, :ProjectId, :ProjectName, :AllocationType, :TotalCost, :RiTimeSpan, :RiCost, :RealTotalCost, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :ItemCode, :ItemCodeName, :ComponentCode, :ComponentCodeName, :SplitItemId, :SplitItemName, :FeeBeginTime, :FeeEndTime, :SPCost, :RegionType, :RegionTypeName, :SinglePrice, :ContractPrice, :SinglePriceUnit, :UsedAmount, :UsedAmountUnit, :TimeSpan, :TimeUnit, :ReserveDetail, :RealTotalMeasure, :DeductedMeasure, :Discount, :BlendedDiscount, :PriceInfo, :Formula, :FormulaUrl, :ComponentConfig
        extend Gem::Deprecate
        deprecate :SplitItemId, :none, 2024, 4
        deprecate :SplitItemId=, :none, 2024, 4
        deprecate :SplitItemName, :none, 2024, 4
        deprecate :SplitItemName=, :none, 2024, 4

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil, billdate=nil, payeruin=nil, owneruin=nil, operateuin=nil, paymode=nil, paymodename=nil, actiontype=nil, actiontypename=nil, businesscode=nil, businesscodename=nil, productcode=nil, productcodename=nil, regionid=nil, regionname=nil, zoneid=nil, zonename=nil, instancetype=nil, instancetypename=nil, resourceid=nil, resourcename=nil, tag=nil, projectid=nil, projectname=nil, allocationtype=nil, totalcost=nil, ritimespan=nil, ricost=nil, realtotalcost=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, itemcode=nil, itemcodename=nil, componentcode=nil, componentcodename=nil, splititemid=nil, splititemname=nil, feebegintime=nil, feeendtime=nil, spcost=nil, regiontype=nil, regiontypename=nil, singleprice=nil, contractprice=nil, singlepriceunit=nil, usedamount=nil, usedamountunit=nil, timespan=nil, timeunit=nil, reservedetail=nil, realtotalmeasure=nil, deductedmeasure=nil, discount=nil, blendeddiscount=nil, priceinfo=nil, formula=nil, formulaurl=nil, componentconfig=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @BillDate = billdate
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @PayMode = paymode
          @PayModeName = paymodename
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @ProductCode = productcode
          @ProductCodeName = productcodename
          @RegionId = regionid
          @RegionName = regionname
          @ZoneId = zoneid
          @ZoneName = zonename
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Tag = tag
          @ProjectId = projectid
          @ProjectName = projectname
          @AllocationType = allocationtype
          @TotalCost = totalcost
          @RiTimeSpan = ritimespan
          @RiCost = ricost
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @ItemCode = itemcode
          @ItemCodeName = itemcodename
          @ComponentCode = componentcode
          @ComponentCodeName = componentcodename
          @SplitItemId = splititemid
          @SplitItemName = splititemname
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @SPCost = spcost
          @RegionType = regiontype
          @RegionTypeName = regiontypename
          @SinglePrice = singleprice
          @ContractPrice = contractprice
          @SinglePriceUnit = singlepriceunit
          @UsedAmount = usedamount
          @UsedAmountUnit = usedamountunit
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ReserveDetail = reservedetail
          @RealTotalMeasure = realtotalmeasure
          @DeductedMeasure = deductedmeasure
          @Discount = discount
          @BlendedDiscount = blendeddiscount
          @PriceInfo = priceinfo
          @Formula = formula
          @FormulaUrl = formulaurl
          @ComponentConfig = componentconfig
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @BillDate = params['BillDate']
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @AllocationType = params['AllocationType']
          @TotalCost = params['TotalCost']
          @RiTimeSpan = params['RiTimeSpan']
          @RiCost = params['RiCost']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @ItemCode = params['ItemCode']
          @ItemCodeName = params['ItemCodeName']
          @ComponentCode = params['ComponentCode']
          @ComponentCodeName = params['ComponentCodeName']
          @SplitItemId = params['SplitItemId']
          @SplitItemName = params['SplitItemName']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @SPCost = params['SPCost']
          @RegionType = params['RegionType']
          @RegionTypeName = params['RegionTypeName']
          @SinglePrice = params['SinglePrice']
          @ContractPrice = params['ContractPrice']
          @SinglePriceUnit = params['SinglePriceUnit']
          @UsedAmount = params['UsedAmount']
          @UsedAmountUnit = params['UsedAmountUnit']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ReserveDetail = params['ReserveDetail']
          @RealTotalMeasure = params['RealTotalMeasure']
          @DeductedMeasure = params['DeductedMeasure']
          @Discount = params['Discount']
          @BlendedDiscount = params['BlendedDiscount']
          @PriceInfo = params['PriceInfo']
          @Formula = params['Formula']
          @FormulaUrl = params['FormulaUrl']
          @ComponentConfig = params['ComponentConfig']
        end
      end

      # 分账账单按资源汇总明细
      class AllocationSummaryByResource < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param BillDate: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDate: String
        # @param PayerUin: 支付者 UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param OwnerUin: 使用者 UIN：实际使用资源的账号 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OperateUin: 操作者 UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的ID或者角色 ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param PayMode: 计费模式编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModeName: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：明细交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionName: 地域名称：资源所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneName: 可用区：资源所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param InstanceType: 实例类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。常规实例默认展示“-”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeName: String
        # @param ResourceId: 资源ID：不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID； 若该产品被分拆，则展示产品分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 实例名称：用户在控制台为资源设置的名称，如未设置默认为空；若该产品被分拆，则展示分拆产品分拆后的分拆项资源别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param Tag: 分账标签：资源绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param AllocationType: 费用归集类型：费用来源类型，分摊、归集、未分配
        # 0 - 分摊
        # 1 - 归集
        # -1 -  未分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocationType: Integer
        # @param TotalCost: 组件原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如客户享受一口价/合同价则默认不展示，退费类场景也默认不展示），指定价模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String
        # @param RiTimeSpan: 预留实例抵扣时长：本产品或服务使用预留实例抵扣的使用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiTimeSpan: String
        # @param RiCost: 预留实例抵扣原价：本产品或服务使用预留实例抵扣的组件原价金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiCost: String
        # @param RealTotalCost: 优惠后总价：优惠后总价 =（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出(元)：通过现金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券支出(元)：使用各类优惠券（如代金券、现金券等）支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出(元)：使用赠送金支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成账户支出(元)：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param SplitItemId: 分拆项 ID：涉及分拆产品的分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemId: String
        # @param SplitItemName: 分拆项名称：涉及分拆产品的分拆后的分拆项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemName: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeEndTime: String
        # @param SPCost: 节省计划抵扣原价：节省计划抵扣原价 = 节省计划包抵扣面值 / 节省计划抵扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPCost: String
        # @param RegionType: 国内国际编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionType: String
        # @param RegionTypeName: 国内国际：资源所属区域类型（国内、国际）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeName: String
        # @param ComponentConfig: 配置描述：对应资源下各组件名称及用量（如组件为用量累加型计费则为合计用量）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentConfig: String

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName, :BillDate, :PayerUin, :OwnerUin, :OperateUin, :PayMode, :PayModeName, :ActionType, :ActionTypeName, :BusinessCode, :BusinessCodeName, :ProductCode, :ProductCodeName, :RegionId, :RegionName, :ZoneId, :ZoneName, :InstanceType, :InstanceTypeName, :ResourceId, :ResourceName, :Tag, :ProjectId, :ProjectName, :AllocationType, :TotalCost, :RiTimeSpan, :RiCost, :RealTotalCost, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :SplitItemId, :SplitItemName, :FeeBeginTime, :FeeEndTime, :SPCost, :RegionType, :RegionTypeName, :ComponentConfig
        extend Gem::Deprecate
        deprecate :SplitItemId, :none, 2024, 4
        deprecate :SplitItemId=, :none, 2024, 4
        deprecate :SplitItemName, :none, 2024, 4
        deprecate :SplitItemName=, :none, 2024, 4

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil, billdate=nil, payeruin=nil, owneruin=nil, operateuin=nil, paymode=nil, paymodename=nil, actiontype=nil, actiontypename=nil, businesscode=nil, businesscodename=nil, productcode=nil, productcodename=nil, regionid=nil, regionname=nil, zoneid=nil, zonename=nil, instancetype=nil, instancetypename=nil, resourceid=nil, resourcename=nil, tag=nil, projectid=nil, projectname=nil, allocationtype=nil, totalcost=nil, ritimespan=nil, ricost=nil, realtotalcost=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, splititemid=nil, splititemname=nil, feebegintime=nil, feeendtime=nil, spcost=nil, regiontype=nil, regiontypename=nil, componentconfig=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @BillDate = billdate
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @PayMode = paymode
          @PayModeName = paymodename
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @ProductCode = productcode
          @ProductCodeName = productcodename
          @RegionId = regionid
          @RegionName = regionname
          @ZoneId = zoneid
          @ZoneName = zonename
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Tag = tag
          @ProjectId = projectid
          @ProjectName = projectname
          @AllocationType = allocationtype
          @TotalCost = totalcost
          @RiTimeSpan = ritimespan
          @RiCost = ricost
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @SplitItemId = splititemid
          @SplitItemName = splititemname
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @SPCost = spcost
          @RegionType = regiontype
          @RegionTypeName = regiontypename
          @ComponentConfig = componentconfig
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @BillDate = params['BillDate']
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @AllocationType = params['AllocationType']
          @TotalCost = params['TotalCost']
          @RiTimeSpan = params['RiTimeSpan']
          @RiCost = params['RiCost']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @SplitItemId = params['SplitItemId']
          @SplitItemName = params['SplitItemName']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @SPCost = params['SPCost']
          @RegionType = params['RegionType']
          @RegionTypeName = params['RegionTypeName']
          @ComponentConfig = params['ComponentConfig']
        end
      end

      # 当前归属单元信息
      class AllocationTreeNode < TencentCloud::Common::AbstractModel
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String

        attr_accessor :TreeNodeUniqKey, :TreeNodeUniqKeyName

        def initialize(treenodeuniqkey=nil, treenodeuniqkeyname=nil)
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
        end

        def deserialize(params)
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
        end
      end

      # 成本分析交易类型复杂类型
      class AnalyseActionTypeDetail < TencentCloud::Common::AbstractModel
        # @param ActionType: 交易类型code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String

        attr_accessor :ActionType, :ActionTypeName

        def initialize(actiontype=nil, actiontypename=nil)
          @ActionType = actiontype
          @ActionTypeName = actiontypename
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
        end
      end

      # 成本分析金额返回数据模型
      class AnalyseAmountDetail < TencentCloud::Common::AbstractModel
        # @param Key: 费用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Display: 是否展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Display: Integer

        attr_accessor :Key, :Display

        def initialize(key=nil, display=nil)
          @Key = key
          @Display = display
        end

        def deserialize(params)
          @Key = params['Key']
          @Display = params['Display']
        end
      end

      # 成本分析产品返回复杂类型
      class AnalyseBusinessDetail < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品码code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String

        attr_accessor :BusinessCode, :BusinessCodeName

        def initialize(businesscode=nil, businesscodename=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
        end
      end

      # 成本分析过滤框复杂类型
      class AnalyseConditionDetail < TencentCloud::Common::AbstractModel
        # @param Business: 产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: Array
        # @param Project: 项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Project: Array
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param PayMode: 计费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Array
        # @param ActionType: 交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: Array
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: Array
        # @param OwnerUin: 资源所有者Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Array
        # @param Amount: 费用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Amount: Array

        attr_accessor :Business, :Project, :Region, :PayMode, :ActionType, :Zone, :OwnerUin, :Amount

        def initialize(business=nil, project=nil, region=nil, paymode=nil, actiontype=nil, zone=nil, owneruin=nil, amount=nil)
          @Business = business
          @Project = project
          @Region = region
          @PayMode = paymode
          @ActionType = actiontype
          @Zone = zone
          @OwnerUin = owneruin
          @Amount = amount
        end

        def deserialize(params)
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              analysebusinessdetail_tmp = AnalyseBusinessDetail.new
              analysebusinessdetail_tmp.deserialize(i)
              @Business << analysebusinessdetail_tmp
            end
          end
          unless params['Project'].nil?
            @Project = []
            params['Project'].each do |i|
              analyseprojectdetail_tmp = AnalyseProjectDetail.new
              analyseprojectdetail_tmp.deserialize(i)
              @Project << analyseprojectdetail_tmp
            end
          end
          unless params['Region'].nil?
            @Region = []
            params['Region'].each do |i|
              analyseregiondetail_tmp = AnalyseRegionDetail.new
              analyseregiondetail_tmp.deserialize(i)
              @Region << analyseregiondetail_tmp
            end
          end
          unless params['PayMode'].nil?
            @PayMode = []
            params['PayMode'].each do |i|
              analysepaymodedetail_tmp = AnalysePayModeDetail.new
              analysepaymodedetail_tmp.deserialize(i)
              @PayMode << analysepaymodedetail_tmp
            end
          end
          unless params['ActionType'].nil?
            @ActionType = []
            params['ActionType'].each do |i|
              analyseactiontypedetail_tmp = AnalyseActionTypeDetail.new
              analyseactiontypedetail_tmp.deserialize(i)
              @ActionType << analyseactiontypedetail_tmp
            end
          end
          unless params['Zone'].nil?
            @Zone = []
            params['Zone'].each do |i|
              analysezonedetail_tmp = AnalyseZoneDetail.new
              analysezonedetail_tmp.deserialize(i)
              @Zone << analysezonedetail_tmp
            end
          end
          unless params['OwnerUin'].nil?
            @OwnerUin = []
            params['OwnerUin'].each do |i|
              analyseowneruindetail_tmp = AnalyseOwnerUinDetail.new
              analyseowneruindetail_tmp.deserialize(i)
              @OwnerUin << analyseowneruindetail_tmp
            end
          end
          unless params['Amount'].nil?
            @Amount = []
            params['Amount'].each do |i|
              analyseamountdetail_tmp = AnalyseAmountDetail.new
              analyseamountdetail_tmp.deserialize(i)
              @Amount << analyseamountdetail_tmp
            end
          end
        end
      end

      # 成本分析查询条件
      class AnalyseConditions < TencentCloud::Common::AbstractModel
        # @param BusinessCodes: 产品名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodes: String
        # @param ProductCodes: 子产品名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodes: String
        # @param ComponentCode: 组件类型代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ZoneIds: 可用区ID：资源所属可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: String
        # @param RegionIds: 地域ID:资源所属地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionIds: String
        # @param ProjectIds: 项目ID:资源所属项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIds: String
        # @param PayModes: 计费模式 prePay(表示包年包月)/postPay(表示按量计费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModes: String
        # @param ActionTypes: 交易类型，查询交易类型（请使用交易类型code入参）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypes: String
        # @param Tags: 分账标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: String
        # @param FeeType: 费用类型，查询费用类型（请使用费用类型code入参)入参枚举如下：
        # cashPayAmount:现金
        # incentivePayAmount:赠送金
        # voucherPayAmount:优惠券
        # tax:税金
        # costBeforeTax:税前价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeType: String
        # @param PayerUins: 查询成本分析数据的用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUins: String
        # @param OwnerUins: 使用资源的用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUins: String
        # @param ConsumptionTypes: 消耗类型，查询消耗类型（请使用消耗类型code入参）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumptionTypes: String

        attr_accessor :BusinessCodes, :ProductCodes, :ComponentCode, :ZoneIds, :RegionIds, :ProjectIds, :PayModes, :ActionTypes, :Tags, :FeeType, :PayerUins, :OwnerUins, :ConsumptionTypes

        def initialize(businesscodes=nil, productcodes=nil, componentcode=nil, zoneids=nil, regionids=nil, projectids=nil, paymodes=nil, actiontypes=nil, tags=nil, feetype=nil, payeruins=nil, owneruins=nil, consumptiontypes=nil)
          @BusinessCodes = businesscodes
          @ProductCodes = productcodes
          @ComponentCode = componentcode
          @ZoneIds = zoneids
          @RegionIds = regionids
          @ProjectIds = projectids
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @Tags = tags
          @FeeType = feetype
          @PayerUins = payeruins
          @OwnerUins = owneruins
          @ConsumptionTypes = consumptiontypes
        end

        def deserialize(params)
          @BusinessCodes = params['BusinessCodes']
          @ProductCodes = params['ProductCodes']
          @ComponentCode = params['ComponentCode']
          @ZoneIds = params['ZoneIds']
          @RegionIds = params['RegionIds']
          @ProjectIds = params['ProjectIds']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @Tags = params['Tags']
          @FeeType = params['FeeType']
          @PayerUins = params['PayerUins']
          @OwnerUins = params['OwnerUins']
          @ConsumptionTypes = params['ConsumptionTypes']
        end
      end

      # 成本分析数据复杂类型
      class AnalyseDetail < TencentCloud::Common::AbstractModel
        # @param Name: 时间
        # @type Name: String
        # @param Total: 金额
        # @type Total: String
        # @param TimeDetail: 日期明细金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeDetail: Array

        attr_accessor :Name, :Total, :TimeDetail

        def initialize(name=nil, total=nil, timedetail=nil)
          @Name = name
          @Total = total
          @TimeDetail = timedetail
        end

        def deserialize(params)
          @Name = params['Name']
          @Total = params['Total']
          unless params['TimeDetail'].nil?
            @TimeDetail = []
            params['TimeDetail'].each do |i|
              analysetimedetail_tmp = AnalyseTimeDetail.new
              analysetimedetail_tmp.deserialize(i)
              @TimeDetail << analysetimedetail_tmp
            end
          end
        end
      end

      # 成本分析表头数据复杂类型
      class AnalyseHeaderDetail < TencentCloud::Common::AbstractModel
        # @param HeadDetail: 表头日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadDetail: Array
        # @param Name: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 总计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String

        attr_accessor :HeadDetail, :Name, :Total

        def initialize(headdetail=nil, name=nil, total=nil)
          @HeadDetail = headdetail
          @Name = name
          @Total = total
        end

        def deserialize(params)
          unless params['HeadDetail'].nil?
            @HeadDetail = []
            params['HeadDetail'].each do |i|
              analyseheadertimedetail_tmp = AnalyseHeaderTimeDetail.new
              analyseheadertimedetail_tmp.deserialize(i)
              @HeadDetail << analyseheadertimedetail_tmp
            end
          end
          @Name = params['Name']
          @Total = params['Total']
        end
      end

      # 成本分析header表头数据
      class AnalyseHeaderTimeDetail < TencentCloud::Common::AbstractModel
        # @param Name: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # 成本分析使用者uin复杂类型
      class AnalyseOwnerUinDetail < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 使用者uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String

        attr_accessor :OwnerUin

        def initialize(owneruin=nil)
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
        end
      end

      # 成本分析支付方式复杂类型
      class AnalysePayModeDetail < TencentCloud::Common::AbstractModel
        # @param PayMode: 计费模式code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param PayModeName: 计费模式Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModeName: String

        attr_accessor :PayMode, :PayModeName

        def initialize(paymode=nil, paymodename=nil)
          @PayMode = paymode
          @PayModeName = paymodename
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
        end
      end

      # 成本分析项目返回复杂类型
      class AnalyseProjectDetail < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ProjectName: 默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String

        attr_accessor :ProjectId, :ProjectName

        def initialize(projectid=nil, projectname=nil)
          @ProjectId = projectid
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
        end
      end

      # 成本分析地域返回复杂类型
      class AnalyseRegionDetail < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param RegionName: 地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String

        attr_accessor :RegionId, :RegionName

        def initialize(regionid=nil, regionname=nil)
          @RegionId = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
        end
      end

      # 成本分返回值复杂类型
      class AnalyseTimeDetail < TencentCloud::Common::AbstractModel
        # @param Time: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Money: 金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Money: String

        attr_accessor :Time, :Money

        def initialize(time=nil, money=nil)
          @Time = time
          @Money = money
        end

        def deserialize(params)
          @Time = params['Time']
          @Money = params['Money']
        end
      end

      # 成本分析可用区复杂类型
      class AnalyseZoneDetail < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param ZoneName: 可用区Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String

        attr_accessor :ZoneId, :ZoneName

        def initialize(zoneid=nil, zonename=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
        end
      end

      # 适用商品信息
      class ApplicableProducts < TencentCloud::Common::AbstractModel
        # @param GoodsName: 适用商品名称，值为“全产品通用”或商品名称组成的string，以","分割。
        # @type GoodsName: String
        # @param PayMode: postPay后付费/prePay预付费/riPay预留实例/空字符串或者"*"表示全部模式。如GoodsName为多个商品名以","分割组成的string，而PayMode为"*"，表示每一件商品的模式都为"*"。
        # @type PayMode: String

        attr_accessor :GoodsName, :PayMode

        def initialize(goodsname=nil, paymode=nil)
          @GoodsName = goodsname
          @PayMode = paymode
        end

        def deserialize(params)
          @GoodsName = params['GoodsName']
          @PayMode = params['PayMode']
        end
      end

      # 交易类型筛选列表
      class BillActionType < TencentCloud::Common::AbstractModel
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：明细交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String

        attr_accessor :ActionType, :ActionTypeName

        def initialize(actiontype=nil, actiontypename=nil)
          @ActionType = actiontype
          @ActionTypeName = actiontypename
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
        end
      end

      # 产品筛选列表
      class BillBusiness < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品编码
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # @type BusinessCodeName: String

        attr_accessor :BusinessCode, :BusinessCodeName

        def initialize(businesscode=nil, businesscodename=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
        end
      end

      # 产品级联筛选值
      class BillBusinessLink < TencentCloud::Common::AbstractModel
        # @param Children: 子产品
        # @type Children: Array

        attr_accessor :Children

        def initialize(children=nil)
          @Children = children
        end

        def deserialize(params)
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              billproductlink_tmp = BillProductLink.new
              billproductlink_tmp.deserialize(i)
              @Children << billproductlink_tmp
            end
          end
        end
      end

      # 组件类型筛选列表
      class BillComponent < TencentCloud::Common::AbstractModel
        # @param ComponentCode: 组件类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ComponentCodeName: 组件类型：用户购买的产品或服务对应的组件大类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCodeName: String

        attr_accessor :ComponentCode, :ComponentCodeName

        def initialize(componentcode=nil, componentcodename=nil)
          @ComponentCode = componentcode
          @ComponentCodeName = componentcodename
        end

        def deserialize(params)
          @ComponentCode = params['ComponentCode']
          @ComponentCodeName = params['ComponentCodeName']
        end
      end

      # 日期筛选列表
      class BillDays < TencentCloud::Common::AbstractModel
        # @param BillDay: 日期：结算日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDay: String

        attr_accessor :BillDay

        def initialize(billday=nil)
          @BillDay = billday
        end

        def deserialize(params)
          @BillDay = params['BillDay']
        end
      end

      # 账单明细数据对象
      class BillDetail < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型，例如：云服务器 CVM-标准型 S1
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String
        # @param RegionName: 地域：资源所属地域，如华南地区（广州）
        # @type RegionName: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # @type ZoneName: String
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param ResourceName: 资源别名：用户在控制台为资源设置的名称，如果未设置，则默认为空
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型，如包年包月新购、包年包月续费、按量计费扣费等类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID：包年包月计费模式下订购的订单号
        # @type OrderId: String
        # @param BillId: 交易ID：结算扣费单号
        # @type BillId: String
        # @param PayTime: 扣费时间：结算扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # @type FeeEndTime: String
        # @param ComponentSet: 组件列表
        # @type ComponentSet: Array
        # @param PayerUin: 支付者UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # @type PayerUin: String
        # @param OwnerUin: 使用者UIN：实际使用资源的账号 ID
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的 ID 或者角色 ID ）
        # @type OperateUin: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param PriceInfo: 价格属性：该组件除单价、时长外的其他影响折扣定价的属性信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceInfo: Array
        # @param AssociatedOrder: 关联交易单据ID：和本笔交易关联单据 ID，如，冲销订单，记录原订单、重结订单，退费单记录对应的原购买订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedOrder: :class:`Tencentcloud::Billing.v20180709.models.BillDetailAssociatedOrder`
        # @param Formula: 计算说明：特殊交易类型计费结算的详细计算说明，如退费及变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Formula: String
        # @param FormulaUrl: 计费规则：各产品详细的计费规则官网说明链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormulaUrl: String
        # @param BillDay: 账单归属日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDay: String
        # @param BillMonth: 账单归属月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillMonth: String
        # @param Id: 账单记录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param RegionType: 国内国际编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionType: String
        # @param RegionTypeName: 国内国际：资源所属区域类型（国内、国际）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeName: String
        # @param ReserveDetail: 备注属性（实例配置）：其他备注信息，如预留实例的预留实例类型和交易类型、CCN 产品的两端地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReserveDetail: String

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :BillId, :PayTime, :FeeBeginTime, :FeeEndTime, :ComponentSet, :PayerUin, :OwnerUin, :OperateUin, :Tags, :BusinessCode, :ProductCode, :ActionType, :RegionId, :ProjectId, :PriceInfo, :AssociatedOrder, :Formula, :FormulaUrl, :BillDay, :BillMonth, :Id, :RegionType, :RegionTypeName, :ReserveDetail

        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, billid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, componentset=nil, payeruin=nil, owneruin=nil, operateuin=nil, tags=nil, businesscode=nil, productcode=nil, actiontype=nil, regionid=nil, projectid=nil, priceinfo=nil, associatedorder=nil, formula=nil, formulaurl=nil, billday=nil, billmonth=nil, id=nil, regiontype=nil, regiontypename=nil, reservedetail=nil)
          @BusinessCodeName = businesscodename
          @ProductCodeName = productcodename
          @PayModeName = paymodename
          @ProjectName = projectname
          @RegionName = regionname
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @BillId = billid
          @PayTime = paytime
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ComponentSet = componentset
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @Tags = tags
          @BusinessCode = businesscode
          @ProductCode = productcode
          @ActionType = actiontype
          @RegionId = regionid
          @ProjectId = projectid
          @PriceInfo = priceinfo
          @AssociatedOrder = associatedorder
          @Formula = formula
          @FormulaUrl = formulaurl
          @BillDay = billday
          @BillMonth = billmonth
          @Id = id
          @RegionType = regiontype
          @RegionTypeName = regiontypename
          @ReserveDetail = reservedetail
        end

        def deserialize(params)
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCodeName = params['ProductCodeName']
          @PayModeName = params['PayModeName']
          @ProjectName = params['ProjectName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @BillId = params['BillId']
          @PayTime = params['PayTime']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          unless params['ComponentSet'].nil?
            @ComponentSet = []
            params['ComponentSet'].each do |i|
              billdetailcomponent_tmp = BillDetailComponent.new
              billdetailcomponent_tmp.deserialize(i)
              @ComponentSet << billdetailcomponent_tmp
            end
          end
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              billtaginfo_tmp = BillTagInfo.new
              billtaginfo_tmp.deserialize(i)
              @Tags << billtaginfo_tmp
            end
          end
          @BusinessCode = params['BusinessCode']
          @ProductCode = params['ProductCode']
          @ActionType = params['ActionType']
          @RegionId = params['RegionId']
          @ProjectId = params['ProjectId']
          @PriceInfo = params['PriceInfo']
          unless params['AssociatedOrder'].nil?
            @AssociatedOrder = BillDetailAssociatedOrder.new
            @AssociatedOrder.deserialize(params['AssociatedOrder'])
          end
          @Formula = params['Formula']
          @FormulaUrl = params['FormulaUrl']
          @BillDay = params['BillDay']
          @BillMonth = params['BillMonth']
          @Id = params['Id']
          @RegionType = params['RegionType']
          @RegionTypeName = params['RegionTypeName']
          @ReserveDetail = params['ReserveDetail']
        end
      end

      # 明细账单关联单据信息
      class BillDetailAssociatedOrder < TencentCloud::Common::AbstractModel
        # @param PrepayPurchase: 新购订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepayPurchase: String
        # @param PrepayRenew: 续费订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepayRenew: String
        # @param PrepayModifyUp: 升配订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepayModifyUp: String
        # @param ReverseOrder: 冲销订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReverseOrder: String
        # @param NewOrder: 优惠调整后订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewOrder: String
        # @param Original: 优惠调整前订单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Original: String

        attr_accessor :PrepayPurchase, :PrepayRenew, :PrepayModifyUp, :ReverseOrder, :NewOrder, :Original

        def initialize(prepaypurchase=nil, prepayrenew=nil, prepaymodifyup=nil, reverseorder=nil, neworder=nil, original=nil)
          @PrepayPurchase = prepaypurchase
          @PrepayRenew = prepayrenew
          @PrepayModifyUp = prepaymodifyup
          @ReverseOrder = reverseorder
          @NewOrder = neworder
          @Original = original
        end

        def deserialize(params)
          @PrepayPurchase = params['PrepayPurchase']
          @PrepayRenew = params['PrepayRenew']
          @PrepayModifyUp = params['PrepayModifyUp']
          @ReverseOrder = params['ReverseOrder']
          @NewOrder = params['NewOrder']
          @Original = params['Original']
        end
      end

      # 账单明细组件对象
      class BillDetailComponent < TencentCloud::Common::AbstractModel
        # @param ComponentCodeName: 组件类型：用户购买的产品或服务对应的组件大类，例如：云服务器 CVM 的组件：CPU、内存等
        # @type ComponentCodeName: String
        # @param ItemCodeName: 组件名称：用户购买的产品或服务，所包含的具体组件
        # @type ItemCodeName: String
        # @param SinglePrice: 组件刊例价：组件的官网原始单价（如果客户享受一口价/合同价则默认不展示）
        # @type SinglePrice: String
        # @param SpecifiedPrice: 组件指定价（已废弃）
        # @type SpecifiedPrice: String
        # @param PriceUnit: 组件价格单位：组件价格的单位，单位构成：元/用量单位/时长单位
        # @type PriceUnit: String
        # @param UsedAmount: 组件用量：该组件实际结算用量，组件用量 = 组件原始用量 - 抵扣用量（含资源包
        # @type UsedAmount: String
        # @param UsedAmountUnit: 组件用量单位：组件用量对应的单位
        # @type UsedAmountUnit: String
        # @param RealTotalMeasure: 原始用量/时长：组件被资源包抵扣前的原始用量/时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalMeasure: String
        # @param DeductedMeasure: 抵扣用量/时长（含资源包）：组件被资源包抵扣的用量/时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductedMeasure: String
        # @param TimeSpan: 使用时长：资源使用的时长
        # @type TimeSpan: String
        # @param TimeUnitName: 时长单位：资源使用时长的单位
        # @type TimeUnitName: String
        # @param Cost: 组件原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如果客户享受一口价/合同价则默认不展示，退费类场景也默认不展示）
        # @type Cost: String
        # @param Discount: 折扣率：本资源享受的折扣率（如果客户享受一口价/合同价则默认不展示，退费场景也默认不展示）
        # @type Discount: String
        # @param ReduceType: 优惠类型
        # @type ReduceType: String
        # @param RealCost: 优惠后总价：优惠后总价=（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # @type RealCost: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param ItemCode: 组件类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCode: String
        # @param ComponentCode: 组件名称编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ContractPrice: 组件单价：组件的折后单价，组件单价 = 刊例价 * 折扣
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractPrice: String
        # @param InstanceType: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。正常的实例展示默认为不展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param RiTimeSpan: 预留实例抵扣的使用时长：本产品或服务使用预留实例抵扣的使用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiTimeSpan: String
        # @param OriginalCostWithRI: 预留实例抵扣组件原价：本产品或服务使用预留实例抵扣的组件原价金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCostWithRI: String
        # @param SPDeductionRate: 节省计划抵扣率：节省计划可用余额额度范围内，节省计划对于此组件打的折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPDeductionRate: String
        # @param SPDeduction: 节省计划抵扣金额（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPDeduction: String
        # @param OriginalCostWithSP: 节省计划抵扣组件原价：节省计划抵扣原价=节省计划包抵扣金额/节省计划抵扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCostWithSP: String
        # @param BlendedDiscount: 混合折扣率：综合各类折扣抵扣信息后的最终折扣率，混合折扣率 = 优惠后总价 / 组件原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlendedDiscount: String
        # @param ComponentConfig: 配置描述：资源配置规格信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentConfig: Array

        attr_accessor :ComponentCodeName, :ItemCodeName, :SinglePrice, :SpecifiedPrice, :PriceUnit, :UsedAmount, :UsedAmountUnit, :RealTotalMeasure, :DeductedMeasure, :TimeSpan, :TimeUnitName, :Cost, :Discount, :ReduceType, :RealCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount, :TransferPayAmount, :ItemCode, :ComponentCode, :ContractPrice, :InstanceType, :RiTimeSpan, :OriginalCostWithRI, :SPDeductionRate, :SPDeduction, :OriginalCostWithSP, :BlendedDiscount, :ComponentConfig
        extend Gem::Deprecate
        deprecate :SpecifiedPrice, :none, 2024, 4
        deprecate :SpecifiedPrice=, :none, 2024, 4
        deprecate :SPDeduction, :none, 2024, 4
        deprecate :SPDeduction=, :none, 2024, 4

        def initialize(componentcodename=nil, itemcodename=nil, singleprice=nil, specifiedprice=nil, priceunit=nil, usedamount=nil, usedamountunit=nil, realtotalmeasure=nil, deductedmeasure=nil, timespan=nil, timeunitname=nil, cost=nil, discount=nil, reducetype=nil, realcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil, transferpayamount=nil, itemcode=nil, componentcode=nil, contractprice=nil, instancetype=nil, ritimespan=nil, originalcostwithri=nil, spdeductionrate=nil, spdeduction=nil, originalcostwithsp=nil, blendeddiscount=nil, componentconfig=nil)
          @ComponentCodeName = componentcodename
          @ItemCodeName = itemcodename
          @SinglePrice = singleprice
          @SpecifiedPrice = specifiedprice
          @PriceUnit = priceunit
          @UsedAmount = usedamount
          @UsedAmountUnit = usedamountunit
          @RealTotalMeasure = realtotalmeasure
          @DeductedMeasure = deductedmeasure
          @TimeSpan = timespan
          @TimeUnitName = timeunitname
          @Cost = cost
          @Discount = discount
          @ReduceType = reducetype
          @RealCost = realcost
          @VoucherPayAmount = voucherpayamount
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @ItemCode = itemcode
          @ComponentCode = componentcode
          @ContractPrice = contractprice
          @InstanceType = instancetype
          @RiTimeSpan = ritimespan
          @OriginalCostWithRI = originalcostwithri
          @SPDeductionRate = spdeductionrate
          @SPDeduction = spdeduction
          @OriginalCostWithSP = originalcostwithsp
          @BlendedDiscount = blendeddiscount
          @ComponentConfig = componentconfig
        end

        def deserialize(params)
          @ComponentCodeName = params['ComponentCodeName']
          @ItemCodeName = params['ItemCodeName']
          @SinglePrice = params['SinglePrice']
          @SpecifiedPrice = params['SpecifiedPrice']
          @PriceUnit = params['PriceUnit']
          @UsedAmount = params['UsedAmount']
          @UsedAmountUnit = params['UsedAmountUnit']
          @RealTotalMeasure = params['RealTotalMeasure']
          @DeductedMeasure = params['DeductedMeasure']
          @TimeSpan = params['TimeSpan']
          @TimeUnitName = params['TimeUnitName']
          @Cost = params['Cost']
          @Discount = params['Discount']
          @ReduceType = params['ReduceType']
          @RealCost = params['RealCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @ItemCode = params['ItemCode']
          @ComponentCode = params['ComponentCode']
          @ContractPrice = params['ContractPrice']
          @InstanceType = params['InstanceType']
          @RiTimeSpan = params['RiTimeSpan']
          @OriginalCostWithRI = params['OriginalCostWithRI']
          @SPDeductionRate = params['SPDeductionRate']
          @SPDeduction = params['SPDeduction']
          @OriginalCostWithSP = params['OriginalCostWithSP']
          @BlendedDiscount = params['BlendedDiscount']
          unless params['ComponentConfig'].nil?
            @ComponentConfig = []
            params['ComponentConfig'].each do |i|
              billdetailcomponentconfig_tmp = BillDetailComponentConfig.new
              billdetailcomponentconfig_tmp.deserialize(i)
              @ComponentConfig << billdetailcomponentconfig_tmp
            end
          end
        end
      end

      # 明细账单配置描述结构
      class BillDetailComponentConfig < TencentCloud::Common::AbstractModel
        # @param Name: 配置描述名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 配置描述值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 经销账单资源汇总数据对象
      class BillDistributionResourceSummary < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型，例如：云服务器 CVM-标准型 S1
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String
        # @param RegionName: 地域：资源所属地域，如华南地区（广州）
        # @type RegionName: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # @type ZoneName: String
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param ResourceName: 资源别名：用户在控制台为资源设置的名称，如果未设置，则默认为空
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型：如包年包月新购、包年包月续费、按量计费扣费等类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID：包年包月计费模式下订购的订单号
        # @type OrderId: String
        # @param PayTime: 扣费时间：结算扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # @type FeeEndTime: String
        # @param ConfigDesc: 配置描述：该资源下的计费项名称和用量合并展示，仅在资源账单体现
        # @type ConfigDesc: String
        # @param ExtendField1: 扩展字段1：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField1: String
        # @param ExtendField2: 扩展字段2：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField2: String
        # @param TotalCost: 原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如果客户享受一口价/合同价则默认不展示，退费类场景也默认不展示）
        # @type TotalCost: String
        # @param Discount: 折扣率：本资源享受的折扣率（如果客户享受一口价/合同价则默认不展示，退费场景也默认不展示）
        # @type Discount: String
        # @param ReduceType: 优惠类型
        # @type ReduceType: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param ExtendField3: 扩展字段3：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField3: String
        # @param ExtendField4: 扩展字段4：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField4: String
        # @param ExtendField5: 扩展字段5：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField5: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param OwnerUin: 使用者UIN：实际使用资源的账号 ID
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的 ID 或者角色 ID ）
        # @type OperateUin: String
        # @param BusinessCode: 产品编码
        # @type BusinessCode: String
        # @param ProductCode: 子产品编码
        # @type ProductCode: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param InstanceType: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。正常的实例展示默认为不展示
        # @type InstanceType: String
        # @param OriginalCostWithRI: 预留实例抵扣组件原价：本产品或服务使用预留实例抵扣的组件原价金额
        # @type OriginalCostWithRI: String
        # @param SPDeduction: 节省计划抵扣金额（已废弃）
        # @type SPDeduction: String
        # @param OriginalCostWithSP: 节省计划抵扣组件原价：节省计划抵扣原价=节省计划包抵扣金额/节省计划抵扣率
        # @type OriginalCostWithSP: String
        # @param BillMonth: 账单归属月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillMonth: String

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :PayTime, :FeeBeginTime, :FeeEndTime, :ConfigDesc, :ExtendField1, :ExtendField2, :TotalCost, :Discount, :ReduceType, :RealTotalCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount, :TransferPayAmount, :ExtendField3, :ExtendField4, :ExtendField5, :Tags, :OwnerUin, :OperateUin, :BusinessCode, :ProductCode, :RegionId, :InstanceType, :OriginalCostWithRI, :SPDeduction, :OriginalCostWithSP, :BillMonth
        extend Gem::Deprecate
        deprecate :SPDeduction, :none, 2024, 4
        deprecate :SPDeduction=, :none, 2024, 4

        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, configdesc=nil, extendfield1=nil, extendfield2=nil, totalcost=nil, discount=nil, reducetype=nil, realtotalcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil, transferpayamount=nil, extendfield3=nil, extendfield4=nil, extendfield5=nil, tags=nil, owneruin=nil, operateuin=nil, businesscode=nil, productcode=nil, regionid=nil, instancetype=nil, originalcostwithri=nil, spdeduction=nil, originalcostwithsp=nil, billmonth=nil)
          @BusinessCodeName = businesscodename
          @ProductCodeName = productcodename
          @PayModeName = paymodename
          @ProjectName = projectname
          @RegionName = regionname
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @PayTime = paytime
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ConfigDesc = configdesc
          @ExtendField1 = extendfield1
          @ExtendField2 = extendfield2
          @TotalCost = totalcost
          @Discount = discount
          @ReduceType = reducetype
          @RealTotalCost = realtotalcost
          @VoucherPayAmount = voucherpayamount
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @ExtendField3 = extendfield3
          @ExtendField4 = extendfield4
          @ExtendField5 = extendfield5
          @Tags = tags
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @BusinessCode = businesscode
          @ProductCode = productcode
          @RegionId = regionid
          @InstanceType = instancetype
          @OriginalCostWithRI = originalcostwithri
          @SPDeduction = spdeduction
          @OriginalCostWithSP = originalcostwithsp
          @BillMonth = billmonth
        end

        def deserialize(params)
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCodeName = params['ProductCodeName']
          @PayModeName = params['PayModeName']
          @ProjectName = params['ProjectName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @PayTime = params['PayTime']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @ConfigDesc = params['ConfigDesc']
          @ExtendField1 = params['ExtendField1']
          @ExtendField2 = params['ExtendField2']
          @TotalCost = params['TotalCost']
          @Discount = params['Discount']
          @ReduceType = params['ReduceType']
          @RealTotalCost = params['RealTotalCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @ExtendField3 = params['ExtendField3']
          @ExtendField4 = params['ExtendField4']
          @ExtendField5 = params['ExtendField5']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              billtaginfo_tmp = BillTagInfo.new
              billtaginfo_tmp.deserialize(i)
              @Tags << billtaginfo_tmp
            end
          end
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @BusinessCode = params['BusinessCode']
          @ProductCode = params['ProductCode']
          @RegionId = params['RegionId']
          @InstanceType = params['InstanceType']
          @OriginalCostWithRI = params['OriginalCostWithRI']
          @SPDeduction = params['SPDeduction']
          @OriginalCostWithSP = params['OriginalCostWithSP']
          @BillMonth = params['BillMonth']
        end
      end

      # 实例类型筛选列表
      class BillInstanceType < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型编码
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。常规实例默认展示“-”
        # @type InstanceTypeName: String

        attr_accessor :InstanceType, :InstanceTypeName

        def initialize(instancetype=nil, instancetypename=nil)
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
        end
      end

      # 组件名称筛选列表
      class BillItem < TencentCloud::Common::AbstractModel
        # @param ItemCode: 组件名称编码
        # @type ItemCode: String
        # @param ItemCodeName: 组件名称：用户购买的产品或服务，所包含的具体组件
        # @type ItemCodeName: String

        attr_accessor :ItemCode, :ItemCodeName

        def initialize(itemcode=nil, itemcodename=nil)
          @ItemCode = itemcode
          @ItemCodeName = itemcodename
        end

        def deserialize(params)
          @ItemCode = params['ItemCode']
          @ItemCodeName = params['ItemCodeName']
        end
      end

      # 操作者 UIN筛选列表
      class BillOperateUin < TencentCloud::Common::AbstractModel
        # @param OperateUin: 操作者 UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的ID或者角色 ID）
        # @type OperateUin: String

        attr_accessor :OperateUin

        def initialize(operateuin=nil)
          @OperateUin = operateuin
        end

        def deserialize(params)
          @OperateUin = params['OperateUin']
        end
      end

      # 使用者 UIN筛选列表
      class BillOwnerUin < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 使用者 UIN：实际使用资源的账号 ID
        # @type OwnerUin: String

        attr_accessor :OwnerUin

        def initialize(owneruin=nil)
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
        end
      end

      # 计费模式筛选列表
      class BillPayMode < TencentCloud::Common::AbstractModel
        # @param PayMode: 计费模式编码
        # @type PayMode: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # @type PayModeName: String

        attr_accessor :PayMode, :PayModeName

        def initialize(paymode=nil, paymodename=nil)
          @PayMode = paymode
          @PayModeName = paymodename
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
        end
      end

      # 子产品筛选列表
      class BillProduct < TencentCloud::Common::AbstractModel
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String

        attr_accessor :ProductCode, :ProductCodeName

        def initialize(productcode=nil, productcodename=nil)
          @ProductCode = productcode
          @ProductCodeName = productcodename
        end

        def deserialize(params)
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
        end
      end

      # 分账条件子产品筛选
      class BillProductLink < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 项目筛选列表
      class BillProject < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String

        attr_accessor :ProjectId, :ProjectName

        def initialize(projectid=nil, projectname=nil)
          @ProjectId = projectid
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
        end
      end

      # 地域筛选列表
      class BillRegion < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param RegionName: 地域名称：资源所属地域
        # @type RegionName: String

        attr_accessor :RegionId, :RegionName

        def initialize(regionid=nil, regionname=nil)
          @RegionId = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
        end
      end

      # 账单资源汇总数据对象
      class BillResourceSummary < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型，例如：云服务器 CVM-标准型 S1
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String
        # @param RegionName: 地域：资源所属地域，如华南地区（广州）
        # @type RegionName: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # @type ZoneName: String
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param ResourceName: 资源别名：用户在控制台为资源设置的名称，如果未设置，则默认为空
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型：如包年包月新购、包年包月续费、按量计费扣费等类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID：包年包月计费模式下订购的订单号
        # @type OrderId: String
        # @param PayTime: 扣费时间：结算扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # @type FeeEndTime: String
        # @param ConfigDesc: 配置描述：该资源下的计费项名称和用量合并展示，仅在资源账单体现
        # @type ConfigDesc: String
        # @param ExtendField1: 扩展字段1：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField1: String
        # @param ExtendField2: 扩展字段2：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField2: String
        # @param TotalCost: 原价：原价 = 组件刊例价 * 组件用量 * 使用时长（如果客户享受一口价/合同价则默认不展示，退费类场景也默认不展示）
        # @type TotalCost: String
        # @param Discount: 折扣率：本资源享受的折扣率（如果客户享受一口价/合同价则默认不展示，退费场景也默认不展示）
        # @type Discount: String
        # @param ReduceType: 优惠类型
        # @type ReduceType: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param ExtendField3: 扩展字段3：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField3: String
        # @param ExtendField4: 扩展字段4：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField4: String
        # @param ExtendField5: 扩展字段5：产品对应的扩展属性信息，仅在资源账单体现
        # @type ExtendField5: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param PayerUin: 支付者UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # @type PayerUin: String
        # @param OwnerUin: 使用者UIN：实际使用资源的账号 ID
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的 ID 或者角色 ID ）
        # @type OperateUin: String
        # @param BusinessCode: 产品编码
        # @type BusinessCode: String
        # @param ProductCode: 子产品编码
        # @type ProductCode: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param InstanceType: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。正常的实例展示默认为不展示
        # @type InstanceType: String
        # @param OriginalCostWithRI: 预留实例抵扣组件原价：本产品或服务使用预留实例抵扣的组件原价金额
        # @type OriginalCostWithRI: String
        # @param SPDeduction: 节省计划抵扣金额（已废弃）
        # @type SPDeduction: String
        # @param OriginalCostWithSP: 节省计划抵扣组件原价：节省计划抵扣原价=节省计划包抵扣金额/节省计划抵扣率
        # @type OriginalCostWithSP: String
        # @param BillMonth: 账单归属月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillMonth: String

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :PayTime, :FeeBeginTime, :FeeEndTime, :ConfigDesc, :ExtendField1, :ExtendField2, :TotalCost, :Discount, :ReduceType, :RealTotalCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount, :TransferPayAmount, :ExtendField3, :ExtendField4, :ExtendField5, :Tags, :PayerUin, :OwnerUin, :OperateUin, :BusinessCode, :ProductCode, :RegionId, :InstanceType, :OriginalCostWithRI, :SPDeduction, :OriginalCostWithSP, :BillMonth
        extend Gem::Deprecate
        deprecate :SPDeduction, :none, 2024, 4
        deprecate :SPDeduction=, :none, 2024, 4

        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, configdesc=nil, extendfield1=nil, extendfield2=nil, totalcost=nil, discount=nil, reducetype=nil, realtotalcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil, transferpayamount=nil, extendfield3=nil, extendfield4=nil, extendfield5=nil, tags=nil, payeruin=nil, owneruin=nil, operateuin=nil, businesscode=nil, productcode=nil, regionid=nil, instancetype=nil, originalcostwithri=nil, spdeduction=nil, originalcostwithsp=nil, billmonth=nil)
          @BusinessCodeName = businesscodename
          @ProductCodeName = productcodename
          @PayModeName = paymodename
          @ProjectName = projectname
          @RegionName = regionname
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @PayTime = paytime
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ConfigDesc = configdesc
          @ExtendField1 = extendfield1
          @ExtendField2 = extendfield2
          @TotalCost = totalcost
          @Discount = discount
          @ReduceType = reducetype
          @RealTotalCost = realtotalcost
          @VoucherPayAmount = voucherpayamount
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @ExtendField3 = extendfield3
          @ExtendField4 = extendfield4
          @ExtendField5 = extendfield5
          @Tags = tags
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @BusinessCode = businesscode
          @ProductCode = productcode
          @RegionId = regionid
          @InstanceType = instancetype
          @OriginalCostWithRI = originalcostwithri
          @SPDeduction = spdeduction
          @OriginalCostWithSP = originalcostwithsp
          @BillMonth = billmonth
        end

        def deserialize(params)
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCodeName = params['ProductCodeName']
          @PayModeName = params['PayModeName']
          @ProjectName = params['ProjectName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @PayTime = params['PayTime']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @ConfigDesc = params['ConfigDesc']
          @ExtendField1 = params['ExtendField1']
          @ExtendField2 = params['ExtendField2']
          @TotalCost = params['TotalCost']
          @Discount = params['Discount']
          @ReduceType = params['ReduceType']
          @RealTotalCost = params['RealTotalCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @ExtendField3 = params['ExtendField3']
          @ExtendField4 = params['ExtendField4']
          @ExtendField5 = params['ExtendField5']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              billtaginfo_tmp = BillTagInfo.new
              billtaginfo_tmp.deserialize(i)
              @Tags << billtaginfo_tmp
            end
          end
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @BusinessCode = params['BusinessCode']
          @ProductCode = params['ProductCode']
          @RegionId = params['RegionId']
          @InstanceType = params['InstanceType']
          @OriginalCostWithRI = params['OriginalCostWithRI']
          @SPDeduction = params['SPDeduction']
          @OriginalCostWithSP = params['OriginalCostWithSP']
          @BillMonth = params['BillMonth']
        end
      end

      # 标签筛选列表
      class BillTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 账单 Tag 信息
      class BillTagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 分账标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 收支明细的流水信息
      class BillTransactionInfo < TencentCloud::Common::AbstractModel
        # @param ActionType: 收支类型：deduct 扣费, recharge 充值, return 退费， block 冻结, unblock 解冻
        # @type ActionType: String
        # @param Amount: 流水金额，单位（分）；正数表示入账，负数表示出账
        # @type Amount: Integer
        # @param Balance: 可用余额，单位（分）；正数表示入账，负数表示出账
        # @type Balance: Integer
        # @param BillId: 流水号，如20190131020000236005203583326401
        # @type BillId: String
        # @param OperationInfo: 描述信息
        # @type OperationInfo: String
        # @param OperationTime: 操作时间"2019-01-31 23:35:10.000"
        # @type OperationTime: String
        # @param Cash: 现金账户余额，单位（分）
        # @type Cash: Integer
        # @param Incentive: 赠送金余额，单位（分）
        # @type Incentive: Integer
        # @param Freezing: 冻结余额，单位（分）
        # @type Freezing: Integer
        # @param PayChannel: 交易渠道
        # @type PayChannel: String
        # @param DeductMode: 扣费模式：trade 包年包月(预付费)，hourh  按量-小时结，hourd 按量-日结，hourm 按量-月结，month 按量-月结
        # @type DeductMode: String

        attr_accessor :ActionType, :Amount, :Balance, :BillId, :OperationInfo, :OperationTime, :Cash, :Incentive, :Freezing, :PayChannel, :DeductMode

        def initialize(actiontype=nil, amount=nil, balance=nil, billid=nil, operationinfo=nil, operationtime=nil, cash=nil, incentive=nil, freezing=nil, paychannel=nil, deductmode=nil)
          @ActionType = actiontype
          @Amount = amount
          @Balance = balance
          @BillId = billid
          @OperationInfo = operationinfo
          @OperationTime = operationtime
          @Cash = cash
          @Incentive = incentive
          @Freezing = freezing
          @PayChannel = paychannel
          @DeductMode = deductmode
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @Amount = params['Amount']
          @Balance = params['Balance']
          @BillId = params['BillId']
          @OperationInfo = params['OperationInfo']
          @OperationTime = params['OperationTime']
          @Cash = params['Cash']
          @Incentive = params['Incentive']
          @Freezing = params['Freezing']
          @PayChannel = params['PayChannel']
          @DeductMode = params['DeductMode']
        end
      end

      # 可用区筛选列表
      class BillZoneId < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneName: 可用区：资源所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String

        attr_accessor :ZoneId, :ZoneName

        def initialize(zoneid=nil, zonename=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
        end
      end

      # 产品汇总信息
      class BusinessSummaryInfo < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品编码
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String

        attr_accessor :BusinessCode, :BusinessCodeName, :TotalCost, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount

        def initialize(businesscode=nil, businesscodename=nil, totalcost=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 按产品汇总产品详情
      class BusinessSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :BusinessCode, :BusinessCodeName, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :BillMonth, :TotalCost

        def initialize(businesscode=nil, businesscodename=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, billmonth=nil, totalcost=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
        end
      end

      # 按产品汇总总费用
      class BusinessSummaryTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :RealTotalCost, :VoucherPayAmount, :IncentivePayAmount, :CashPayAmount, :TransferPayAmount, :TotalCost

        def initialize(realtotalcost=nil, voucherpayamount=nil, incentivepayamount=nil, cashpayamount=nil, transferpayamount=nil, totalcost=nil)
          @RealTotalCost = realtotalcost
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @CashPayAmount = cashpayamount
          @TransferPayAmount = transferpayamount
          @TotalCost = totalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @CashPayAmount = params['CashPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @TotalCost = params['TotalCost']
        end
      end

      # 产品过滤条件
      class ConditionBusiness < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品名称代码
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称
        # @type BusinessCodeName: String

        attr_accessor :BusinessCode, :BusinessCodeName

        def initialize(businesscode=nil, businesscodename=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
        end
      end

      # 付费模式过滤条件
      class ConditionPayMode < TencentCloud::Common::AbstractModel
        # @param PayMode: 付费模式
        # @type PayMode: String
        # @param PayModeName: 付费模式名称
        # @type PayModeName: String

        attr_accessor :PayMode, :PayModeName

        def initialize(paymode=nil, paymodename=nil)
          @PayMode = paymode
          @PayModeName = paymodename
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
        end
      end

      # 项目过滤条件
      class ConditionProject < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String

        attr_accessor :ProjectId, :ProjectName

        def initialize(projectid=nil, projectname=nil)
          @ProjectId = projectid
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
        end
      end

      # 地域过滤条件
      class ConditionRegion < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String

        attr_accessor :RegionId, :RegionName

        def initialize(regionid=nil, regionname=nil)
          @RegionId = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
        end
      end

      # 账单筛选条件对象
      class Conditions < TencentCloud::Common::AbstractModel
        # @param TimeRange: 只支持6和12两个值
        # @type TimeRange: Integer
        # @param BusinessCode: 产品名称代码
        # @type BusinessCode: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param PayMode: 付费模式，可选prePay和postPay
        # @type PayMode: String
        # @param ResourceKeyword: 资源关键字
        # @type ResourceKeyword: String
        # @param BusinessCodes: 产品名称代码
        # @type BusinessCodes: Array
        # @param ProductCodes: 子产品名称代码
        # @type ProductCodes: Array
        # @param RegionIds: 地域ID
        # @type RegionIds: Array
        # @param ProjectIds: 项目ID
        # @type ProjectIds: Array
        # @param PayModes: 付费模式，可选prePay和postPay
        # @type PayModes: Array
        # @param ActionTypes: 交易类型
        # @type ActionTypes: Array
        # @param HideFreeCost: 是否隐藏0元流水
        # @type HideFreeCost: Integer
        # @param OrderByCost: 排序规则，可选desc和asc
        # @type OrderByCost: String
        # @param BillIds: 交易ID
        # @type BillIds: Array
        # @param ComponentCodes: 组件编码
        # @type ComponentCodes: Array
        # @param FileIds: 文件ID
        # @type FileIds: Array
        # @param FileTypes: 文件类型
        # @type FileTypes: Array
        # @param Status: 状态
        # @type Status: Array

        attr_accessor :TimeRange, :BusinessCode, :ProjectId, :RegionId, :PayMode, :ResourceKeyword, :BusinessCodes, :ProductCodes, :RegionIds, :ProjectIds, :PayModes, :ActionTypes, :HideFreeCost, :OrderByCost, :BillIds, :ComponentCodes, :FileIds, :FileTypes, :Status

        def initialize(timerange=nil, businesscode=nil, projectid=nil, regionid=nil, paymode=nil, resourcekeyword=nil, businesscodes=nil, productcodes=nil, regionids=nil, projectids=nil, paymodes=nil, actiontypes=nil, hidefreecost=nil, orderbycost=nil, billids=nil, componentcodes=nil, fileids=nil, filetypes=nil, status=nil)
          @TimeRange = timerange
          @BusinessCode = businesscode
          @ProjectId = projectid
          @RegionId = regionid
          @PayMode = paymode
          @ResourceKeyword = resourcekeyword
          @BusinessCodes = businesscodes
          @ProductCodes = productcodes
          @RegionIds = regionids
          @ProjectIds = projectids
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @HideFreeCost = hidefreecost
          @OrderByCost = orderbycost
          @BillIds = billids
          @ComponentCodes = componentcodes
          @FileIds = fileids
          @FileTypes = filetypes
          @Status = status
        end

        def deserialize(params)
          @TimeRange = params['TimeRange']
          @BusinessCode = params['BusinessCode']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @PayMode = params['PayMode']
          @ResourceKeyword = params['ResourceKeyword']
          @BusinessCodes = params['BusinessCodes']
          @ProductCodes = params['ProductCodes']
          @RegionIds = params['RegionIds']
          @ProjectIds = params['ProjectIds']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @HideFreeCost = params['HideFreeCost']
          @OrderByCost = params['OrderByCost']
          @BillIds = params['BillIds']
          @ComponentCodes = params['ComponentCodes']
          @FileIds = params['FileIds']
          @FileTypes = params['FileTypes']
          @Status = params['Status']
        end
      end

      # 消耗按产品汇总详情
      class ConsumptionBusinessSummaryDataItem < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品名称代码
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称
        # @type BusinessCodeName: String
        # @param RealTotalCost: 折后总价
        # @type RealTotalCost: String
        # @param Trend: 费用趋势
        # @type Trend: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTrend`
        # @param CashPayAmount: 现金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param RegionName: 地域名称（仅在地域汇总总展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String

        attr_accessor :BusinessCode, :BusinessCodeName, :RealTotalCost, :Trend, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :RegionName

        def initialize(businesscode=nil, businesscodename=nil, realtotalcost=nil, trend=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, regionname=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @RealTotalCost = realtotalcost
          @Trend = trend
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @RegionName = regionname
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @RealTotalCost = params['RealTotalCost']
          unless params['Trend'].nil?
            @Trend = ConsumptionSummaryTrend.new
            @Trend.deserialize(params['Trend'])
          end
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @RegionName = params['RegionName']
        end
      end

      # 消耗按项目汇总详情
      class ConsumptionProjectSummaryDataItem < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param RealTotalCost: 折后总价
        # @type RealTotalCost: String
        # @param Trend: 趋势
        # @type Trend: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTrend`
        # @param Business: 产品消耗详情
        # @type Business: Array
        # @param CashPayAmount: 现金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String

        attr_accessor :ProjectId, :ProjectName, :RealTotalCost, :Trend, :Business, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount

        def initialize(projectid=nil, projectname=nil, realtotalcost=nil, trend=nil, business=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @RealTotalCost = realtotalcost
          @Trend = trend
          @Business = business
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @RealTotalCost = params['RealTotalCost']
          unless params['Trend'].nil?
            @Trend = ConsumptionSummaryTrend.new
            @Trend.deserialize(params['Trend'])
          end
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              consumptionbusinesssummarydataitem_tmp = ConsumptionBusinessSummaryDataItem.new
              consumptionbusinesssummarydataitem_tmp.deserialize(i)
              @Business << consumptionbusinesssummarydataitem_tmp
            end
          end
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 消耗按地域汇总详情
      class ConsumptionRegionSummaryDataItem < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RealTotalCost: 折后总价
        # @type RealTotalCost: String
        # @param Trend: 趋势
        # @type Trend: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTrend`
        # @param Business: 产品消费详情
        # @type Business: Array
        # @param CashPayAmount: 现金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String

        attr_accessor :RegionId, :RegionName, :RealTotalCost, :Trend, :Business, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount

        def initialize(regionid=nil, regionname=nil, realtotalcost=nil, trend=nil, business=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil)
          @RegionId = regionid
          @RegionName = regionname
          @RealTotalCost = realtotalcost
          @Trend = trend
          @Business = business
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @RealTotalCost = params['RealTotalCost']
          unless params['Trend'].nil?
            @Trend = ConsumptionSummaryTrend.new
            @Trend.deserialize(params['Trend'])
          end
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              consumptionbusinesssummarydataitem_tmp = ConsumptionBusinessSummaryDataItem.new
              consumptionbusinesssummarydataitem_tmp.deserialize(i)
              @Business << consumptionbusinesssummarydataitem_tmp
            end
          end
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 消耗按资源汇总过滤条件
      class ConsumptionResourceSummaryConditionValue < TencentCloud::Common::AbstractModel
        # @param Business: 产品列表
        # @type Business: Array
        # @param Project: 项目列表
        # @type Project: Array
        # @param Region: 地域列表
        # @type Region: Array
        # @param PayMode: 付费模式列表
        # @type PayMode: Array

        attr_accessor :Business, :Project, :Region, :PayMode

        def initialize(business=nil, project=nil, region=nil, paymode=nil)
          @Business = business
          @Project = project
          @Region = region
          @PayMode = paymode
        end

        def deserialize(params)
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              conditionbusiness_tmp = ConditionBusiness.new
              conditionbusiness_tmp.deserialize(i)
              @Business << conditionbusiness_tmp
            end
          end
          unless params['Project'].nil?
            @Project = []
            params['Project'].each do |i|
              conditionproject_tmp = ConditionProject.new
              conditionproject_tmp.deserialize(i)
              @Project << conditionproject_tmp
            end
          end
          unless params['Region'].nil?
            @Region = []
            params['Region'].each do |i|
              conditionregion_tmp = ConditionRegion.new
              conditionregion_tmp.deserialize(i)
              @Region << conditionregion_tmp
            end
          end
          unless params['PayMode'].nil?
            @PayMode = []
            params['PayMode'].each do |i|
              conditionpaymode_tmp = ConditionPayMode.new
              conditionpaymode_tmp.deserialize(i)
              @PayMode << conditionpaymode_tmp
            end
          end
        end
      end

      # 消耗按资源汇总详情
      class ConsumptionResourceSummaryDataItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param RealTotalCost: 折后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金花费
        # @type CashPayAmount: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param RegionId: 地域ID
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param PayMode: 付费模式
        # @type PayMode: String
        # @param PayModeName: 付费模式名称
        # @type PayModeName: String
        # @param BusinessCode: 产品名称代码
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称
        # @type BusinessCodeName: String
        # @param ConsumptionTypeName: 消耗类型
        # @type ConsumptionTypeName: String
        # @param RealCost: 折前价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealCost: String
        # @param FeeBeginTime: 费用起始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeBeginTime: String
        # @param FeeEndTime: 费用结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeEndTime: String
        # @param DayDiff: 天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DayDiff: String
        # @param DailyTotalCost: 每日消耗
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DailyTotalCost: String
        # @param OrderId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param VoucherPayAmount: 代金券
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成金
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param PayerUin: 支付者UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param OwnerUin: 使用者UIN：实际使用资源的账号 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的 ID 或者角色 ID ）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型，例如：云服务器 CVM-标准型 S1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param RegionType: 地域类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionType: String
        # @param RegionTypeName: 地域类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionTypeName: String
        # @param Extend1: 扩展字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend1: String
        # @param Extend2: 扩展字段2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend2: String
        # @param Extend3: 扩展字段3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend3: String
        # @param Extend4: 扩展字段4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend4: String
        # @param Extend5: 扩展字段5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend5: String
        # @param InstanceType: 实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeName: String
        # @param PayTime: 扣费时间：结算扣费时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTime: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param ComponentConfig: 配置描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentConfig: String

        attr_accessor :ResourceId, :ResourceName, :RealTotalCost, :CashPayAmount, :ProjectId, :ProjectName, :RegionId, :RegionName, :PayMode, :PayModeName, :BusinessCode, :BusinessCodeName, :ConsumptionTypeName, :RealCost, :FeeBeginTime, :FeeEndTime, :DayDiff, :DailyTotalCost, :OrderId, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :PayerUin, :OwnerUin, :OperateUin, :ProductCode, :ProductCodeName, :RegionType, :RegionTypeName, :Extend1, :Extend2, :Extend3, :Extend4, :Extend5, :InstanceType, :InstanceTypeName, :PayTime, :ZoneName, :ComponentConfig

        def initialize(resourceid=nil, resourcename=nil, realtotalcost=nil, cashpayamount=nil, projectid=nil, projectname=nil, regionid=nil, regionname=nil, paymode=nil, paymodename=nil, businesscode=nil, businesscodename=nil, consumptiontypename=nil, realcost=nil, feebegintime=nil, feeendtime=nil, daydiff=nil, dailytotalcost=nil, orderid=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, payeruin=nil, owneruin=nil, operateuin=nil, productcode=nil, productcodename=nil, regiontype=nil, regiontypename=nil, extend1=nil, extend2=nil, extend3=nil, extend4=nil, extend5=nil, instancetype=nil, instancetypename=nil, paytime=nil, zonename=nil, componentconfig=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @ProjectId = projectid
          @ProjectName = projectname
          @RegionId = regionid
          @RegionName = regionname
          @PayMode = paymode
          @PayModeName = paymodename
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @ConsumptionTypeName = consumptiontypename
          @RealCost = realcost
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @DayDiff = daydiff
          @DailyTotalCost = dailytotalcost
          @OrderId = orderid
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @ProductCode = productcode
          @ProductCodeName = productcodename
          @RegionType = regiontype
          @RegionTypeName = regiontypename
          @Extend1 = extend1
          @Extend2 = extend2
          @Extend3 = extend3
          @Extend4 = extend4
          @Extend5 = extend5
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
          @PayTime = paytime
          @ZoneName = zonename
          @ComponentConfig = componentconfig
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @ConsumptionTypeName = params['ConsumptionTypeName']
          @RealCost = params['RealCost']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          @DayDiff = params['DayDiff']
          @DailyTotalCost = params['DailyTotalCost']
          @OrderId = params['OrderId']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
          @RegionType = params['RegionType']
          @RegionTypeName = params['RegionTypeName']
          @Extend1 = params['Extend1']
          @Extend2 = params['Extend2']
          @Extend3 = params['Extend3']
          @Extend4 = params['Extend4']
          @Extend5 = params['Extend5']
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
          @PayTime = params['PayTime']
          @ZoneName = params['ZoneName']
          @ComponentConfig = params['ComponentConfig']
        end
      end

      # 消耗汇总详情
      class ConsumptionSummaryTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 折后总价
        # @type RealTotalCost: String

        attr_accessor :RealTotalCost

        def initialize(realtotalcost=nil)
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 消耗费用趋势
      class ConsumptionSummaryTrend < TencentCloud::Common::AbstractModel
        # @param Type: 趋势类型，upward上升/downward下降/none无
        # @type Type: String
        # @param Value: 趋势值，Type为none是该字段值为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Type, :Value

        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # cos产品用量明细返回数据结构
      class CosDetailSets < TencentCloud::Common::AbstractModel
        # @param BucketName: 存储桶名称
        # @type BucketName: String
        # @param DosageBeginTime: 用量开始时间
        # @type DosageBeginTime: String
        # @param DosageEndTime: 用量结束时间
        # @type DosageEndTime: String
        # @param SubProductCodeName: 子产品名称
        # @type SubProductCodeName: String
        # @param BillingItemCodeName: 计费项名称
        # @type BillingItemCodeName: String
        # @param DosageValue: 用量
        # @type DosageValue: String
        # @param Unit: 单位
        # @type Unit: String

        attr_accessor :BucketName, :DosageBeginTime, :DosageEndTime, :SubProductCodeName, :BillingItemCodeName, :DosageValue, :Unit

        def initialize(bucketname=nil, dosagebegintime=nil, dosageendtime=nil, subproductcodename=nil, billingitemcodename=nil, dosagevalue=nil, unit=nil)
          @BucketName = bucketname
          @DosageBeginTime = dosagebegintime
          @DosageEndTime = dosageendtime
          @SubProductCodeName = subproductcodename
          @BillingItemCodeName = billingitemcodename
          @DosageValue = dosagevalue
          @Unit = unit
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @DosageBeginTime = params['DosageBeginTime']
          @DosageEndTime = params['DosageEndTime']
          @SubProductCodeName = params['SubProductCodeName']
          @BillingItemCodeName = params['BillingItemCodeName']
          @DosageValue = params['DosageValue']
          @Unit = params['Unit']
        end
      end

      # 消耗组件明细
      class CostComponentSet < TencentCloud::Common::AbstractModel
        # @param ComponentCodeName: 组件类型名称
        # @type ComponentCodeName: String
        # @param ItemCodeName: 组件名称
        # @type ItemCodeName: String
        # @param SinglePrice: 刊例价
        # @type SinglePrice: String
        # @param PriceUnit: 刊例价单位
        # @type PriceUnit: String
        # @param UsedAmount: 用量
        # @type UsedAmount: String
        # @param UsedAmountUnit: 用量单位
        # @type UsedAmountUnit: String
        # @param Cost: 原价
        # @type Cost: String
        # @param Discount: 折扣
        # @type Discount: String
        # @param RealCost: 折后价
        # @type RealCost: String
        # @param VoucherPayAmount: 代金券支付金额
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金支付金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金支付金额
        # @type IncentivePayAmount: String

        attr_accessor :ComponentCodeName, :ItemCodeName, :SinglePrice, :PriceUnit, :UsedAmount, :UsedAmountUnit, :Cost, :Discount, :RealCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount

        def initialize(componentcodename=nil, itemcodename=nil, singleprice=nil, priceunit=nil, usedamount=nil, usedamountunit=nil, cost=nil, discount=nil, realcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil)
          @ComponentCodeName = componentcodename
          @ItemCodeName = itemcodename
          @SinglePrice = singleprice
          @PriceUnit = priceunit
          @UsedAmount = usedamount
          @UsedAmountUnit = usedamountunit
          @Cost = cost
          @Discount = discount
          @RealCost = realcost
          @VoucherPayAmount = voucherpayamount
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
        end

        def deserialize(params)
          @ComponentCodeName = params['ComponentCodeName']
          @ItemCodeName = params['ItemCodeName']
          @SinglePrice = params['SinglePrice']
          @PriceUnit = params['PriceUnit']
          @UsedAmount = params['UsedAmount']
          @UsedAmountUnit = params['UsedAmountUnit']
          @Cost = params['Cost']
          @Discount = params['Discount']
          @RealCost = params['RealCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
        end
      end

      # 消耗明细数据类型
      class CostDetail < TencentCloud::Common::AbstractModel
        # @param PayerUin: 支付者uin
        # @type PayerUin: String
        # @param BusinessCodeName: 产品名称
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式名称
        # @type PayModeName: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param RegionName: 区域名称
        # @type RegionName: String
        # @param ZoneName: 地区名称
        # @type ZoneName: String
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ActionTypeName: 类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param BillId: 交易id
        # @type BillId: String
        # @param FeeBeginTime: 费用开始时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 费用结束时间
        # @type FeeEndTime: String
        # @param ComponentSet: 组件明细
        # @type ComponentSet: Array
        # @param ProductCode: 子产品名称代码
        # @type ProductCode: String

        attr_accessor :PayerUin, :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :BillId, :FeeBeginTime, :FeeEndTime, :ComponentSet, :ProductCode

        def initialize(payeruin=nil, businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, billid=nil, feebegintime=nil, feeendtime=nil, componentset=nil, productcode=nil)
          @PayerUin = payeruin
          @BusinessCodeName = businesscodename
          @ProductCodeName = productcodename
          @PayModeName = paymodename
          @ProjectName = projectname
          @RegionName = regionname
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @BillId = billid
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ComponentSet = componentset
          @ProductCode = productcode
        end

        def deserialize(params)
          @PayerUin = params['PayerUin']
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCodeName = params['ProductCodeName']
          @PayModeName = params['PayModeName']
          @ProjectName = params['ProjectName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @BillId = params['BillId']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          unless params['ComponentSet'].nil?
            @ComponentSet = []
            params['ComponentSet'].each do |i|
              costcomponentset_tmp = CostComponentSet.new
              costcomponentset_tmp.deserialize(i)
              @ComponentSet << costcomponentset_tmp
            end
          end
          @ProductCode = params['ProductCode']
        end
      end

      # CreateAllocationTag请求参数结构体
      class CreateAllocationTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 用户分账标签键
        # @type TagKey: Array

        attr_accessor :TagKey

        def initialize(tagkey=nil)
          @TagKey = tagkey
        end

        def deserialize(params)
          @TagKey = params['TagKey']
        end
      end

      # CreateAllocationTag返回参数结构体
      class CreateAllocationTagResponse < TencentCloud::Common::AbstractModel
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

      # CreateSavingPlanOrder请求参数结构体
      class CreateSavingPlanOrderRequest < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域编码
        # @type RegionId: Integer
        # @param ZoneId: 区域编码
        # @type ZoneId: Integer
        # @param PrePayType: 预付费类型
        # @type PrePayType: String
        # @param TimeSpan: 时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 时长单位
        # @type TimeUnit: String
        # @param CommodityCode: 商品唯一标识
        # @type CommodityCode: String
        # @param PromiseUseAmount: 承诺时长内的小额金额（单位：元）
        # @type PromiseUseAmount: Integer
        # @param SpecifyEffectTime: 节省计划的指定生效时间，若不传则为当前下单时间。传参数格式:"2023-10-01 00:00:00"，仅支持指定日期的0点时刻
        # @type SpecifyEffectTime: String
        # @param ClientToken: 可重入ID
        # @type ClientToken: String

        attr_accessor :RegionId, :ZoneId, :PrePayType, :TimeSpan, :TimeUnit, :CommodityCode, :PromiseUseAmount, :SpecifyEffectTime, :ClientToken

        def initialize(regionid=nil, zoneid=nil, prepaytype=nil, timespan=nil, timeunit=nil, commoditycode=nil, promiseuseamount=nil, specifyeffecttime=nil, clienttoken=nil)
          @RegionId = regionid
          @ZoneId = zoneid
          @PrePayType = prepaytype
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @CommodityCode = commoditycode
          @PromiseUseAmount = promiseuseamount
          @SpecifyEffectTime = specifyeffecttime
          @ClientToken = clienttoken
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @PrePayType = params['PrePayType']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @CommodityCode = params['CommodityCode']
          @PromiseUseAmount = params['PromiseUseAmount']
          @SpecifyEffectTime = params['SpecifyEffectTime']
          @ClientToken = params['ClientToken']
        end
      end

      # CreateSavingPlanOrder返回参数结构体
      class CreateSavingPlanOrderResponse < TencentCloud::Common::AbstractModel
        # @param BigDealId: 订单号
        # @type BigDealId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigDealId, :RequestId

        def initialize(bigdealid=nil, requestid=nil)
          @BigDealId = bigdealid
          @RequestId = requestid
        end

        def deserialize(params)
          @BigDealId = params['BigDealId']
          @RequestId = params['RequestId']
        end
      end

      # 订单数据对象
      class Deal < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param Status: 订单的状态 1：未支付 2：已支付3：发货中 4：已发货 5：发货失败 6：已退款 7：已关单 8：订单过期 9：订单已失效 10：产品已失效 11：代付拒绝 12：支付中
        # @type Status: Integer
        # @param Payer: 支付者
        # @type Payer: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Creator: 创建人
        # @type Creator: String
        # @param RealTotalCost: 实际支付金额（分）
        # @type RealTotalCost: Integer
        # @param VoucherDecline: 代金券抵扣金额（分）
        # @type VoucherDecline: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsCategoryId: 产品分类ID
        # @type GoodsCategoryId: Integer
        # @param ProductInfo: 产品详情
        # @type ProductInfo: Array
        # @param TimeSpan: 时长
        # @type TimeSpan: Float
        # @param TimeUnit: 时间单位
        # @type TimeUnit: String
        # @param Currency: 货币单位
        # @type Currency: String
        # @param Policy: 折扣率
        # @type Policy: Float
        # @param Price: 单价（分）
        # @type Price: Float
        # @param TotalCost: 原价（分）
        # @type TotalCost: Float
        # @param ProductCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param SubProductCode: 子产品编码
        # @type SubProductCode: String
        # @param BigDealId: 大订单号
        # @type BigDealId: String
        # @param Formula: 退费公式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Formula: String
        # @param RefReturnDeals: 退费涉及订单信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefReturnDeals: String
        # @param PayMode: 付费模式：prePay 预付费 postPay后付费 riPay预留实例
        # @type PayMode: String
        # @param Action: 交易类型
        # modifyNetworkMode 调整带宽模式
        # modifyNetworkSize 调整带宽大小
        # refund 退款
        # downgrade 降配
        # upgrade 升配
        # renew 续费
        # purchase 购买
        # preMoveOut 包年包月迁出资源
        # preMoveIn 包年包月迁入资源
        # preToPost 预付费转后付费
        # postMoveOut 按量计费迁出资源
        # postMoveIn 按量计费迁入资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param ProductName: 产品编码中文名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param SubProductName: 子产品编码中文名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductName: String
        # @param ResourceId: 订单对应的资源id, 查询参数Limit超过200，将返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: Array

        attr_accessor :OrderId, :Status, :Payer, :CreateTime, :Creator, :RealTotalCost, :VoucherDecline, :ProjectId, :GoodsCategoryId, :ProductInfo, :TimeSpan, :TimeUnit, :Currency, :Policy, :Price, :TotalCost, :ProductCode, :SubProductCode, :BigDealId, :Formula, :RefReturnDeals, :PayMode, :Action, :ProductName, :SubProductName, :ResourceId

        def initialize(orderid=nil, status=nil, payer=nil, createtime=nil, creator=nil, realtotalcost=nil, voucherdecline=nil, projectid=nil, goodscategoryid=nil, productinfo=nil, timespan=nil, timeunit=nil, currency=nil, policy=nil, price=nil, totalcost=nil, productcode=nil, subproductcode=nil, bigdealid=nil, formula=nil, refreturndeals=nil, paymode=nil, action=nil, productname=nil, subproductname=nil, resourceid=nil)
          @OrderId = orderid
          @Status = status
          @Payer = payer
          @CreateTime = createtime
          @Creator = creator
          @RealTotalCost = realtotalcost
          @VoucherDecline = voucherdecline
          @ProjectId = projectid
          @GoodsCategoryId = goodscategoryid
          @ProductInfo = productinfo
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @Currency = currency
          @Policy = policy
          @Price = price
          @TotalCost = totalcost
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @BigDealId = bigdealid
          @Formula = formula
          @RefReturnDeals = refreturndeals
          @PayMode = paymode
          @Action = action
          @ProductName = productname
          @SubProductName = subproductname
          @ResourceId = resourceid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @Payer = params['Payer']
          @CreateTime = params['CreateTime']
          @Creator = params['Creator']
          @RealTotalCost = params['RealTotalCost']
          @VoucherDecline = params['VoucherDecline']
          @ProjectId = params['ProjectId']
          @GoodsCategoryId = params['GoodsCategoryId']
          unless params['ProductInfo'].nil?
            @ProductInfo = []
            params['ProductInfo'].each do |i|
              productinfo_tmp = ProductInfo.new
              productinfo_tmp.deserialize(i)
              @ProductInfo << productinfo_tmp
            end
          end
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
          @Policy = params['Policy']
          @Price = params['Price']
          @TotalCost = params['TotalCost']
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @BigDealId = params['BigDealId']
          @Formula = params['Formula']
          @RefReturnDeals = params['RefReturnDeals']
          @PayMode = params['PayMode']
          @Action = params['Action']
          @ProductName = params['ProductName']
          @SubProductName = params['SubProductName']
          @ResourceId = params['ResourceId']
        end
      end

      # DeleteAllocationTag请求参数结构体
      class DeleteAllocationTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 用户分账标签键
        # @type TagKey: Array

        attr_accessor :TagKey

        def initialize(tagkey=nil)
          @TagKey = tagkey
        end

        def deserialize(params)
          @TagKey = params['TagKey']
        end
      end

      # DeleteAllocationTag返回参数结构体
      class DeleteAllocationTagResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountBalance请求参数结构体
      class DescribeAccountBalanceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccountBalance返回参数结构体
      class DescribeAccountBalanceResponse < TencentCloud::Common::AbstractModel
        # @param Balance: 接口做过变更,为兼容老接口,本字段与RealBalance相同,为当前真实可用余额,单位 分
        # @type Balance: Integer
        # @param Uin: 查询的用户Uin
        # @type Uin: Integer
        # @param RealBalance: 当前真实可用余额,单位 分
        # @type RealBalance: Float
        # @param CashAccountBalance: 现金账户余额,单位 分
        # @type CashAccountBalance: Float
        # @param IncomeIntoAccountBalance: 收益转入账户余额,单位 分
        # @type IncomeIntoAccountBalance: Float
        # @param PresentAccountBalance: 赠送账户余额,单位 分
        # @type PresentAccountBalance: Float
        # @param FreezeAmount: 冻结金额,单位 分
        # @type FreezeAmount: Float
        # @param OweAmount: 欠费金额,单位 分
        # @type OweAmount: Float
        # @param IsAllowArrears: 是否允许欠费消费
        # @type IsAllowArrears: Boolean
        # @param IsCreditLimited: 是否限制信用额度
        # @type IsCreditLimited: Boolean
        # @param CreditAmount: 信用额度
        # @type CreditAmount: Float
        # @param CreditBalance: 可用信用额度
        # @type CreditBalance: Float
        # @param RealCreditBalance: 真实可用信用额度
        # @type RealCreditBalance: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Balance, :Uin, :RealBalance, :CashAccountBalance, :IncomeIntoAccountBalance, :PresentAccountBalance, :FreezeAmount, :OweAmount, :IsAllowArrears, :IsCreditLimited, :CreditAmount, :CreditBalance, :RealCreditBalance, :RequestId

        def initialize(balance=nil, uin=nil, realbalance=nil, cashaccountbalance=nil, incomeintoaccountbalance=nil, presentaccountbalance=nil, freezeamount=nil, oweamount=nil, isallowarrears=nil, iscreditlimited=nil, creditamount=nil, creditbalance=nil, realcreditbalance=nil, requestid=nil)
          @Balance = balance
          @Uin = uin
          @RealBalance = realbalance
          @CashAccountBalance = cashaccountbalance
          @IncomeIntoAccountBalance = incomeintoaccountbalance
          @PresentAccountBalance = presentaccountbalance
          @FreezeAmount = freezeamount
          @OweAmount = oweamount
          @IsAllowArrears = isallowarrears
          @IsCreditLimited = iscreditlimited
          @CreditAmount = creditamount
          @CreditBalance = creditbalance
          @RealCreditBalance = realcreditbalance
          @RequestId = requestid
        end

        def deserialize(params)
          @Balance = params['Balance']
          @Uin = params['Uin']
          @RealBalance = params['RealBalance']
          @CashAccountBalance = params['CashAccountBalance']
          @IncomeIntoAccountBalance = params['IncomeIntoAccountBalance']
          @PresentAccountBalance = params['PresentAccountBalance']
          @FreezeAmount = params['FreezeAmount']
          @OweAmount = params['OweAmount']
          @IsAllowArrears = params['IsAllowArrears']
          @IsCreditLimited = params['IsCreditLimited']
          @CreditAmount = params['CreditAmount']
          @CreditBalance = params['CreditBalance']
          @RealCreditBalance = params['RealCreditBalance']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocateConditions请求参数结构体
      class DescribeAllocateConditionsRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String

        attr_accessor :Month

        def initialize(month=nil)
          @Month = month
        end

        def deserialize(params)
          @Month = params['Month']
        end
      end

      # DescribeAllocateConditions返回参数结构体
      class DescribeAllocateConditionsResponse < TencentCloud::Common::AbstractModel
        # @param Business: 产品筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: Array
        # @param Product: 子产品筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: Array
        # @param Item: 组件名称筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: Array
        # @param Region: 地域筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param InstanceType: 实例类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Array
        # @param PayMode: 计费模式筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Array
        # @param Project: 项目筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Project: Array
        # @param Tag: 标签筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OwnerUin: 使用者 UIN 筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Array
        # @param OperateUin: 操作者 UIN 筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: Array
        # @param ActionType: 交易类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Product, :Item, :Region, :InstanceType, :PayMode, :Project, :Tag, :OwnerUin, :OperateUin, :ActionType, :RequestId

        def initialize(business=nil, product=nil, item=nil, region=nil, instancetype=nil, paymode=nil, project=nil, tag=nil, owneruin=nil, operateuin=nil, actiontype=nil, requestid=nil)
          @Business = business
          @Product = product
          @Item = item
          @Region = region
          @InstanceType = instancetype
          @PayMode = paymode
          @Project = project
          @Tag = tag
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @ActionType = actiontype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              billbusinesslink_tmp = BillBusinessLink.new
              billbusinesslink_tmp.deserialize(i)
              @Business << billbusinesslink_tmp
            end
          end
          unless params['Product'].nil?
            @Product = []
            params['Product'].each do |i|
              billproduct_tmp = BillProduct.new
              billproduct_tmp.deserialize(i)
              @Product << billproduct_tmp
            end
          end
          unless params['Item'].nil?
            @Item = []
            params['Item'].each do |i|
              billitem_tmp = BillItem.new
              billitem_tmp.deserialize(i)
              @Item << billitem_tmp
            end
          end
          unless params['Region'].nil?
            @Region = []
            params['Region'].each do |i|
              billregion_tmp = BillRegion.new
              billregion_tmp.deserialize(i)
              @Region << billregion_tmp
            end
          end
          unless params['InstanceType'].nil?
            @InstanceType = []
            params['InstanceType'].each do |i|
              billinstancetype_tmp = BillInstanceType.new
              billinstancetype_tmp.deserialize(i)
              @InstanceType << billinstancetype_tmp
            end
          end
          unless params['PayMode'].nil?
            @PayMode = []
            params['PayMode'].each do |i|
              billpaymode_tmp = BillPayMode.new
              billpaymode_tmp.deserialize(i)
              @PayMode << billpaymode_tmp
            end
          end
          unless params['Project'].nil?
            @Project = []
            params['Project'].each do |i|
              billproject_tmp = BillProject.new
              billproject_tmp.deserialize(i)
              @Project << billproject_tmp
            end
          end
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          unless params['OwnerUin'].nil?
            @OwnerUin = []
            params['OwnerUin'].each do |i|
              billowneruin_tmp = BillOwnerUin.new
              billowneruin_tmp.deserialize(i)
              @OwnerUin << billowneruin_tmp
            end
          end
          unless params['OperateUin'].nil?
            @OperateUin = []
            params['OperateUin'].each do |i|
              billoperateuin_tmp = BillOperateUin.new
              billoperateuin_tmp.deserialize(i)
              @OperateUin << billoperateuin_tmp
            end
          end
          unless params['ActionType'].nil?
            @ActionType = []
            params['ActionType'].each do |i|
              billactiontype_tmp = BillActionType.new
              billactiontype_tmp.deserialize(i)
              @ActionType << billactiontype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationBillConditions请求参数结构体
      class DescribeAllocationBillConditionsRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param BillDates: 日期
        # @type BillDates: Array
        # @param BusinessCodes: 产品编码
        # @type BusinessCodes: Array
        # @param OwnerUins: 使用者UIN
        # @type OwnerUins: Array
        # @param OperateUins: 操作者UIN
        # @type OperateUins: Array
        # @param PayModes: 计费模式编码
        # @type PayModes: Array
        # @param ActionTypes: 交易类型编码
        # @type ActionTypes: Array
        # @param ProductCodes: 子产品编码
        # @type ProductCodes: Array
        # @param RegionIds: 地域ID
        # @type RegionIds: Array
        # @param ZoneIds: 可用区ID
        # @type ZoneIds: Array
        # @param InstanceTypes: 实例类型编码
        # @type InstanceTypes: Array
        # @param Tag: 标签
        # @type Tag: Array
        # @param ComponentCodes: 组件类型编码
        # @type ComponentCodes: Array
        # @param ItemCodes: 组件名称编码
        # @type ItemCodes: Array
        # @param SearchKey: 模糊搜索条件
        # @type SearchKey: String
        # @param ProjectIds: 项目id
        # @type ProjectIds: Array
        # @param AllocationType: 费用归集类型
        # @type AllocationType: Array

        attr_accessor :Month, :TreeNodeUniqKeys, :BillDates, :BusinessCodes, :OwnerUins, :OperateUins, :PayModes, :ActionTypes, :ProductCodes, :RegionIds, :ZoneIds, :InstanceTypes, :Tag, :ComponentCodes, :ItemCodes, :SearchKey, :ProjectIds, :AllocationType

        def initialize(month=nil, treenodeuniqkeys=nil, billdates=nil, businesscodes=nil, owneruins=nil, operateuins=nil, paymodes=nil, actiontypes=nil, productcodes=nil, regionids=nil, zoneids=nil, instancetypes=nil, tag=nil, componentcodes=nil, itemcodes=nil, searchkey=nil, projectids=nil, allocationtype=nil)
          @Month = month
          @TreeNodeUniqKeys = treenodeuniqkeys
          @BillDates = billdates
          @BusinessCodes = businesscodes
          @OwnerUins = owneruins
          @OperateUins = operateuins
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @ProductCodes = productcodes
          @RegionIds = regionids
          @ZoneIds = zoneids
          @InstanceTypes = instancetypes
          @Tag = tag
          @ComponentCodes = componentcodes
          @ItemCodes = itemcodes
          @SearchKey = searchkey
          @ProjectIds = projectids
          @AllocationType = allocationtype
        end

        def deserialize(params)
          @Month = params['Month']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @BillDates = params['BillDates']
          @BusinessCodes = params['BusinessCodes']
          @OwnerUins = params['OwnerUins']
          @OperateUins = params['OperateUins']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @ProductCodes = params['ProductCodes']
          @RegionIds = params['RegionIds']
          @ZoneIds = params['ZoneIds']
          @InstanceTypes = params['InstanceTypes']
          @Tag = params['Tag']
          @ComponentCodes = params['ComponentCodes']
          @ItemCodes = params['ItemCodes']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
          @AllocationType = params['AllocationType']
        end
      end

      # DescribeAllocationBillConditions返回参数结构体
      class DescribeAllocationBillConditionsResponse < TencentCloud::Common::AbstractModel
        # @param Business: 产品筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: Array
        # @param Product: 子产品筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: Array
        # @param Item: 组件名称筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: Array
        # @param Region: 地域筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param InstanceType: 实例类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Array
        # @param PayMode: 计费模式筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Array
        # @param Project: 项目筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Project: Array
        # @param Tag: 标签筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OwnerUin: 使用者 UIN 筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Array
        # @param OperateUin: 操作者 UIN 筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: Array
        # @param BillDay: 日期筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDay: Array
        # @param ActionType: 交易类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: Array
        # @param Component: 组件类型筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: Array
        # @param Zone: 可用区筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: Array
        # @param AllocationTreeNode: 分账单元筛选列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocationTreeNode: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Business, :Product, :Item, :Region, :InstanceType, :PayMode, :Project, :Tag, :OwnerUin, :OperateUin, :BillDay, :ActionType, :Component, :Zone, :AllocationTreeNode, :RequestId

        def initialize(business=nil, product=nil, item=nil, region=nil, instancetype=nil, paymode=nil, project=nil, tag=nil, owneruin=nil, operateuin=nil, billday=nil, actiontype=nil, component=nil, zone=nil, allocationtreenode=nil, requestid=nil)
          @Business = business
          @Product = product
          @Item = item
          @Region = region
          @InstanceType = instancetype
          @PayMode = paymode
          @Project = project
          @Tag = tag
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @BillDay = billday
          @ActionType = actiontype
          @Component = component
          @Zone = zone
          @AllocationTreeNode = allocationtreenode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              billbusiness_tmp = BillBusiness.new
              billbusiness_tmp.deserialize(i)
              @Business << billbusiness_tmp
            end
          end
          unless params['Product'].nil?
            @Product = []
            params['Product'].each do |i|
              billproduct_tmp = BillProduct.new
              billproduct_tmp.deserialize(i)
              @Product << billproduct_tmp
            end
          end
          unless params['Item'].nil?
            @Item = []
            params['Item'].each do |i|
              billitem_tmp = BillItem.new
              billitem_tmp.deserialize(i)
              @Item << billitem_tmp
            end
          end
          unless params['Region'].nil?
            @Region = []
            params['Region'].each do |i|
              billregion_tmp = BillRegion.new
              billregion_tmp.deserialize(i)
              @Region << billregion_tmp
            end
          end
          unless params['InstanceType'].nil?
            @InstanceType = []
            params['InstanceType'].each do |i|
              billinstancetype_tmp = BillInstanceType.new
              billinstancetype_tmp.deserialize(i)
              @InstanceType << billinstancetype_tmp
            end
          end
          unless params['PayMode'].nil?
            @PayMode = []
            params['PayMode'].each do |i|
              billpaymode_tmp = BillPayMode.new
              billpaymode_tmp.deserialize(i)
              @PayMode << billpaymode_tmp
            end
          end
          unless params['Project'].nil?
            @Project = []
            params['Project'].each do |i|
              billproject_tmp = BillProject.new
              billproject_tmp.deserialize(i)
              @Project << billproject_tmp
            end
          end
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          unless params['OwnerUin'].nil?
            @OwnerUin = []
            params['OwnerUin'].each do |i|
              billowneruin_tmp = BillOwnerUin.new
              billowneruin_tmp.deserialize(i)
              @OwnerUin << billowneruin_tmp
            end
          end
          unless params['OperateUin'].nil?
            @OperateUin = []
            params['OperateUin'].each do |i|
              billoperateuin_tmp = BillOperateUin.new
              billoperateuin_tmp.deserialize(i)
              @OperateUin << billoperateuin_tmp
            end
          end
          unless params['BillDay'].nil?
            @BillDay = []
            params['BillDay'].each do |i|
              billdays_tmp = BillDays.new
              billdays_tmp.deserialize(i)
              @BillDay << billdays_tmp
            end
          end
          unless params['ActionType'].nil?
            @ActionType = []
            params['ActionType'].each do |i|
              billactiontype_tmp = BillActionType.new
              billactiontype_tmp.deserialize(i)
              @ActionType << billactiontype_tmp
            end
          end
          unless params['Component'].nil?
            @Component = []
            params['Component'].each do |i|
              billcomponent_tmp = BillComponent.new
              billcomponent_tmp.deserialize(i)
              @Component << billcomponent_tmp
            end
          end
          unless params['Zone'].nil?
            @Zone = []
            params['Zone'].each do |i|
              billzoneid_tmp = BillZoneId.new
              billzoneid_tmp.deserialize(i)
              @Zone << billzoneid_tmp
            end
          end
          unless params['AllocationTreeNode'].nil?
            @AllocationTreeNode = []
            params['AllocationTreeNode'].each do |i|
              allocationtreenode_tmp = AllocationTreeNode.new
              allocationtreenode_tmp.deserialize(i)
              @AllocationTreeNode << allocationtreenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationBillDetail请求参数结构体
      class DescribeAllocationBillDetailRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，以此类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param Sort: 排序字段，枚举值如下：
        # RiTimeSpan - 预留实例抵扣时长
        # ExtendPayAmount1 - 预留实例抵扣组件原价
        # RealCost - 折后总价
        # CashPayAmount - 现金金额
        # VoucherPayAmount - 代金券金额
        # IncentivePayAmount - 赠送金金额
        # TransferPayAmount -分成金金额
        # Cost - 组件原价
        # @type Sort: String
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param BusinessCodes: 产品编码，用作筛选
        # @type BusinessCodes: Array
        # @param OwnerUins: 使用者UIN，用作筛选
        # @type OwnerUins: Array
        # @param OperateUins: 操作者UIN，用作筛选
        # @type OperateUins: Array
        # @param PayModes: 计费模式编码，用作筛选
        # @type PayModes: Array
        # @param ActionTypes: 交易类型编码，用作筛选
        # @type ActionTypes: Array
        # @param ProductCodes: 子产品编码，用作筛选
        # @type ProductCodes: Array
        # @param RegionIds: 地域ID，用作筛选
        # @type RegionIds: Array
        # @param ZoneIds: 可用区ID，用作筛选
        # @type ZoneIds: Array
        # @param InstanceTypes: 实例类型编码，用作筛选
        # @type InstanceTypes: Array
        # @param Tag: 标签，用作筛选
        # @type Tag: Array
        # @param ComponentCodes: 组件类型编码，用作筛选
        # @type ComponentCodes: Array
        # @param ItemCodes: 组件名称编码，用作筛选
        # @type ItemCodes: Array
        # @param SearchKey: 模糊搜索：支持标签、资源id、资源别名
        # @type SearchKey: String
        # @param ProjectIds: 项目ID，用作筛选
        # @type ProjectIds: Array

        attr_accessor :Limit, :Offset, :Month, :TreeNodeUniqKeys, :Sort, :SortType, :BusinessCodes, :OwnerUins, :OperateUins, :PayModes, :ActionTypes, :ProductCodes, :RegionIds, :ZoneIds, :InstanceTypes, :Tag, :ComponentCodes, :ItemCodes, :SearchKey, :ProjectIds

        def initialize(limit=nil, offset=nil, month=nil, treenodeuniqkeys=nil, sort=nil, sorttype=nil, businesscodes=nil, owneruins=nil, operateuins=nil, paymodes=nil, actiontypes=nil, productcodes=nil, regionids=nil, zoneids=nil, instancetypes=nil, tag=nil, componentcodes=nil, itemcodes=nil, searchkey=nil, projectids=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @TreeNodeUniqKeys = treenodeuniqkeys
          @Sort = sort
          @SortType = sorttype
          @BusinessCodes = businesscodes
          @OwnerUins = owneruins
          @OperateUins = operateuins
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @ProductCodes = productcodes
          @RegionIds = regionids
          @ZoneIds = zoneids
          @InstanceTypes = instancetypes
          @Tag = tag
          @ComponentCodes = componentcodes
          @ItemCodes = itemcodes
          @SearchKey = searchkey
          @ProjectIds = projectids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @Sort = params['Sort']
          @SortType = params['SortType']
          @BusinessCodes = params['BusinessCodes']
          @OwnerUins = params['OwnerUins']
          @OperateUins = params['OperateUins']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @ProductCodes = params['ProductCodes']
          @RegionIds = params['RegionIds']
          @ZoneIds = params['ZoneIds']
          @InstanceTypes = params['InstanceTypes']
          @Tag = params['Tag']
          @ComponentCodes = params['ComponentCodes']
          @ItemCodes = params['ItemCodes']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
        end
      end

      # DescribeAllocationBillDetail返回参数结构体
      class DescribeAllocationBillDetailResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Total: 分账账单概览金额汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param Detail: 分账账单明细
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Total, :Detail, :RequestId

        def initialize(recordnum=nil, total=nil, detail=nil, requestid=nil)
          @RecordNum = recordnum
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationdetail_tmp = AllocationDetail.new
              allocationdetail_tmp.deserialize(i)
              @Detail << allocationdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationMonthOverview请求参数结构体
      class DescribeAllocationMonthOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String

        attr_accessor :Month

        def initialize(month=nil)
          @Month = month
        end

        def deserialize(params)
          @Month = params['Month']
        end
      end

      # DescribeAllocationMonthOverview返回参数结构体
      class DescribeAllocationMonthOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 分账账单月概览详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param Total: 分账账单概览金额汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :Total, :RequestId

        def initialize(detail=nil, total=nil, requestid=nil)
          @Detail = detail
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationoverviewnode_tmp = AllocationOverviewNode.new
              allocationoverviewnode_tmp.deserialize(i)
              @Detail << allocationoverviewnode_tmp
            end
          end
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationOverview请求参数结构体
      class DescribeAllocationOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param PeriodType: 统计周期，枚举值如下
        # month - 月
        # day - 日
        # @type PeriodType: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param Sort: 排序字段，枚举值如下：
        # GatherCashPayAmount - 归集费用(现金)
        # GatherVoucherPayAmount- 归集费用(优惠券)
        # GatherIncentivePayAmount -  归集费用(赠送金)
        # GatherTransferPayAmount - 归集费用(分成金)
        # AllocateCashPayAmount - 分摊费用(现金)
        # AllocateVoucherPayAmount - 分摊费用(优惠券)
        # AllocateIncentivePayAmount - 分摊费用(赠送金)
        # AllocateTransferPayAmount - 分摊费用(分成金)
        # TotalCashPayAmount - 合计费用(现金)
        # TotalVoucherPayAmount - 合计费用(优惠券)
        # TotalIncentivePayAmount - 合计费用(赠送金)
        # TotalTransferPayAmount - 合计费用(分成金)
        # GatherRealCost - 归集费用(折后总额)
        # AllocateRealCost - 分摊费用(折后总额)
        # RealTotalCost - 合计费用(折后总额)
        # Ratio  - 占比(折后总额)
        # @type Sort: String
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param BillDates: 日期，用作筛选
        # @type BillDates: Array

        attr_accessor :Limit, :Offset, :Month, :PeriodType, :TreeNodeUniqKeys, :Sort, :SortType, :BillDates

        def initialize(limit=nil, offset=nil, month=nil, periodtype=nil, treenodeuniqkeys=nil, sort=nil, sorttype=nil, billdates=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @PeriodType = periodtype
          @TreeNodeUniqKeys = treenodeuniqkeys
          @Sort = sort
          @SortType = sorttype
          @BillDates = billdates
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @Sort = params['Sort']
          @SortType = params['SortType']
          @BillDates = params['BillDates']
        end
      end

      # DescribeAllocationOverview返回参数结构体
      class DescribeAllocationOverviewResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Total: 分账账单概览金额汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param Detail: 分账概览明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Total, :Detail, :RequestId

        def initialize(recordnum=nil, total=nil, detail=nil, requestid=nil)
          @RecordNum = recordnum
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationoverviewdetail_tmp = AllocationOverviewDetail.new
              allocationoverviewdetail_tmp.deserialize(i)
              @Detail << allocationoverviewdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationSummaryByBusiness请求参数结构体
      class DescribeAllocationSummaryByBusinessRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param PeriodType: 统计周期，枚举值如下
        # month - 月
        # day - 日
        # @type PeriodType: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param Sort: 排序字段，枚举值如下：
        # GatherCashPayAmount - 归集费用(现金)
        # GatherVoucherPayAmount- 归集费用(优惠券)
        # GatherIncentivePayAmount - 归集费用(赠送金)
        # GatherTransferPayAmount - 归集费用(分成金)
        # AllocateCashPayAmount - 分摊费用(现金)
        # AllocateVoucherPayAmount - 分摊费用(优惠券)
        # AllocateIncentivePayAmount - 分摊费用(赠送金)
        # AllocateTransferPayAmount - 分摊费用(分成金)
        # TotalCashPayAmount - 合计费用(现金)
        # TotalVoucherPayAmount - 合计费用(优惠券)
        # TotalIncentivePayAmount - 合计费用(赠送金)
        # TotalTransferPayAmount - 合计费用(分成金)
        # GatherRealCost - 归集费用(折后总额)
        # AllocateRealCost - 分摊费用(折后总额)
        # RealTotalCost - 合计费用(折后总额)
        # BusinessCode - 产品代码
        # Ratio - 占比(折后总额)
        # Trend - 环比(折后总额)
        # @type Sort: String
        # @param BillDates: 日期，用作筛选，PeriodType=day时可传
        # @type BillDates: Array
        # @param BusinessCodes: 产品编码，用作筛选
        # @type BusinessCodes: Array
        # @param SearchKey: 模糊搜索条件
        # @type SearchKey: String

        attr_accessor :Limit, :Offset, :Month, :PeriodType, :TreeNodeUniqKeys, :SortType, :Sort, :BillDates, :BusinessCodes, :SearchKey
        extend Gem::Deprecate
        deprecate :SearchKey, :none, 2024, 4
        deprecate :SearchKey=, :none, 2024, 4

        def initialize(limit=nil, offset=nil, month=nil, periodtype=nil, treenodeuniqkeys=nil, sorttype=nil, sort=nil, billdates=nil, businesscodes=nil, searchkey=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @PeriodType = periodtype
          @TreeNodeUniqKeys = treenodeuniqkeys
          @SortType = sorttype
          @Sort = sort
          @BillDates = billdates
          @BusinessCodes = businesscodes
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @SortType = params['SortType']
          @Sort = params['Sort']
          @BillDates = params['BillDates']
          @BusinessCodes = params['BusinessCodes']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeAllocationSummaryByBusiness返回参数结构体
      class DescribeAllocationSummaryByBusinessResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Total: 分账账单概览金额汇总

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param Detail: 分账账单按产品汇总明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Total, :Detail, :RequestId

        def initialize(recordnum=nil, total=nil, detail=nil, requestid=nil)
          @RecordNum = recordnum
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationsummarybybusiness_tmp = AllocationSummaryByBusiness.new
              allocationsummarybybusiness_tmp.deserialize(i)
              @Detail << allocationsummarybybusiness_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationSummaryByItem请求参数结构体
      class DescribeAllocationSummaryByItemRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，以此类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param PeriodType: 统计周期，枚举值如下
        # month - 月
        # day - 日
        # @type PeriodType: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param Sort: 排序字段，枚举值如下：
        # RiTimeSpan - 预留实例抵扣时长
        # ExtendPayAmount1 - 预留实例抵扣组件原价
        # RealCost - 折后总价
        # CashPayAmount - 现金金额
        # VoucherPayAmount - 代金券金额
        # IncentivePayAmount - 赠送金金额
        # TransferPayAmount -分成金金额
        # Cost - 组件原价
        # @type Sort: String
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param BillDates: 日期，用作筛选
        # @type BillDates: Array
        # @param BusinessCodes: 产品编码，用作筛选
        # @type BusinessCodes: Array
        # @param OwnerUins: 使用者UIN，用作筛选
        # @type OwnerUins: Array
        # @param OperateUins: 操作者UIN，用作筛选
        # @type OperateUins: Array
        # @param PayModes: 计费模式编码，用作筛选
        # @type PayModes: Array
        # @param ActionTypes: 交易类型编码，用作筛选
        # @type ActionTypes: Array
        # @param ProductCodes: 子产品编码，用作筛选
        # @type ProductCodes: Array
        # @param RegionIds: 地域ID，用作筛选
        # @type RegionIds: Array
        # @param ZoneIds: 可用区ID，用作筛选
        # @type ZoneIds: Array
        # @param InstanceTypes: 实例类型编码，用作筛选
        # @type InstanceTypes: Array
        # @param Tag: 标签，用作筛选
        # @type Tag: Array
        # @param ComponentCodes: 组件类型编码，用作筛选
        # @type ComponentCodes: Array
        # @param ItemCodes: 组件名称编码，用作筛选
        # @type ItemCodes: Array
        # @param SearchKey: 模糊搜索：支持标签、资源id、资源别名
        # @type SearchKey: String
        # @param ProjectIds: 项目ID，用作筛选
        # @type ProjectIds: Array
        # @param AllocationType: 费用归集类型，枚举值如下：
        # 0 - 分摊
        # 1 - 归集
        # -1 - 未分配
        # @type AllocationType: Array

        attr_accessor :Limit, :Offset, :Month, :PeriodType, :TreeNodeUniqKeys, :Sort, :SortType, :BillDates, :BusinessCodes, :OwnerUins, :OperateUins, :PayModes, :ActionTypes, :ProductCodes, :RegionIds, :ZoneIds, :InstanceTypes, :Tag, :ComponentCodes, :ItemCodes, :SearchKey, :ProjectIds, :AllocationType

        def initialize(limit=nil, offset=nil, month=nil, periodtype=nil, treenodeuniqkeys=nil, sort=nil, sorttype=nil, billdates=nil, businesscodes=nil, owneruins=nil, operateuins=nil, paymodes=nil, actiontypes=nil, productcodes=nil, regionids=nil, zoneids=nil, instancetypes=nil, tag=nil, componentcodes=nil, itemcodes=nil, searchkey=nil, projectids=nil, allocationtype=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @PeriodType = periodtype
          @TreeNodeUniqKeys = treenodeuniqkeys
          @Sort = sort
          @SortType = sorttype
          @BillDates = billdates
          @BusinessCodes = businesscodes
          @OwnerUins = owneruins
          @OperateUins = operateuins
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @ProductCodes = productcodes
          @RegionIds = regionids
          @ZoneIds = zoneids
          @InstanceTypes = instancetypes
          @Tag = tag
          @ComponentCodes = componentcodes
          @ItemCodes = itemcodes
          @SearchKey = searchkey
          @ProjectIds = projectids
          @AllocationType = allocationtype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @Sort = params['Sort']
          @SortType = params['SortType']
          @BillDates = params['BillDates']
          @BusinessCodes = params['BusinessCodes']
          @OwnerUins = params['OwnerUins']
          @OperateUins = params['OperateUins']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @ProductCodes = params['ProductCodes']
          @RegionIds = params['RegionIds']
          @ZoneIds = params['ZoneIds']
          @InstanceTypes = params['InstanceTypes']
          @Tag = params['Tag']
          @ComponentCodes = params['ComponentCodes']
          @ItemCodes = params['ItemCodes']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
          @AllocationType = params['AllocationType']
        end
      end

      # DescribeAllocationSummaryByItem返回参数结构体
      class DescribeAllocationSummaryByItemResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Total: 分账账单概览金额汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param Detail: 分账账单按组件汇总明细

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Total, :Detail, :RequestId

        def initialize(recordnum=nil, total=nil, detail=nil, requestid=nil)
          @RecordNum = recordnum
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationsummarybyitem_tmp = AllocationSummaryByItem.new
              allocationsummarybyitem_tmp.deserialize(i)
              @Detail << allocationsummarybyitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationSummaryByResource请求参数结构体
      class DescribeAllocationSummaryByResourceRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，以此类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param PeriodType: 统计周期，枚举值如下
        # month - 月
        # day - 日
        # @type PeriodType: String
        # @param TreeNodeUniqKeys: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKeys: Array
        # @param Sort: 排序字段，枚举值如下：
        # RiTimeSpan - 预留实例抵扣时长
        # ExtendPayAmount1 - 预留实例抵扣组件原价
        # RealCost - 折后总价
        # CashPayAmount - 现金金额
        # VoucherPayAmount - 代金券金额
        # IncentivePayAmount - 赠送金金额
        # TransferPayAmount -分成金金额
        # Cost - 组件原价
        # @type Sort: String
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param BillDates: 日期，用作筛选
        # @type BillDates: Array
        # @param BusinessCodes: 产品编码，用作筛选
        # @type BusinessCodes: Array
        # @param OwnerUins: 使用者UIN，用作筛选
        # @type OwnerUins: Array
        # @param OperateUins: 操作者UIN，用作筛选
        # @type OperateUins: Array
        # @param PayModes: 计费模式编码，用作筛选
        # @type PayModes: Array
        # @param ActionTypes: 交易类型编码，用作筛选
        # @type ActionTypes: Array
        # @param ProductCodes: 子产品编码，用作筛选
        # @type ProductCodes: Array
        # @param RegionIds: 地域ID，用作筛选
        # @type RegionIds: Array
        # @param ZoneIds: 可用区ID，用作筛选
        # @type ZoneIds: Array
        # @param InstanceTypes: 实例类型编码，用作筛选
        # @type InstanceTypes: Array
        # @param Tag: 标签，用作筛选
        # @type Tag: Array
        # @param SearchKey: 模糊搜索：支持标签、资源id、资源别名
        # @type SearchKey: String
        # @param ProjectIds: 项目ID，用作筛选
        # @type ProjectIds: Array
        # @param AllocationType: 费用归集类型，枚举值如下：
        # 0 - 分摊
        # 1 - 归集
        # -1 -  未分配
        # @type AllocationType: Array

        attr_accessor :Limit, :Offset, :Month, :PeriodType, :TreeNodeUniqKeys, :Sort, :SortType, :BillDates, :BusinessCodes, :OwnerUins, :OperateUins, :PayModes, :ActionTypes, :ProductCodes, :RegionIds, :ZoneIds, :InstanceTypes, :Tag, :SearchKey, :ProjectIds, :AllocationType

        def initialize(limit=nil, offset=nil, month=nil, periodtype=nil, treenodeuniqkeys=nil, sort=nil, sorttype=nil, billdates=nil, businesscodes=nil, owneruins=nil, operateuins=nil, paymodes=nil, actiontypes=nil, productcodes=nil, regionids=nil, zoneids=nil, instancetypes=nil, tag=nil, searchkey=nil, projectids=nil, allocationtype=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @PeriodType = periodtype
          @TreeNodeUniqKeys = treenodeuniqkeys
          @Sort = sort
          @SortType = sorttype
          @BillDates = billdates
          @BusinessCodes = businesscodes
          @OwnerUins = owneruins
          @OperateUins = operateuins
          @PayModes = paymodes
          @ActionTypes = actiontypes
          @ProductCodes = productcodes
          @RegionIds = regionids
          @ZoneIds = zoneids
          @InstanceTypes = instancetypes
          @Tag = tag
          @SearchKey = searchkey
          @ProjectIds = projectids
          @AllocationType = allocationtype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @TreeNodeUniqKeys = params['TreeNodeUniqKeys']
          @Sort = params['Sort']
          @SortType = params['SortType']
          @BillDates = params['BillDates']
          @BusinessCodes = params['BusinessCodes']
          @OwnerUins = params['OwnerUins']
          @OperateUins = params['OperateUins']
          @PayModes = params['PayModes']
          @ActionTypes = params['ActionTypes']
          @ProductCodes = params['ProductCodes']
          @RegionIds = params['RegionIds']
          @ZoneIds = params['ZoneIds']
          @InstanceTypes = params['InstanceTypes']
          @Tag = params['Tag']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
          @AllocationType = params['AllocationType']
        end
      end

      # DescribeAllocationSummaryByResource返回参数结构体
      class DescribeAllocationSummaryByResourceResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Total: 分账账单概览金额汇总

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.AllocationOverviewTotal`
        # @param Detail: 分账账单按资源汇总明细

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Total, :Detail, :RequestId

        def initialize(recordnum=nil, total=nil, detail=nil, requestid=nil)
          @RecordNum = recordnum
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Total'].nil?
            @Total = AllocationOverviewTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              allocationsummarybyresource_tmp = AllocationSummaryByResource.new
              allocationsummarybyresource_tmp.deserialize(i)
              @Detail << allocationsummarybyresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllocationTrendByMonth请求参数结构体
      class DescribeAllocationTrendByMonthRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # @type TreeNodeUniqKey: String
        # @param BusinessCode: 产品编码，用作筛选
        # @type BusinessCode: String

        attr_accessor :Month, :TreeNodeUniqKey, :BusinessCode

        def initialize(month=nil, treenodeuniqkey=nil, businesscode=nil)
          @Month = month
          @TreeNodeUniqKey = treenodeuniqkey
          @BusinessCode = businesscode
        end

        def deserialize(params)
          @Month = params['Month']
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @BusinessCode = params['BusinessCode']
        end
      end

      # DescribeAllocationTrendByMonth返回参数结构体
      class DescribeAllocationTrendByMonthResponse < TencentCloud::Common::AbstractModel
        # @param Current: 当月费用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Current: :class:`Tencentcloud::Billing.v20180709.models.AllocationBillTrendDetail`
        # @param Previous: 之前月份费用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Previous: Array
        # @param Stat: 费用统计信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stat: :class:`Tencentcloud::Billing.v20180709.models.AllocationStat`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Current, :Previous, :Stat, :RequestId

        def initialize(current=nil, previous=nil, stat=nil, requestid=nil)
          @Current = current
          @Previous = previous
          @Stat = stat
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Current'].nil?
            @Current = AllocationBillTrendDetail.new
            @Current.deserialize(params['Current'])
          end
          unless params['Previous'].nil?
            @Previous = []
            params['Previous'].each do |i|
              allocationbilltrenddetail_tmp = AllocationBillTrendDetail.new
              allocationbilltrenddetail_tmp.deserialize(i)
              @Previous << allocationbilltrenddetail_tmp
            end
          end
          unless params['Stat'].nil?
            @Stat = AllocationStat.new
            @Stat.deserialize(params['Stat'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillDetailForOrganization请求参数结构体
      class DescribeBillDetailForOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Limit: 数量，最大值为100
        # @type Limit: Integer
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param Month: 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。最多可拉取近18个月内的数据。
        # @type Month: String
        # @param BeginTime: 周期开始时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为相同月份，不支持跨月查询，查询结果是整月数据。最多可拉取18个月内的数据。
        # @type BeginTime: String
        # @param EndTime: 周期结束时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为相同月份，不支持跨月查询，查询结果是整月数据。最多可拉取近18个月内的数据。
        # @type EndTime: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param PayMode: 付费模式 prePay(表示包年包月)/postPay(表示按时按量)
        # @type PayMode: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param ActionType: 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 竞价实例小时结
        # 线下项目调账补偿
        # 线下产品调账补偿
        # 优惠扣费
        # 优惠补偿
        # 按量计费迁入资源
        # 按量计费迁出资源
        # 包年包月迁入资源
        # 包年包月迁出资源
        # 预付费用
        # 小时费用
        # 预留实例退款
        # 按量计费冲正
        # 包年包月转按量
        # 保底扣款
        # 节省计划小时费用
        # @type ActionType: String
        # @param ProjectId: 项目ID:资源所属项目ID
        # @type ProjectId: Integer
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String
        # @param Context: 上一次请求返回的上下文信息，翻页查询Month>=2023-05的月份的数据可加快查询速度，数据量10万级别以上的用户建议使用，查询速度可提升2~10倍
        # @type Context: String

        attr_accessor :Offset, :Limit, :PeriodType, :Month, :BeginTime, :EndTime, :NeedRecordNum, :PayMode, :ResourceId, :ActionType, :ProjectId, :BusinessCode, :Context
        extend Gem::Deprecate
        deprecate :PeriodType, :none, 2024, 4
        deprecate :PeriodType=, :none, 2024, 4

        def initialize(offset=nil, limit=nil, periodtype=nil, month=nil, begintime=nil, endtime=nil, needrecordnum=nil, paymode=nil, resourceid=nil, actiontype=nil, projectid=nil, businesscode=nil, context=nil)
          @Offset = offset
          @Limit = limit
          @PeriodType = periodtype
          @Month = month
          @BeginTime = begintime
          @EndTime = endtime
          @NeedRecordNum = needrecordnum
          @PayMode = paymode
          @ResourceId = resourceid
          @ActionType = actiontype
          @ProjectId = projectid
          @BusinessCode = businesscode
          @Context = context
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PeriodType = params['PeriodType']
          @Month = params['Month']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @NeedRecordNum = params['NeedRecordNum']
          @PayMode = params['PayMode']
          @ResourceId = params['ResourceId']
          @ActionType = params['ActionType']
          @ProjectId = params['ProjectId']
          @BusinessCode = params['BusinessCode']
          @Context = params['Context']
        end
      end

      # DescribeBillDetailForOrganization返回参数结构体
      class DescribeBillDetailForOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param DetailSet: 详情列表
        # @type DetailSet: Array
        # @param Total: 总记录数，24小时缓存一次，可能比实际总记录数少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Context: 本次请求的上下文信息，可用于下一次请求的请求参数中，加快查询速度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailSet, :Total, :Context, :RequestId

        def initialize(detailset=nil, total=nil, context=nil, requestid=nil)
          @DetailSet = detailset
          @Total = total
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              distributionbilldetail_tmp = DistributionBillDetail.new
              distributionbilldetail_tmp.deserialize(i)
              @DetailSet << distributionbilldetail_tmp
            end
          end
          @Total = params['Total']
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillDetail请求参数结构体
      class DescribeBillDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Limit: 数量，最大值为300
        # @type Limit: Integer
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param Month: 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。最多可拉取近18个月内的数据。
        # @type Month: String
        # @param BeginTime: 周期开始时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为相同月份，不支持跨月查询，查询结果是整月数据。最多可拉取18个月内的数据。
        # @type BeginTime: String
        # @param EndTime: 周期结束时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为相同月份，不支持跨月查询，查询结果是整月数据。最多可拉取近18个月内的数据。
        # @type EndTime: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param ProductCode: 已废弃参数，未开放
        # @type ProductCode: String
        # @param PayMode: 付费模式 prePay(表示包年包月)/postPay(表示按时按量)
        # @type PayMode: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param ActionType: 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 竞价实例小时结
        # 线下项目调账补偿
        # 线下产品调账补偿
        # 优惠扣费
        # 优惠补偿
        # 按量计费迁入资源
        # 按量计费迁出资源
        # 包年包月迁入资源
        # 包年包月迁出资源
        # 预付费用
        # 小时费用
        # 预留实例退款
        # 按量计费冲正
        # 包年包月转按量
        # 保底扣款
        # 节省计划小时费用
        # @type ActionType: String
        # @param ProjectId: 项目ID:资源所属项目ID
        # @type ProjectId: Integer
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String
        # @param Context: 上一次请求返回的上下文信息，翻页查询Month>=2023-05的月份的数据可加快查询速度，数据量10万级别以上的用户建议使用，查询速度可提升2~10倍
        # @type Context: String
        # @param PayerUin: 支付者的账号 ID（账号 ID 是用户在腾讯云的唯一账号标识），默认查询本账号账单，如集团管理账号需查询成员账号自付的账单，该字段需入参成员账号UIN
        # @type PayerUin: String

        attr_accessor :Offset, :Limit, :PeriodType, :Month, :BeginTime, :EndTime, :NeedRecordNum, :ProductCode, :PayMode, :ResourceId, :ActionType, :ProjectId, :BusinessCode, :Context, :PayerUin
        extend Gem::Deprecate
        deprecate :PeriodType, :none, 2024, 4
        deprecate :PeriodType=, :none, 2024, 4

        def initialize(offset=nil, limit=nil, periodtype=nil, month=nil, begintime=nil, endtime=nil, needrecordnum=nil, productcode=nil, paymode=nil, resourceid=nil, actiontype=nil, projectid=nil, businesscode=nil, context=nil, payeruin=nil)
          @Offset = offset
          @Limit = limit
          @PeriodType = periodtype
          @Month = month
          @BeginTime = begintime
          @EndTime = endtime
          @NeedRecordNum = needrecordnum
          @ProductCode = productcode
          @PayMode = paymode
          @ResourceId = resourceid
          @ActionType = actiontype
          @ProjectId = projectid
          @BusinessCode = businesscode
          @Context = context
          @PayerUin = payeruin
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PeriodType = params['PeriodType']
          @Month = params['Month']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @NeedRecordNum = params['NeedRecordNum']
          @ProductCode = params['ProductCode']
          @PayMode = params['PayMode']
          @ResourceId = params['ResourceId']
          @ActionType = params['ActionType']
          @ProjectId = params['ProjectId']
          @BusinessCode = params['BusinessCode']
          @Context = params['Context']
          @PayerUin = params['PayerUin']
        end
      end

      # DescribeBillDetail返回参数结构体
      class DescribeBillDetailResponse < TencentCloud::Common::AbstractModel
        # @param DetailSet: 详情列表
        # @type DetailSet: Array
        # @param Total: 总记录数，24小时缓存一次，可能比实际总记录数少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Context: 本次请求的上下文信息，可用于下一次请求的请求参数中，加快查询速度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailSet, :Total, :Context, :RequestId

        def initialize(detailset=nil, total=nil, context=nil, requestid=nil)
          @DetailSet = detailset
          @Total = total
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              billdetail_tmp = BillDetail.new
              billdetail_tmp.deserialize(i)
              @DetailSet << billdetail_tmp
            end
          end
          @Total = params['Total']
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillDownloadUrl请求参数结构体
      class DescribeBillDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param FileType: 账单类型，枚举值
        # billOverview=L0-PDF账单
        # billSummary=L1-汇总账单
        # billResource=L2-资源账单
        # billDetail=L3-明细账单
        # billPack=账单包
        # @type FileType: String
        # @param Month: 账单月份
        # 支持的最早开始月份为2021-01
        # L0-PDF&账单包不支持当月下载，当月账单请在次月1号19:00出账后下载
        # @type Month: String
        # @param ChildUin: 下载的账号 ID列表，默认查询本账号账单，如集团管理账号需下载成员账号自付的账单，该字段需入参成员账号UIN
        # @type ChildUin: Array

        attr_accessor :FileType, :Month, :ChildUin

        def initialize(filetype=nil, month=nil, childuin=nil)
          @FileType = filetype
          @Month = month
          @ChildUin = childuin
        end

        def deserialize(params)
          @FileType = params['FileType']
          @Month = params['Month']
          @ChildUin = params['ChildUin']
        end
      end

      # DescribeBillDownloadUrl返回参数结构体
      class DescribeBillDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 账单文件是否准备就绪，0文件生成中，1文件已生成
        # @type Ready: Integer
        # @param DownloadUrl: 账单文件下载链接，有效时长为一小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :DownloadUrl, :RequestId

        def initialize(ready=nil, downloadurl=nil, requestid=nil)
          @Ready = ready
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillList请求参数结构体
      class DescribeBillListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询范围的起始时间（包含）时间格式 yyyy-MM-dd HH:mm:ss 开始时间和结束时间差值小于等于六个月
        # @type StartTime: String
        # @param EndTime: 查询范围的结束时间（包含）时间格式 yyyy-MM-dd HH:mm:ss ，开始时间和结束时间差值小于等于六个月
        # @type EndTime: String
        # @param Offset: 翻页偏移量，初始值为0
        # @type Offset: Integer
        # @param Limit: 每页的限制数量
        # @type Limit: Integer
        # @param PayType: 交易类型： all所有交易类型，recharge充值，return退款，unblock解冻，agentin资金转入，advanced垫付，cash提现，deduct扣费，block冻结，agentout资金转出，repay垫付回款，repayment还款(仅国际信用账户)，adj_refund调增(仅国际信用账户)，adj_deduct调减(仅国际信用账户)
        # @type PayType: Array
        # @param SubPayType: 扣费模式，
        # 当所选的交易类型为扣费deduct时：
        # all所有扣费类型;trade预付费支付;hour_h按量小时结;hour_d按量日结;hour_m按量月结;decompensate调账扣费;other第三方扣费;panshi 线下项目扣费;offline 线下产品扣费;

        # 当所选的交易类型为扣费recharge时：
        # online 在线充值;bank-enterprice 银企直连;offline 线下充值;transfer 分成充值

        # 当所选的交易类型为扣费cash时：
        # online 线上提现;offline 线下提现;panshi 赠送金清零

        # 当所选的交易类型为扣费advanced时：
        # advanced 垫付充值

        # 当所选的交易类型为扣费repay时：
        # panshi 垫付回款

        # 当所选的交易类型为扣费block时：
        # other 第三方冻结;hour 按量冻结;month按月冻结

        # 当所选的交易类型为扣费return时：
        # compensate 调账补偿;trade 预付费退款

        # 当所选的交易类型为扣费unblock时：
        # other 第三方解冻;hour 按量解冻;month 按月解冻
        # @type SubPayType: Array
        # @param WithZeroAmount: 是否返回0元交易金额的交易项，取值：0-不返回，1-返回。不传该参数则不返回
        # @type WithZeroAmount: Integer

        attr_accessor :StartTime, :EndTime, :Offset, :Limit, :PayType, :SubPayType, :WithZeroAmount

        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil, paytype=nil, subpaytype=nil, withzeroamount=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @PayType = paytype
          @SubPayType = subpaytype
          @WithZeroAmount = withzeroamount
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PayType = params['PayType']
          @SubPayType = params['SubPayType']
          @WithZeroAmount = params['WithZeroAmount']
        end
      end

      # DescribeBillList返回参数结构体
      class DescribeBillListResponse < TencentCloud::Common::AbstractModel
        # @param TransactionList: 收支明细列表
        # @type TransactionList: Array
        # @param Total: 总条数
        # @type Total: Integer
        # @param ReturnAmount: 退费总额，单位（分）
        # @type ReturnAmount: Float
        # @param RechargeAmount: 充值总额，单位（分）
        # @type RechargeAmount: Float
        # @param BlockAmount: 冻结总额，单位（分）
        # @type BlockAmount: Float
        # @param UnblockAmount: 解冻总额，单位（分）
        # @type UnblockAmount: Float
        # @param DeductAmount: 扣费总额，单位（分）
        # @type DeductAmount: Float
        # @param AgentInAmount: 资金转入总额，单位（分）
        # @type AgentInAmount: Float
        # @param AdvanceRechargeAmount: 垫付充值总额，单位（分）
        # @type AdvanceRechargeAmount: Float
        # @param WithdrawAmount: 提现扣减总额，单位（分）
        # @type WithdrawAmount: Float
        # @param AgentOutAmount: 资金转出总额，单位（分）
        # @type AgentOutAmount: Float
        # @param AdvancePayAmount: 还垫付总额，单位（分）
        # @type AdvancePayAmount: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TransactionList, :Total, :ReturnAmount, :RechargeAmount, :BlockAmount, :UnblockAmount, :DeductAmount, :AgentInAmount, :AdvanceRechargeAmount, :WithdrawAmount, :AgentOutAmount, :AdvancePayAmount, :RequestId

        def initialize(transactionlist=nil, total=nil, returnamount=nil, rechargeamount=nil, blockamount=nil, unblockamount=nil, deductamount=nil, agentinamount=nil, advancerechargeamount=nil, withdrawamount=nil, agentoutamount=nil, advancepayamount=nil, requestid=nil)
          @TransactionList = transactionlist
          @Total = total
          @ReturnAmount = returnamount
          @RechargeAmount = rechargeamount
          @BlockAmount = blockamount
          @UnblockAmount = unblockamount
          @DeductAmount = deductamount
          @AgentInAmount = agentinamount
          @AdvanceRechargeAmount = advancerechargeamount
          @WithdrawAmount = withdrawamount
          @AgentOutAmount = agentoutamount
          @AdvancePayAmount = advancepayamount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TransactionList'].nil?
            @TransactionList = []
            params['TransactionList'].each do |i|
              billtransactioninfo_tmp = BillTransactionInfo.new
              billtransactioninfo_tmp.deserialize(i)
              @TransactionList << billtransactioninfo_tmp
            end
          end
          @Total = params['Total']
          @ReturnAmount = params['ReturnAmount']
          @RechargeAmount = params['RechargeAmount']
          @BlockAmount = params['BlockAmount']
          @UnblockAmount = params['UnblockAmount']
          @DeductAmount = params['DeductAmount']
          @AgentInAmount = params['AgentInAmount']
          @AdvanceRechargeAmount = params['AdvanceRechargeAmount']
          @WithdrawAmount = params['WithdrawAmount']
          @AgentOutAmount = params['AgentOutAmount']
          @AdvancePayAmount = params['AdvancePayAmount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillResourceSummaryForOrganization请求参数结构体
      class DescribeBillResourceSummaryForOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Month: 月份，格式为yyyy-mm。不能早于开通账单2.0的月份
        # @type Month: String
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param ActionType: 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 竞价实例小时结
        # 线下项目调账补偿
        # 线下产品调账补偿
        # 优惠扣费
        # 优惠补偿
        # 按量计费迁入资源
        # 按量计费迁出资源
        # 包年包月迁入资源
        # 包年包月迁出资源
        # 预付费用
        # 小时费用
        # 预留实例退款
        # 按量计费冲正
        # 包年包月转按量
        # 保底扣款
        # 节省计划小时费用
        # @type ActionType: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param PayMode: 付费模式 prePay/postPay
        # @type PayMode: String
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String
        # @param TagKey: 分账标签键，用户自定义（支持2021-01以后账单查询）
        # @type TagKey: String
        # @param TagValue: 分账标签值，该参数为空表示该标签键下未设置标签值的记录
        # （支持2021-01以后账单查询）
        # @type TagValue: String

        attr_accessor :Offset, :Limit, :Month, :PeriodType, :NeedRecordNum, :ActionType, :ResourceId, :PayMode, :BusinessCode, :TagKey, :TagValue
        extend Gem::Deprecate
        deprecate :PeriodType, :none, 2024, 4
        deprecate :PeriodType=, :none, 2024, 4

        def initialize(offset=nil, limit=nil, month=nil, periodtype=nil, needrecordnum=nil, actiontype=nil, resourceid=nil, paymode=nil, businesscode=nil, tagkey=nil, tagvalue=nil)
          @Offset = offset
          @Limit = limit
          @Month = month
          @PeriodType = periodtype
          @NeedRecordNum = needrecordnum
          @ActionType = actiontype
          @ResourceId = resourceid
          @PayMode = paymode
          @BusinessCode = businesscode
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @NeedRecordNum = params['NeedRecordNum']
          @ActionType = params['ActionType']
          @ResourceId = params['ResourceId']
          @PayMode = params['PayMode']
          @BusinessCode = params['BusinessCode']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # DescribeBillResourceSummaryForOrganization返回参数结构体
      class DescribeBillResourceSummaryForOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSummarySet: 资源汇总列表
        # @type ResourceSummarySet: Array
        # @param Total: 资源汇总列表总数，入参NeedRecordNum为0时不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSummarySet, :Total, :RequestId

        def initialize(resourcesummaryset=nil, total=nil, requestid=nil)
          @ResourceSummarySet = resourcesummaryset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSummarySet'].nil?
            @ResourceSummarySet = []
            params['ResourceSummarySet'].each do |i|
              billdistributionresourcesummary_tmp = BillDistributionResourceSummary.new
              billdistributionresourcesummary_tmp.deserialize(i)
              @ResourceSummarySet << billdistributionresourcesummary_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillResourceSummary请求参数结构体
      class DescribeBillResourceSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Month: 月份，格式为yyyy-mm。不能早于开通账单2.0的月份
        # @type Month: String
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param ActionType: 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 竞价实例小时结
        # 线下项目调账补偿
        # 线下产品调账补偿
        # 优惠扣费
        # 优惠补偿
        # 按量计费迁入资源
        # 按量计费迁出资源
        # 包年包月迁入资源
        # 包年包月迁出资源
        # 预付费用
        # 小时费用
        # 预留实例退款
        # 按量计费冲正
        # 包年包月转按量
        # 保底扣款
        # 节省计划小时费用
        # @type ActionType: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param PayMode: 付费模式 prePay/postPay
        # @type PayMode: String
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String
        # @param PayerUin: 支付者的账号 ID（账号 ID 是用户在腾讯云的唯一账号标识），默认查询本账号账单，如集团管理账号需查询成员账号自付的账单，该字段需入参成员账号UIN
        # @type PayerUin: String
        # @param TagKey: 分账标签键，用户自定义（支持2021-01以后账单查询）
        # @type TagKey: String
        # @param TagValue: 分账标签值，该参数为空表示该标签键下未设置标签值的记录
        # （支持2021-01以后账单查询）
        # @type TagValue: String

        attr_accessor :Offset, :Limit, :Month, :PeriodType, :NeedRecordNum, :ActionType, :ResourceId, :PayMode, :BusinessCode, :PayerUin, :TagKey, :TagValue
        extend Gem::Deprecate
        deprecate :PeriodType, :none, 2024, 4
        deprecate :PeriodType=, :none, 2024, 4

        def initialize(offset=nil, limit=nil, month=nil, periodtype=nil, needrecordnum=nil, actiontype=nil, resourceid=nil, paymode=nil, businesscode=nil, payeruin=nil, tagkey=nil, tagvalue=nil)
          @Offset = offset
          @Limit = limit
          @Month = month
          @PeriodType = periodtype
          @NeedRecordNum = needrecordnum
          @ActionType = actiontype
          @ResourceId = resourceid
          @PayMode = paymode
          @BusinessCode = businesscode
          @PayerUin = payeruin
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Month = params['Month']
          @PeriodType = params['PeriodType']
          @NeedRecordNum = params['NeedRecordNum']
          @ActionType = params['ActionType']
          @ResourceId = params['ResourceId']
          @PayMode = params['PayMode']
          @BusinessCode = params['BusinessCode']
          @PayerUin = params['PayerUin']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # DescribeBillResourceSummary返回参数结构体
      class DescribeBillResourceSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSummarySet: 资源汇总列表
        # @type ResourceSummarySet: Array
        # @param Total: 资源汇总列表总数，入参NeedRecordNum为0时不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSummarySet, :Total, :RequestId

        def initialize(resourcesummaryset=nil, total=nil, requestid=nil)
          @ResourceSummarySet = resourcesummaryset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSummarySet'].nil?
            @ResourceSummarySet = []
            params['ResourceSummarySet'].each do |i|
              billresourcesummary_tmp = BillResourceSummary.new
              billresourcesummary_tmp.deserialize(i)
              @ResourceSummarySet << billresourcesummary_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryByPayMode请求参数结构体
      class DescribeBillSummaryByPayModeRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String

        attr_accessor :BeginTime, :EndTime, :PayerUin

        def initialize(begintime=nil, endtime=nil, payeruin=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @PayerUin = payeruin
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PayerUin = params['PayerUin']
        end
      end

      # DescribeBillSummaryByPayMode返回参数结构体
      class DescribeBillSummaryByPayModeResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryOverview: 各付费模式花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryOverview, :RequestId

        def initialize(ready=nil, summaryoverview=nil, requestid=nil)
          @Ready = ready
          @SummaryOverview = summaryoverview
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryOverview'].nil?
            @SummaryOverview = []
            params['SummaryOverview'].each do |i|
              paymodesummaryoverviewitem_tmp = PayModeSummaryOverviewItem.new
              paymodesummaryoverviewitem_tmp.deserialize(i)
              @SummaryOverview << paymodesummaryoverviewitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryByProduct请求参数结构体
      class DescribeBillSummaryByProductRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param PayType: 款项类别，与L0账单上的汇总类别对应。
        # 此参数自账单3.0（即2021-05）之后开始生效。
        # 枚举值：
        # consume-消费
        # refund-退款
        # adjustment-调账
        # @type PayType: String

        attr_accessor :BeginTime, :EndTime, :PayerUin, :PayType

        def initialize(begintime=nil, endtime=nil, payeruin=nil, paytype=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @PayerUin = payeruin
          @PayType = paytype
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PayerUin = params['PayerUin']
          @PayType = params['PayType']
        end
      end

      # DescribeBillSummaryByProduct返回参数结构体
      class DescribeBillSummaryByProductResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryTotal: 总花费详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryTotal: :class:`Tencentcloud::Billing.v20180709.models.BusinessSummaryTotal`
        # @param SummaryOverview: 各产品花费分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryTotal, :SummaryOverview, :RequestId

        def initialize(ready=nil, summarytotal=nil, summaryoverview=nil, requestid=nil)
          @Ready = ready
          @SummaryTotal = summarytotal
          @SummaryOverview = summaryoverview
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryTotal'].nil?
            @SummaryTotal = BusinessSummaryTotal.new
            @SummaryTotal.deserialize(params['SummaryTotal'])
          end
          unless params['SummaryOverview'].nil?
            @SummaryOverview = []
            params['SummaryOverview'].each do |i|
              businesssummaryoverviewitem_tmp = BusinessSummaryOverviewItem.new
              businesssummaryoverviewitem_tmp.deserialize(i)
              @SummaryOverview << businesssummaryoverviewitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryByProject请求参数结构体
      class DescribeBillSummaryByProjectRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String

        attr_accessor :BeginTime, :EndTime, :PayerUin

        def initialize(begintime=nil, endtime=nil, payeruin=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @PayerUin = payeruin
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PayerUin = params['PayerUin']
        end
      end

      # DescribeBillSummaryByProject返回参数结构体
      class DescribeBillSummaryByProjectResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryOverview: 各项目花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryOverview, :RequestId

        def initialize(ready=nil, summaryoverview=nil, requestid=nil)
          @Ready = ready
          @SummaryOverview = summaryoverview
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryOverview'].nil?
            @SummaryOverview = []
            params['SummaryOverview'].each do |i|
              projectsummaryoverviewitem_tmp = ProjectSummaryOverviewItem.new
              projectsummaryoverviewitem_tmp.deserialize(i)
              @SummaryOverview << projectsummaryoverviewitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryByRegion请求参数结构体
      class DescribeBillSummaryByRegionRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String

        attr_accessor :BeginTime, :EndTime, :PayerUin

        def initialize(begintime=nil, endtime=nil, payeruin=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @PayerUin = payeruin
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PayerUin = params['PayerUin']
        end
      end

      # DescribeBillSummaryByRegion返回参数结构体
      class DescribeBillSummaryByRegionResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryOverview: 各地域花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryOverview, :RequestId

        def initialize(ready=nil, summaryoverview=nil, requestid=nil)
          @Ready = ready
          @SummaryOverview = summaryoverview
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryOverview'].nil?
            @SummaryOverview = []
            params['SummaryOverview'].each do |i|
              regionsummaryoverviewitem_tmp = RegionSummaryOverviewItem.new
              regionsummaryoverviewitem_tmp.deserialize(i)
              @SummaryOverview << regionsummaryoverviewitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryByTag请求参数结构体
      class DescribeBillSummaryByTagRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param TagKey: 分账标签键，用户自定义
        # @type TagKey: String
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param TagValue: 分账标签值
        # @type TagValue: String

        attr_accessor :BeginTime, :EndTime, :TagKey, :PayerUin, :TagValue

        def initialize(begintime=nil, endtime=nil, tagkey=nil, payeruin=nil, tagvalue=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @TagKey = tagkey
          @PayerUin = payeruin
          @TagValue = tagvalue
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TagKey = params['TagKey']
          @PayerUin = params['PayerUin']
          @TagValue = params['TagValue']
        end
      end

      # DescribeBillSummaryByTag返回参数结构体
      class DescribeBillSummaryByTagResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryOverview: 各标签值花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param SummaryTotal: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryTotal: :class:`Tencentcloud::Billing.v20180709.models.SummaryTotal`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryOverview, :SummaryTotal, :RequestId

        def initialize(ready=nil, summaryoverview=nil, summarytotal=nil, requestid=nil)
          @Ready = ready
          @SummaryOverview = summaryoverview
          @SummaryTotal = summarytotal
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryOverview'].nil?
            @SummaryOverview = []
            params['SummaryOverview'].each do |i|
              tagsummaryoverviewitem_tmp = TagSummaryOverviewItem.new
              tagsummaryoverviewitem_tmp.deserialize(i)
              @SummaryOverview << tagsummaryoverviewitem_tmp
            end
          end
          unless params['SummaryTotal'].nil?
            @SummaryTotal = SummaryTotal.new
            @SummaryTotal.deserialize(params['SummaryTotal'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummaryForOrganization请求参数结构体
      class DescribeBillSummaryForOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2023-04
        # @type Month: String
        # @param GroupType: 账单维度类型，枚举值如下：business、project、region、payMode、tag
        # @type GroupType: String
        # @param TagKey: 标签键，GroupType=tag获取标签维度账单时传
        # @type TagKey: Array

        attr_accessor :Month, :GroupType, :TagKey

        def initialize(month=nil, grouptype=nil, tagkey=nil)
          @Month = month
          @GroupType = grouptype
          @TagKey = tagkey
        end

        def deserialize(params)
          @Month = params['Month']
          @GroupType = params['GroupType']
          @TagKey = params['TagKey']
        end
      end

      # DescribeBillSummaryForOrganization返回参数结构体
      class DescribeBillSummaryForOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryDetail: 账单多维度汇总消费详情
        # @type SummaryDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryDetail, :RequestId

        def initialize(ready=nil, summarydetail=nil, requestid=nil)
          @Ready = ready
          @SummaryDetail = summarydetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryDetail'].nil?
            @SummaryDetail = []
            params['SummaryDetail'].each do |i|
              summarydetail_tmp = SummaryDetail.new
              summarydetail_tmp.deserialize(i)
              @SummaryDetail << summarydetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillSummary请求参数结构体
      class DescribeBillSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Month: 账单月份，格式为2023-04
        # @type Month: String
        # @param GroupType: 账单维度类型，枚举值如下：business、project、region、payMode、tag
        # @type GroupType: String
        # @param TagKey: 标签键，GroupType=tag获取标签维度账单时传
        # @type TagKey: Array

        attr_accessor :Month, :GroupType, :TagKey

        def initialize(month=nil, grouptype=nil, tagkey=nil)
          @Month = month
          @GroupType = grouptype
          @TagKey = tagkey
        end

        def deserialize(params)
          @Month = params['Month']
          @GroupType = params['GroupType']
          @TagKey = params['TagKey']
        end
      end

      # DescribeBillSummary返回参数结构体
      class DescribeBillSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        # @type Ready: Integer
        # @param SummaryDetail: 账单多维度汇总消费详情
        # @type SummaryDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :SummaryDetail, :RequestId

        def initialize(ready=nil, summarydetail=nil, requestid=nil)
          @Ready = ready
          @SummaryDetail = summarydetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['SummaryDetail'].nil?
            @SummaryDetail = []
            params['SummaryDetail'].each do |i|
              summarydetail_tmp = SummaryDetail.new
              summarydetail_tmp.deserialize(i)
              @SummaryDetail << summarydetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostDetail请求参数结构体
      class DescribeCostDetailRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param BeginTime: 周期开始时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为同一月份，暂不支持跨月拉取。可拉取的数据是开通成本分析后，且距今 24 个月内的数据。
        # @type BeginTime: String
        # @param EndTime: 周期结束时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为同一月份，暂不支持跨月拉取。可拉取的数据是开通成本分析后，且距今 24 个月内的数据。
        # @type EndTime: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param Month: 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。不能早于开通成本分析的月份，最多可拉取24个月内的数据。
        # @type Month: String
        # @param ProductCode: 查询指定产品信息（暂时未开放获取）
        # @type ProductCode: String
        # @param PayMode: 付费模式 prePay/postPay
        # @type PayMode: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String

        attr_accessor :Limit, :Offset, :BeginTime, :EndTime, :NeedRecordNum, :Month, :ProductCode, :PayMode, :ResourceId

        def initialize(limit=nil, offset=nil, begintime=nil, endtime=nil, needrecordnum=nil, month=nil, productcode=nil, paymode=nil, resourceid=nil)
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
          @NeedRecordNum = needrecordnum
          @Month = month
          @ProductCode = productcode
          @PayMode = paymode
          @ResourceId = resourceid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @NeedRecordNum = params['NeedRecordNum']
          @Month = params['Month']
          @ProductCode = params['ProductCode']
          @PayMode = params['PayMode']
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeCostDetail返回参数结构体
      class DescribeCostDetailResponse < TencentCloud::Common::AbstractModel
        # @param DetailSet: 消耗明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailSet: Array
        # @param Total: 记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailSet, :Total, :RequestId

        def initialize(detailset=nil, total=nil, requestid=nil)
          @DetailSet = detailset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              costdetail_tmp = CostDetail.new
              costdetail_tmp.deserialize(i)
              @DetailSet << costdetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostExplorerSummary请求参数结构体
      class DescribeCostExplorerSummaryRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 周期开始时间，格式为yyyy-mm-dd hh:ii:ss
        # @type BeginTime: String
        # @param EndTime: 周期结束时间，格式为yyyy-mm-dd hh:ii:ss
        # @type EndTime: String
        # @param BillType: 账单类型：1-费用账单、2-消耗账单
        # @type BillType: String
        # @param PeriodType: 统计周期：日-day，月-month；
        # @type PeriodType: String
        # @param Dimensions: 分类维度（数据汇总维度），查询分类维度（请使用分类维度code入参）入参枚举值：
        # default=仅总计
        # feeType=费用类型
        # billType=账单类型
        # business=产品
        # product=子产品
        # region=地域
        # zone=可用区
        # actionType=交易类型
        # payMode =计费模式
        # tags=标签
        # project =项目
        # payerUin=支付者账号
        # ownerUin=使用者账号
        # @type Dimensions: String
        # @param FeeType: 费用类型：cost-总费用，totalCost-原价费用
        # @type FeeType: String
        # @param PageSize: 数量，每页最大值为100
        # @type PageSize: Integer
        # @param PageNo: 起始页，当PageNo=1表示第一页， PageNo=2表示第二页，依次类推。
        # @type PageNo: Integer
        # @param TagKeyStr: 分账标签值
        # @type TagKeyStr: String
        # @param NeedConditionValue: 是否需要筛选框， 1-表示需要， 0-表示不需要，若不传默认不需要。
        # @type NeedConditionValue: String
        # @param Conditions: 筛选参数
        # @type Conditions: :class:`Tencentcloud::Billing.v20180709.models.AnalyseConditions`

        attr_accessor :BeginTime, :EndTime, :BillType, :PeriodType, :Dimensions, :FeeType, :PageSize, :PageNo, :TagKeyStr, :NeedConditionValue, :Conditions

        def initialize(begintime=nil, endtime=nil, billtype=nil, periodtype=nil, dimensions=nil, feetype=nil, pagesize=nil, pageno=nil, tagkeystr=nil, needconditionvalue=nil, conditions=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @BillType = billtype
          @PeriodType = periodtype
          @Dimensions = dimensions
          @FeeType = feetype
          @PageSize = pagesize
          @PageNo = pageno
          @TagKeyStr = tagkeystr
          @NeedConditionValue = needconditionvalue
          @Conditions = conditions
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @BillType = params['BillType']
          @PeriodType = params['PeriodType']
          @Dimensions = params['Dimensions']
          @FeeType = params['FeeType']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @TagKeyStr = params['TagKeyStr']
          @NeedConditionValue = params['NeedConditionValue']
          unless params['Conditions'].nil?
            @Conditions = AnalyseConditions.new
            @Conditions.deserialize(params['Conditions'])
          end
        end
      end

      # DescribeCostExplorerSummary返回参数结构体
      class DescribeCostExplorerSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数据条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Header: 表头信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: :class:`Tencentcloud::Billing.v20180709.models.AnalyseHeaderDetail`
        # @param Detail: 数据明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param TotalDetail: 数据总计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalDetail: :class:`Tencentcloud::Billing.v20180709.models.AnalyseDetail`
        # @param ConditionValue: 筛选框
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionValue: :class:`Tencentcloud::Billing.v20180709.models.AnalyseConditionDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Header, :Detail, :TotalDetail, :ConditionValue, :RequestId

        def initialize(total=nil, header=nil, detail=nil, totaldetail=nil, conditionvalue=nil, requestid=nil)
          @Total = total
          @Header = header
          @Detail = detail
          @TotalDetail = totaldetail
          @ConditionValue = conditionvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Header'].nil?
            @Header = AnalyseHeaderDetail.new
            @Header.deserialize(params['Header'])
          end
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              analysedetail_tmp = AnalyseDetail.new
              analysedetail_tmp.deserialize(i)
              @Detail << analysedetail_tmp
            end
          end
          unless params['TotalDetail'].nil?
            @TotalDetail = AnalyseDetail.new
            @TotalDetail.deserialize(params['TotalDetail'])
          end
          unless params['ConditionValue'].nil?
            @ConditionValue = AnalyseConditionDetail.new
            @ConditionValue.deserialize(params['ConditionValue'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostSummaryByProduct请求参数结构体
      class DescribeCostSummaryByProductRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param Limit: 每次获取数据量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量,默认从0开始
        # @type Offset: Integer
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param NeedRecordNum: 是否需要返回记录数量，0不需要，1需要，默认不需要
        # @type NeedRecordNum: Integer

        attr_accessor :BeginTime, :EndTime, :Limit, :Offset, :PayerUin, :NeedRecordNum

        def initialize(begintime=nil, endtime=nil, limit=nil, offset=nil, payeruin=nil, needrecordnum=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @PayerUin = payeruin
          @NeedRecordNum = needrecordnum
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PayerUin = params['PayerUin']
          @NeedRecordNum = params['NeedRecordNum']
        end
      end

      # DescribeCostSummaryByProduct返回参数结构体
      class DescribeCostSummaryByProductResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param Total: 消耗详情
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTotal`
        # @param Data: 消耗按产品汇总详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RecordNum: 记录数量，NeedRecordNum为0是返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :Total, :Data, :RecordNum, :RequestId

        def initialize(ready=nil, total=nil, data=nil, recordnum=nil, requestid=nil)
          @Ready = ready
          @Total = total
          @Data = data
          @RecordNum = recordnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['Total'].nil?
            @Total = ConsumptionSummaryTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              consumptionbusinesssummarydataitem_tmp = ConsumptionBusinessSummaryDataItem.new
              consumptionbusinesssummarydataitem_tmp.deserialize(i)
              @Data << consumptionbusinesssummarydataitem_tmp
            end
          end
          @RecordNum = params['RecordNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostSummaryByProject请求参数结构体
      class DescribeCostSummaryByProjectRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param Limit: 每次获取数据量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量,默认从0开始
        # @type Offset: Integer
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param NeedRecordNum: 是否需要返回记录数量，0不需要，1需要，默认不需要
        # @type NeedRecordNum: Integer

        attr_accessor :BeginTime, :EndTime, :Limit, :Offset, :PayerUin, :NeedRecordNum

        def initialize(begintime=nil, endtime=nil, limit=nil, offset=nil, payeruin=nil, needrecordnum=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @PayerUin = payeruin
          @NeedRecordNum = needrecordnum
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PayerUin = params['PayerUin']
          @NeedRecordNum = params['NeedRecordNum']
        end
      end

      # DescribeCostSummaryByProject返回参数结构体
      class DescribeCostSummaryByProjectResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param Total: 消耗详情
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTotal`
        # @param Data: 消耗按业务汇总详情
        # @type Data: Array
        # @param RecordNum: 记录数量，NeedRecordNum为0是返回null
        # @type RecordNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :Total, :Data, :RecordNum, :RequestId

        def initialize(ready=nil, total=nil, data=nil, recordnum=nil, requestid=nil)
          @Ready = ready
          @Total = total
          @Data = data
          @RecordNum = recordnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['Total'].nil?
            @Total = ConsumptionSummaryTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              consumptionprojectsummarydataitem_tmp = ConsumptionProjectSummaryDataItem.new
              consumptionprojectsummarydataitem_tmp.deserialize(i)
              @Data << consumptionprojectsummarydataitem_tmp
            end
          end
          @RecordNum = params['RecordNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostSummaryByRegion请求参数结构体
      class DescribeCostSummaryByRegionRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param Limit: 每次获取数据量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量,默认从0开始
        # @type Offset: Integer
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param NeedRecordNum: 是否需要返回记录数量，0不需要，1需要，默认不需要
        # @type NeedRecordNum: Integer

        attr_accessor :BeginTime, :EndTime, :Limit, :Offset, :PayerUin, :NeedRecordNum

        def initialize(begintime=nil, endtime=nil, limit=nil, offset=nil, payeruin=nil, needrecordnum=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @PayerUin = payeruin
          @NeedRecordNum = needrecordnum
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PayerUin = params['PayerUin']
          @NeedRecordNum = params['NeedRecordNum']
        end
      end

      # DescribeCostSummaryByRegion返回参数结构体
      class DescribeCostSummaryByRegionResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param Total: 消耗详情
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTotal`
        # @param Data: 消耗按地域汇总详情
        # @type Data: Array
        # @param RecordNum: 记录数量，NeedRecordNum为0是返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :Total, :Data, :RecordNum, :RequestId

        def initialize(ready=nil, total=nil, data=nil, recordnum=nil, requestid=nil)
          @Ready = ready
          @Total = total
          @Data = data
          @RecordNum = recordnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['Total'].nil?
            @Total = ConsumptionSummaryTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              consumptionregionsummarydataitem_tmp = ConsumptionRegionSummaryDataItem.new
              consumptionregionsummarydataitem_tmp.deserialize(i)
              @Data << consumptionregionsummarydataitem_tmp
            end
          end
          @RecordNum = params['RecordNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCostSummaryByResource请求参数结构体
      class DescribeCostSummaryByResourceRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param Limit: 每次获取数据量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量,默认从0开始
        # @type Offset: Integer
        # @param PayerUin: 查询账单数据的用户UIN
        # @type PayerUin: String
        # @param NeedRecordNum: 是否需要返回记录数量，0不需要，1需要，默认不需要
        # @type NeedRecordNum: Integer
        # @param NeedConditionValue: 是否需要返回过滤条件，0不需要，1需要，默认不需要
        # @type NeedConditionValue: Integer
        # @param Conditions: 过滤条件，只支持ResourceKeyword(资源关键字，支持资源id及资源名称模糊查询)，ProjectIds（项目id），RegionIds(地域id)，PayModes(付费模式，可选prePay和postPay)，HideFreeCost（是否隐藏0元流水，可选0和1），OrderByCost（按费用排序规则，可选desc和asc）
        # @type Conditions: :class:`Tencentcloud::Billing.v20180709.models.Conditions`

        attr_accessor :BeginTime, :EndTime, :Limit, :Offset, :PayerUin, :NeedRecordNum, :NeedConditionValue, :Conditions

        def initialize(begintime=nil, endtime=nil, limit=nil, offset=nil, payeruin=nil, needrecordnum=nil, needconditionvalue=nil, conditions=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @PayerUin = payeruin
          @NeedRecordNum = needrecordnum
          @NeedConditionValue = needconditionvalue
          @Conditions = conditions
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PayerUin = params['PayerUin']
          @NeedRecordNum = params['NeedRecordNum']
          @NeedConditionValue = params['NeedConditionValue']
          unless params['Conditions'].nil?
            @Conditions = Conditions.new
            @Conditions.deserialize(params['Conditions'])
          end
        end
      end

      # DescribeCostSummaryByResource返回参数结构体
      class DescribeCostSummaryByResourceResponse < TencentCloud::Common::AbstractModel
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param Total: 消耗详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionSummaryTotal`
        # @param ConditionValue: 过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionValue: :class:`Tencentcloud::Billing.v20180709.models.ConsumptionResourceSummaryConditionValue`
        # @param RecordNum: 记录数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param Data: 资源消耗详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ready, :Total, :ConditionValue, :RecordNum, :Data, :RequestId

        def initialize(ready=nil, total=nil, conditionvalue=nil, recordnum=nil, data=nil, requestid=nil)
          @Ready = ready
          @Total = total
          @ConditionValue = conditionvalue
          @RecordNum = recordnum
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Ready = params['Ready']
          unless params['Total'].nil?
            @Total = ConsumptionSummaryTotal.new
            @Total.deserialize(params['Total'])
          end
          unless params['ConditionValue'].nil?
            @ConditionValue = ConsumptionResourceSummaryConditionValue.new
            @ConditionValue.deserialize(params['ConditionValue'])
          end
          @RecordNum = params['RecordNum']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              consumptionresourcesummarydataitem_tmp = ConsumptionResourceSummaryDataItem.new
              consumptionresourcesummarydataitem_tmp.deserialize(i)
              @Data << consumptionresourcesummarydataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDealsByCond请求参数结构体
      class DescribeDealsByCondRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间 2016-01-01 00:00:00
        # @type StartTime: String
        # @param EndTime: 结束时间 2016-02-01 00:00:00 建议跨度不超过3个月
        # @type EndTime: String
        # @param Limit: 一页多少条数据，默认是20条，最大不超过1000
        # @type Limit: Integer
        # @param Offset: 第多少页，从0开始，默认是0
        # @type Offset: Integer
        # @param Status: 订单状态,默认为4（成功的订单）
        # 订单的状态
        # 1：未支付
        # 2：已支付3：发货中
        # 4：已发货
        # 5：发货失败
        # 6：已退款
        # 7：已关单
        # 8：订单过期
        # 9：订单已失效
        # 10：产品已失效
        # 11：代付拒绝
        # 12：支付中
        # @type Status: Integer
        # @param OrderId: 子订单号
        # @type OrderId: String
        # @param BigDealId: 大订单号
        # @type BigDealId: String
        # @param ResourceId: 资源id
        # @type ResourceId: String

        attr_accessor :StartTime, :EndTime, :Limit, :Offset, :Status, :OrderId, :BigDealId, :ResourceId

        def initialize(starttime=nil, endtime=nil, limit=nil, offset=nil, status=nil, orderid=nil, bigdealid=nil, resourceid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Status = status
          @OrderId = orderid
          @BigDealId = bigdealid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @OrderId = params['OrderId']
          @BigDealId = params['BigDealId']
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeDealsByCond返回参数结构体
      class DescribeDealsByCondResponse < TencentCloud::Common::AbstractModel
        # @param Deals: 订单列表
        # @type Deals: Array
        # @param TotalCount: 订单总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deals, :TotalCount, :RequestId

        def initialize(deals=nil, totalcount=nil, requestid=nil)
          @Deals = deals
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Deals'].nil?
            @Deals = []
            params['Deals'].each do |i|
              deal_tmp = Deal.new
              deal_tmp.deserialize(i)
              @Deals << deal_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDosageCosDetailByDate请求参数结构体
      class DescribeDosageCosDetailByDateRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 查询用量开始时间，例如：2020-09-01
        # @type StartDate: String
        # @param EndDate: 查询用量结束时间，例如：2020-09-30（与开始时间同月，不支持跨月查询）
        # @type EndDate: String
        # @param BucketName: COS 存储桶名称，可通过Get Service 接口是用来获取请求者名下的所有存储空间列表（Bucket list）https://cloud.tencent.com/document/product/436/8291
        # @type BucketName: String

        attr_accessor :StartDate, :EndDate, :BucketName

        def initialize(startdate=nil, enddate=nil, bucketname=nil)
          @StartDate = startdate
          @EndDate = enddate
          @BucketName = bucketname
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @BucketName = params['BucketName']
        end
      end

      # DescribeDosageCosDetailByDate返回参数结构体
      class DescribeDosageCosDetailByDateResponse < TencentCloud::Common::AbstractModel
        # @param DetailSets: 用量数组
        # @type DetailSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailSets, :RequestId

        def initialize(detailsets=nil, requestid=nil)
          @DetailSets = detailsets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailSets'].nil?
            @DetailSets = []
            params['DetailSets'].each do |i|
              cosdetailsets_tmp = CosDetailSets.new
              cosdetailsets_tmp.deserialize(i)
              @DetailSets << cosdetailsets_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 计量标准接入类产品支持API接口获取用量明细返回数据结构
      class DescribeDosageDetail < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param Uin: 账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param DosageType: 用量统计类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageType: String
        # @param ProductCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param SubProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCode: String
        # @param BillingItemCode: 组件类型编码

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItemCode: String
        # @param SubBillingItemCode: 组件编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubBillingItemCode: String
        # @param ProductCodeName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param SubProductCodeName: 子产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCodeName: String
        # @param BillingItemCodeName: 组件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingItemCodeName: String
        # @param SubBillingItemCodeName: 组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubBillingItemCodeName: String
        # @param DosageUnit: 用量单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageUnit: String
        # @param DosageBeginTime: 用量起始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageBeginTime: String
        # @param DosageEndTime: 用量截止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageEndTime: String
        # @param DosageValue: 标准用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DosageValue: Float
        # @param DeductValue: 抵扣用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductValue: Float
        # @param RemainValue: 抵扣余量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainValue: Float
        # @param SdkAppId: sdkAppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SdkAppId: String
        # @param AttrStr: 其他信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrStr: Array
        # @param SheetName: 用量模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SheetName: Array

        attr_accessor :Date, :Uin, :DosageType, :ProductCode, :SubProductCode, :BillingItemCode, :SubBillingItemCode, :ProductCodeName, :SubProductCodeName, :BillingItemCodeName, :SubBillingItemCodeName, :DosageUnit, :DosageBeginTime, :DosageEndTime, :DosageValue, :DeductValue, :RemainValue, :SdkAppId, :AttrStr, :SheetName

        def initialize(date=nil, uin=nil, dosagetype=nil, productcode=nil, subproductcode=nil, billingitemcode=nil, subbillingitemcode=nil, productcodename=nil, subproductcodename=nil, billingitemcodename=nil, subbillingitemcodename=nil, dosageunit=nil, dosagebegintime=nil, dosageendtime=nil, dosagevalue=nil, deductvalue=nil, remainvalue=nil, sdkappid=nil, attrstr=nil, sheetname=nil)
          @Date = date
          @Uin = uin
          @DosageType = dosagetype
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @BillingItemCode = billingitemcode
          @SubBillingItemCode = subbillingitemcode
          @ProductCodeName = productcodename
          @SubProductCodeName = subproductcodename
          @BillingItemCodeName = billingitemcodename
          @SubBillingItemCodeName = subbillingitemcodename
          @DosageUnit = dosageunit
          @DosageBeginTime = dosagebegintime
          @DosageEndTime = dosageendtime
          @DosageValue = dosagevalue
          @DeductValue = deductvalue
          @RemainValue = remainvalue
          @SdkAppId = sdkappid
          @AttrStr = attrstr
          @SheetName = sheetname
        end

        def deserialize(params)
          @Date = params['Date']
          @Uin = params['Uin']
          @DosageType = params['DosageType']
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @BillingItemCode = params['BillingItemCode']
          @SubBillingItemCode = params['SubBillingItemCode']
          @ProductCodeName = params['ProductCodeName']
          @SubProductCodeName = params['SubProductCodeName']
          @BillingItemCodeName = params['BillingItemCodeName']
          @SubBillingItemCodeName = params['SubBillingItemCodeName']
          @DosageUnit = params['DosageUnit']
          @DosageBeginTime = params['DosageBeginTime']
          @DosageEndTime = params['DosageEndTime']
          @DosageValue = params['DosageValue']
          @DeductValue = params['DeductValue']
          @RemainValue = params['RemainValue']
          @SdkAppId = params['SdkAppId']
          unless params['AttrStr'].nil?
            @AttrStr = []
            params['AttrStr'].each do |i|
              jsonobject_tmp = JsonObject.new
              jsonobject_tmp.deserialize(i)
              @AttrStr << jsonobject_tmp
            end
          end
          @SheetName = params['SheetName']
        end
      end

      # DescribeDosageDetailByDate请求参数结构体
      class DescribeDosageDetailByDateRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 查询账单开始日期，如 2019-01-01
        # @type StartDate: String
        # @param EndDate: 查询账单结束日期，如 2019-01-01， 时间跨度不超过7天
        # @type EndDate: String
        # @param ProductCode: 互动直播：
        # 10194   互动直播-核心机房           :
        # 10195   互动直播-边缘机房

        # cdn业务：
        # 102383：CDN静态加速流量(国内)
        # 102384：CDN静态加速带宽(国内)
        # 102385：CDN静态加速流量(海外)
        # 102386：CDN静态加速带宽(海外)

        # 100967：弹性公网IP-按流量计费
        # 101065：公网负载均衡-按流量计费

        # 视频直播
        # 10226 视频直播流量(国内)
        # 10227 视频直播带宽(国内)
        # 100763 视频直播流量(海外)
        # 100762 视频直播宽带(海外)

        # 仅支持以上产品
        # @type ProductCode: String
        # @param Domain: 查询域名 例如 www.qq.com
        # 非CDN业务查询时传入空字符串，返回的值为空
        # @type Domain: String
        # @param InstanceID: 1、如果为空，则返回EIP或CLB所有实例的明细；
        # 2、如果传入实例名，则返回该实例明细
        # @type InstanceID: String
        # @param PayerUin: 支付者的账号 ID（账号 ID 是用户在腾讯云的唯一账号标识），默认查询本账号账单，如集团管理账号需查询成员账号自付的账单，该字段需入参成员账号UIN
        # @type PayerUin: String

        attr_accessor :StartDate, :EndDate, :ProductCode, :Domain, :InstanceID, :PayerUin

        def initialize(startdate=nil, enddate=nil, productcode=nil, domain=nil, instanceid=nil, payeruin=nil)
          @StartDate = startdate
          @EndDate = enddate
          @ProductCode = productcode
          @Domain = domain
          @InstanceID = instanceid
          @PayerUin = payeruin
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ProductCode = params['ProductCode']
          @Domain = params['Domain']
          @InstanceID = params['InstanceID']
          @PayerUin = params['PayerUin']
        end
      end

      # DescribeDosageDetailByDate返回参数结构体
      class DescribeDosageDetailByDateResponse < TencentCloud::Common::AbstractModel
        # @param Unit: 计量单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param DetailSets: 用量数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailSets: Array
        # @param RetCode: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetCode: Integer
        # @param RetMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Unit, :DetailSets, :RetCode, :RetMsg, :RequestId

        def initialize(unit=nil, detailsets=nil, retcode=nil, retmsg=nil, requestid=nil)
          @Unit = unit
          @DetailSets = detailsets
          @RetCode = retcode
          @RetMsg = retmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Unit = params['Unit']
          unless params['DetailSets'].nil?
            @DetailSets = []
            params['DetailSets'].each do |i|
              detailset_tmp = DetailSet.new
              detailset_tmp.deserialize(i)
              @DetailSets << detailset_tmp
            end
          end
          @RetCode = params['RetCode']
          @RetMsg = params['RetMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDosageDetailList请求参数结构体
      class DescribeDosageDetailListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 用量起始时间，如：2023-02-01
        # @type StartTime: String
        # @param EndTime: 用量截止时间，如：2023-02-28
        # @type EndTime: String
        # @param ProductCode: 产品编码，已支持查询的产品如下：
        # p_ccc（云联络中心）
        # p_rav（实时音视频）
        # p_pstn（号码保护）
        # p_smh（智能媒资托管）
        # p_coding_devops（CODING DevOps）
        # p_dsa（全球IP应用加速）
        # @type ProductCode: String
        # @param Offset: 数据偏移量（从0开始）
        # @type Offset: Integer
        # @param Limit: 单次数据量（最大3000）
        # @type Limit: Integer
        # @param DosageType: 用量统计类型：用量明细的数据统计汇总周期类型，包括minute-按5分钟汇总、hour-按小时汇总、day-按天汇总、month-按月汇总、comm-其他，默认查询所有类型明细，目前各产品已支持的统计类型如下：
        # p_ccc（云联络中心）：comm、day
        # p_rav（实时音视频）：minute、day
        # p_pstn（号码保护）：comm
        # p_smh（智能媒资托管）：day
        # p_coding_devops（CODING DevOps）：comm、day
        # p_dsa（全球IP应用加速）：minute
        # @type DosageType: String

        attr_accessor :StartTime, :EndTime, :ProductCode, :Offset, :Limit, :DosageType

        def initialize(starttime=nil, endtime=nil, productcode=nil, offset=nil, limit=nil, dosagetype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ProductCode = productcode
          @Offset = offset
          @Limit = limit
          @DosageType = dosagetype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProductCode = params['ProductCode']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DosageType = params['DosageType']
        end
      end

      # DescribeDosageDetailList返回参数结构体
      class DescribeDosageDetailListResponse < TencentCloud::Common::AbstractModel
        # @param Record: 用量明细集合
        # @type Record: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Record, :RequestId

        def initialize(record=nil, requestid=nil)
          @Record = record
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Record'].nil?
            @Record = []
            params['Record'].each do |i|
              describedosagedetail_tmp = DescribeDosageDetail.new
              describedosagedetail_tmp.deserialize(i)
              @Record << describedosagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatherResource请求参数结构体
      class DescribeGatherResourceRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，以此类推
        # @type Offset: Integer
        # @param Month: 账单月份，格式为2024-02，不传默认当前月
        # @type Month: String
        # @param TreeNodeUniqKey: 分账单元唯一标识，用作筛选
        # @type TreeNodeUniqKey: String
        # @param GatherType: 资源目录类别，枚举值如下：
        # all - 全部
        # none - 未归集
        # @type GatherType: String
        # @param Sort: 排序字段，枚举值如下：
        # realCost  - 折后总价
        # cashPayAmount - 现金金额
        # voucherPayAmount - 代金券金额
        # incentivePayAmount  - 赠送金金额
        # transferPayAmount -分成金金额
        # @type Sort: String
        # @param SortType: 排序类型，枚举值如下：
        # asc - 升序
        # desc - 降序
        # @type SortType: String
        # @param BusinessCodes: 产品编码，用作筛选
        # @type BusinessCodes: Array
        # @param ProductCodes: 子产品编码，用作筛选
        # @type ProductCodes: Array
        # @param ItemCodes: 组件名称编码，用作筛选
        # @type ItemCodes: Array
        # @param RegionIds: 地域ID，用作筛选
        # @type RegionIds: Array
        # @param InstanceTypes: 实例类型编码，用作筛选
        # @type InstanceTypes: Array
        # @param PayModes: 计费模式编码，用作筛选
        # @type PayModes: Array
        # @param OperateUins: 操作者UIN，用作筛选
        # @type OperateUins: Array
        # @param OwnerUins: 使用者UIN，用作筛选
        # @type OwnerUins: Array
        # @param SearchKey: 模糊搜索：支持标签、资源id、资源别名
        # @type SearchKey: String
        # @param Tag: 标签，用作筛选
        # @type Tag: Array
        # @param ProjectIds: 项目ID，用作筛选
        # @type ProjectIds: Array
        # @param ActionTypes: 交易类型编码，用作筛选
        # @type ActionTypes: Array

        attr_accessor :Limit, :Offset, :Month, :TreeNodeUniqKey, :GatherType, :Sort, :SortType, :BusinessCodes, :ProductCodes, :ItemCodes, :RegionIds, :InstanceTypes, :PayModes, :OperateUins, :OwnerUins, :SearchKey, :Tag, :ProjectIds, :ActionTypes

        def initialize(limit=nil, offset=nil, month=nil, treenodeuniqkey=nil, gathertype=nil, sort=nil, sorttype=nil, businesscodes=nil, productcodes=nil, itemcodes=nil, regionids=nil, instancetypes=nil, paymodes=nil, operateuins=nil, owneruins=nil, searchkey=nil, tag=nil, projectids=nil, actiontypes=nil)
          @Limit = limit
          @Offset = offset
          @Month = month
          @TreeNodeUniqKey = treenodeuniqkey
          @GatherType = gathertype
          @Sort = sort
          @SortType = sorttype
          @BusinessCodes = businesscodes
          @ProductCodes = productcodes
          @ItemCodes = itemcodes
          @RegionIds = regionids
          @InstanceTypes = instancetypes
          @PayModes = paymodes
          @OperateUins = operateuins
          @OwnerUins = owneruins
          @SearchKey = searchkey
          @Tag = tag
          @ProjectIds = projectids
          @ActionTypes = actiontypes
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Month = params['Month']
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @GatherType = params['GatherType']
          @Sort = params['Sort']
          @SortType = params['SortType']
          @BusinessCodes = params['BusinessCodes']
          @ProductCodes = params['ProductCodes']
          @ItemCodes = params['ItemCodes']
          @RegionIds = params['RegionIds']
          @InstanceTypes = params['InstanceTypes']
          @PayModes = params['PayModes']
          @OperateUins = params['OperateUins']
          @OwnerUins = params['OwnerUins']
          @SearchKey = params['SearchKey']
          @Tag = params['Tag']
          @ProjectIds = params['ProjectIds']
          @ActionTypes = params['ActionTypes']
        end
      end

      # DescribeGatherResource返回参数结构体
      class DescribeGatherResourceResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordNum: Integer
        # @param GatherResourceSummary: 资源归集汇总
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatherResourceSummary: Array
        # @param LastUpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :GatherResourceSummary, :LastUpdateTime, :RequestId

        def initialize(recordnum=nil, gatherresourcesummary=nil, lastupdatetime=nil, requestid=nil)
          @RecordNum = recordnum
          @GatherResourceSummary = gatherresourcesummary
          @LastUpdateTime = lastupdatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['GatherResourceSummary'].nil?
            @GatherResourceSummary = []
            params['GatherResourceSummary'].each do |i|
              gatherresourcesummary_tmp = GatherResourceSummary.new
              gatherresourcesummary_tmp.deserialize(i)
              @GatherResourceSummary << gatherresourcesummary_tmp
            end
          end
          @LastUpdateTime = params['LastUpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSavingPlanCoverage请求参数结构体
      class DescribeSavingPlanCoverageRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 费用起始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 费用结束日期，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，以此类推
        # @type Offset: Integer
        # @param Limit: 数量，最大值为200
        # @type Limit: Integer
        # @param PeriodType: 取值包括1（缺省值）和2，1表示按天统计覆盖率，2表示按月统计覆盖率，此参数仅影响返回的RateSet聚合粒度，不影响返回的DetailSet
        # @type PeriodType: Integer

        attr_accessor :StartDate, :EndDate, :Offset, :Limit, :PeriodType

        def initialize(startdate=nil, enddate=nil, offset=nil, limit=nil, periodtype=nil)
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
          @PeriodType = periodtype
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PeriodType = params['PeriodType']
        end
      end

      # DescribeSavingPlanCoverage返回参数结构体
      class DescribeSavingPlanCoverageResponse < TencentCloud::Common::AbstractModel
        # @param DetailSet: 节省计划覆盖率明细数据
        # @type DetailSet: Array
        # @param RateSet: 节省计划覆盖率聚合数据
        # @type RateSet: Array
        # @param TotalCount: 查询命中的节省计划覆盖率明细数据总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailSet, :RateSet, :TotalCount, :RequestId

        def initialize(detailset=nil, rateset=nil, totalcount=nil, requestid=nil)
          @DetailSet = detailset
          @RateSet = rateset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              savingplancoveragedetail_tmp = SavingPlanCoverageDetail.new
              savingplancoveragedetail_tmp.deserialize(i)
              @DetailSet << savingplancoveragedetail_tmp
            end
          end
          unless params['RateSet'].nil?
            @RateSet = []
            params['RateSet'].each do |i|
              savingplancoveragerate_tmp = SavingPlanCoverageRate.new
              savingplancoveragerate_tmp.deserialize(i)
              @RateSet << savingplancoveragerate_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSavingPlanOverview请求参数结构体
      class DescribeSavingPlanOverviewRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始时间，格式yyyy-MM-dd 注：查询范围请勿超过6个月
        # @type StartDate: String
        # @param EndDate: 结束时间，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 每页数量，最大值为200
        # @type Limit: Integer

        attr_accessor :StartDate, :EndDate, :Offset, :Limit

        def initialize(startdate=nil, enddate=nil, offset=nil, limit=nil)
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSavingPlanOverview返回参数结构体
      class DescribeSavingPlanOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Overviews: 节省计划总览明细数据
        # @type Overviews: Array
        # @param Total: 查询命中的节省计划总览明细数据总条数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Overviews, :Total, :RequestId

        def initialize(overviews=nil, total=nil, requestid=nil)
          @Overviews = overviews
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Overviews'].nil?
            @Overviews = []
            params['Overviews'].each do |i|
              savingplanoverviewdetail_tmp = SavingPlanOverviewDetail.new
              savingplanoverviewdetail_tmp.deserialize(i)
              @Overviews << savingplanoverviewdetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSavingPlanResourceInfo请求参数结构体
      class DescribeSavingPlanResourceInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param CreateStartDate: 购买开始时间，格式yyyy-MM-dd
        # @type CreateStartDate: String
        # @param CreateEndDate: 购买结束时间，格式yyyy-MM-dd
        # @type CreateEndDate: String

        attr_accessor :Limit, :Offset, :CreateStartDate, :CreateEndDate

        def initialize(limit=nil, offset=nil, createstartdate=nil, createenddate=nil)
          @Limit = limit
          @Offset = offset
          @CreateStartDate = createstartdate
          @CreateEndDate = createenddate
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CreateStartDate = params['CreateStartDate']
          @CreateEndDate = params['CreateEndDate']
        end
      end

      # DescribeSavingPlanResourceInfo返回参数结构体
      class DescribeSavingPlanResourceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RequestId

        def initialize(total=nil, requestid=nil)
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSavingPlanUsage请求参数结构体
      class DescribeSavingPlanUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始时间，格式yyyy-MM-dd 注：查询范围请勿超过6个月
        # @type StartDate: String
        # @param EndDate: 结束时间，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 每页数量，最大值为200
        # @type Limit: Integer
        # @param TimeInterval: 查询结果数据的时间间隔
        # @type TimeInterval: String

        attr_accessor :StartDate, :EndDate, :Offset, :Limit, :TimeInterval

        def initialize(startdate=nil, enddate=nil, offset=nil, limit=nil, timeinterval=nil)
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
          @TimeInterval = timeinterval
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TimeInterval = params['TimeInterval']
        end
      end

      # DescribeSavingPlanUsage返回参数结构体
      class DescribeSavingPlanUsageResponse < TencentCloud::Common::AbstractModel
        # @param Usages: 节省计划使用率数据
        # @type Usages: Array
        # @param Total: 查询命中的节省计划总览明细数据总条数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Usages, :Total, :RequestId

        def initialize(usages=nil, total=nil, requestid=nil)
          @Usages = usages
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              savingplanusagedetail_tmp = SavingPlanUsageDetail.new
              savingplanusagedetail_tmp.deserialize(i)
              @Usages << savingplanusagedetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagList请求参数结构体
      class DescribeTagListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Offset: 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        # @type Offset: Integer
        # @param TagKey: 分账标签键，用作模糊搜索
        # @type TagKey: String
        # @param Status: 标签类型，枚举值：0普通标签，1分账标签，用作筛选，不传获取全部标签键
        # @type Status: Integer
        # @param OrderType: 排序方式，枚举值：asc排升序，desc排降序
        # @type OrderType: String

        attr_accessor :Limit, :Offset, :TagKey, :Status, :OrderType

        def initialize(limit=nil, offset=nil, tagkey=nil, status=nil, ordertype=nil)
          @Limit = limit
          @Offset = offset
          @TagKey = tagkey
          @Status = status
          @OrderType = ordertype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TagKey = params['TagKey']
          @Status = params['Status']
          @OrderType = params['OrderType']
        end
      end

      # DescribeTagList返回参数结构体
      class DescribeTagListResponse < TencentCloud::Common::AbstractModel
        # @param RecordNum: 总记录数
        # @type RecordNum: Integer
        # @param Data: 标签信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordNum, :Data, :RequestId

        def initialize(recordnum=nil, data=nil, requestid=nil)
          @RecordNum = recordnum
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordNum = params['RecordNum']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              tagdatainfo_tmp = TagDataInfo.new
              tagdatainfo_tmp.deserialize(i)
              @Data << tagdatainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVoucherInfo请求参数结构体
      class DescribeVoucherInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 一页多少条数据，默认是20条，最大不超过1000
        # @type Limit: Integer
        # @param Offset: 第多少页，默认是1
        # @type Offset: Integer
        # @param Status: 券状态：待使用：unUsed，已使用： used，已发货：delivered，已作废： cancel，已过期：overdue
        # @type Status: String
        # @param VoucherId: 代金券id
        # @type VoucherId: String
        # @param CodeId: 代金券订单id
        # @type CodeId: String
        # @param ProductCode: 商品码
        # @type ProductCode: String
        # @param ActivityId: 活动id
        # @type ActivityId: String
        # @param VoucherName: 代金券名称
        # @type VoucherName: String
        # @param TimeFrom: 发放开始时间,例：2021-01-01
        # @type TimeFrom: String
        # @param TimeTo: 发放结束时间，例：2021-01-01
        # @type TimeTo: String
        # @param SortField: 指定排序字段：BeginTime开始时间、EndTime到期时间、CreateTime创建时间
        # @type SortField: String
        # @param SortOrder: 指定升序降序：desc、asc
        # @type SortOrder: String
        # @param PayMode: 付费模式，postPay后付费/prePay预付费/riPay预留实例/""或者"*"表示全部模式，如果payMode为""或"*"，那么productCode与subProductCode必须传空
        # @type PayMode: String
        # @param PayScene: 付费场景PayMode=postPay时：spotpay-竞价实例,"settle account"-普通后付费PayMode=prePay时：purchase-包年包月新购，renew-包年包月续费（自动续费），modify-包年包月配置变更(变配）PayMode=riPay时：oneOffFee-预留实例预付，hourlyFee-预留实例每小时扣费，*-支持全部付费场景
        # @type PayScene: String
        # @param Operator: 操作人，默认就是用户uin
        # @type Operator: String
        # @param VoucherMainType: 代金券主类型 has_price 为有价现金券 no_price 为无价代金券
        # @type VoucherMainType: String
        # @param VoucherSubType: 代金券副类型 discount 为折扣券 deduct 为抵扣券
        # @type VoucherSubType: String

        attr_accessor :Limit, :Offset, :Status, :VoucherId, :CodeId, :ProductCode, :ActivityId, :VoucherName, :TimeFrom, :TimeTo, :SortField, :SortOrder, :PayMode, :PayScene, :Operator, :VoucherMainType, :VoucherSubType

        def initialize(limit=nil, offset=nil, status=nil, voucherid=nil, codeid=nil, productcode=nil, activityid=nil, vouchername=nil, timefrom=nil, timeto=nil, sortfield=nil, sortorder=nil, paymode=nil, payscene=nil, operator=nil, vouchermaintype=nil, vouchersubtype=nil)
          @Limit = limit
          @Offset = offset
          @Status = status
          @VoucherId = voucherid
          @CodeId = codeid
          @ProductCode = productcode
          @ActivityId = activityid
          @VoucherName = vouchername
          @TimeFrom = timefrom
          @TimeTo = timeto
          @SortField = sortfield
          @SortOrder = sortorder
          @PayMode = paymode
          @PayScene = payscene
          @Operator = operator
          @VoucherMainType = vouchermaintype
          @VoucherSubType = vouchersubtype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @VoucherId = params['VoucherId']
          @CodeId = params['CodeId']
          @ProductCode = params['ProductCode']
          @ActivityId = params['ActivityId']
          @VoucherName = params['VoucherName']
          @TimeFrom = params['TimeFrom']
          @TimeTo = params['TimeTo']
          @SortField = params['SortField']
          @SortOrder = params['SortOrder']
          @PayMode = params['PayMode']
          @PayScene = params['PayScene']
          @Operator = params['Operator']
          @VoucherMainType = params['VoucherMainType']
          @VoucherSubType = params['VoucherSubType']
        end
      end

      # DescribeVoucherInfo返回参数结构体
      class DescribeVoucherInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 券总数
        # @type TotalCount: Integer
        # @param TotalBalance: 总余额（微分）
        # @type TotalBalance: Integer
        # @param VoucherInfos: 代金券相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TotalBalance, :VoucherInfos, :RequestId

        def initialize(totalcount=nil, totalbalance=nil, voucherinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TotalBalance = totalbalance
          @VoucherInfos = voucherinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalBalance = params['TotalBalance']
          unless params['VoucherInfos'].nil?
            @VoucherInfos = []
            params['VoucherInfos'].each do |i|
              voucherinfos_tmp = VoucherInfos.new
              voucherinfos_tmp.deserialize(i)
              @VoucherInfos << voucherinfos_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVoucherUsageDetails请求参数结构体
      class DescribeVoucherUsageDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 一页多少条数据，默认是20条，最大不超过1000
        # @type Limit: Integer
        # @param Offset: 第多少页，默认是1
        # @type Offset: Integer
        # @param VoucherId: 代金券id
        # @type VoucherId: String
        # @param Operator: 操作人，默认就是用户uin
        # @type Operator: String

        attr_accessor :Limit, :Offset, :VoucherId, :Operator

        def initialize(limit=nil, offset=nil, voucherid=nil, operator=nil)
          @Limit = limit
          @Offset = offset
          @VoucherId = voucherid
          @Operator = operator
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @VoucherId = params['VoucherId']
          @Operator = params['Operator']
        end
      end

      # DescribeVoucherUsageDetails返回参数结构体
      class DescribeVoucherUsageDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 券总数
        # @type TotalCount: Integer
        # @param TotalUsedAmount: 总已用金额（微分）
        # @type TotalUsedAmount: Integer
        # @param UsageRecords: 代金券使用记录细节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsageRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TotalUsedAmount, :UsageRecords, :RequestId

        def initialize(totalcount=nil, totalusedamount=nil, usagerecords=nil, requestid=nil)
          @TotalCount = totalcount
          @TotalUsedAmount = totalusedamount
          @UsageRecords = usagerecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalUsedAmount = params['TotalUsedAmount']
          unless params['UsageRecords'].nil?
            @UsageRecords = []
            params['UsageRecords'].each do |i|
              usagerecords_tmp = UsageRecords.new
              usagerecords_tmp.deserialize(i)
              @UsageRecords << usagerecords_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 由时间和值组成的数据结构
      class DetailPoint < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Value: 值
        # @type Value: String

        attr_accessor :Time, :Value

        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 由域名和使用明细组成的数据结构
      class DetailSet < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DetailPoints: 使用数据明细
        # @type DetailPoints: Array
        # @param InstanceID: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String

        attr_accessor :Domain, :DetailPoints, :InstanceID

        def initialize(domain=nil, detailpoints=nil, instanceid=nil)
          @Domain = domain
          @DetailPoints = detailpoints
          @InstanceID = instanceid
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['DetailPoints'].nil?
            @DetailPoints = []
            params['DetailPoints'].each do |i|
              detailpoint_tmp = DetailPoint.new
              detailpoint_tmp.deserialize(i)
              @DetailPoints << detailpoint_tmp
            end
          end
          @InstanceID = params['InstanceID']
        end
      end

      # 经销账单明细数据对象
      class DistributionBillDetail < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品，例如：云服务器 CVM
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型，例如：云服务器 CVM-标准型 S1
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String
        # @param RegionName: 地域：资源所属地域，如华南地区（广州）
        # @type RegionName: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # @type ZoneName: String
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param ResourceName: 资源别名：用户在控制台为资源设置的名称，如果未设置，则默认为空
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型，如包年包月新购、包年包月续费、按量计费扣费等类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID：包年包月计费模式下订购的订单号
        # @type OrderId: String
        # @param BillId: 交易ID：结算扣费单号
        # @type BillId: String
        # @param PayTime: 扣费时间：结算扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间：产品服务开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间：产品服务结束使用时间
        # @type FeeEndTime: String
        # @param ComponentSet: 组件列表
        # @type ComponentSet: Array
        # @param OwnerUin: 使用者UIN：实际使用资源的账号 ID
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的 ID 或者角色 ID ）
        # @type OperateUin: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param PriceInfo: 价格属性：该组件除单价、时长外的其他影响折扣定价的属性信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceInfo: Array
        # @param AssociatedOrder: 关联交易单据ID：和本笔交易关联单据 ID，如，冲销订单，记录原订单、重结订单，退费单记录对应的原购买订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedOrder: :class:`Tencentcloud::Billing.v20180709.models.BillDetailAssociatedOrder`
        # @param Formula: 计算说明：特殊交易类型计费结算的详细计算说明，如退费及变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Formula: String
        # @param FormulaUrl: 计费规则：各产品详细的计费规则官网说明链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormulaUrl: String
        # @param BillMonth: 账单归属月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillMonth: String
        # @param BillDay: 账单归属日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDay: String

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :BillId, :PayTime, :FeeBeginTime, :FeeEndTime, :ComponentSet, :OwnerUin, :OperateUin, :Tags, :BusinessCode, :ProductCode, :ActionType, :RegionId, :ProjectId, :PriceInfo, :AssociatedOrder, :Formula, :FormulaUrl, :BillMonth, :BillDay

        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, billid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, componentset=nil, owneruin=nil, operateuin=nil, tags=nil, businesscode=nil, productcode=nil, actiontype=nil, regionid=nil, projectid=nil, priceinfo=nil, associatedorder=nil, formula=nil, formulaurl=nil, billmonth=nil, billday=nil)
          @BusinessCodeName = businesscodename
          @ProductCodeName = productcodename
          @PayModeName = paymodename
          @ProjectName = projectname
          @RegionName = regionname
          @ZoneName = zonename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ActionTypeName = actiontypename
          @OrderId = orderid
          @BillId = billid
          @PayTime = paytime
          @FeeBeginTime = feebegintime
          @FeeEndTime = feeendtime
          @ComponentSet = componentset
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @Tags = tags
          @BusinessCode = businesscode
          @ProductCode = productcode
          @ActionType = actiontype
          @RegionId = regionid
          @ProjectId = projectid
          @PriceInfo = priceinfo
          @AssociatedOrder = associatedorder
          @Formula = formula
          @FormulaUrl = formulaurl
          @BillMonth = billmonth
          @BillDay = billday
        end

        def deserialize(params)
          @BusinessCodeName = params['BusinessCodeName']
          @ProductCodeName = params['ProductCodeName']
          @PayModeName = params['PayModeName']
          @ProjectName = params['ProjectName']
          @RegionName = params['RegionName']
          @ZoneName = params['ZoneName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ActionTypeName = params['ActionTypeName']
          @OrderId = params['OrderId']
          @BillId = params['BillId']
          @PayTime = params['PayTime']
          @FeeBeginTime = params['FeeBeginTime']
          @FeeEndTime = params['FeeEndTime']
          unless params['ComponentSet'].nil?
            @ComponentSet = []
            params['ComponentSet'].each do |i|
              billdetailcomponent_tmp = BillDetailComponent.new
              billdetailcomponent_tmp.deserialize(i)
              @ComponentSet << billdetailcomponent_tmp
            end
          end
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              billtaginfo_tmp = BillTagInfo.new
              billtaginfo_tmp.deserialize(i)
              @Tags << billtaginfo_tmp
            end
          end
          @BusinessCode = params['BusinessCode']
          @ProductCode = params['ProductCode']
          @ActionType = params['ActionType']
          @RegionId = params['RegionId']
          @ProjectId = params['ProjectId']
          @PriceInfo = params['PriceInfo']
          unless params['AssociatedOrder'].nil?
            @AssociatedOrder = BillDetailAssociatedOrder.new
            @AssociatedOrder.deserialize(params['AssociatedOrder'])
          end
          @Formula = params['Formula']
          @FormulaUrl = params['FormulaUrl']
          @BillMonth = params['BillMonth']
          @BillDay = params['BillDay']
        end
      end

      # 不适用商品信息
      class ExcludedProducts < TencentCloud::Common::AbstractModel
        # @param GoodsName: 不适用商品名称
        # @type GoodsName: String
        # @param PayMode: postPay后付费/prePay预付费/riPay预留实例/空字符串或者"*"表示全部模式。
        # @type PayMode: String

        attr_accessor :GoodsName, :PayMode

        def initialize(goodsname=nil, paymode=nil)
          @GoodsName = goodsname
          @PayMode = paymode
        end

        def deserialize(params)
          @GoodsName = params['GoodsName']
          @PayMode = params['PayMode']
        end
      end

      # 资源归集汇总
      class GatherResourceSummary < TencentCloud::Common::AbstractModel
        # @param PayerUin: 支付者 UIN：支付者的账号 ID，账号 ID 是用户在腾讯云的唯一账号标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param OwnerUin: 使用者 UIN：实际使用资源的账号 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OperateUin: 操作者 UIN：操作者账号 ID（预付费资源下单或后付费操作开通资源账号的ID或者角色 ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param InstanceType: 实例类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceTypeName: 实例类型：购买的产品服务对应的实例类型，包括资源包、RI、SP、竞价实例。常规实例默认展示“-”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeName: String
        # @param ResourceId: 资源ID：不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID； 若该产品被分拆，则展示产品分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 实例名称：用户在控制台为资源设置的名称，如未设置默认为空；若该产品被分拆，则展示分拆产品分拆后的分拆项资源别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param TreeNodeUniqKey: 分账单元唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKey: String
        # @param TreeNodeUniqKeyName: 分账单元名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TreeNodeUniqKeyName: String
        # @param RuleId: 资源命中公摊规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 资源命中公摊规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param BusinessCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：用户所采购的各类云产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCodeName: String
        # @param ItemCode: 组件名称编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCode: String
        # @param ItemCodeName: 组件名称：用户购买的产品或服务，所包含的具体组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCodeName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionName: 地域名称：资源所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param Tag: 分账标签：资源绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param RealTotalCost: 优惠后总价：优惠后总价 =（原价 - 预留实例抵扣原价 - 节省计划抵扣原价）* 折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出(元)：通过现金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param VoucherPayAmount: 代金券支出(元)：使用各类优惠券（如代金券、现金券等）支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出(元)：使用赠送金支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param TransferPayAmount: 分成账户支出(元)：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param AllocationType: 费用归集类型：费用来源类型，分摊、归集、未分配
        # 0 - 分摊
        # 1 - 归集
        # -1 - 未分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllocationType: Integer
        # @param BelongTreeNodeUniqKey: 当前归属单元信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongTreeNodeUniqKey: :class:`Tencentcloud::Billing.v20180709.models.AllocationTreeNode`
        # @param BelongRule: 当前资源命中公摊规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongRule: :class:`Tencentcloud::Billing.v20180709.models.AllocationRule`
        # @param OtherTreeNodeUniqKeys: 其它归属单元信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherTreeNodeUniqKeys: Array
        # @param OtherRules: 其他命中规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherRules: Array
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductCodeName: 子产品名称：用户采购的具体产品细分类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCodeName: String
        # @param PayMode: 计费模式编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param PayModeName: 计费模式：资源的计费模式，区分为包年包月和按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayModeName: String
        # @param ActionType: 交易类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionTypeName: 交易类型：明细交易类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionTypeName: String
        # @param SplitItemId: 分拆项 ID：涉及分拆产品的分拆后的分拆项 ID，如 COS 桶 ID，CDN 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemId: String
        # @param SplitItemName: 分拆项名称：涉及分拆产品的分拆后的分拆项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitItemName: String

        attr_accessor :PayerUin, :OwnerUin, :OperateUin, :InstanceType, :InstanceTypeName, :ResourceId, :ResourceName, :TreeNodeUniqKey, :TreeNodeUniqKeyName, :RuleId, :RuleName, :BusinessCode, :BusinessCodeName, :ItemCode, :ItemCodeName, :RegionId, :RegionName, :Tag, :RealTotalCost, :CashPayAmount, :VoucherPayAmount, :IncentivePayAmount, :TransferPayAmount, :AllocationType, :BelongTreeNodeUniqKey, :BelongRule, :OtherTreeNodeUniqKeys, :OtherRules, :ProjectId, :ProjectName, :ProductCode, :ProductCodeName, :PayMode, :PayModeName, :ActionType, :ActionTypeName, :SplitItemId, :SplitItemName
        extend Gem::Deprecate
        deprecate :SplitItemId, :none, 2024, 4
        deprecate :SplitItemId=, :none, 2024, 4
        deprecate :SplitItemName, :none, 2024, 4
        deprecate :SplitItemName=, :none, 2024, 4

        def initialize(payeruin=nil, owneruin=nil, operateuin=nil, instancetype=nil, instancetypename=nil, resourceid=nil, resourcename=nil, treenodeuniqkey=nil, treenodeuniqkeyname=nil, ruleid=nil, rulename=nil, businesscode=nil, businesscodename=nil, itemcode=nil, itemcodename=nil, regionid=nil, regionname=nil, tag=nil, realtotalcost=nil, cashpayamount=nil, voucherpayamount=nil, incentivepayamount=nil, transferpayamount=nil, allocationtype=nil, belongtreenodeuniqkey=nil, belongrule=nil, othertreenodeuniqkeys=nil, otherrules=nil, projectid=nil, projectname=nil, productcode=nil, productcodename=nil, paymode=nil, paymodename=nil, actiontype=nil, actiontypename=nil, splititemid=nil, splititemname=nil)
          @PayerUin = payeruin
          @OwnerUin = owneruin
          @OperateUin = operateuin
          @InstanceType = instancetype
          @InstanceTypeName = instancetypename
          @ResourceId = resourceid
          @ResourceName = resourcename
          @TreeNodeUniqKey = treenodeuniqkey
          @TreeNodeUniqKeyName = treenodeuniqkeyname
          @RuleId = ruleid
          @RuleName = rulename
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @ItemCode = itemcode
          @ItemCodeName = itemcodename
          @RegionId = regionid
          @RegionName = regionname
          @Tag = tag
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @TransferPayAmount = transferpayamount
          @AllocationType = allocationtype
          @BelongTreeNodeUniqKey = belongtreenodeuniqkey
          @BelongRule = belongrule
          @OtherTreeNodeUniqKeys = othertreenodeuniqkeys
          @OtherRules = otherrules
          @ProjectId = projectid
          @ProjectName = projectname
          @ProductCode = productcode
          @ProductCodeName = productcodename
          @PayMode = paymode
          @PayModeName = paymodename
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @SplitItemId = splititemid
          @SplitItemName = splititemname
        end

        def deserialize(params)
          @PayerUin = params['PayerUin']
          @OwnerUin = params['OwnerUin']
          @OperateUin = params['OperateUin']
          @InstanceType = params['InstanceType']
          @InstanceTypeName = params['InstanceTypeName']
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @TreeNodeUniqKey = params['TreeNodeUniqKey']
          @TreeNodeUniqKeyName = params['TreeNodeUniqKeyName']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @ItemCode = params['ItemCode']
          @ItemCodeName = params['ItemCodeName']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              billtag_tmp = BillTag.new
              billtag_tmp.deserialize(i)
              @Tag << billtag_tmp
            end
          end
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @AllocationType = params['AllocationType']
          unless params['BelongTreeNodeUniqKey'].nil?
            @BelongTreeNodeUniqKey = AllocationTreeNode.new
            @BelongTreeNodeUniqKey.deserialize(params['BelongTreeNodeUniqKey'])
          end
          unless params['BelongRule'].nil?
            @BelongRule = AllocationRule.new
            @BelongRule.deserialize(params['BelongRule'])
          end
          unless params['OtherTreeNodeUniqKeys'].nil?
            @OtherTreeNodeUniqKeys = []
            params['OtherTreeNodeUniqKeys'].each do |i|
              allocationtreenode_tmp = AllocationTreeNode.new
              allocationtreenode_tmp.deserialize(i)
              @OtherTreeNodeUniqKeys << allocationtreenode_tmp
            end
          end
          unless params['OtherRules'].nil?
            @OtherRules = []
            params['OtherRules'].each do |i|
              allocationrule_tmp = AllocationRule.new
              allocationrule_tmp.deserialize(i)
              @OtherRules << allocationrule_tmp
            end
          end
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProductCode = params['ProductCode']
          @ProductCodeName = params['ProductCodeName']
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @SplitItemId = params['SplitItemId']
          @SplitItemName = params['SplitItemName']
        end
      end

      # Json对象
      class JsonObject < TencentCloud::Common::AbstractModel
        # @param Key: key值
        # @type Key: String
        # @param Value: value值
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # PayDeals请求参数结构体
      class PayDealsRequest < TencentCloud::Common::AbstractModel
        # @param OrderIds: 需要支付的一个或者多个子订单号，与BigDealIds字段两者必须且仅传一个参数
        # @type OrderIds: Array
        # @param AutoVoucher: 是否自动使用代金券,1:是,0否,默认0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表,目前仅支持指定一张代金券
        # @type VoucherIds: Array
        # @param BigDealIds: 需要支付的一个或者多个大订单号，与OrderIds字段两者必须且仅传一个参数
        # @type BigDealIds: Array

        attr_accessor :OrderIds, :AutoVoucher, :VoucherIds, :BigDealIds

        def initialize(orderids=nil, autovoucher=nil, voucherids=nil, bigdealids=nil)
          @OrderIds = orderids
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @BigDealIds = bigdealids
        end

        def deserialize(params)
          @OrderIds = params['OrderIds']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @BigDealIds = params['BigDealIds']
        end
      end

      # PayDeals返回参数结构体
      class PayDealsResponse < TencentCloud::Common::AbstractModel
        # @param OrderIds: 此次操作支付成功的子订单号数组
        # @type OrderIds: Array
        # @param ResourceIds: 此次操作支付成功的资源Id数组
        # @type ResourceIds: Array
        # @param BigDealIds: 此次操作支付成功的大订单号数组
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderIds, :ResourceIds, :BigDealIds, :RequestId

        def initialize(orderids=nil, resourceids=nil, bigdealids=nil, requestid=nil)
          @OrderIds = orderids
          @ResourceIds = resourceids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderIds = params['OrderIds']
          @ResourceIds = params['ResourceIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 按计费模式汇总消费详情
      class PayModeSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param PayMode: 计费模式编码
        # @type PayMode: String
        # @param PayModeName: 计费模式：区分为包年包月和按量计费
        # @type PayModeName: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param Detail: 按交易类型汇总消费详情
        # @type Detail: Array

        attr_accessor :PayMode, :PayModeName, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :TotalCost, :Detail

        def initialize(paymode=nil, paymodename=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, totalcost=nil, detail=nil)
          @PayMode = paymode
          @PayModeName = paymodename
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @TotalCost = totalcost
          @Detail = detail
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @TotalCost = params['TotalCost']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              actionsummaryoverviewitem_tmp = ActionSummaryOverviewItem.new
              actionsummaryoverviewitem_tmp.deserialize(i)
              @Detail << actionsummaryoverviewitem_tmp
            end
          end
        end
      end

      # 商品详细信息
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param Name: 商品详情名称标识
        # @type Name: String
        # @param Value: 商品详情
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

      # 按项目汇总消费详情
      class ProjectSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称：资源归属的项目，用户在控制台给资源自主分配项目，未分配则是默认项目
        # @type ProjectName: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :ProjectId, :ProjectName, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :BillMonth, :TotalCost

        def initialize(projectid=nil, projectname=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, billmonth=nil, totalcost=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
        end
      end

      # 按地域汇总消费详情
      class RegionSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param RegionName: 地域名称：资源所属地域，例如华南地区（广州）
        # @type RegionName: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # @type TransferPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :RegionId, :RegionName, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :BillMonth, :TotalCost

        def initialize(regionid=nil, regionname=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, billmonth=nil, totalcost=nil)
          @RegionId = regionid
          @RegionName = regionname
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
        end
      end

      # 节省计划覆盖率数据
      class SavingPlanCoverageDetail < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ProductCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param SubProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCode: String
        # @param StartDate: 费用起始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 费用结束日期，格式yyyy-MM-dd，目前与StartDate相等
        # @type EndDate: String
        # @param SpCoveredAmount: 节省计划覆盖金额（即节省计划支付金额）
        # @type SpCoveredAmount: Float
        # @param SpUncoveredAmount: 节省计划未覆盖金额（即优惠后总价）
        # @type SpUncoveredAmount: Float
        # @param TotalRealAmount: 总支出（即节省计划未覆盖金额 + 节省计划覆盖金额）
        # @type TotalRealAmount: Float
        # @param ExpectedAmount: 按量计费预期金额（即折前价 * 折扣）
        # @type ExpectedAmount: Float
        # @param SpCoverage: 覆盖率结果，取值[0, 100]
        # @type SpCoverage: Float

        attr_accessor :ResourceId, :RegionId, :ProductCode, :SubProductCode, :StartDate, :EndDate, :SpCoveredAmount, :SpUncoveredAmount, :TotalRealAmount, :ExpectedAmount, :SpCoverage

        def initialize(resourceid=nil, regionid=nil, productcode=nil, subproductcode=nil, startdate=nil, enddate=nil, spcoveredamount=nil, spuncoveredamount=nil, totalrealamount=nil, expectedamount=nil, spcoverage=nil)
          @ResourceId = resourceid
          @RegionId = regionid
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @StartDate = startdate
          @EndDate = enddate
          @SpCoveredAmount = spcoveredamount
          @SpUncoveredAmount = spuncoveredamount
          @TotalRealAmount = totalrealamount
          @ExpectedAmount = expectedamount
          @SpCoverage = spcoverage
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @RegionId = params['RegionId']
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @SpCoveredAmount = params['SpCoveredAmount']
          @SpUncoveredAmount = params['SpUncoveredAmount']
          @TotalRealAmount = params['TotalRealAmount']
          @ExpectedAmount = params['ExpectedAmount']
          @SpCoverage = params['SpCoverage']
        end
      end

      # 节省计划覆盖率聚合数据
      class SavingPlanCoverageRate < TencentCloud::Common::AbstractModel
        # @param DatePoint: 聚合时间维度，按天聚合格式为yyyy-MM-dd，按月聚合格式为yyyy-MM
        # @type DatePoint: String
        # @param Rate: 覆盖率结果，取值[0, 100]
        # @type Rate: Float

        attr_accessor :DatePoint, :Rate

        def initialize(datepoint=nil, rate=nil)
          @DatePoint = datepoint
          @Rate = rate
        end

        def deserialize(params)
          @DatePoint = params['DatePoint']
          @Rate = params['Rate']
        end
      end

      # 节省计划总览明细数据
      class SavingPlanOverviewDetail < TencentCloud::Common::AbstractModel
        # @param SpType: 节省计划类型
        # @type SpType: String
        # @param PayType: 支付类型
        # @type PayType: Integer
        # @param PayAmount: 支付金额（单位：元）
        # @type PayAmount: String
        # @param StartTime: 开始时间 yyyy-mm-dd HH:mm:ss格式
        # @type StartTime: String
        # @param EndTime: 结束时间 yyyy-mm-dd HH:mm:ss格式
        # @type EndTime: String
        # @param BuyTime: 购买时间 yyyy-mm-dd HH:mm:ss格式
        # @type BuyTime: String
        # @param Status: 状态
        # @type Status: Integer
        # @param SavingAmount: 累计节省金额（单位：元）
        # @type SavingAmount: String
        # @param Region: 地域
        # @type Region: Array

        attr_accessor :SpType, :PayType, :PayAmount, :StartTime, :EndTime, :BuyTime, :Status, :SavingAmount, :Region

        def initialize(sptype=nil, paytype=nil, payamount=nil, starttime=nil, endtime=nil, buytime=nil, status=nil, savingamount=nil, region=nil)
          @SpType = sptype
          @PayType = paytype
          @PayAmount = payamount
          @StartTime = starttime
          @EndTime = endtime
          @BuyTime = buytime
          @Status = status
          @SavingAmount = savingamount
          @Region = region
        end

        def deserialize(params)
          @SpType = params['SpType']
          @PayType = params['PayType']
          @PayAmount = params['PayAmount']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BuyTime = params['BuyTime']
          @Status = params['Status']
          @SavingAmount = params['SavingAmount']
          @Region = params['Region']
        end
      end

      # 节省计划使用率数据
      class SavingPlanUsageDetail < TencentCloud::Common::AbstractModel
        # @param SpType: 节省计划类型
        # @type SpType: String
        # @param Status: 节省计划状态
        # @type Status: Integer
        # @param DeductAmount: 累计抵扣的金额（单位：元）
        # @type DeductAmount: String
        # @param PromiseAmount: 累计承诺消费金额（单位：元）
        # @type PromiseAmount: String
        # @param NetSavings: 累计净节省金额（单位：元）
        # @type NetSavings: String
        # @param UtilizationRate: 使用率
        # @type UtilizationRate: Float
        # @param LossAmount: 累计流失金额（单位：元）
        # @type LossAmount: String
        # @param DosageAmount: 累计按量计费预期金额（单位：元）
        # @type DosageAmount: String
        # @param CostAmount: 累计成本金额（单位：元）
        # @type CostAmount: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array

        attr_accessor :SpType, :Status, :DeductAmount, :PromiseAmount, :NetSavings, :UtilizationRate, :LossAmount, :DosageAmount, :CostAmount, :Region

        def initialize(sptype=nil, status=nil, deductamount=nil, promiseamount=nil, netsavings=nil, utilizationrate=nil, lossamount=nil, dosageamount=nil, costamount=nil, region=nil)
          @SpType = sptype
          @Status = status
          @DeductAmount = deductamount
          @PromiseAmount = promiseamount
          @NetSavings = netsavings
          @UtilizationRate = utilizationrate
          @LossAmount = lossamount
          @DosageAmount = dosageamount
          @CostAmount = costamount
          @Region = region
        end

        def deserialize(params)
          @SpType = params['SpType']
          @Status = params['Status']
          @DeductAmount = params['DeductAmount']
          @PromiseAmount = params['PromiseAmount']
          @NetSavings = params['NetSavings']
          @UtilizationRate = params['UtilizationRate']
          @LossAmount = params['LossAmount']
          @DosageAmount = params['DosageAmount']
          @CostAmount = params['CostAmount']
          @Region = params['Region']
        end
      end

      # 账单多维度汇总消费详情
      class SummaryDetail < TencentCloud::Common::AbstractModel
        # @param GroupKey: 账单维度编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupKey: String
        # @param GroupValue: 账单维度值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupValue: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param RealTotalCost: 优惠后总价
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param Business: 产品汇总信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: Array

        attr_accessor :GroupKey, :GroupValue, :TotalCost, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :Business

        def initialize(groupkey=nil, groupvalue=nil, totalcost=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, business=nil)
          @GroupKey = groupkey
          @GroupValue = groupvalue
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @Business = business
        end

        def deserialize(params)
          @GroupKey = params['GroupKey']
          @GroupValue = params['GroupValue']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          unless params['Business'].nil?
            @Business = []
            params['Business'].each do |i|
              businesssummaryinfo_tmp = BusinessSummaryInfo.new
              businesssummaryinfo_tmp.deserialize(i)
              @Business << businesssummaryinfo_tmp
            end
          end
        end
      end

      # 总数
      class SummaryTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 优惠后总价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String

        attr_accessor :RealTotalCost, :TotalCost

        def initialize(realtotalcost=nil, totalcost=nil)
          @RealTotalCost = realtotalcost
          @TotalCost = totalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @TotalCost = params['TotalCost']
        end
      end

      # 标签信息
      class TagDataInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 分账标签键
        # @type TagKey: String
        # @param Status: 标签类型，0普通标签，1分账标签
        # @type Status: Integer
        # @param UpdateTime: 设置分账标签时间，普通标签不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :TagKey, :Status, :UpdateTime

        def initialize(tagkey=nil, status=nil, updatetime=nil)
          @TagKey = tagkey
          @Status = status
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 按标签汇总消费详情
      class TagSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCostRatio: String
        # @param RealTotalCost: 优惠后总价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param CashPayAmount: 现金账户支出：通过现金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支出：使用赠送金支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 优惠券支出：使用各类优惠券（如代金券、现金券等）支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金账户支出：通过分成金账户支付的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String

        attr_accessor :TagValue, :RealTotalCostRatio, :RealTotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount, :TotalCost

        def initialize(tagvalue=nil, realtotalcostratio=nil, realtotalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil, totalcost=nil)
          @TagValue = tagvalue
          @RealTotalCostRatio = realtotalcostratio
          @RealTotalCost = realtotalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
          @TotalCost = totalcost
        end

        def deserialize(params)
          @TagValue = params['TagValue']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @RealTotalCost = params['RealTotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
          @TotalCost = params['TotalCost']
        end
      end

      # 购买商品信息
      class UsageDetails < TencentCloud::Common::AbstractModel
        # @param ProductName: 商品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param SubProductName: 商品细节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductName: String

        attr_accessor :ProductName, :SubProductName

        def initialize(productname=nil, subproductname=nil)
          @ProductName = productname
          @SubProductName = subproductname
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @SubProductName = params['SubProductName']
        end
      end

      # 使用记录
      class UsageRecords < TencentCloud::Common::AbstractModel
        # @param UsedAmount: 使用金额（微分）
        # @type UsedAmount: Integer
        # @param UsedTime: 使用时间
        # @type UsedTime: String
        # @param UsageDetails: 使用记录细节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsageDetails: Array

        attr_accessor :UsedAmount, :UsedTime, :UsageDetails

        def initialize(usedamount=nil, usedtime=nil, usagedetails=nil)
          @UsedAmount = usedamount
          @UsedTime = usedtime
          @UsageDetails = usagedetails
        end

        def deserialize(params)
          @UsedAmount = params['UsedAmount']
          @UsedTime = params['UsedTime']
          unless params['UsageDetails'].nil?
            @UsageDetails = []
            params['UsageDetails'].each do |i|
              usagedetails_tmp = UsageDetails.new
              usagedetails_tmp.deserialize(i)
              @UsageDetails << usagedetails_tmp
            end
          end
        end
      end

      # 代金券相关信息
      class VoucherInfos < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 代金券拥有者
        # @type OwnerUin: String
        # @param Status: 券状态：待使用：unUsed，已使用： used，已发货：delivered，已作废： cancel，已过期：overdue
        # @type Status: String
        # @param NominalValue: 代金券面额（微分）
        # @type NominalValue: Integer
        # @param Balance: 剩余金额（微分）
        # @type Balance: Integer
        # @param VoucherId: 代金券id
        # @type VoucherId: String
        # @param PayMode: postPay后付费/prePay预付费/riPay预留实例/空字符串或者'*'表示全部模式
        # @type PayMode: String
        # @param PayScene: 付费场景PayMode=postPay时：spotpay-竞价实例,"settle account"-普通后付费PayMode=prePay时：purchase-包年包月新购，renew-包年包月续费（自动续费），modify-包年包月配置变更(变配）PayMode=riPay时：oneOffFee-预留实例预付，hourlyFee-预留实例每小时扣费，*-支持全部付费场景
        # @type PayScene: String
        # @param BeginTime: 有效期生效时间
        # @type BeginTime: String
        # @param EndTime: 有效期截止时间
        # @type EndTime: String
        # @param ApplicableProducts: 适用商品信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicableProducts: :class:`Tencentcloud::Billing.v20180709.models.ApplicableProducts`
        # @param ExcludedProducts: 不适用商品信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludedProducts: Array

        attr_accessor :OwnerUin, :Status, :NominalValue, :Balance, :VoucherId, :PayMode, :PayScene, :BeginTime, :EndTime, :ApplicableProducts, :ExcludedProducts

        def initialize(owneruin=nil, status=nil, nominalvalue=nil, balance=nil, voucherid=nil, paymode=nil, payscene=nil, begintime=nil, endtime=nil, applicableproducts=nil, excludedproducts=nil)
          @OwnerUin = owneruin
          @Status = status
          @NominalValue = nominalvalue
          @Balance = balance
          @VoucherId = voucherid
          @PayMode = paymode
          @PayScene = payscene
          @BeginTime = begintime
          @EndTime = endtime
          @ApplicableProducts = applicableproducts
          @ExcludedProducts = excludedproducts
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @Status = params['Status']
          @NominalValue = params['NominalValue']
          @Balance = params['Balance']
          @VoucherId = params['VoucherId']
          @PayMode = params['PayMode']
          @PayScene = params['PayScene']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          unless params['ApplicableProducts'].nil?
            @ApplicableProducts = ApplicableProducts.new
            @ApplicableProducts.deserialize(params['ApplicableProducts'])
          end
          unless params['ExcludedProducts'].nil?
            @ExcludedProducts = []
            params['ExcludedProducts'].each do |i|
              excludedproducts_tmp = ExcludedProducts.new
              excludedproducts_tmp.deserialize(i)
              @ExcludedProducts << excludedproducts_tmp
            end
          end
        end
      end

    end
  end
end

