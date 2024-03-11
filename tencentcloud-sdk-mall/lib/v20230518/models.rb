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
  module Mall
    module V20230518
      # DescribeDrawResourceList请求参数结构体
      class DescribeDrawResourceListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: PageNumber
        # @type PageNumber: Integer
        # @param PageSize: PageSize
        # @type PageSize: Integer

        attr_accessor :PageNumber, :PageSize

        def initialize(pagenumber=nil, pagesize=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeDrawResourceList返回参数结构体
      class DescribeDrawResourceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数据条数
        # @type TotalCount: Integer
        # @param ResourceDrawList: 返回数据内容
        # @type ResourceDrawList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceDrawList, :RequestId

        def initialize(totalcount=nil, resourcedrawlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceDrawList = resourcedrawlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceDrawList'].nil?
            @ResourceDrawList = []
            params['ResourceDrawList'].each do |i|
              resourcedrawlisttype_tmp = ResourceDrawListType.new
              resourcedrawlisttype_tmp.deserialize(i)
              @ResourceDrawList << resourcedrawlisttype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 输出用户的资源数据
      class ResourceDrawListType < TencentCloud::Common::AbstractModel
        # @param Id: 记录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param FlowId: 资源记录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param ResourceId: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param IndexId: 本订单资源序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexId: String
        # @param Uin: 客户的Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param BigDealId: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealId: String
        # @param SmallOrderId: 小订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmallOrderId: String
        # @param ResourceNewStartTime: 资源创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceNewStartTime: String
        # @param ResourceNewEndTime: 资源到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceNewEndTime: String
        # @param ResourceStatus: 资源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceStatus: Integer
        # @param Status: 本记录状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ResourceType: 项目类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: Integer

        attr_accessor :Id, :FlowId, :ResourceId, :IndexId, :Uin, :BigDealId, :SmallOrderId, :ResourceNewStartTime, :ResourceNewEndTime, :ResourceStatus, :Status, :ResourceType

        def initialize(id=nil, flowid=nil, resourceid=nil, indexid=nil, uin=nil, bigdealid=nil, smallorderid=nil, resourcenewstarttime=nil, resourcenewendtime=nil, resourcestatus=nil, status=nil, resourcetype=nil)
          @Id = id
          @FlowId = flowid
          @ResourceId = resourceid
          @IndexId = indexid
          @Uin = uin
          @BigDealId = bigdealid
          @SmallOrderId = smallorderid
          @ResourceNewStartTime = resourcenewstarttime
          @ResourceNewEndTime = resourcenewendtime
          @ResourceStatus = resourcestatus
          @Status = status
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @Id = params['Id']
          @FlowId = params['FlowId']
          @ResourceId = params['ResourceId']
          @IndexId = params['IndexId']
          @Uin = params['Uin']
          @BigDealId = params['BigDealId']
          @SmallOrderId = params['SmallOrderId']
          @ResourceNewStartTime = params['ResourceNewStartTime']
          @ResourceNewEndTime = params['ResourceNewEndTime']
          @ResourceStatus = params['ResourceStatus']
          @Status = params['Status']
          @ResourceType = params['ResourceType']
        end
      end

    end
  end
end

