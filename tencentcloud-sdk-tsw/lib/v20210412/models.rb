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
  module Tsw
    module V20210412
      # DescribeComponentAlertObject请求参数结构体
      class DescribeComponentAlertObjectRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeComponentAlertObject返回参数结构体
      class DescribeComponentAlertObjectResponse < TencentCloud::Common::AbstractModel
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

      # DescribeServiceAlertObject请求参数结构体
      class DescribeServiceAlertObjectRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeServiceAlertObject返回参数结构体
      class DescribeServiceAlertObjectResponse < TencentCloud::Common::AbstractModel
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

      # DescribeToken请求参数结构体
      class DescribeTokenRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :Namespace
        
        def initialize(namespace=nil)
          @Namespace = namespace
        end

        def deserialize(params)
          @Namespace = params['Namespace']
        end
      end

      # DescribeToken返回参数结构体
      class DescribeTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: token
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

