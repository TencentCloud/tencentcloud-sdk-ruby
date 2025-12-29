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
  module Rce
    module V20250425
      # 业务入参
      class ManageIPPortraitRiskInput < TencentCloud::Common::AbstractModel
        # @param UserIp: 用户公网ip（仅支持IPv4）
        # @type UserIp: String
        # @param Channel: 渠道号
        # @type Channel: Integer

        attr_accessor :UserIp, :Channel

        def initialize(userip=nil, channel=nil)
          @UserIp = userip
          @Channel = channel
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @Channel = params['Channel']
        end
      end

      # IP画像出参
      class ManageIPPortraitRiskOutput < TencentCloud::Common::AbstractModel
        # @param Code: 返回码
        # @type Code: Integer
        # @param Message: 返回消息
        # @type Message: String
        # @param Value: 结果
        # @type Value: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskValueOutput`

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
            @Value = ManageIPPortraitRiskValueOutput.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # ManageIPPortraitRisk请求参数结构体
      class ManageIPPortraitRiskRequest < TencentCloud::Common::AbstractModel
        # @param PostTime: 请求秒级时间戳
        # @type PostTime: Integer
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskInput`

        attr_accessor :PostTime, :BusinessSecurityData

        def initialize(posttime=nil, businesssecuritydata=nil)
          @PostTime = posttime
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = ManageIPPortraitRiskInput.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ManageIPPortraitRisk返回参数结构体
      class ManageIPPortraitRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 出参
        # @type Data: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskOutput`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ManageIPPortraitRiskOutput.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务出参
      class ManageIPPortraitRiskValueOutput < TencentCloud::Common::AbstractModel
        # @param UserIp: 对应的IP
        # @type UserIp: String
        # @param RiskScore: 返回风险等级, 0 - 4，0代表无风险，数值越大，风险越高
        # @type RiskScore: Integer
        # @param RiskType: 风险类型
        # @type RiskType: Array

        attr_accessor :UserIp, :RiskScore, :RiskType

        def initialize(userip=nil, riskscore=nil, risktype=nil)
          @UserIp = userip
          @RiskScore = riskscore
          @RiskType = risktype
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @RiskScore = params['RiskScore']
          @RiskType = params['RiskType']
        end
      end

    end
  end
end

