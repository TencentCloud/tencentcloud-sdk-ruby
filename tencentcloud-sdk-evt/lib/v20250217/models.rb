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
  module Evt
    module V20250217
      # CreateRoleUser请求参数结构体
      class CreateRoleUserRequest < TencentCloud::Common::AbstractModel
        # @param RoleSystemId: 角色体系ID
        # @type RoleSystemId: Integer
        # @param UserId: 人员ID
        # @type UserId: String
        # @param Username: 人员名称
        # @type Username: String
        # @param Enabled: 是否启用
        # @type Enabled: Integer
        # @param Phone: 手机号
        # @type Phone: String
        # @param Attributes: 属性列表
        # @type Attributes: Array

        attr_accessor :RoleSystemId, :UserId, :Username, :Enabled, :Phone, :Attributes

        def initialize(rolesystemid=nil, userid=nil, username=nil, enabled=nil, phone=nil, attributes=nil)
          @RoleSystemId = rolesystemid
          @UserId = userid
          @Username = username
          @Enabled = enabled
          @Phone = phone
          @Attributes = attributes
        end

        def deserialize(params)
          @RoleSystemId = params['RoleSystemId']
          @UserId = params['UserId']
          @Username = params['Username']
          @Enabled = params['Enabled']
          @Phone = params['Phone']
          unless params['Attributes'].nil?
            @Attributes = []
            params['Attributes'].each do |i|
              userattribute_tmp = UserAttribute.new
              userattribute_tmp.deserialize(i)
              @Attributes << userattribute_tmp
            end
          end
        end
      end

      # CreateRoleUser返回参数结构体
      class CreateRoleUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 人员ID
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId

        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # 人员属性
      class UserAttribute < TencentCloud::Common::AbstractModel
        # @param Key: 属性键名
        # @type Key: String
        # @param Value: 属性值
        # @type Value: Array

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

    end
  end
end

