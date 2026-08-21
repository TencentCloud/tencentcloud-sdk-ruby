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
  module Cloudrc
    module V20240606
      # DescribeResource请求参数结构体
      class DescribeResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceType: <p>资源类型</p>
        # @type ResourceType: String
        # @param RegionCode: <p>地域编码</p>
        # @type RegionCode: String
        # @param ResourceId: <p>资源ID</p>
        # @type ResourceId: String
        # @param ViewId: <p>视图ID</p>
        # @type ViewId: String

        attr_accessor :ResourceType, :RegionCode, :ResourceId, :ViewId

        def initialize(resourcetype=nil, regioncode=nil, resourceid=nil, viewid=nil)
          @ResourceType = resourcetype
          @RegionCode = regioncode
          @ResourceId = resourceid
          @ViewId = viewid
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @RegionCode = params['RegionCode']
          @ResourceId = params['ResourceId']
          @ViewId = params['ViewId']
        end
      end

      # DescribeResource返回参数结构体
      class DescribeResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: <p>资源ID</p>
        # @type ResourceId: String
        # @param ResourceAlias: <p>资源别名</p>
        # @type ResourceAlias: String
        # @param Uin: <p>uin</p>
        # @type Uin: Integer
        # @param ResourceType: <p>资源类型</p>
        # @type ResourceType: String
        # @param RegionCode: <p>地域编码</p>
        # @type RegionCode: String
        # @param ZoneCode: <p>可用区编码</p>
        # @type ZoneCode: String
        # @param PayMode: <p>付费类型</p>
        # @type PayMode: String
        # @param CreateTime: <p>资源创建时间</p>
        # @type CreateTime: String
        # @param ExpireTime: <p>资源过期时间</p>
        # @type ExpireTime: String
        # @param PrivateIpAddress: <p>内网IP</p>
        # @type PrivateIpAddress: Array
        # @param PublicIpAddress: <p>外网IP</p>
        # @type PublicIpAddress: Array
        # @param Properties: <p>资源属性</p>
        # @type Properties: String
        # @param Tags: <p>标签信息</p>
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ResourceAlias, :Uin, :ResourceType, :RegionCode, :ZoneCode, :PayMode, :CreateTime, :ExpireTime, :PrivateIpAddress, :PublicIpAddress, :Properties, :Tags, :RequestId

        def initialize(resourceid=nil, resourcealias=nil, uin=nil, resourcetype=nil, regioncode=nil, zonecode=nil, paymode=nil, createtime=nil, expiretime=nil, privateipaddress=nil, publicipaddress=nil, properties=nil, tags=nil, requestid=nil)
          @ResourceId = resourceid
          @ResourceAlias = resourcealias
          @Uin = uin
          @ResourceType = resourcetype
          @RegionCode = regioncode
          @ZoneCode = zonecode
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @PrivateIpAddress = privateipaddress
          @PublicIpAddress = publicipaddress
          @Properties = properties
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceAlias = params['ResourceAlias']
          @Uin = params['Uin']
          @ResourceType = params['ResourceType']
          @RegionCode = params['RegionCode']
          @ZoneCode = params['ZoneCode']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PublicIpAddress = params['PublicIpAddress']
          @Properties = params['Properties']
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

      # 过滤器
      class ExtendedFilter < TencentCloud::Common::AbstractModel
        # @param Key: <p>过滤条件键</p><p>枚举值：</p><ul><li>ResourceType： 资源类型</li><li>ResourceId： 资源ID</li><li>ResourceAlias： 资源名称</li><li>PayMode： 计费模式</li><li>RegionCode： 地域编码</li><li>ZoneCode： 可用区编码</li><li>PublicIpAddress： 外网IP</li><li>PrivateIpAddress： 内网IP</li><li>VpcId： VPC ID</li><li>SubnetId： 子网ID</li><li>Tag： 标签</li></ul>
        # @type Key: String
        # @param Values: <p>过滤条件值</p>
        # @type Values: Array
        # @param MatchType: <p>匹配方式</p><p>枚举值：</p><ul><li>Equals： 等于</li><li>NotEquals： 不等于</li><li>Contains： 包含</li><li>NotContains： 不包含</li><li>Exists： 存在</li><li>NotExists： 不存在</li></ul>
        # @type MatchType: String

        attr_accessor :Key, :Values, :MatchType

        def initialize(key=nil, values=nil, matchtype=nil)
          @Key = key
          @Values = values
          @MatchType = matchtype
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
          @MatchType = params['MatchType']
        end
      end

      # 资源信息
      class ResourceSummary < TencentCloud::Common::AbstractModel
        # @param ResourceId: <p>资源ID</p>
        # @type ResourceId: String
        # @param ResourceAlias: <p>资源别名</p>
        # @type ResourceAlias: String
        # @param Uin: <p>uin</p>
        # @type Uin: Integer
        # @param ResourceType: <p>资源类型</p>
        # @type ResourceType: String
        # @param RegionCode: <p>地域编码</p>
        # @type RegionCode: String
        # @param ZoneCode: <p>可用区编码</p>
        # @type ZoneCode: String
        # @param PayMode: <p>付费类型，包括后付费(0)、预付费(1)、预留实例(2)</p>
        # @type PayMode: String
        # @param CreateTime: <p>资源创建时间</p>
        # @type CreateTime: String
        # @param ExpireTime: <p>资源过期时间</p>
        # @type ExpireTime: String
        # @param PrivateIpAddress: <p>内网IP</p>
        # @type PrivateIpAddress: Array
        # @param PublicIpAddress: <p>外网IP</p>
        # @type PublicIpAddress: Array
        # @param Tags: <p>标签</p>
        # @type Tags: Array

        attr_accessor :ResourceId, :ResourceAlias, :Uin, :ResourceType, :RegionCode, :ZoneCode, :PayMode, :CreateTime, :ExpireTime, :PrivateIpAddress, :PublicIpAddress, :Tags

        def initialize(resourceid=nil, resourcealias=nil, uin=nil, resourcetype=nil, regioncode=nil, zonecode=nil, paymode=nil, createtime=nil, expiretime=nil, privateipaddress=nil, publicipaddress=nil, tags=nil)
          @ResourceId = resourceid
          @ResourceAlias = resourcealias
          @Uin = uin
          @ResourceType = resourcetype
          @RegionCode = regioncode
          @ZoneCode = zonecode
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @PrivateIpAddress = privateipaddress
          @PublicIpAddress = publicipaddress
          @Tags = tags
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceAlias = params['ResourceAlias']
          @Uin = params['Uin']
          @ResourceType = params['ResourceType']
          @RegionCode = params['RegionCode']
          @ZoneCode = params['ZoneCode']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PublicIpAddress = params['PublicIpAddress']
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

      # SearchResources请求参数结构体
      class SearchResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ViewId: <p>视图ID</p>
        # @type ViewId: String
        # @param MaxResults: <p>每页返回的最大记录数</p>
        # @type MaxResults: Integer
        # @param NextToken: <p>分页Token，首次查询不传</p>
        # @type NextToken: String
        # @param Filters: <p>过滤条件列表</p>
        # @type Filters: Array
        # @param SortBy: <p>排序条件</p><p>枚举值：</p><ul><li>CreateTime： 表示按资源创建时间排序</li><li>ExpireTime： 表示按资源到期时间排序</li><li>IpAddress： 表示按资源IP地址排序</li></ul>
        # @type SortBy: String
        # @param SortOrder: <p>排序顺序</p><p>枚举值：</p><ul><li>Asc： 升序</li><li>Desc： 降序</li></ul><p>默认值：Asc</p>
        # @type SortOrder: String

        attr_accessor :ViewId, :MaxResults, :NextToken, :Filters, :SortBy, :SortOrder

        def initialize(viewid=nil, maxresults=nil, nexttoken=nil, filters=nil, sortby=nil, sortorder=nil)
          @ViewId = viewid
          @MaxResults = maxresults
          @NextToken = nexttoken
          @Filters = filters
          @SortBy = sortby
          @SortOrder = sortorder
        end

        def deserialize(params)
          @ViewId = params['ViewId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              extendedfilter_tmp = ExtendedFilter.new
              extendedfilter_tmp.deserialize(i)
              @Filters << extendedfilter_tmp
            end
          end
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
        end
      end

      # SearchResources返回参数结构体
      class SearchResourcesResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: <p>下一页Token，为空时表示无更多数据</p>
        # @type NextToken: String
        # @param Resources: <p>资源列表</p>
        # @type Resources: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :Resources, :RequestId

        def initialize(nexttoken=nil, resources=nil, requestid=nil)
          @NextToken = nexttoken
          @Resources = resources
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourcesummary_tmp = ResourceSummary.new
              resourcesummary_tmp.deserialize(i)
              @Resources << resourcesummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

    end
  end
end

