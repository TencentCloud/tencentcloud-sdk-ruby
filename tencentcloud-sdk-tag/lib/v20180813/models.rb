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
          @Tags = params['Tags']
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
          @Tags = params['Tags']
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
          @Rows = params['Rows']
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
        # @param ResourceId: 资源唯一标识
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
          @Rows = params['Rows']
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
          @TagFilters = params['TagFilters']
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
          @Rows = params['Rows']
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
          @TagFilters = params['TagFilters']
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
          @Rows = params['Rows']
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
          @Tags = params['Tags']
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
          @Tags = params['Tags']
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
          @Tags = params['Tags']
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
          @Tags = params['Tags']
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
          @ReplaceTags = params['ReplaceTags']
          @DeleteTags = params['DeleteTags']
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
          @TagKeyValues = params['TagKeyValues']
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
          @Tags = params['Tags']
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

