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
  module Tan
    module V20220420
      # CreateBlockNodeRecords请求参数结构体
      class CreateBlockNodeRecordsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 盘查组id，可在“盘查组概览”功能中获取。
        # @type GroupId: String
        # @param NodeId: 节点id，可在“数据接入管理”中获取。
        # @type NodeId: String
        # @param Records: 节点数据json，具体demo请参考输入示例，其中key为数据接入管理中节点内创建的属性变量名，value为期望的推送值。
        # @type Records: String

        attr_accessor :GroupId, :NodeId, :Records
        
        def initialize(groupid=nil, nodeid=nil, records=nil)
          @GroupId = groupid
          @NodeId = nodeid
          @Records = records
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @NodeId = params['NodeId']
          @Records = params['Records']
        end
      end

      # CreateBlockNodeRecords返回参数结构体
      class CreateBlockNodeRecordsResponse < TencentCloud::Common::AbstractModel
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

