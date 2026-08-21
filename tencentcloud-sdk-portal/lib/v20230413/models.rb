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
  module Portal
    module V20230413
      # 搜索文档结果
      class SearchDocumentItem < TencentCloud::Common::AbstractModel
        # @param Url: <p>文档URL</p>
        # @type Url: String
        # @param Title: <p>文档标题</p>
        # @type Title: String
        # @param ProductName: <p>产品名称</p>
        # @type ProductName: String
        # @param Snippet: <p>文档片段</p>
        # @type Snippet: String

        attr_accessor :Url, :Title, :ProductName, :Snippet

        def initialize(url=nil, title=nil, productname=nil, snippet=nil)
          @Url = url
          @Title = title
          @ProductName = productname
          @Snippet = snippet
        end

        def deserialize(params)
          @Url = params['Url']
          @Title = params['Title']
          @ProductName = params['ProductName']
          @Snippet = params['Snippet']
        end
      end

      # SearchDocuments请求参数结构体
      class SearchDocumentsRequest < TencentCloud::Common::AbstractModel
        # @param Query: <p>搜索关键词</p>
        # @type Query: String
        # @param Page: <p>页码</p><p>取值范围：[1, 99]</p>
        # @type Page: Integer
        # @param PageSize: <p>每页条数</p><p>取值范围：[1, 20]</p>
        # @type PageSize: Integer
        # @param ProductName: <p>产品名称</p>
        # @type ProductName: String

        attr_accessor :Query, :Page, :PageSize, :ProductName

        def initialize(query=nil, page=nil, pagesize=nil, productname=nil)
          @Query = query
          @Page = page
          @PageSize = pagesize
          @ProductName = productname
        end

        def deserialize(params)
          @Query = params['Query']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @ProductName = params['ProductName']
        end
      end

      # SearchDocuments返回参数结构体
      class SearchDocumentsResponse < TencentCloud::Common::AbstractModel
        # @param Total: <p>总数</p>
        # @type Total: Integer
        # @param Documents: <p>文档列表</p>
        # @type Documents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Documents, :RequestId

        def initialize(total=nil, documents=nil, requestid=nil)
          @Total = total
          @Documents = documents
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Documents'].nil?
            @Documents = []
            params['Documents'].each do |i|
              searchdocumentitem_tmp = SearchDocumentItem.new
              searchdocumentitem_tmp.deserialize(i)
              @Documents << searchdocumentitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

