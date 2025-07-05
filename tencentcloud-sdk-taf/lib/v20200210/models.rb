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
  module Taf
    module V20200210
      # 业务入参
      class ManagePortraitRiskInput < TencentCloud::Common::AbstractModel
        # @param PostTime: 请求时间戳秒
        # @type PostTime: Integer
        # @param UserIp: 用户公网ip（仅支持IPv4）
        # @type UserIp: String
        # @param Channel: 渠道号
        # @type Channel: Integer

        attr_accessor :PostTime, :UserIp, :Channel

        def initialize(posttime=nil, userip=nil, channel=nil)
          @PostTime = posttime
          @UserIp = userip
          @Channel = channel
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          @UserIp = params['UserIp']
          @Channel = params['Channel']
        end
      end

      # 业务出参
      class ManagePortraitRiskOutput < TencentCloud::Common::AbstractModel
        # @param Code: 返回码（0，成功，其他失败）
        # @type Code: Integer
        # @param Message: 返回码对应的信息
        # @type Message: String
        # @param Value: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskValueOutput`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = ManagePortraitRiskValueOutput.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # ManagePortraitRisk请求参数结构体
      class ManagePortraitRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskInput`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = ManagePortraitRiskInput.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ManagePortraitRisk返回参数结构体
      class ManagePortraitRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskOutput`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ManagePortraitRiskOutput.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务出参
      class ManagePortraitRiskValueOutput < TencentCloud::Common::AbstractModel
        # @param UserIp: 对应的IP
        # @type UserIp: String
        # @param Level: 返回风险等级, 0 - 4，0代表无风险，数值越大，风险越高
        # @type Level: Integer

        attr_accessor :UserIp, :Level

        def initialize(userip=nil, level=nil)
          @UserIp = userip
          @Level = level
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @Level = params['Level']
        end
      end

    end
  end
end

