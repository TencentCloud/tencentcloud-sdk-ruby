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
  module Svp
    module V20240125
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

      # DescribeSavingPlanDeduct请求参数结构体
      class DescribeSavingPlanDeductRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 每页数量，最大值为200
        # @type Limit: Integer
        # @param StartEndDate: 节省计划使用开始的查询结束时间
        # @type StartEndDate: String
        # @param StartStartDate: 节省计划使用开始的查询开始时间
        # @type StartStartDate: String
        # @param RegionId: 地域编码
        # @type RegionId: Integer
        # @param ZoneId: 区域编码
        # @type ZoneId: Integer
        # @param SpId: 节省计划资源id
        # @type SpId: String
        # @param DeductEndDate: 抵扣查询结束时间，格式：yyyy-MM-dd HH:mm:ss
        # @type DeductEndDate: String
        # @param DeductStartDate: 抵扣查询开始时间，格式：yyyy-MM-dd HH:mm:ss
        # @type DeductStartDate: String
        # @param EndEndDate: 节省计划使用结束的查询结束时间
        # @type EndEndDate: String
        # @param EndStartDate: 节省计划使用结束的查询开始时间
        # @type EndStartDate: String

        attr_accessor :Offset, :Limit, :StartEndDate, :StartStartDate, :RegionId, :ZoneId, :SpId, :DeductEndDate, :DeductStartDate, :EndEndDate, :EndStartDate

        def initialize(offset=nil, limit=nil, startenddate=nil, startstartdate=nil, regionid=nil, zoneid=nil, spid=nil, deductenddate=nil, deductstartdate=nil, endenddate=nil, endstartdate=nil)
          @Offset = offset
          @Limit = limit
          @StartEndDate = startenddate
          @StartStartDate = startstartdate
          @RegionId = regionid
          @ZoneId = zoneid
          @SpId = spid
          @DeductEndDate = deductenddate
          @DeductStartDate = deductstartdate
          @EndEndDate = endenddate
          @EndStartDate = endstartdate
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartEndDate = params['StartEndDate']
          @StartStartDate = params['StartStartDate']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @SpId = params['SpId']
          @DeductEndDate = params['DeductEndDate']
          @DeductStartDate = params['DeductStartDate']
          @EndEndDate = params['EndEndDate']
          @EndStartDate = params['EndStartDate']
        end
      end

      # DescribeSavingPlanDeduct返回参数结构体
      class DescribeSavingPlanDeductResponse < TencentCloud::Common::AbstractModel
        # @param Total: 查询命中的节省计划抵扣明细数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Deducts: 查询命中的节省计划抵扣明细数据明细
        # @type Deducts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Deducts, :RequestId

        def initialize(total=nil, deducts=nil, requestid=nil)
          @Total = total
          @Deducts = deducts
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Deducts'].nil?
            @Deducts = []
            params['Deducts'].each do |i|
              savingplandeductdetail_tmp = SavingPlanDeductDetail.new
              savingplandeductdetail_tmp.deserialize(i)
              @Deducts << savingplandeductdetail_tmp
            end
          end
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Total: 查询命中的节省计划总览明细数据总条数
        # @type Total: Integer
        # @param Usages: 节省计划使用率数据
        # @type Usages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Usages, :RequestId

        def initialize(total=nil, usages=nil, requestid=nil)
          @Total = total
          @Usages = usages
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              savingplanusagedetail_tmp = SavingPlanUsageDetail.new
              savingplanusagedetail_tmp.deserialize(i)
              @Usages << savingplanusagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 节省计划覆盖率数据
      class SavingPlanCoverageDetail < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源 ID：账单中出账对象 ID，不同产品因资源形态不同，资源内容不完全相同，如云服务器 CVM 为对应的实例 ID
        # @type ResourceId: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param ProductCode: 产品编码
        # @type ProductCode: String
        # @param SubProductCode: 子产品编码
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
        # @param PayerUinName: 支付者昵称
        # @type PayerUinName: String
        # @param OwnerUinName: 使用者昵称
        # @type OwnerUinName: String
        # @param PayerUin: 支付者uin
        # @type PayerUin: String
        # @param SubBillingItemName: 计费项名称
        # @type SubBillingItemName: String
        # @param BillingItemName: 计费细项名称
        # @type BillingItemName: String
        # @param SubProductName: 子产品名称
        # @type SubProductName: String

        attr_accessor :ResourceId, :RegionId, :ProductCode, :SubProductCode, :StartDate, :EndDate, :SpCoveredAmount, :SpUncoveredAmount, :TotalRealAmount, :ExpectedAmount, :SpCoverage, :PayerUinName, :OwnerUinName, :PayerUin, :SubBillingItemName, :BillingItemName, :SubProductName

        def initialize(resourceid=nil, regionid=nil, productcode=nil, subproductcode=nil, startdate=nil, enddate=nil, spcoveredamount=nil, spuncoveredamount=nil, totalrealamount=nil, expectedamount=nil, spcoverage=nil, payeruinname=nil, owneruinname=nil, payeruin=nil, subbillingitemname=nil, billingitemname=nil, subproductname=nil)
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
          @PayerUinName = payeruinname
          @OwnerUinName = owneruinname
          @PayerUin = payeruin
          @SubBillingItemName = subbillingitemname
          @BillingItemName = billingitemname
          @SubProductName = subproductname
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
          @PayerUinName = params['PayerUinName']
          @OwnerUinName = params['OwnerUinName']
          @PayerUin = params['PayerUin']
          @SubBillingItemName = params['SubBillingItemName']
          @BillingItemName = params['BillingItemName']
          @SubProductName = params['SubProductName']
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

      # 节省计划抵扣明细
      class SavingPlanDeductDetail < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param OwnerUinName: 账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUinName: String
        # @param PayerUin: 抵扣账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUin: String
        # @param PayerUinName: 抵扣账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerUinName: String
        # @param SpId: 节省计划资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpId: String
        # @param ProductCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param SubProductCode: 子产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCode: String
        # @param SubProductName: 子产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductName: String
        # @param OutTradeNo: 交易ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutTradeNo: String
        # @param RegionId: 地域id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionName: 地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param ZoneId: 地区id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneName: 地区名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param SpStartTime: 开始使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpStartTime: String
        # @param SpEndTime: 结束使用时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpEndTime: String
        # @param DeductTime: 折扣时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductTime: String
        # @param DeductAmount: 抵扣金额，单位分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductAmount: String
        # @param DeductDiscount: 抵扣折扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductDiscount: String
        # @param DeductRate: 抵扣比率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductRate: String

        attr_accessor :OwnerUin, :OwnerUinName, :PayerUin, :PayerUinName, :SpId, :ProductCode, :ProductName, :SubProductCode, :SubProductName, :OutTradeNo, :RegionId, :RegionName, :ZoneId, :ZoneName, :SpStartTime, :SpEndTime, :DeductTime, :DeductAmount, :DeductDiscount, :DeductRate

        def initialize(owneruin=nil, owneruinname=nil, payeruin=nil, payeruinname=nil, spid=nil, productcode=nil, productname=nil, subproductcode=nil, subproductname=nil, outtradeno=nil, regionid=nil, regionname=nil, zoneid=nil, zonename=nil, spstarttime=nil, spendtime=nil, deducttime=nil, deductamount=nil, deductdiscount=nil, deductrate=nil)
          @OwnerUin = owneruin
          @OwnerUinName = owneruinname
          @PayerUin = payeruin
          @PayerUinName = payeruinname
          @SpId = spid
          @ProductCode = productcode
          @ProductName = productname
          @SubProductCode = subproductcode
          @SubProductName = subproductname
          @OutTradeNo = outtradeno
          @RegionId = regionid
          @RegionName = regionname
          @ZoneId = zoneid
          @ZoneName = zonename
          @SpStartTime = spstarttime
          @SpEndTime = spendtime
          @DeductTime = deducttime
          @DeductAmount = deductamount
          @DeductDiscount = deductdiscount
          @DeductRate = deductrate
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @OwnerUinName = params['OwnerUinName']
          @PayerUin = params['PayerUin']
          @PayerUinName = params['PayerUinName']
          @SpId = params['SpId']
          @ProductCode = params['ProductCode']
          @ProductName = params['ProductName']
          @SubProductCode = params['SubProductCode']
          @SubProductName = params['SubProductName']
          @OutTradeNo = params['OutTradeNo']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @SpStartTime = params['SpStartTime']
          @SpEndTime = params['SpEndTime']
          @DeductTime = params['DeductTime']
          @DeductAmount = params['DeductAmount']
          @DeductDiscount = params['DeductDiscount']
          @DeductRate = params['DeductRate']
        end
      end

      # 节省计划总览明细数据
      class SavingPlanOverviewDetail < TencentCloud::Common::AbstractModel
        # @param SpType: 节省计划类型
        # @type SpType: String
        # @param PayAmount: 支付金额（单位：元）
        # @type PayAmount: String
        # @param StartTime: 开始时间 yyyy-mm-dd HH:mm:ss格式
        # @type StartTime: String
        # @param EndTime: 结束时间 yyyy-mm-dd HH:mm:ss格式
        # @type EndTime: String
        # @param Status: 状态
        # @type Status: Integer
        # @param SavingAmount: 累计节省金额（单位：元）
        # @type SavingAmount: String
        # @param Region: 地域
        # @type Region: Array
        # @param PayType: 支付类型
        # @type PayType: Integer
        # @param BuyTime: 购买时间 yyyy-mm-dd HH:mm:ss格式
        # @type BuyTime: String

        attr_accessor :SpType, :PayAmount, :StartTime, :EndTime, :Status, :SavingAmount, :Region, :PayType, :BuyTime

        def initialize(sptype=nil, payamount=nil, starttime=nil, endtime=nil, status=nil, savingamount=nil, region=nil, paytype=nil, buytime=nil)
          @SpType = sptype
          @PayAmount = payamount
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @SavingAmount = savingamount
          @Region = region
          @PayType = paytype
          @BuyTime = buytime
        end

        def deserialize(params)
          @SpType = params['SpType']
          @PayAmount = params['PayAmount']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @SavingAmount = params['SavingAmount']
          @Region = params['Region']
          @PayType = params['PayType']
          @BuyTime = params['BuyTime']
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

    end
  end
end

