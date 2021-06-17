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
  module Market
    module V20191010
      # GetCateTree请求参数结构体
      class GetCateTreeRequest < TencentCloud::Common::AbstractModel
        # @param CateId: 分类ID
        # @type CateId: Integer

        attr_accessor :CateId
        
        def initialize(cateid=nil)
          @CateId = cateid
        end

        def deserialize(params)
          @CateId = params['CateId']
        end
      end

      # GetCateTree返回参数结构体
      class GetCateTreeResponse < TencentCloud::Common::AbstractModel
        # @param CateId: 分类ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CateId: Integer
        # @param Name: 分类名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CateId, :Name, :RequestId
        
        def initialize(cateid=nil, name=nil, requestid=nil)
          @CateId = cateid
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @CateId = params['CateId']
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # GetUsagePlanUsageAmount请求参数结构体
      class GetUsagePlanUsageAmountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 用于查询实例的Id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # GetUsagePlanUsageAmount返回参数结构体
      class GetUsagePlanUsageAmountResponse < TencentCloud::Common::AbstractModel
        # @param MaxRequestNum: 最大调用量
        # @type MaxRequestNum: Integer
        # @param InUseRequestNum: 已经调用量
        # @type InUseRequestNum: Integer
        # @param RemainingRequestNum: 剩余调用量
        # @type RemainingRequestNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxRequestNum, :InUseRequestNum, :RemainingRequestNum, :RequestId
        
        def initialize(maxrequestnum=nil, inuserequestnum=nil, remainingrequestnum=nil, requestid=nil)
          @MaxRequestNum = maxrequestnum
          @InUseRequestNum = inuserequestnum
          @RemainingRequestNum = remainingrequestnum
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxRequestNum = params['MaxRequestNum']
          @InUseRequestNum = params['InUseRequestNum']
          @RemainingRequestNum = params['RemainingRequestNum']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

