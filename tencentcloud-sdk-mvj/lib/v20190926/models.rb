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
  module Mvj
    module V20190926
      # 返回结构
      class Data < TencentCloud::Common::AbstractModel
        # @param PostTime: 操作时间戳，单位秒
        # @type PostTime: Integer
        # @param Uid: 用户ID
        # accountType不同对应不同的用户ID。如果是QQ或微信用户则填入对应的openId
        # @type Uid: String
        # @param UserIp: 操作来源的外网IP
        # @type UserIp: String
        # @param ValueScore: 0~100：营销价值评分，分值越高，价值越大
        # [0,50]低价值
        # [50,70]价值一般
        # [70,100]高价值
        # @type ValueScore: Integer

        attr_accessor :PostTime, :Uid, :UserIp, :ValueScore

        def initialize(posttime=nil, uid=nil, userip=nil, valuescore=nil)
          @PostTime = posttime
          @Uid = uid
          @UserIp = userip
          @ValueScore = valuescore
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          @Uid = params['Uid']
          @UserIp = params['UserIp']
          @ValueScore = params['ValueScore']
        end
      end

      # MarketingValueJudgement请求参数结构体
      class MarketingValueJudgementRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 手机账号类型填写4
        # @type AccountType: Integer
        # @param Uid: 填写手机号码，如15317537488
        # @type Uid: String
        # @param UserIp: 用户请求时的客户端外网IP
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳，单位秒（格林威治时间精确到秒，如1501590972）
        # @type PostTime: Integer
        # @param Imei: 用户设备号imei/idfa(建议填写)
        # @type Imei: String
        # @param Referer: 活动链接(建议填写)
        # @type Referer: String

        attr_accessor :AccountType, :Uid, :UserIp, :PostTime, :Imei, :Referer

        def initialize(accounttype=nil, uid=nil, userip=nil, posttime=nil, imei=nil, referer=nil)
          @AccountType = accounttype
          @Uid = uid
          @UserIp = userip
          @PostTime = posttime
          @Imei = imei
          @Referer = referer
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Uid = params['Uid']
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          @Imei = params['Imei']
          @Referer = params['Referer']
        end
      end

      # MarketingValueJudgement返回参数结构体
      class MarketingValueJudgementResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Mvj.v20190926.models.Data`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Data.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

