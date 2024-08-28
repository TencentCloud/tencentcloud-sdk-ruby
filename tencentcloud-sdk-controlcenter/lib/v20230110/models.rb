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
  module Controlcenter
    module V20230110
      # 账号工厂基线配置项
      class BaselineConfigItem < TencentCloud::Common::AbstractModel
        # @param Identifier: 账号工厂基线项唯一标识,只能包含英文字母、数字和@、,._[]-:()（）【】+=，。，长度2-128个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Identifier: String
        # @param Configuration: 账号工厂基线项配置，不同基线项配置参数不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String

        attr_accessor :Identifier, :Configuration

        def initialize(identifier=nil, configuration=nil)
          @Identifier = identifier
          @Configuration = configuration
        end

        def deserialize(params)
          @Identifier = params['Identifier']
          @Configuration = params['Configuration']
        end
      end

      # BatchApplyAccountBaselines请求参数结构体
      class BatchApplyAccountBaselinesRequest < TencentCloud::Common::AbstractModel
        # @param MemberUinList: 成员账号uin，也是被应用基线的账号uin。
        # @type MemberUinList: Array
        # @param BaselineConfigItems: 基线项配置信息列表。
        # @type BaselineConfigItems: Array

        attr_accessor :MemberUinList, :BaselineConfigItems

        def initialize(memberuinlist=nil, baselineconfigitems=nil)
          @MemberUinList = memberuinlist
          @BaselineConfigItems = baselineconfigitems
        end

        def deserialize(params)
          @MemberUinList = params['MemberUinList']
          unless params['BaselineConfigItems'].nil?
            @BaselineConfigItems = []
            params['BaselineConfigItems'].each do |i|
              baselineconfigitem_tmp = BaselineConfigItem.new
              baselineconfigitem_tmp.deserialize(i)
              @BaselineConfigItems << baselineconfigitem_tmp
            end
          end
        end
      end

      # BatchApplyAccountBaselines返回参数结构体
      class BatchApplyAccountBaselinesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

