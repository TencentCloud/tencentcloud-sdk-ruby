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
  module Wimgs
    module V20251106
      # SearchByText请求参数结构体
      class SearchByTextRequest < TencentCloud::Common::AbstractModel
        # @param Query: 查询词
        # @type Query: String

        attr_accessor :Query

        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # SearchByText返回参数结构体
      class SearchByTextResponse < TencentCloud::Common::AbstractModel
        # @param Query: 原始查询词
        # @type Query: String
        # @param Images: 搜索结果图片列表，格式为json字符串。

        # - thumbnailUrl：缩略图地址。
        # - thumbnailWidth：缩略图宽度。
        # - thumbnailHeight：缩略图高度。
        # - origPicUrl：原图地址。
        # -  origPicWidth：原图宽度。
        # - siteUrl：站点地址，原图来源网页URL。
        # - siteName：站点名称。
        # - title：标题，原图标题或原图来源网页标题。
        # - date：内容发布时间。
        # @type Images: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Query, :Images, :RequestId

        def initialize(query=nil, images=nil, requestid=nil)
          @Query = query
          @Images = images
          @RequestId = requestid
        end

        def deserialize(params)
          @Query = params['Query']
          @Images = params['Images']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

