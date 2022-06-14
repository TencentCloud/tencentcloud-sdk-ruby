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
  module Ciam
    module V20220331
      # ResetPassword请求参数结构体
      class ResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String

        attr_accessor :UserId, :UserStoreId
        
        def initialize(userid=nil, userstoreid=nil)
          @UserId = userid
          @UserStoreId = userstoreid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserStoreId = params['UserStoreId']
        end
      end

      # ResetPassword返回参数结构体
      class ResetPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Password: 重置后的用户密码
        # @type Password: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Password, :RequestId
        
        def initialize(password=nil, requestid=nil)
          @Password = password
          @RequestId = requestid
        end

        def deserialize(params)
          @Password = params['Password']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

