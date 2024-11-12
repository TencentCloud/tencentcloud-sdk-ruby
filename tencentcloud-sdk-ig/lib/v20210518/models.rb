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
  module Ig
    module V20210518
      # DescribeIgOrderList请求参数结构体
      class DescribeIgOrderListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数目
        # @type PageSize: Integer
        # @param ProductType: 产品类型
        # @type ProductType: String
        # @param OrderStatus: 订单状态
        # @type OrderStatus: Integer
        # @param KeyWord: 搜索关键字
        # @type KeyWord: String

        attr_accessor :PageNumber, :PageSize, :ProductType, :OrderStatus, :KeyWord

        def initialize(pagenumber=nil, pagesize=nil, producttype=nil, orderstatus=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ProductType = producttype
          @OrderStatus = orderstatus
          @KeyWord = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ProductType = params['ProductType']
          @OrderStatus = params['OrderStatus']
          @KeyWord = params['KeyWord']
        end
      end

      # DescribeIgOrderList返回参数结构体
      class DescribeIgOrderListResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

