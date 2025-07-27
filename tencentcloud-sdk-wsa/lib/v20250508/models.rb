# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Wsa
    module V20250508
      # SearchPro请求参数结构体
      class SearchProRequest < TencentCloud::Common::AbstractModel
        # @param Query: 搜索词
        # @type Query: String
        # @param Mode: 返回结果类型，0-自然检索结果(默认)，1-垂类VR结果，2-混合结果（垂类VR结果+自然检索结果）
        # @type Mode: Integer
        # @param Site: 指定域名站内搜索（用于过滤自然检索结果）  注意：  mode=1模式下，参数无效 mode=0模式下对所有结果生效 mode=2模式下对输出的自然结果生效
        # @type Site: String
        # @param FromTime: 起始时间（用于过滤自然检索结果），精确到秒时间戳格式  注意：  mode=1模式下，参数无效 mode=0模式下对所有结果生效 mode=2模式下对输出的自然结果生效
        # @type FromTime: Integer
        # @param ToTime: 结束时间（用于过滤自然检索结果），精确到秒时间戳格式  注意：  mode=1模式下，参数无效 mode=0模式下对所有结果生效 mode=2模式下对输出的自然结果生效
        # @type ToTime: Integer

        attr_accessor :Query, :Mode, :Site, :FromTime, :ToTime

        def initialize(query=nil, mode=nil, site=nil, fromtime=nil, totime=nil)
          @Query = query
          @Mode = mode
          @Site = site
          @FromTime = fromtime
          @ToTime = totime
        end

        def deserialize(params)
          @Query = params['Query']
          @Mode = params['Mode']
          @Site = params['Site']
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
        end
      end

      # SearchPro返回参数结构体
      class SearchProResponse < TencentCloud::Common::AbstractModel
        # @param Query: 原始查询语
        # @type Query: String
        # @param Pages: 搜索结果页面
        # @type Pages: Array
        # @param Msg: 提示信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Query, :Pages, :Msg, :RequestId

        def initialize(query=nil, pages=nil, msg=nil, requestid=nil)
          @Query = query
          @Pages = pages
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Query = params['Query']
          @Pages = params['Pages']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

