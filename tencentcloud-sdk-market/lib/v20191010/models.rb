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
  module Market
    module V20191010
      # Error结构
      class Error < TencentCloud::Common::AbstractModel
        # @param Code: 一级错误描述
        # @type Code: String
        # @param Message: 二级错误描述
        # @type Message: String

        attr_accessor :Code, :Message
        
        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # FlowProductRemind请求参数结构体
      class FlowProductRemindRequest < TencentCloud::Common::AbstractModel
        # @param ProviderUin: 服务商uin
        # @type ProviderUin: String
        # @param SignId: 服务商实例ID
        # @type SignId: String
        # @param ResourceId: 云市场实例ID
        # @type ResourceId: String
        # @param TotalFlow: 实例总流量
        # @type TotalFlow: String
        # @param LeftFlow: 剩余流量
        # @type LeftFlow: String
        # @param FlowUnit: 流量单位
        # @type FlowUnit: String

        attr_accessor :ProviderUin, :SignId, :ResourceId, :TotalFlow, :LeftFlow, :FlowUnit
        
        def initialize(provideruin=nil, signid=nil, resourceid=nil, totalflow=nil, leftflow=nil, flowunit=nil)
          @ProviderUin = provideruin
          @SignId = signid
          @ResourceId = resourceid
          @TotalFlow = totalflow
          @LeftFlow = leftflow
          @FlowUnit = flowunit
        end

        def deserialize(params)
          @ProviderUin = params['ProviderUin']
          @SignId = params['SignId']
          @ResourceId = params['ResourceId']
          @TotalFlow = params['TotalFlow']
          @LeftFlow = params['LeftFlow']
          @FlowUnit = params['FlowUnit']
        end
      end

      # FlowProductRemind返回参数结构体
      class FlowProductRemindResponse < TencentCloud::Common::AbstractModel
        # @param Success: 是否成功
        # @type Success: String
        # @param FlowId: 流水号
        # @type FlowId: String
        # @param Info: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :FlowId, :Info, :RequestId
        
        def initialize(success=nil, flowid=nil, info=nil, requestid=nil)
          @Success = success
          @FlowId = flowid
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Success = params['Success']
          @FlowId = params['FlowId']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # GetUsagePlanUsageAmount请求参数结构体
      class GetUsagePlanUsageAmountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 用于查询实例的Id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # GetUsagePlanUsageAmount返回参数结构体
      class GetUsagePlanUsageAmountResponse < TencentCloud::Common::AbstractModel
        # @param MaxRequestNum: 最大调用量
        # @type MaxRequestNum: Integer
        # @param InUseRequestNum: 已经调用量
        # @type InUseRequestNum: Integer
        # @param RemainingRequestNum: 剩余调用量
        # @type RemainingRequestNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxRequestNum, :InUseRequestNum, :RemainingRequestNum, :RequestId
        
        def initialize(maxrequestnum=nil, inuserequestnum=nil, remainingrequestnum=nil, requestid=nil)
          @MaxRequestNum = maxrequestnum
          @InUseRequestNum = inuserequestnum
          @RemainingRequestNum = remainingrequestnum
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxRequestNum = params['MaxRequestNum']
          @InUseRequestNum = params['InUseRequestNum']
          @RemainingRequestNum = params['RemainingRequestNum']
          @RequestId = params['RequestId']
        end
      end

      # 线下产品订单
      class OfflineProductDeal < TencentCloud::Common::AbstractModel
        # @param ProductCode: 产品标签
        # @type ProductCode: String
        # @param SubProductCode: 子产品标签
        # @type SubProductCode: String
        # @param BillingItemCode: 计费项
        # @type BillingItemCode: String
        # @param SubBillingItemCode: 计费细项
        # @type SubBillingItemCode: String
        # @param UnitPrice: 单价（单位：分）
        # @type UnitPrice: Float
        # @param Dosage: 用量
        # @type Dosage: Float
        # @param DosageUnit: 用量单位
        # @type DosageUnit: String
        # @param TimeSpan: 商品的时间大小，当TimeUnit 是package时，timeSpan 只能传1。当TimeUnit是year；month；day；hour；minute；second，传具体时长。
        # @type TimeSpan: Float
        # @param TimeUnit: 商品的时间单位：year:年；month:月；day:日；hour:小时；minute:分钟；second:秒; package:与价格无关,一次性购买的产品传package
        # @type TimeUnit: String
        # @param OriginPrice: 原价 （单位：分）OriginPrice=round(UnitPrice * Dosage * TimeSpan)
        # @type OriginPrice: Integer
        # @param Discount: 折扣百分比，传入0-100的值
        # @type Discount: Float
        # @param Fee: 最终扣费金额（单位：分）Fee=round(OriginPrice*Discount/100)
        # @type Fee: Integer

        attr_accessor :ProductCode, :SubProductCode, :BillingItemCode, :SubBillingItemCode, :UnitPrice, :Dosage, :DosageUnit, :TimeSpan, :TimeUnit, :OriginPrice, :Discount, :Fee
        
        def initialize(productcode=nil, subproductcode=nil, billingitemcode=nil, subbillingitemcode=nil, unitprice=nil, dosage=nil, dosageunit=nil, timespan=nil, timeunit=nil, originprice=nil, discount=nil, fee=nil)
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @BillingItemCode = billingitemcode
          @SubBillingItemCode = subbillingitemcode
          @UnitPrice = unitprice
          @Dosage = dosage
          @DosageUnit = dosageunit
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @OriginPrice = originprice
          @Discount = discount
          @Fee = fee
        end

        def deserialize(params)
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @BillingItemCode = params['BillingItemCode']
          @SubBillingItemCode = params['SubBillingItemCode']
          @UnitPrice = params['UnitPrice']
          @Dosage = params['Dosage']
          @DosageUnit = params['DosageUnit']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @OriginPrice = params['OriginPrice']
          @Discount = params['Discount']
          @Fee = params['Fee']
        end
      end

      # 同步用户信息订单信息详情
      class SyncUserAndOrderInfoDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 腾讯云订单总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param MarketOrders: 腾讯云订单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarketOrders: Array
        # @param OwnerUin: 腾讯云用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String

        attr_accessor :TotalCount, :MarketOrders, :OwnerUin
        
        def initialize(totalcount=nil, marketorders=nil, owneruin=nil)
          @TotalCount = totalcount
          @MarketOrders = marketorders
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MarketOrders = params['MarketOrders']
          @OwnerUin = params['OwnerUin']
        end
      end

      # SyncUserAndOrderInfo请求参数结构体
      class SyncUserAndOrderInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserInfo: 企业微信用户信息
        # @type UserInfo: :class:`Tencentcloud::Market.v20191010.models.WeChatUserInfo`
        # @param OrderInfo: 企业微信订单信息
        # @type OrderInfo: :class:`Tencentcloud::Market.v20191010.models.WeChatOrderInfo`

        attr_accessor :UserInfo, :OrderInfo
        
        def initialize(userinfo=nil, orderinfo=nil)
          @UserInfo = userinfo
          @OrderInfo = orderinfo
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = WeChatUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['OrderInfo'].nil?
            @OrderInfo = WeChatOrderInfo.new
            @OrderInfo.deserialize(params['OrderInfo'])
          end
        end
      end

      # SyncUserAndOrderInfo返回参数结构体
      class SyncUserAndOrderInfoResponse < TencentCloud::Common::AbstractModel
        # @param Details: 同步用户信息订单信息详情
        # @type Details: :class:`Tencentcloud::Market.v20191010.models.SyncUserAndOrderInfoDetail`
        # @param Info: 返回信息 成功返回 0 success
        # @type Info: :class:`Tencentcloud::Market.v20191010.models.Error`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :Info, :RequestId
        
        def initialize(details=nil, info=nil, requestid=nil)
          @Details = details
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = SyncUserAndOrderInfoDetail.new
            @Details.deserialize(params['Details'])
          end
          unless params['Info'].nil?
            @Info = Error.new
            @Info.deserialize(params['Info'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 企业微信订单信息
      class WeChatOrderInfo < TencentCloud::Common::AbstractModel
        # @param OrderId: 企业微信订单号
        # @type OrderId: String
        # @param OrderStatus: 订单状态。0-未⽀支付，1-已⽀支付，2-已关闭， 3-未⽀支付且已过期， 4-申请退款中， 5-申请退款成功， 6-退款被拒绝
        # @type OrderStatus: Integer
        # @param OrderType: 订单类型。0-普通订单，1-扩容订单，2-续期，3-版本变更更
        # @type OrderType: Integer
        # @param SuiteId: 应⽤id
        # @type SuiteId: String
        # @param EditionId: 购买版本ID
        # @type EditionId: String
        # @param EditionName: 购买版本名称
        # @type EditionName: String
        # @param Price: 实付款金额，单位分
        # @type Price: Integer
        # @param OrderTime: 下单时间
        # @type OrderTime: Integer
        # @param PaidTime: 付款时间
        # @type PaidTime: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param UseBeginTime: 资源使用开始时间
        # @type UseBeginTime: Integer
        # @param UseEndTime: 资源使用结束时间
        # @type UseEndTime: Integer
        # @param Deals: 磐石详细的四层订单
        # @type Deals: :class:`Tencentcloud::Market.v20191010.models.OfflineProductDeal`

        attr_accessor :OrderId, :OrderStatus, :OrderType, :SuiteId, :EditionId, :EditionName, :Price, :OrderTime, :PaidTime, :Remark, :UseBeginTime, :UseEndTime, :Deals
        
        def initialize(orderid=nil, orderstatus=nil, ordertype=nil, suiteid=nil, editionid=nil, editionname=nil, price=nil, ordertime=nil, paidtime=nil, remark=nil, usebegintime=nil, useendtime=nil, deals=nil)
          @OrderId = orderid
          @OrderStatus = orderstatus
          @OrderType = ordertype
          @SuiteId = suiteid
          @EditionId = editionid
          @EditionName = editionname
          @Price = price
          @OrderTime = ordertime
          @PaidTime = paidtime
          @Remark = remark
          @UseBeginTime = usebegintime
          @UseEndTime = useendtime
          @Deals = deals
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @OrderStatus = params['OrderStatus']
          @OrderType = params['OrderType']
          @SuiteId = params['SuiteId']
          @EditionId = params['EditionId']
          @EditionName = params['EditionName']
          @Price = params['Price']
          @OrderTime = params['OrderTime']
          @PaidTime = params['PaidTime']
          @Remark = params['Remark']
          @UseBeginTime = params['UseBeginTime']
          @UseEndTime = params['UseEndTime']
          unless params['Deals'].nil?
            @Deals = OfflineProductDeal.new
            @Deals.deserialize(params['Deals'])
          end
        end
      end

      # 企业微信用户信息
      class WeChatUserInfo < TencentCloud::Common::AbstractModel
        # @param PaidCorpId: 客户企业的corpid
        # @type PaidCorpId: String
        # @param PaidCorpName: 客户企业的Corp全称
        # @type PaidCorpName: String

        attr_accessor :PaidCorpId, :PaidCorpName
        
        def initialize(paidcorpid=nil, paidcorpname=nil)
          @PaidCorpId = paidcorpid
          @PaidCorpName = paidcorpname
        end

        def deserialize(params)
          @PaidCorpId = params['PaidCorpId']
          @PaidCorpName = params['PaidCorpName']
        end
      end

    end
  end
end

