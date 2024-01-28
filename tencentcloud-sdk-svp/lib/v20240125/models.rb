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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

