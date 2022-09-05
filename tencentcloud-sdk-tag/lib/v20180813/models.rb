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
  module Tag
    module V20180813
      # AddResourceTag请求参数结构体
      class AddResourceTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param Resource: [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        # @type Resource: String

        attr_accessor :TagKey, :TagValue, :Resource
        
        def initialize(tagkey=nil, tagvalue=nil, resource=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @Resource = resource
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @Resource = params['Resource']
        end
      end

      # AddResourceTag返回参数结构体
      class AddResourceTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # AttachResourcesTag请求参数结构体
      class AttachResourcesTagRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 资源所属业务名称（资源六段式中的第三段）
        # @type ServiceType: String
        # @param ResourceIds: 资源ID数组，资源个数最多为50
        # @type ResourceIds: Array
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param ResourceRegion: 资源所在地域，不区分地域的资源不需要传入该字段，区分地域的资源必填
        # @type ResourceRegion: String
        # @param ResourcePrefix: 资源前缀（资源六段式中最后一段"/"前面的部分），cos存储桶不需要传入该字段，其他云资源必填
        # @type ResourcePrefix: String

        attr_accessor :ServiceType, :ResourceIds, :TagKey, :TagValue, :ResourceRegion, :ResourcePrefix
        
        def initialize(servicetype=nil, resourceids=nil, tagkey=nil, tagvalue=nil, resourceregion=nil, resourceprefix=nil)
          @ServiceType = servicetype
          @ResourceIds = resourceids
          @TagKey = tagkey
          @TagValue = tagvalue
          @ResourceRegion = resourceregion
          @ResourcePrefix = resourceprefix
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourceIds = params['ResourceIds']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @ResourceRegion = params['ResourceRegion']
          @ResourcePrefix = params['ResourcePrefix']
        end
      end

      # AttachResourcesTag返回参数结构体
      class AttachResourcesTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateTag请求参数结构体
      class CreateTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # CreateTag返回参数结构体
      class CreateTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateTags请求参数结构体
      class CreateTagsRequest < TencentCloud::Common::AbstractModel
        # @param Tags: 标签列表。
        # N取值范围：0~9
        # @type Tags: Array

        attr_accessor :Tags
        
        def initialize(tags=nil)
          @Tags = tags
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateTags返回参数结构体
      class CreateTagsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteResourceTag请求参数结构体
      class DeleteResourceTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param Resource: [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        # @type Resource: String

        attr_accessor :TagKey, :Resource
        
        def initialize(tagkey=nil, resource=nil)
          @TagKey = tagkey
          @Resource = resource
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @Resource = params['Resource']
        end
      end

      # DeleteResourceTag返回参数结构体
      class DeleteResourceTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteTag请求参数结构体
      class DeleteTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 需要删除的标签键
        # @type TagKey: String
        # @param TagValue: 需要删除的标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # DeleteTag返回参数结构体
      class DeleteTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteTags请求参数结构体
      class DeleteTagsRequest < TencentCloud::Common::AbstractModel
        # @param Tags: 标签列表。
        # N取值范围：0~9
        # @type Tags: Array

        attr_accessor :Tags
        
        def initialize(tags=nil)
          @Tags = tags
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # DeleteTags返回参数结构体
      class DeleteTagsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param AllList: 传1拉取所有项目（包括隐藏项目），不传或传0拉取显示项目
        # @type AllList: Integer
        # @param Limit: 分页条数，固定值1000。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer

        attr_accessor :AllList, :Limit, :Offset
        
        def initialize(alllist=nil, limit=nil, offset=nil)
          @AllList = alllist
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @AllList = params['AllList']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数据总条数
        # @type Total: Integer
        # @param Projects: 项目列表
        # @type Projects: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Projects, :RequestId
        
        def initialize(total=nil, projects=nil, requestid=nil)
          @Total = total
          @Projects = projects
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @Projects << project_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTagsByResourceIds请求参数结构体
      class DescribeResourceTagsByResourceIdsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 业务类型
        # @type ServiceType: String
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceIds: 资源ID数组，大小不超过50
        # @type ResourceIds: Array
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer

        attr_accessor :ServiceType, :ResourcePrefix, :ResourceIds, :ResourceRegion, :Offset, :Limit
        
        def initialize(servicetype=nil, resourceprefix=nil, resourceids=nil, resourceregion=nil, offset=nil, limit=nil)
          @ServiceType = servicetype
          @ResourcePrefix = resourceprefix
          @ResourceIds = resourceids
          @ResourceRegion = resourceregion
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceIds = params['ResourceIds']
          @ResourceRegion = params['ResourceRegion']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeResourceTagsByResourceIds返回参数结构体
      class DescribeResourceTagsByResourceIdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagresource_tmp = TagResource.new
              tagresource_tmp.deserialize(i)
              @Tags << tagresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTagsByResourceIdsSeq请求参数结构体
      class DescribeResourceTagsByResourceIdsSeqRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 业务类型
        # @type ServiceType: String
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceIds: 资源唯一标记
        # @type ResourceIds: Array
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer

        attr_accessor :ServiceType, :ResourcePrefix, :ResourceIds, :ResourceRegion, :Offset, :Limit
        
        def initialize(servicetype=nil, resourceprefix=nil, resourceids=nil, resourceregion=nil, offset=nil, limit=nil)
          @ServiceType = servicetype
          @ResourcePrefix = resourceprefix
          @ResourceIds = resourceids
          @ResourceRegion = resourceregion
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceIds = params['ResourceIds']
          @ResourceRegion = params['ResourceRegion']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeResourceTagsByResourceIdsSeq返回参数结构体
      class DescribeResourceTagsByResourceIdsSeqResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagresource_tmp = TagResource.new
              tagresource_tmp.deserialize(i)
              @Tags << tagresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTagsByTagKeys请求参数结构体
      class DescribeResourceTagsByTagKeysRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 业务类型
        # @type ServiceType: String
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param ResourceIds: 资源唯一标识
        # @type ResourceIds: Array
        # @param TagKeys: 资源标签键
        # @type TagKeys: Array
        # @param Limit: 每页大小，默认为 400
        # @type Limit: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer

        attr_accessor :ServiceType, :ResourcePrefix, :ResourceRegion, :ResourceIds, :TagKeys, :Limit, :Offset
        
        def initialize(servicetype=nil, resourceprefix=nil, resourceregion=nil, resourceids=nil, tagkeys=nil, limit=nil, offset=nil)
          @ServiceType = servicetype
          @ResourcePrefix = resourceprefix
          @ResourceRegion = resourceregion
          @ResourceIds = resourceids
          @TagKeys = tagkeys
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceRegion = params['ResourceRegion']
          @ResourceIds = params['ResourceIds']
          @TagKeys = params['TagKeys']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeResourceTagsByTagKeys返回参数结构体
      class DescribeResourceTagsByTagKeysResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Rows: 资源标签
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Rows, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              resourceidtag_tmp = ResourceIdTag.new
              resourceidtag_tmp.deserialize(i)
              @Rows << resourceidtag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTags请求参数结构体
      class DescribeResourceTagsRequest < TencentCloud::Common::AbstractModel
        # @param CreateUin: 创建者uin
        # @type CreateUin: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param ServiceType: 业务类型
        # @type ServiceType: String
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceId: 资源唯一标识。只输入ResourceId进行查询可能会查询较慢，或者无法匹配到结果，建议在输入ResourceId的同时也输入ServiceType、ResourcePrefix和ResourceRegion（不区分地域的资源可忽略该参数）
        # @type ResourceId: String
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param CosResourceId: 是否是cos的资源（0或者1），输入的ResourceId为cos资源时必填
        # @type CosResourceId: Integer

        attr_accessor :CreateUin, :ResourceRegion, :ServiceType, :ResourcePrefix, :ResourceId, :Offset, :Limit, :CosResourceId
        
        def initialize(createuin=nil, resourceregion=nil, servicetype=nil, resourceprefix=nil, resourceid=nil, offset=nil, limit=nil, cosresourceid=nil)
          @CreateUin = createuin
          @ResourceRegion = resourceregion
          @ServiceType = servicetype
          @ResourcePrefix = resourceprefix
          @ResourceId = resourceid
          @Offset = offset
          @Limit = limit
          @CosResourceId = cosresourceid
        end

        def deserialize(params)
          @CreateUin = params['CreateUin']
          @ResourceRegion = params['ResourceRegion']
          @ServiceType = params['ServiceType']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceId = params['ResourceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CosResourceId = params['CosResourceId']
        end
      end

      # DescribeResourceTags返回参数结构体
      class DescribeResourceTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Rows: 资源标签
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Rows, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tagresource_tmp = TagResource.new
              tagresource_tmp.deserialize(i)
              @Rows << tagresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByTags请求参数结构体
      class DescribeResourcesByTagsRequest < TencentCloud::Common::AbstractModel
        # @param TagFilters: 标签过滤数组
        # @type TagFilters: Array
        # @param CreateUin: 创建标签者uin
        # @type CreateUin: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceId: 资源唯一标记
        # @type ResourceId: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param ServiceType: 业务类型
        # @type ServiceType: String

        attr_accessor :TagFilters, :CreateUin, :Offset, :Limit, :ResourcePrefix, :ResourceId, :ResourceRegion, :ServiceType
        
        def initialize(tagfilters=nil, createuin=nil, offset=nil, limit=nil, resourceprefix=nil, resourceid=nil, resourceregion=nil, servicetype=nil)
          @TagFilters = tagfilters
          @CreateUin = createuin
          @Offset = offset
          @Limit = limit
          @ResourcePrefix = resourceprefix
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @ServiceType = servicetype
        end

        def deserialize(params)
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @CreateUin = params['CreateUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @ServiceType = params['ServiceType']
        end
      end

      # DescribeResourcesByTags返回参数结构体
      class DescribeResourcesByTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Rows: 资源标签
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Rows, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @Rows << resourcetag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByTagsUnion请求参数结构体
      class DescribeResourcesByTagsUnionRequest < TencentCloud::Common::AbstractModel
        # @param TagFilters: 标签过滤数组
        # @type TagFilters: Array
        # @param CreateUin: 创建标签者uin
        # @type CreateUin: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param ResourcePrefix: 资源前缀
        # @type ResourcePrefix: String
        # @param ResourceId: 资源唯一标记
        # @type ResourceId: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param ServiceType: 业务类型
        # @type ServiceType: String

        attr_accessor :TagFilters, :CreateUin, :Offset, :Limit, :ResourcePrefix, :ResourceId, :ResourceRegion, :ServiceType
        
        def initialize(tagfilters=nil, createuin=nil, offset=nil, limit=nil, resourceprefix=nil, resourceid=nil, resourceregion=nil, servicetype=nil)
          @TagFilters = tagfilters
          @CreateUin = createuin
          @Offset = offset
          @Limit = limit
          @ResourcePrefix = resourceprefix
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @ServiceType = servicetype
        end

        def deserialize(params)
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @CreateUin = params['CreateUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @ServiceType = params['ServiceType']
        end
      end

      # DescribeResourcesByTagsUnion返回参数结构体
      class DescribeResourcesByTagsUnionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Rows: 资源标签
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Rows, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @Rows << resourcetag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagKeys请求参数结构体
      class DescribeTagKeysRequest < TencentCloud::Common::AbstractModel
        # @param CreateUin: 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        # @type CreateUin: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param ShowProject: 是否展现项目
        # @type ShowProject: Integer

        attr_accessor :CreateUin, :Offset, :Limit, :ShowProject
        
        def initialize(createuin=nil, offset=nil, limit=nil, showproject=nil)
          @CreateUin = createuin
          @Offset = offset
          @Limit = limit
          @ShowProject = showproject
        end

        def deserialize(params)
          @CreateUin = params['CreateUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ShowProject = params['ShowProject']
        end
      end

      # DescribeTagKeys返回参数结构体
      class DescribeTagKeysResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Tags = params['Tags']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagValues请求参数结构体
      class DescribeTagValuesRequest < TencentCloud::Common::AbstractModel
        # @param TagKeys: 标签键列表
        # @type TagKeys: Array
        # @param CreateUin: 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        # @type CreateUin: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer

        attr_accessor :TagKeys, :CreateUin, :Offset, :Limit
        
        def initialize(tagkeys=nil, createuin=nil, offset=nil, limit=nil)
          @TagKeys = tagkeys
          @CreateUin = createuin
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TagKeys = params['TagKeys']
          @CreateUin = params['CreateUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTagValues返回参数结构体
      class DescribeTagValuesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagValuesSeq请求参数结构体
      class DescribeTagValuesSeqRequest < TencentCloud::Common::AbstractModel
        # @param TagKeys: 标签键列表
        # @type TagKeys: Array
        # @param CreateUin: 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        # @type CreateUin: Integer
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer

        attr_accessor :TagKeys, :CreateUin, :Offset, :Limit
        
        def initialize(tagkeys=nil, createuin=nil, offset=nil, limit=nil)
          @TagKeys = tagkeys
          @CreateUin = createuin
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TagKeys = params['TagKeys']
          @CreateUin = params['CreateUin']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTagValuesSeq返回参数结构体
      class DescribeTagValuesSeqResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTags请求参数结构体
      class DescribeTagsRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签
        # @type TagKey: String
        # @param TagValue: 标签值,与标签键同时存在或同时不存在，不存在时表示查询该用户所有标签
        # @type TagValue: String
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param CreateUin: 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        # @type CreateUin: Integer
        # @param TagKeys: 标签键数组,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签,当与TagKey同时传递时只取本值
        # @type TagKeys: Array
        # @param ShowProject: 是否展现项目标签
        # @type ShowProject: Integer

        attr_accessor :TagKey, :TagValue, :Offset, :Limit, :CreateUin, :TagKeys, :ShowProject
        
        def initialize(tagkey=nil, tagvalue=nil, offset=nil, limit=nil, createuin=nil, tagkeys=nil, showproject=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @Offset = offset
          @Limit = limit
          @CreateUin = createuin
          @TagKeys = tagkeys
          @ShowProject = showproject
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreateUin = params['CreateUin']
          @TagKeys = params['TagKeys']
          @ShowProject = params['ShowProject']
        end
      end

      # DescribeTags返回参数结构体
      class DescribeTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdelete_tmp = TagWithDelete.new
              tagwithdelete_tmp.deserialize(i)
              @Tags << tagwithdelete_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagsSeq请求参数结构体
      class DescribeTagsSeqRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签
        # @type TagKey: String
        # @param TagValue: 标签值,与标签键同时存在或同时不存在，不存在时表示查询该用户所有标签
        # @type TagValue: String
        # @param Offset: 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        # @type Offset: Integer
        # @param Limit: 每页大小，默认为 15
        # @type Limit: Integer
        # @param CreateUin: 创建者用户 Uin，不传或为空只将 Uin 作为条件查询
        # @type CreateUin: Integer
        # @param TagKeys: 标签键数组,与标签值同时存在或同时不存在，不存在时表示查询该用户所有标签,当与TagKey同时传递时只取本值
        # @type TagKeys: Array
        # @param ShowProject: 是否展现项目标签
        # @type ShowProject: Integer

        attr_accessor :TagKey, :TagValue, :Offset, :Limit, :CreateUin, :TagKeys, :ShowProject
        
        def initialize(tagkey=nil, tagvalue=nil, offset=nil, limit=nil, createuin=nil, tagkeys=nil, showproject=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @Offset = offset
          @Limit = limit
          @CreateUin = createuin
          @TagKeys = tagkeys
          @ShowProject = showproject
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreateUin = params['CreateUin']
          @TagKeys = params['TagKeys']
          @ShowProject = params['ShowProject']
        end
      end

      # DescribeTagsSeq返回参数结构体
      class DescribeTagsSeqResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param Offset: 数据位移偏量
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Offset, :Limit, :Tags, :RequestId
        
        def initialize(totalcount=nil, offset=nil, limit=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Offset = offset
          @Limit = limit
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagwithdelete_tmp = TagWithDelete.new
              tagwithdelete_tmp.deserialize(i)
              @Tags << tagwithdelete_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachResourcesTag请求参数结构体
      class DetachResourcesTagRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 资源所属业务名称（资源六段式中的第三段）
        # @type ServiceType: String
        # @param ResourceIds: 资源ID数组，资源个数最多为50
        # @type ResourceIds: Array
        # @param TagKey: 需要解绑的标签键
        # @type TagKey: String
        # @param ResourceRegion: 资源所在地域，不区分地域的资源不需要传入该字段，区分地域的资源必填
        # @type ResourceRegion: String
        # @param ResourcePrefix: 资源前缀（资源六段式中最后一段"/"前面的部分），cos存储桶不需要传入该字段，其他云资源必填
        # @type ResourcePrefix: String

        attr_accessor :ServiceType, :ResourceIds, :TagKey, :ResourceRegion, :ResourcePrefix
        
        def initialize(servicetype=nil, resourceids=nil, tagkey=nil, resourceregion=nil, resourceprefix=nil)
          @ServiceType = servicetype
          @ResourceIds = resourceids
          @TagKey = tagkey
          @ResourceRegion = resourceregion
          @ResourcePrefix = resourceprefix
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourceIds = params['ResourceIds']
          @TagKey = params['TagKey']
          @ResourceRegion = params['ResourceRegion']
          @ResourcePrefix = params['ResourcePrefix']
        end
      end

      # DetachResourcesTag返回参数结构体
      class DetachResourcesTagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 失败资源信息。
      # 绑定或解绑资源标签时失败返回
      class FailedResource < TencentCloud::Common::AbstractModel
        # @param Resource: 失败的资源六段式
        # @type Resource: String
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :Resource, :Code, :Message
        
        def initialize(resource=nil, code=nil, message=nil)
          @Resource = resource
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # GetResources请求参数结构体
      class GetResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceList: 资源六段式列表。腾讯云使用资源六段式描述一个资源。
        # 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:${Account}:${ResourcePreifx}/${ResourceId}。
        # 如果传入了此参数会返回所有匹配的资源列表，指定的MaxResults会失效。
        # N取值范围：0~9
        # @type ResourceList: Array
        # @param TagFilters: 标签键和标签值。
        # 指定多个标签，会查询同时绑定了该多个标签的资源。
        # N取值范围：0~5。
        # 每个TagFilters中的TagValue最多支持10个
        # @type TagFilters: Array
        # @param PaginationToken: 从上一页的响应中获取的下一页的Token值。
        # 如果是第一次请求，设置为空。
        # @type PaginationToken: String
        # @param MaxResults: 每一页返回的数据最大条数，最大200。
        # 缺省值：50。
        # @type MaxResults: Integer

        attr_accessor :ResourceList, :TagFilters, :PaginationToken, :MaxResults
        
        def initialize(resourcelist=nil, tagfilters=nil, paginationtoken=nil, maxresults=nil)
          @ResourceList = resourcelist
          @TagFilters = tagfilters
          @PaginationToken = paginationtoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @ResourceList = params['ResourceList']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @PaginationToken = params['PaginationToken']
          @MaxResults = params['MaxResults']
        end
      end

      # GetResources返回参数结构体
      class GetResourcesResponse < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 获取的下一页的Token值
        # @type PaginationToken: String
        # @param ResourceTagMappingList: 资源及关联的标签(键和值)列表
        # @type ResourceTagMappingList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PaginationToken, :ResourceTagMappingList, :RequestId
        
        def initialize(paginationtoken=nil, resourcetagmappinglist=nil, requestid=nil)
          @PaginationToken = paginationtoken
          @ResourceTagMappingList = resourcetagmappinglist
          @RequestId = requestid
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          unless params['ResourceTagMappingList'].nil?
            @ResourceTagMappingList = []
            params['ResourceTagMappingList'].each do |i|
              resourcetagmapping_tmp = ResourceTagMapping.new
              resourcetagmapping_tmp.deserialize(i)
              @ResourceTagMappingList << resourcetagmapping_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTagKeys请求参数结构体
      class GetTagKeysRequest < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 从上一页的响应中获取的下一页的Token值。
        # 如果是第一次请求，设置为空。
        # @type PaginationToken: String
        # @param MaxResults: 每一页返回的数据最大条数，最大1000。
        # 缺省值：50。
        # @type MaxResults: Integer

        attr_accessor :PaginationToken, :MaxResults
        
        def initialize(paginationtoken=nil, maxresults=nil)
          @PaginationToken = paginationtoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          @MaxResults = params['MaxResults']
        end
      end

      # GetTagKeys返回参数结构体
      class GetTagKeysResponse < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 获取的下一页的Token值
        # @type PaginationToken: String
        # @param TagKeys: 标签键信息。
        # @type TagKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PaginationToken, :TagKeys, :RequestId
        
        def initialize(paginationtoken=nil, tagkeys=nil, requestid=nil)
          @PaginationToken = paginationtoken
          @TagKeys = tagkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          @TagKeys = params['TagKeys']
          @RequestId = params['RequestId']
        end
      end

      # GetTagValues请求参数结构体
      class GetTagValuesRequest < TencentCloud::Common::AbstractModel
        # @param TagKeys: 标签键。
        # 返回所有标签键列表对应的标签值。
        # 最大长度：20
        # @type TagKeys: Array
        # @param PaginationToken: 从上一页的响应中获取的下一页的Token值。
        # 如果是第一次请求，设置为空。
        # @type PaginationToken: String
        # @param MaxResults: 每一页返回的数据最大条数，最大1000。
        # 缺省值：50。
        # @type MaxResults: Integer

        attr_accessor :TagKeys, :PaginationToken, :MaxResults
        
        def initialize(tagkeys=nil, paginationtoken=nil, maxresults=nil)
          @TagKeys = tagkeys
          @PaginationToken = paginationtoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @TagKeys = params['TagKeys']
          @PaginationToken = params['PaginationToken']
          @MaxResults = params['MaxResults']
        end
      end

      # GetTagValues返回参数结构体
      class GetTagValuesResponse < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 获取的下一页的Token值
        # @type PaginationToken: String
        # @param Tags: 标签列表。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PaginationToken, :Tags, :RequestId
        
        def initialize(paginationtoken=nil, tags=nil, requestid=nil)
          @PaginationToken = paginationtoken
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTags请求参数结构体
      class GetTagsRequest < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 从上一页的响应中获取的下一页的Token值。
        # 如果是第一次请求，设置为空。
        # @type PaginationToken: String
        # @param MaxResults: 每一页返回的数据最大条数，最大1000。
        # 缺省值：50。
        # @type MaxResults: Integer
        # @param TagKeys: 标签键。
        # 返回所有标签键列表对应的标签。
        # 最大长度：20
        # @type TagKeys: Array

        attr_accessor :PaginationToken, :MaxResults, :TagKeys
        
        def initialize(paginationtoken=nil, maxresults=nil, tagkeys=nil)
          @PaginationToken = paginationtoken
          @MaxResults = maxresults
          @TagKeys = tagkeys
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          @MaxResults = params['MaxResults']
          @TagKeys = params['TagKeys']
        end
      end

      # GetTags返回参数结构体
      class GetTagsResponse < TencentCloud::Common::AbstractModel
        # @param PaginationToken: 获取的下一页的Token值
        # @type PaginationToken: String
        # @param Tags: 标签列表。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PaginationToken, :Tags, :RequestId
        
        def initialize(paginationtoken=nil, tags=nil, requestid=nil)
          @PaginationToken = paginationtoken
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @PaginationToken = params['PaginationToken']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceTags请求参数结构体
      class ModifyResourceTagsRequest < TencentCloud::Common::AbstractModel
        # @param Resource: [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        # @type Resource: String
        # @param ReplaceTags: 需要增加或修改的标签集合。如果Resource描述的资源未关联输入的标签键，则增加关联；若已关联，则将该资源关联的键对应的标签值修改为输入值。本接口中ReplaceTags和DeleteTags二者必须存在其一，且二者不能包含相同的标签键。可以不传该参数，但不能是空数组。
        # @type ReplaceTags: Array
        # @param DeleteTags: 需要解关联的标签集合。本接口中ReplaceTags和DeleteTags二者必须存在其一，且二者不能包含相同的标签键。可以不传该参数，但不能是空数组。
        # @type DeleteTags: Array

        attr_accessor :Resource, :ReplaceTags, :DeleteTags
        
        def initialize(resource=nil, replacetags=nil, deletetags=nil)
          @Resource = resource
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['ReplaceTags'].nil?
            @ReplaceTags = []
            params['ReplaceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ReplaceTags << tag_tmp
            end
          end
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              tagkeyobject_tmp = TagKeyObject.new
              tagkeyobject_tmp.deserialize(i)
              @DeleteTags << tagkeyobject_tmp
            end
          end
        end
      end

      # ModifyResourceTags返回参数结构体
      class ModifyResourceTagsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourcesTagValue请求参数结构体
      class ModifyResourcesTagValueRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 资源所属业务名称（资源六段式中的第三段）
        # @type ServiceType: String
        # @param ResourceIds: 资源ID数组，资源个数最多为50
        # @type ResourceIds: Array
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param ResourceRegion: 资源所在地域，不区分地域的资源不需要传入该字段，区分地域的资源必填
        # @type ResourceRegion: String
        # @param ResourcePrefix: 资源前缀（资源六段式中最后一段"/"前面的部分），cos存储桶不需要传入该字段，其他云资源必填
        # @type ResourcePrefix: String

        attr_accessor :ServiceType, :ResourceIds, :TagKey, :TagValue, :ResourceRegion, :ResourcePrefix
        
        def initialize(servicetype=nil, resourceids=nil, tagkey=nil, tagvalue=nil, resourceregion=nil, resourceprefix=nil)
          @ServiceType = servicetype
          @ResourceIds = resourceids
          @TagKey = tagkey
          @TagValue = tagvalue
          @ResourceRegion = resourceregion
          @ResourcePrefix = resourceprefix
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ResourceIds = params['ResourceIds']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @ResourceRegion = params['ResourceRegion']
          @ResourcePrefix = params['ResourcePrefix']
        end
      end

      # ModifyResourcesTagValue返回参数结构体
      class ModifyResourcesTagValueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 项目信息
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param CreatorUin: 创建人uin
        # @type CreatorUin: Integer
        # @param ProjectInfo: 项目描述
        # @type ProjectInfo: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ProjectId, :ProjectName, :CreatorUin, :ProjectInfo, :CreateTime
        
        def initialize(projectid=nil, projectname=nil, creatoruin=nil, projectinfo=nil, createtime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @CreatorUin = creatoruin
          @ProjectInfo = projectinfo
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @CreatorUin = params['CreatorUin']
          @ProjectInfo = params['ProjectInfo']
          @CreateTime = params['CreateTime']
        end
      end

      # 资源标签键值
      class ResourceIdTag < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param TagKeyValues: 标签键值对
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKeyValues: Array

        attr_accessor :ResourceId, :TagKeyValues
        
        def initialize(resourceid=nil, tagkeyvalues=nil)
          @ResourceId = resourceid
          @TagKeyValues = tagkeyvalues
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['TagKeyValues'].nil?
            @TagKeyValues = []
            params['TagKeyValues'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagKeyValues << tag_tmp
            end
          end
        end
      end

      # 资源标签
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param ResourceRegion: 资源所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRegion: String
        # @param ServiceType: 业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param ResourcePrefix: 资源前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourcePrefix: String
        # @param ResourceId: 资源唯一标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param Tags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ResourceRegion, :ServiceType, :ResourcePrefix, :ResourceId, :Tags
        
        def initialize(resourceregion=nil, servicetype=nil, resourceprefix=nil, resourceid=nil, tags=nil)
          @ResourceRegion = resourceregion
          @ServiceType = servicetype
          @ResourcePrefix = resourceprefix
          @ResourceId = resourceid
          @Tags = tags
        end

        def deserialize(params)
          @ResourceRegion = params['ResourceRegion']
          @ServiceType = params['ServiceType']
          @ResourcePrefix = params['ResourcePrefix']
          @ResourceId = params['ResourceId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 资源及关联的标签(键和值)。
      class ResourceTagMapping < TencentCloud::Common::AbstractModel
        # @param Resource: 资源六段式。腾讯云使用资源六段式描述一个资源。
        # 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:${Account}:${ResourcePreifx}/${ResourceId}。
        # @type Resource: String
        # @param Tags: 资源关联的标签列表
        # @type Tags: Array

        attr_accessor :Resource, :Tags
        
        def initialize(resource=nil, tags=nil)
          @Resource = resource
          @Tags = tags
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 表示一个标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # tag过滤数组多个是与的关系
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值数组 多个值的话是或的关系
        # @type TagValue: Array

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签键对象
      class TagKeyObject < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String

        attr_accessor :TagKey
        
        def initialize(tagkey=nil)
          @TagKey = tagkey
        end

        def deserialize(params)
          @TagKey = params['TagKey']
        end
      end

      # 标签键值对以及资源ID
      class TagResource < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param TagKeyMd5: 标签键MD5值
        # @type TagKeyMd5: String
        # @param TagValueMd5: 标签值MD5值
        # @type TagValueMd5: String
        # @param ServiceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String

        attr_accessor :TagKey, :TagValue, :ResourceId, :TagKeyMd5, :TagValueMd5, :ServiceType
        
        def initialize(tagkey=nil, tagvalue=nil, resourceid=nil, tagkeymd5=nil, tagvaluemd5=nil, servicetype=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @ResourceId = resourceid
          @TagKeyMd5 = tagkeymd5
          @TagValueMd5 = tagvaluemd5
          @ServiceType = servicetype
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @ResourceId = params['ResourceId']
          @TagKeyMd5 = params['TagKeyMd5']
          @TagValueMd5 = params['TagValueMd5']
          @ServiceType = params['ServiceType']
        end
      end

      # TagResources请求参数结构体
      class TagResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceList: 资源六段式列表。腾讯云使用资源六段式描述一个资源。可参考[访问管理](https://cloud.tencent.com/document/product/598/67350)-概览-接口列表-资源六段式信息
        # 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:uin/${Account}:${ResourcePrefix}/${ResourceId}。
        # N取值范围：0~9
        # @type ResourceList: Array
        # @param Tags: 标签键和标签值。
        # 如果指定多个标签，则会为指定资源同时创建并绑定该多个标签。
        # 同一个资源上的同一个标签键只能对应一个标签值。如果您尝试添加已有标签键，则对应的标签值会更新为新值。
        # 如果标签不存在会为您自动创建标签。
        # N取值范围：0~9
        # @type Tags: Array

        attr_accessor :ResourceList, :Tags
        
        def initialize(resourcelist=nil, tags=nil)
          @ResourceList = resourcelist
          @Tags = tags
        end

        def deserialize(params)
          @ResourceList = params['ResourceList']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # TagResources返回参数结构体
      class TagResourcesResponse < TencentCloud::Common::AbstractModel
        # @param FailedResources: 失败资源信息。
        # 创建并绑定标签成功时，返回的FailedResources为空。
        # 创建并绑定标签失败或部分失败时，返回的FailedResources会显示失败资源的详细信息。
        # @type FailedResources: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedResources, :RequestId
        
        def initialize(failedresources=nil, requestid=nil)
          @FailedResources = failedresources
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailedResources'].nil?
            @FailedResources = []
            params['FailedResources'].each do |i|
              failedresource_tmp = FailedResource.new
              failedresource_tmp.deserialize(i)
              @FailedResources << failedresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 表示一个标签键值对以及是否允许删除
      class TagWithDelete < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param CanDelete: 是否可以删除
        # @type CanDelete: Integer

        attr_accessor :TagKey, :TagValue, :CanDelete
        
        def initialize(tagkey=nil, tagvalue=nil, candelete=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @CanDelete = candelete
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @CanDelete = params['CanDelete']
        end
      end

      # UnTagResources请求参数结构体
      class UnTagResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceList: 资源六段式列表。腾讯云使用资源六段式描述一个资源。可参考[访问管理](https://cloud.tencent.com/document/product/598/67350)-概览-接口列表-资源六段式信息
        # 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:uin/${Account}:${ResourcePrefix}/${ResourceId}。
        # N取值范围：0~9
        # @type ResourceList: Array
        # @param TagKeys: 标签键。
        # 取值范围：0~9
        # @type TagKeys: Array

        attr_accessor :ResourceList, :TagKeys
        
        def initialize(resourcelist=nil, tagkeys=nil)
          @ResourceList = resourcelist
          @TagKeys = tagkeys
        end

        def deserialize(params)
          @ResourceList = params['ResourceList']
          @TagKeys = params['TagKeys']
        end
      end

      # UnTagResources返回参数结构体
      class UnTagResourcesResponse < TencentCloud::Common::AbstractModel
        # @param FailedResources: 失败资源信息。
        # 解绑标签成功时，返回的FailedResources为空。
        # 解绑标签失败或部分失败时，返回的FailedResources会显示失败资源的详细信息。
        # @type FailedResources: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedResources, :RequestId
        
        def initialize(failedresources=nil, requestid=nil)
          @FailedResources = failedresources
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailedResources'].nil?
            @FailedResources = []
            params['FailedResources'].each do |i|
              failedresource_tmp = FailedResource.new
              failedresource_tmp.deserialize(i)
              @FailedResources << failedresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateResourceTagValue请求参数结构体
      class UpdateResourceTagValueRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 资源关联的标签键
        # @type TagKey: String
        # @param TagValue: 修改后的标签值
        # @type TagValue: String
        # @param Resource: [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        # @type Resource: String

        attr_accessor :TagKey, :TagValue, :Resource
        
        def initialize(tagkey=nil, tagvalue=nil, resource=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @Resource = resource
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @Resource = params['Resource']
        end
      end

      # UpdateResourceTagValue返回参数结构体
      class UpdateResourceTagValueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

