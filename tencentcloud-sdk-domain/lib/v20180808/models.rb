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
  module Domain
    module V20180808
      # CheckDomain请求参数结构体
      class CheckDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 所查询域名名称
        # @type DomainName: String
        # @param Period: 年限
        # @type Period: String

        attr_accessor :DomainName, :Period
        
        def initialize(domainname=nil, period=nil)
          @DomainName = domainname
          @Period = period
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Period = params['Period']
        end
      end

      # CheckDomain返回参数结构体
      class CheckDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainName: 所查询域名名称
        # @type DomainName: String
        # @param Available: 是否能够注册
        # @type Available: Boolean
        # @param Reason: 不能注册原因
        # @type Reason: String
        # @param Premium: 是否是溢价词
        # @type Premium: Boolean
        # @param Price: 域名价格
        # @type Price: Integer
        # @param BlackWord: 是否是敏感词
        # @type BlackWord: Boolean
        # @param Describe: 溢价词描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param FeeRenew: 溢价词的续费价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeRenew: Integer
        # @param RealPrice: 域名真实价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealPrice: Integer
        # @param FeeTransfer: 溢价词的转入价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeTransfer: Integer
        # @param FeeRestore: 溢价词的赎回价格
        # @type FeeRestore: Integer
        # @param Period: 检测年限
        # @type Period: Integer
        # @param RecordSupport: 是否支持北京备案  true 支持  false 不支持
        # @type RecordSupport: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainName, :Available, :Reason, :Premium, :Price, :BlackWord, :Describe, :FeeRenew, :RealPrice, :FeeTransfer, :FeeRestore, :Period, :RecordSupport, :RequestId
        
        def initialize(domainname=nil, available=nil, reason=nil, premium=nil, price=nil, blackword=nil, describe=nil, feerenew=nil, realprice=nil, feetransfer=nil, feerestore=nil, period=nil, recordsupport=nil, requestid=nil)
          @DomainName = domainname
          @Available = available
          @Reason = reason
          @Premium = premium
          @Price = price
          @BlackWord = blackword
          @Describe = describe
          @FeeRenew = feerenew
          @RealPrice = realprice
          @FeeTransfer = feetransfer
          @FeeRestore = feerestore
          @Period = period
          @RecordSupport = recordsupport
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Available = params['Available']
          @Reason = params['Reason']
          @Premium = params['Premium']
          @Price = params['Price']
          @BlackWord = params['BlackWord']
          @Describe = params['Describe']
          @FeeRenew = params['FeeRenew']
          @RealPrice = params['RealPrice']
          @FeeTransfer = params['FeeTransfer']
          @FeeRestore = params['FeeRestore']
          @Period = params['Period']
          @RecordSupport = params['RecordSupport']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainPriceList请求参数结构体
      class DescribeDomainPriceListRequest < TencentCloud::Common::AbstractModel
        # @param TldList: 查询价格的后缀列表。默认则为全部后缀
        # @type TldList: Array
        # @param Year: 查询购买的年份，默认会列出所有年份的价格
        # @type Year: Array
        # @param Operation: 域名的购买类型：new  新购，renew 续费，redem 赎回，tran 转入
        # @type Operation: Array

        attr_accessor :TldList, :Year, :Operation
        
        def initialize(tldlist=nil, year=nil, operation=nil)
          @TldList = tldlist
          @Year = year
          @Operation = operation
        end

        def deserialize(params)
          @TldList = params['TldList']
          @Year = params['Year']
          @Operation = params['Operation']
        end
      end

      # DescribeDomainPriceList返回参数结构体
      class DescribeDomainPriceListResponse < TencentCloud::Common::AbstractModel
        # @param PriceList: 域名价格列表
        # @type PriceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PriceList, :RequestId
        
        def initialize(pricelist=nil, requestid=nil)
          @PriceList = pricelist
          @RequestId = requestid
        end

        def deserialize(params)
          @PriceList = params['PriceList']
          @RequestId = params['RequestId']
        end
      end

      # 域名价格信息
      class PriceInfo < TencentCloud::Common::AbstractModel
        # @param Tld: 域名后缀，例如.com
        # @type Tld: String
        # @param Year: 购买年限，范围[1-10]
        # @type Year: Integer
        # @param Price: 域名原价
        # @type Price: Integer
        # @param RealPrice: 域名现价
        # @type RealPrice: Integer
        # @param Operation: 商品的购买类型，新购，续费，赎回，转入，续费并转入
        # @type Operation: String

        attr_accessor :Tld, :Year, :Price, :RealPrice, :Operation
        
        def initialize(tld=nil, year=nil, price=nil, realprice=nil, operation=nil)
          @Tld = tld
          @Year = year
          @Price = price
          @RealPrice = realprice
          @Operation = operation
        end

        def deserialize(params)
          @Tld = params['Tld']
          @Year = params['Year']
          @Price = params['Price']
          @RealPrice = params['RealPrice']
          @Operation = params['Operation']
        end
      end

    end
  end
end

