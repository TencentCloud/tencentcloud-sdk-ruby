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
  module Ioa
    module V20220601
      # - [ ] 过滤条件<br>

      # <li>Name - String - 是否必填：否 - 操作符: ilike  - 排序支持：否- 根据分组名称进行查询。</li>
      # 分页参数<br>
      # <li>PageNum 从1开始，小于等于0时使用默认参数。</li>
      # <li>PageSize 最大值5000，最好不超过100。</li>
      class Condition < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array
        # @param FilterGroups: FilterGroups 条件过滤组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterGroups: Array
        # @param Sort: Sort 排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageSize: PageSize 每页获取数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNum: PageNum 获取第几页(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNum: Integer

        attr_accessor :Filters, :FilterGroups, :Sort, :PageSize, :PageNum

        def initialize(filters=nil, filtergroups=nil, sort=nil, pagesize=nil, pagenum=nil)
          @Filters = filters
          @FilterGroups = filtergroups
          @Sort = sort
          @PageSize = pagesize
          @PageNum = pagenum
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['FilterGroups'].nil?
            @FilterGroups = []
            params['FilterGroups'].each do |i|
              filtergroup_tmp = FilterGroup.new
              filtergroup_tmp.deserialize(i)
              @FilterGroups << filtergroup_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
        end
      end

      # 分页的data数据
      class DescribeDevicesPageRsp < TencentCloud::Common::AbstractModel
        # @param Paging: 数据分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paging: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Paging

        def initialize(paging=nil)
          @Paging = paging
        end

        def deserialize(params)
          unless params['Paging'].nil?
            @Paging = Paging.new
            @Paging.deserialize(params['Paging'])
          end
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 过滤条件<br>
        # <li>Ip - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照Ip进行过滤。</li>
        # <li>MacAddr - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照mac地址进行过滤。</li>
        # <li>IoaUserName - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照ioa用户名进行过滤。</li>
        # 分页参数<br>
        # <li>PageNum 从1开始，小于等于0时使用默认参数。</li>
        # <li>PageSize 最大值5000，最好不超过100。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param GroupId: 私有化默认分组id-名称-操作系统
        # 1	全网终端	Win
        # 2	未分组终端	Win
        # 30000000	服务器	Win
        # 40000101	全网终端	Linux
        # 40000102	未分组终端	Linux
        # 40000103	服务器	Linux
        # 40000201	全网终端	macOS
        # 40000202	未分组终端	macOS
        # 40000203	服务器	macOS
        # 40000401	全网终端	Android
        # 40000402	未分组终端	Android
        # 40000501	全网终端	iOS
        # 40000502	未分组终端	iOS
        # @type GroupId: Integer
        # @param OsType: 系统类型（0: win，1：linux，2: mac，3: win_srv，4：android，5：ios   默认值0）
        # @type OsType: Integer
        # @param OnlineStatus: 在线状态 2 在线 0，1 离线
        # @type OnlineStatus: Integer
        # @param Filters: 过滤条件--兼容旧接口,参数同Condition
        # @type Filters: Array
        # @param Sort: 排序字段--兼容旧接口,参数同Condition
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageNum: 获取第几页--兼容旧接口,参数同Condition(只支持32位)
        # @type PageNum: Integer
        # @param PageSize: 每页获取数--兼容旧接口,参数同Condition(只支持32位)
        # @type PageSize: Integer
        # @param Status: 授权状态 4未授权 5已授权
        # @type Status: Integer

        attr_accessor :Condition, :GroupId, :OsType, :OnlineStatus, :Filters, :Sort, :PageNum, :PageSize, :Status

        def initialize(condition=nil, groupid=nil, ostype=nil, onlinestatus=nil, filters=nil, sort=nil, pagenum=nil, pagesize=nil, status=nil)
          @Condition = condition
          @GroupId = groupid
          @OsType = ostype
          @OnlineStatus = onlinestatus
          @Filters = filters
          @Sort = sort
          @PageNum = pagenum
          @PageSize = pagesize
          @Status = status
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @OnlineStatus = params['OnlineStatus']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @Status = params['Status']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的data数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDevicesPageRsp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDevicesPageRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Filters 条件过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Field: 过滤字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param Operator: 过滤方式 eq:等于,net:不等于,like,nlike,gt:大于,lt:小于,egt:大于等于,elt:小于等于
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Values: 过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Field, :Operator, :Values

        def initialize(field=nil, operator=nil, values=nil)
          @Field = field
          @Operator = operator
          @Values = values
        end

        def deserialize(params)
          @Field = params['Field']
          @Operator = params['Operator']
          @Values = params['Values']
        end
      end

      # FilterGroups 条件过滤组
      class FilterGroup < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # 数据分页信息
      class Paging < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页条数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNum: 页码(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNum: Integer
        # @param PageCount: 总页数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param Total: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :PageSize, :PageNum, :PageCount, :Total

        def initialize(pagesize=nil, pagenum=nil, pagecount=nil, total=nil)
          @PageSize = pagesize
          @PageNum = pagenum
          @PageCount = pagecount
          @Total = total
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @PageCount = params['PageCount']
          @Total = params['Total']
        end
      end

      # Sort 排序字段
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param Order: 排序方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

    end
  end
end

