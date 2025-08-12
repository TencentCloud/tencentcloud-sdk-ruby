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
        # @param Mode: 返回结果类型，0-自然检索结果(默认)，1-多模态VR结果，2-混合结果（多模态VR结果+自然检索结果）
        # @type Mode: Integer
        # @param Site: 指定域名站内搜索（用于过滤自然检索结果）
        # 注意： mode=1模式下，参数无效；mode=0模式下，对所有结果生效；mode=2模式下，对输出的自然结果生效
        # @type Site: String
        # @param FromTime: 起始时间（用于过滤自然检索结果），精确到秒时间戳格式
        # 注意： mode=1模式下，参数无效；mode=0模式下，对所有结果生效；mode=2模式下，对输出的自然结果生效
        # @type FromTime: Integer
        # @param ToTime: 结束时间（用于过滤自然检索结果），精确到秒时间戳格式
        # 注意：mode=1模式下，参数无效；mode=0模式下，对所有结果生效；mode=2模式下，对输出的自然结果生效
        # @type ToTime: Integer
        # @param Cnt: cnt=10/20/30/40/50，最多可支持返回50条搜索结果，**仅限尊享版使用**
        # @type Cnt: Integer
        # @param Industry: Industry=gov/news/acad，对应党政机关、新闻、学术，**仅限尊享版使用**
        # @type Industry: String

        attr_accessor :Query, :Mode, :Site, :FromTime, :ToTime, :Cnt, :Industry

        def initialize(query=nil, mode=nil, site=nil, fromtime=nil, totime=nil, cnt=nil, industry=nil)
          @Query = query
          @Mode = mode
          @Site = site
          @FromTime = fromtime
          @ToTime = totime
          @Cnt = cnt
          @Industry = industry
        end

        def deserialize(params)
          @Query = params['Query']
          @Mode = params['Mode']
          @Site = params['Site']
          @FromTime = params['FromTime']
          @ToTime = params['ToTime']
          @Cnt = params['Cnt']
          @Industry = params['Industry']
        end
      end

      # SearchPro返回参数结构体
      class SearchProResponse < TencentCloud::Common::AbstractModel
        # @param Query: 原始查询语
        # @type Query: String
        # @param Pages: 搜索结果页面详情，格式为json字符串。
        # title：结果标题
        # date：内容发布时间
        # url：内容发布源url
        # passage：标准摘要
        # content：动态摘要 （尊享版字段）
        # site：网站名称，部分不知名站点结果可能为空
        # score：相关性得分，取值0～1，越靠近1表示越相关
        # images：图片列表
        # favicon：网站图标链接，部分不知名站点结果可能为空
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

