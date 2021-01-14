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
  module Ba
    module V20200720
      # CreateWeappQRUrl请求参数结构体
      class CreateWeappQRUrlRequest < TencentCloud::Common::AbstractModel
        # @param SessionKey: 代理角色临时密钥的Token
        # @type SessionKey: String

        attr_accessor :SessionKey
        
        def initialize(sessionkey=nil)
          @SessionKey = sessionkey
        end

        def deserialize(params)
          @SessionKey = params['SessionKey']
        end
      end

      # CreateWeappQRUrl返回参数结构体
      class CreateWeappQRUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 渠道备案小程序二维码
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId
        
        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

