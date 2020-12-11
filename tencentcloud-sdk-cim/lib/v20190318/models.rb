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
  module Cim
    module V20190318
      # DescribeSdkAppid请求参数结构体
      class DescribeSdkAppidRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSdkAppid返回参数结构体
      class DescribeSdkAppidResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppids: 表示 appid 对应的 SdkAppid 的数据
        # @type SdkAppids: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppids, :RequestId
        
        def initialize(sdkappids=nil, requestid=nil)
          @SdkAppids = sdkappids
          @RequestId = requestid
        end

        def deserialize(params)
          @SdkAppids = params['SdkAppids']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

