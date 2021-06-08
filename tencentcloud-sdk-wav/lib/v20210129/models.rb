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
  module Wav
    module V20210129
      # 活动活码详情
      class LiveCodeDetail < TencentCloud::Common::AbstractModel
        # @param LiveCodeId: 活码id
        # @type LiveCodeId: Integer
        # @param LiveCodeName: 活码名称
        # @type LiveCodeName: String
        # @param ShortChainAddress: 短链url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortChainAddress: String
        # @param LiveCodePreview: 活码二维码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveCodePreview: String
        # @param ActivityId: 活动id
        # @type ActivityId: Integer
        # @param ActivityName: 活动名称
        # @type ActivityName: String
        # @param LiveCodeState: 活码状态，-1：删除，0：启用，1禁用，默认为0
        # @type LiveCodeState: Integer
        # @param LiveCodeData: 活码参数，每个活码参数都是不一样的， 这个的值对应的是字符串json类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveCodeData: String
        # @param CreateTime: 创建时间戳，单位为秒
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间戳，单位为秒
        # @type UpdateTime: Integer

        attr_accessor :LiveCodeId, :LiveCodeName, :ShortChainAddress, :LiveCodePreview, :ActivityId, :ActivityName, :LiveCodeState, :LiveCodeData, :CreateTime, :UpdateTime
        
        def initialize(livecodeid=nil, livecodename=nil, shortchainaddress=nil, livecodepreview=nil, activityid=nil, activityname=nil, livecodestate=nil, livecodedata=nil, createtime=nil, updatetime=nil)
          @LiveCodeId = livecodeid
          @LiveCodeName = livecodename
          @ShortChainAddress = shortchainaddress
          @LiveCodePreview = livecodepreview
          @ActivityId = activityid
          @ActivityName = activityname
          @LiveCodeState = livecodestate
          @LiveCodeData = livecodedata
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @LiveCodeId = params['LiveCodeId']
          @LiveCodeName = params['LiveCodeName']
          @ShortChainAddress = params['ShortChainAddress']
          @LiveCodePreview = params['LiveCodePreview']
          @ActivityId = params['ActivityId']
          @ActivityName = params['ActivityName']
          @LiveCodeState = params['LiveCodeState']
          @LiveCodeData = params['LiveCodeData']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # QueryActivityLiveCodeList请求参数结构体
      class QueryActivityLiveCodeListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryActivityLiveCodeList返回参数结构体
      class QueryActivityLiveCodeListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 活码列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              @PageData << LiveCodeDetail.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

