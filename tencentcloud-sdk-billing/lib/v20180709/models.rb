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
        # @param ActionType: 交易类型：包年包月新购/续费/升降配/退款、按量计费扣费、调账补偿/扣费等类型
        # @type ActionType: String
        # @param ActionTypeName: 交易类型名称
        # @type ActionTypeName: String
        # @param RealTotalCost: 实际花费
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String

        attr_accessor :ActionType, :ActionTypeName, :RealTotalCost, :RealTotalCostRatio, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :BillMonth, :TotalCost
        
        def initialize(actiontype=nil, actiontypename=nil, realtotalcost=nil, realtotalcostratio=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, billmonth=nil, totalcost=nil)
          @ActionType = actiontype
          @ActionTypeName = actiontypename
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @ActionTypeName = params['ActionTypeName']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
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

      # 账单明细数据对象
      class BillDetail < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：云产品大类，如云服务器CVM、云数据库MySQL
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：云产品子类，如云服务器CVM-标准型S1
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目:资源所属项目
        # @type ProjectName: String
        # @param RegionName: 区域：资源所属地域，如华南地区（广州）
        # @type RegionName: String
        # @param ZoneName: 可用区：资源所属可用区，如广州三区
        # @type ZoneName: String
        # @param ResourceId: 资源实例ID
        # @type ResourceId: String
        # @param ResourceName: 实例名称
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID
        # @type OrderId: String
        # @param BillId: 交易ID
        # @type BillId: String
        # @param PayTime: 扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间
        # @type FeeEndTime: String
        # @param ComponentSet: 组件列表
        # @type ComponentSet: Array
        # @param PayerUin: 支付者UIN
        # @type PayerUin: String
        # @param OwnerUin: 使用者UIN
        # @type OwnerUin: String
        # @param OperateUin: 操作者UIN
        # @type OperateUin: String
        # @param Tags: Tag 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param BusinessCode: 产品名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param ProductCode: 子产品名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ActionType: 交易类型代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param RegionId: 区域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param ProjectId: 项目ID:资源所属项目ID
        # @type ProjectId: Integer

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :BillId, :PayTime, :FeeBeginTime, :FeeEndTime, :ComponentSet, :PayerUin, :OwnerUin, :OperateUin, :Tags, :BusinessCode, :ProductCode, :ActionType, :RegionId, :ProjectId
        
        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, billid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, componentset=nil, payeruin=nil, owneruin=nil, operateuin=nil, tags=nil, businesscode=nil, productcode=nil, actiontype=nil, regionid=nil, projectid=nil)
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
        end
      end

      # 账单明细组件对象
      class BillDetailComponent < TencentCloud::Common::AbstractModel
        # @param ComponentCodeName: 组件类型:资源组件类型的名称，如内存、硬盘等
        # @type ComponentCodeName: String
        # @param ItemCodeName: 组件名称:资源组件的名称，如云数据库MySQL-内存等
        # @type ItemCodeName: String
        # @param SinglePrice: 组件刊例价:资源组件的原始价格，保持原始粒度
        # @type SinglePrice: String
        # @param SpecifiedPrice: 组件指定价
        # @type SpecifiedPrice: String
        # @param PriceUnit: 价格单位
        # @type PriceUnit: String
        # @param UsedAmount: 组件用量
        # @type UsedAmount: String
        # @param UsedAmountUnit: 组件用量单位
        # @type UsedAmountUnit: String
        # @param TimeSpan: 使用时长
        # @type TimeSpan: String
        # @param TimeUnitName: 时长单位
        # @type TimeUnitName: String
        # @param Cost: 组件原价
        # @type Cost: String
        # @param Discount: 折扣率
        # @type Discount: String
        # @param ReduceType: 优惠类型
        # @type ReduceType: String
        # @param RealCost: 优惠后总价
        # @type RealCost: String
        # @param VoucherPayAmount: 代金券支付金额
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金支付金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支付金额
        # @type IncentivePayAmount: String
        # @param ItemCode: 组件类型代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemCode: String
        # @param ComponentCode: 组件名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComponentCode: String
        # @param ContractPrice: 合同价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractPrice: String
        # @param InstanceType: 资源包、预留实例、节省计划、竞价实例这四类特殊实例本身的扣费行为，此字段体现对应的实例类型。枚举值如下：
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param RiTimeSpan: 预留实例抵扣的使用时长，时长单位与被抵扣的时长单位保持一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiTimeSpan: String
        # @param OriginalCostWithRI: 按组件原价的口径换算的预留实例抵扣金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCostWithRI: String
        # @param SPDeductionRate: 节省计划可用余额额度范围内，节省计划对于此组件打的折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPDeductionRate: String
        # @param SPDeduction: 节省计划抵扣的SP包面值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SPDeduction: String
        # @param OriginalCostWithSP: 按组件原价的口径换算的节省计划抵扣金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCostWithSP: String
        # @param BlendedDiscount: 综合了官网折扣、预留实例抵扣、节省计划抵扣的混合折扣率。若没有预留实例抵扣、节省计划抵扣,混合折扣率等于折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlendedDiscount: String

        attr_accessor :ComponentCodeName, :ItemCodeName, :SinglePrice, :SpecifiedPrice, :PriceUnit, :UsedAmount, :UsedAmountUnit, :TimeSpan, :TimeUnitName, :Cost, :Discount, :ReduceType, :RealCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount, :ItemCode, :ComponentCode, :ContractPrice, :InstanceType, :RiTimeSpan, :OriginalCostWithRI, :SPDeductionRate, :SPDeduction, :OriginalCostWithSP, :BlendedDiscount
        
        def initialize(componentcodename=nil, itemcodename=nil, singleprice=nil, specifiedprice=nil, priceunit=nil, usedamount=nil, usedamountunit=nil, timespan=nil, timeunitname=nil, cost=nil, discount=nil, reducetype=nil, realcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil, itemcode=nil, componentcode=nil, contractprice=nil, instancetype=nil, ritimespan=nil, originalcostwithri=nil, spdeductionrate=nil, spdeduction=nil, originalcostwithsp=nil, blendeddiscount=nil)
          @ComponentCodeName = componentcodename
          @ItemCodeName = itemcodename
          @SinglePrice = singleprice
          @SpecifiedPrice = specifiedprice
          @PriceUnit = priceunit
          @UsedAmount = usedamount
          @UsedAmountUnit = usedamountunit
          @TimeSpan = timespan
          @TimeUnitName = timeunitname
          @Cost = cost
          @Discount = discount
          @ReduceType = reducetype
          @RealCost = realcost
          @VoucherPayAmount = voucherpayamount
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
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
        end

        def deserialize(params)
          @ComponentCodeName = params['ComponentCodeName']
          @ItemCodeName = params['ItemCodeName']
          @SinglePrice = params['SinglePrice']
          @SpecifiedPrice = params['SpecifiedPrice']
          @PriceUnit = params['PriceUnit']
          @UsedAmount = params['UsedAmount']
          @UsedAmountUnit = params['UsedAmountUnit']
          @TimeSpan = params['TimeSpan']
          @TimeUnitName = params['TimeUnitName']
          @Cost = params['Cost']
          @Discount = params['Discount']
          @ReduceType = params['ReduceType']
          @RealCost = params['RealCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
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
        end
      end

      # 账单资源汇总数据对象
      class BillResourceSummary < TencentCloud::Common::AbstractModel
        # @param BusinessCodeName: 产品名称：云产品大类，如云服务器CVM、云数据库MySQL
        # @type BusinessCodeName: String
        # @param ProductCodeName: 子产品名称：云产品子类，如云服务器CVM-标准型S1， 当没有获取到子产品名称时，返回"-"
        # @type ProductCodeName: String
        # @param PayModeName: 计费模式：包年包月和按量计费
        # @type PayModeName: String
        # @param ProjectName: 项目
        # @type ProjectName: String
        # @param RegionName: 地域
        # @type RegionName: String
        # @param ZoneName: 可用区
        # @type ZoneName: String
        # @param ResourceId: 资源实例ID
        # @type ResourceId: String
        # @param ResourceName: 资源实例名称
        # @type ResourceName: String
        # @param ActionTypeName: 交易类型：包年包月新购/续费/升降配/退款、按量计费扣费、调账补偿/扣费等类型
        # @type ActionTypeName: String
        # @param OrderId: 订单ID
        # @type OrderId: String
        # @param PayTime: 扣费时间
        # @type PayTime: String
        # @param FeeBeginTime: 开始使用时间
        # @type FeeBeginTime: String
        # @param FeeEndTime: 结束使用时间
        # @type FeeEndTime: String
        # @param ConfigDesc: 配置描述
        # @type ConfigDesc: String
        # @param ExtendField1: 扩展字段1
        # @type ExtendField1: String
        # @param ExtendField2: 扩展字段2
        # @type ExtendField2: String
        # @param TotalCost: 原价，单位为元
        # @type TotalCost: String
        # @param Discount: 折扣率
        # 当聚合之后折扣不唯一或者合同价的情况下，返回“-”
        # @type Discount: String
        # @param ReduceType: 优惠类型
        # @type ReduceType: String
        # @param RealTotalCost: 优惠后总价，单位为元
        # @type RealTotalCost: String
        # @param VoucherPayAmount: 代金券支付金额，单位为元
        # @type VoucherPayAmount: String
        # @param CashPayAmount: 现金账户支付金额，单位为元
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送账户支付金额，单位为元
        # @type IncentivePayAmount: String
        # @param ExtendField3: 扩展字段3
        # @type ExtendField3: String
        # @param ExtendField4: 扩展字段4
        # @type ExtendField4: String
        # @param ExtendField5: 扩展字段5
        # @type ExtendField5: String
        # @param Tags: Tag 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param PayerUin: 付款方uin
        # @type PayerUin: String
        # @param OwnerUin: 资源所有者uin,无值则返回"-"
        # @type OwnerUin: String
        # @param OperateUin: 操作者uin,无值则返回"-"
        # @type OperateUin: String
        # @param BusinessCode: 产品名称代码
        # @type BusinessCode: String
        # @param ProductCode: 子产品名称代码
        # @type ProductCode: String
        # @param RegionId: 区域ID
        # @type RegionId: Integer
        # @param InstanceType: 资源包、预留实例、节省计划、竞价实例这四类特殊实例本身的扣费行为，此字段体现对应的实例类型。枚举值如下：

        # ri=Standard RI

        # svp=Savings Plan

        # si=Spot Instances

        # rp=Resource Pack
        # @type InstanceType: String
        # @param OriginalCostWithRI: 按组件原价的口径换算的预留实例抵扣金额
        # @type OriginalCostWithRI: String
        # @param SPDeduction: 节省计划抵扣的SP包面值
        # @type SPDeduction: String
        # @param OriginalCostWithSP: 按组件原价的口径换算的节省计划抵扣金额
        # @type OriginalCostWithSP: String

        attr_accessor :BusinessCodeName, :ProductCodeName, :PayModeName, :ProjectName, :RegionName, :ZoneName, :ResourceId, :ResourceName, :ActionTypeName, :OrderId, :PayTime, :FeeBeginTime, :FeeEndTime, :ConfigDesc, :ExtendField1, :ExtendField2, :TotalCost, :Discount, :ReduceType, :RealTotalCost, :VoucherPayAmount, :CashPayAmount, :IncentivePayAmount, :ExtendField3, :ExtendField4, :ExtendField5, :Tags, :PayerUin, :OwnerUin, :OperateUin, :BusinessCode, :ProductCode, :RegionId, :InstanceType, :OriginalCostWithRI, :SPDeduction, :OriginalCostWithSP
        
        def initialize(businesscodename=nil, productcodename=nil, paymodename=nil, projectname=nil, regionname=nil, zonename=nil, resourceid=nil, resourcename=nil, actiontypename=nil, orderid=nil, paytime=nil, feebegintime=nil, feeendtime=nil, configdesc=nil, extendfield1=nil, extendfield2=nil, totalcost=nil, discount=nil, reducetype=nil, realtotalcost=nil, voucherpayamount=nil, cashpayamount=nil, incentivepayamount=nil, extendfield3=nil, extendfield4=nil, extendfield5=nil, tags=nil, payeruin=nil, owneruin=nil, operateuin=nil, businesscode=nil, productcode=nil, regionid=nil, instancetype=nil, originalcostwithri=nil, spdeduction=nil, originalcostwithsp=nil)
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

      # 按产品汇总产品详情
      class BusinessSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 产品名称代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessCode: String
        # @param BusinessCodeName: 产品名称：云产品大类，如云服务器CVM、云数据库MySQL
        # @type BusinessCodeName: String
        # @param RealTotalCost: 实际花费
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param TransferPayAmount: 分成金金额
        # @type TransferPayAmount: String

        attr_accessor :BusinessCode, :BusinessCodeName, :RealTotalCost, :RealTotalCostRatio, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :BillMonth, :TotalCost, :TransferPayAmount
        
        def initialize(businesscode=nil, businesscodename=nil, realtotalcost=nil, realtotalcostratio=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, billmonth=nil, totalcost=nil, transferpayamount=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 按产品汇总总费用
      class BusinessSummaryTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 总花费
        # @type RealTotalCost: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param TransferPayAmount: 分成金金额
        # @type TransferPayAmount: String

        attr_accessor :RealTotalCost, :VoucherPayAmount, :IncentivePayAmount, :CashPayAmount, :TotalCost, :TransferPayAmount
        
        def initialize(realtotalcost=nil, voucherpayamount=nil, incentivepayamount=nil, cashpayamount=nil, totalcost=nil, transferpayamount=nil)
          @RealTotalCost = realtotalcost
          @VoucherPayAmount = voucherpayamount
          @IncentivePayAmount = incentivepayamount
          @CashPayAmount = cashpayamount
          @TotalCost = totalcost
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @VoucherPayAmount = params['VoucherPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @CashPayAmount = params['CashPayAmount']
          @TotalCost = params['TotalCost']
          @TransferPayAmount = params['TransferPayAmount']
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

        attr_accessor :BusinessCode, :BusinessCodeName, :RealTotalCost, :Trend
        
        def initialize(businesscode=nil, businesscodename=nil, realtotalcost=nil, trend=nil)
          @BusinessCode = businesscode
          @BusinessCodeName = businesscodename
          @RealTotalCost = realtotalcost
          @Trend = trend
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessCodeName = params['BusinessCodeName']
          @RealTotalCost = params['RealTotalCost']
          unless params['Trend'].nil?
            @Trend = ConsumptionSummaryTrend.new
            @Trend.deserialize(params['Trend'])
          end
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

        attr_accessor :ProjectId, :ProjectName, :RealTotalCost, :Trend, :Business
        
        def initialize(projectid=nil, projectname=nil, realtotalcost=nil, trend=nil, business=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @RealTotalCost = realtotalcost
          @Trend = trend
          @Business = business
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

        attr_accessor :RegionId, :RegionName, :RealTotalCost, :Trend, :Business
        
        def initialize(regionid=nil, regionname=nil, realtotalcost=nil, trend=nil, business=nil)
          @RegionId = regionid
          @RegionName = regionname
          @RealTotalCost = realtotalcost
          @Trend = trend
          @Business = business
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

        attr_accessor :ResourceId, :ResourceName, :RealTotalCost, :CashPayAmount, :ProjectId, :ProjectName, :RegionId, :RegionName, :PayMode, :PayModeName, :BusinessCode, :BusinessCodeName, :ConsumptionTypeName
        
        def initialize(resourceid=nil, resourcename=nil, realtotalcost=nil, cashpayamount=nil, projectid=nil, projectname=nil, regionid=nil, regionname=nil, paymode=nil, paymodename=nil, businesscode=nil, businesscodename=nil, consumptiontypename=nil)
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

      # 订单数据对象
      class Deal < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param Status: 订单状态
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeBillDetail请求参数结构体
      class DescribeBillDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量，最大值为100
        # @type Limit: Integer
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param Month: 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。不能早于开通账单2.0的月份，最多可拉取24个月内的数据。
        # @type Month: String
        # @param BeginTime: 周期开始时间，格式为Y-m-d H:i:s，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传。不能早于开通账单2.0的月份，最多可拉取24个月内的数据。(不支持跨月查询)
        # @type BeginTime: String
        # @param EndTime: 周期结束时间，格式为Y-m-d H:i:s，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传。不能早于开通账单2.0的月份，最多可拉取24个月内的数据。（不支持跨月查询）
        # @type EndTime: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param ProductCode: 已废弃参数，未开放
        # @type ProductCode: String
        # @param PayMode: 付费模式 prePay/postPay
        # @type PayMode: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param ActionType: 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
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
        # @type ActionType: String
        # @param ProjectId: 项目ID:资源所属项目ID
        # @type ProjectId: Integer
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String

        attr_accessor :Offset, :Limit, :PeriodType, :Month, :BeginTime, :EndTime, :NeedRecordNum, :ProductCode, :PayMode, :ResourceId, :ActionType, :ProjectId, :BusinessCode
        
        def initialize(offset=nil, limit=nil, periodtype=nil, month=nil, begintime=nil, endtime=nil, needrecordnum=nil, productcode=nil, paymode=nil, resourceid=nil, actiontype=nil, projectid=nil, businesscode=nil)
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
        end
      end

      # DescribeBillDetail返回参数结构体
      class DescribeBillDetailResponse < TencentCloud::Common::AbstractModel
        # @param DetailSet: 详情列表
        # @type DetailSet: Array
        # @param Total: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              billdetail_tmp = BillDetail.new
              billdetail_tmp.deserialize(i)
              @DetailSet << billdetail_tmp
            end
          end
          @Total = params['Total']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeBillResourceSummary请求参数结构体
      class DescribeBillResourceSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量，最大值为1000
        # @type Limit: Integer
        # @param Month: 月份，格式为yyyy-mm。不能早于开通账单2.0的月份，最多可拉取24个月内的数据。
        # @type Month: String
        # @param PeriodType: 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        # @type PeriodType: String
        # @param NeedRecordNum: 是否需要访问列表的总记录数，用于前端分页
        # 1-表示需要， 0-表示不需要
        # @type NeedRecordNum: Integer
        # @param ActionType: 查询交易类型，如下：
        # 包年包月新购
        # 包年包月续费
        # 包年包月配置变更
        # 包年包月退款
        # 按量计费扣费
        # 按量计费小时结
        # 按量计费日结
        # 按量计费月结
        # 线下项目扣费
        # 线下产品扣费
        # 调账扣费
        # 调账补偿
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
        # @type ActionType: String
        # @param ResourceId: 查询指定资源信息
        # @type ResourceId: String
        # @param PayMode: 付费模式 prePay/postPay
        # @type PayMode: String
        # @param BusinessCode: 产品名称代码
        # 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        # @type BusinessCode: String

        attr_accessor :Offset, :Limit, :Month, :PeriodType, :NeedRecordNum, :ActionType, :ResourceId, :PayMode, :BusinessCode
        
        def initialize(offset=nil, limit=nil, month=nil, periodtype=nil, needrecordnum=nil, actiontype=nil, resourceid=nil, paymode=nil, businesscode=nil)
          @Offset = offset
          @Limit = limit
          @Month = month
          @PeriodType = periodtype
          @NeedRecordNum = needrecordnum
          @ActionType = actiontype
          @ResourceId = resourceid
          @PayMode = paymode
          @BusinessCode = businesscode
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
        end
      end

      # DescribeBillResourceSummary返回参数结构体
      class DescribeBillResourceSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSummarySet: 资源汇总列表
        # @type ResourceSummarySet: Array
        # @param Total: 资源汇总列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param SummaryOverview: 各付费模式花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param SummaryTotal: 总花费详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryTotal: :class:`Tencentcloud::Billing.v20180709.models.BusinessSummaryTotal`
        # @param SummaryOverview: 各产品花费分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param SummaryOverview: 各项目花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param SummaryOverview: 各地域花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param TagKey: 分账标签键
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
        # @param Ready: 数据是否准备好，0未准备好，1准备好
        # @type Ready: Integer
        # @param SummaryOverview: 各标签值花费分布详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryOverview: Array
        # @param SummaryTotal: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryTotal: :class:`Tencentcloud::Billing.v20180709.models.SummaryTotal`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeCostSummaryByProduct请求参数结构体
      class DescribeCostSummaryByProductRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type BeginTime: String
        # @param EndTime: 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        # @type EndTime: String
        # @param Limit: 每次获取数据量
        # @type Limit: Integer
        # @param Offset: 偏移量
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Limit: 每次获取数据量
        # @type Limit: Integer
        # @param Offset: 偏移量
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Limit: 每次获取数据量
        # @type Limit: Integer
        # @param Offset: 偏移量
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Limit: 每次获取数据量
        # @type Limit: Integer
        # @param Offset: 偏移量
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
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
        # @param OrderId: 订单号
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @type ProductCode: String
        # @param Domain: 查询域名 例如 www.qq.com
        # 非CDN业务查询时传入空字符串，返回的值为空
        # @type Domain: String
        # @param InstanceID: 1、如果为空，则返回EIP或CLB所有实例的明细；
        # 2、如果传入实例名，则返回该实例明细
        # @type InstanceID: String

        attr_accessor :StartDate, :EndDate, :ProductCode, :Domain, :InstanceID
        
        def initialize(startdate=nil, enddate=nil, productcode=nil, domain=nil, instanceid=nil)
          @StartDate = startdate
          @EndDate = enddate
          @ProductCode = productcode
          @Domain = domain
          @InstanceID = instanceid
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ProductCode = params['ProductCode']
          @Domain = params['Domain']
          @InstanceID = params['InstanceID']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param TimeFrom: 发放开始时间
        # @type TimeFrom: String
        # @param TimeTo: 发放结束时间
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

        attr_accessor :Limit, :Offset, :Status, :VoucherId, :CodeId, :ProductCode, :ActivityId, :VoucherName, :TimeFrom, :TimeTo, :SortField, :SortOrder, :PayMode, :PayScene, :Operator
        
        def initialize(limit=nil, offset=nil, status=nil, voucherid=nil, codeid=nil, productcode=nil, activityid=nil, vouchername=nil, timefrom=nil, timeto=nil, sortfield=nil, sortorder=nil, paymode=nil, payscene=nil, operator=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 按付费模式汇总消费详情
      class PayModeSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param PayMode: 付费模式
        # @type PayMode: String
        # @param PayModeName: 付费模式名称
        # @type PayModeName: String
        # @param RealTotalCost: 实际花费
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param Detail: 按交易类型：包年包月新购/续费/升降配/退款、按量计费扣费、调账补偿/扣费等类型汇总消费详情
        # @type Detail: Array
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param TransferPayAmount: 分成金金额
        # @type TransferPayAmount: String

        attr_accessor :PayMode, :PayModeName, :RealTotalCost, :RealTotalCostRatio, :Detail, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TotalCost, :TransferPayAmount
        
        def initialize(paymode=nil, paymodename=nil, realtotalcost=nil, realtotalcostratio=nil, detail=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, totalcost=nil, transferpayamount=nil)
          @PayMode = paymode
          @PayModeName = paymodename
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @Detail = detail
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TotalCost = totalcost
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @PayModeName = params['PayModeName']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              actionsummaryoverviewitem_tmp = ActionSummaryOverviewItem.new
              actionsummaryoverviewitem_tmp.deserialize(i)
              @Detail << actionsummaryoverviewitem_tmp
            end
          end
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TotalCost = params['TotalCost']
          @TransferPayAmount = params['TransferPayAmount']
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
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param RealTotalCost: 实际花费
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param TransferPayAmount: 分成金金额
        # @type TransferPayAmount: String

        attr_accessor :ProjectId, :ProjectName, :RealTotalCost, :RealTotalCostRatio, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :BillMonth, :TotalCost, :TransferPayAmount
        
        def initialize(projectid=nil, projectname=nil, realtotalcost=nil, realtotalcostratio=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, billmonth=nil, totalcost=nil, transferpayamount=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 按地域汇总消费详情
      class RegionSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RealTotalCost: 实际花费
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # @type RealTotalCostRatio: String
        # @param CashPayAmount: 现金金额
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # @type VoucherPayAmount: String
        # @param BillMonth: 账单月份，格式2019-08
        # @type BillMonth: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # @type TotalCost: String
        # @param TransferPayAmount: 分成金金额
        # @type TransferPayAmount: String

        attr_accessor :RegionId, :RegionName, :RealTotalCost, :RealTotalCostRatio, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :BillMonth, :TotalCost, :TransferPayAmount
        
        def initialize(regionid=nil, regionname=nil, realtotalcost=nil, realtotalcostratio=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, billmonth=nil, totalcost=nil, transferpayamount=nil)
          @RegionId = regionid
          @RegionName = regionname
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @BillMonth = billmonth
          @TotalCost = totalcost
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @BillMonth = params['BillMonth']
          @TotalCost = params['TotalCost']
          @TransferPayAmount = params['TransferPayAmount']
        end
      end

      # 总数
      class SummaryTotal < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 总数
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

      # 按标签汇总消费详情
      class TagSummaryOverviewItem < TencentCloud::Common::AbstractModel
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String
        # @param RealTotalCost: 实际花费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCost: String
        # @param RealTotalCostRatio: 费用所占百分比，两位小数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTotalCostRatio: String
        # @param TotalCost: 原价，单位为元。TotalCost字段自账单3.0（即2021-05）之后开始生效，账单3.0之前返回"-"。合同价的情况下，TotalCost字段与官网价格存在差异，也返回“-”。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: String
        # @param CashPayAmount: 现金金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashPayAmount: String
        # @param IncentivePayAmount: 赠送金金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncentivePayAmount: String
        # @param VoucherPayAmount: 代金券金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoucherPayAmount: String
        # @param TransferPayAmount: 分成金金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferPayAmount: String

        attr_accessor :TagValue, :RealTotalCost, :RealTotalCostRatio, :TotalCost, :CashPayAmount, :IncentivePayAmount, :VoucherPayAmount, :TransferPayAmount
        
        def initialize(tagvalue=nil, realtotalcost=nil, realtotalcostratio=nil, totalcost=nil, cashpayamount=nil, incentivepayamount=nil, voucherpayamount=nil, transferpayamount=nil)
          @TagValue = tagvalue
          @RealTotalCost = realtotalcost
          @RealTotalCostRatio = realtotalcostratio
          @TotalCost = totalcost
          @CashPayAmount = cashpayamount
          @IncentivePayAmount = incentivepayamount
          @VoucherPayAmount = voucherpayamount
          @TransferPayAmount = transferpayamount
        end

        def deserialize(params)
          @TagValue = params['TagValue']
          @RealTotalCost = params['RealTotalCost']
          @RealTotalCostRatio = params['RealTotalCostRatio']
          @TotalCost = params['TotalCost']
          @CashPayAmount = params['CashPayAmount']
          @IncentivePayAmount = params['IncentivePayAmount']
          @VoucherPayAmount = params['VoucherPayAmount']
          @TransferPayAmount = params['TransferPayAmount']
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

