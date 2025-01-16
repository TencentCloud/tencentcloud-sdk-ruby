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
  module Vpc
    module V20170312
      # DescribeNatsEipsInternal请求参数结构体
      class DescribeNatsEipsInternalRequest < TencentCloud::Common::AbstractModel
        # @param Limit: limit
        # @type Limit: Integer
        # @param Offset: offset
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNatsEipsInternal返回参数结构体
      class DescribeNatsEipsInternalResponse < TencentCloud::Common::AbstractModel
        # @param EipSet: eip Ip列表
        # @type EipSet: Array
        # @param TotalCount: eip ip列表总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EipSet, :TotalCount, :RequestId

        def initialize(eipset=nil, totalcount=nil, requestid=nil)
          @EipSet = eipset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @EipSet = params['EipSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

