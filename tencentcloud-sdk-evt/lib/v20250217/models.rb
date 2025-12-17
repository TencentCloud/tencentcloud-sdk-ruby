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
      # CompleteApproval请求参数结构体
      class CompleteApprovalRequest < TencentCloud::Common::AbstractModel
        # @param ApprovalId: <p>审批单号</p>
        # @type ApprovalId: String
        # @param NodeId: <p>审批节点</p>
        # @type NodeId: String
        # @param Result: <p>审批结果，1通过2拒绝</p>
        # @type Result: Integer
        # @param Opinion: <p>审批意见</p>
        # @type Opinion: String
        # @param UserToken: <p>审批人的身份认证Token，通过自定义角色体系回调接口分发</p><p>token信息</p>
        # @type UserToken: String

        attr_accessor :ApprovalId, :NodeId, :Result, :Opinion, :UserToken

        def initialize(approvalid=nil, nodeid=nil, result=nil, opinion=nil, usertoken=nil)
          @ApprovalId = approvalid
          @NodeId = nodeid
          @Result = result
          @Opinion = opinion
          @UserToken = usertoken
        end

        def deserialize(params)
          @ApprovalId = params['ApprovalId']
          @NodeId = params['NodeId']
          @Result = params['Result']
          @Opinion = params['Opinion']
          @UserToken = params['UserToken']
        end
      end

      # CompleteApproval返回参数结构体
      class CompleteApprovalResponse < TencentCloud::Common::AbstractModel
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

      # CreateRoleUser请求参数结构体
      class CreateRoleUserRequest < TencentCloud::Common::AbstractModel
        # @param RoleSystemId: <p>自定义角色体系的ID</p><p>角色体系ID</p>
        # @type RoleSystemId: Integer
        # @param UserId: <p>要添加的自定义用户ID，建议与腾讯云-子用户的用户名称保持一致</p><p>人员ID</p>
        # @type UserId: String
        # @param Username: <p>自定义用户的名称</p><p>人员名称</p>
        # @type Username: String
        # @param Enabled: <p>是否启用当前用户</p>枚举值：<ul><li> 1： 启用</li><li> 2： 禁用</li></ul><p>是否启用</p>
        # @type Enabled: Integer
        # @param Phone: <p>自定义用户的手机号</p><p>手机号</p>
        # @type Phone: String
        # @param Attributes: <p>自定义用户的身份属性列表</p><p>属性列表</p>
        # @type Attributes: Array
        # @param TencentUin: <p>自定义用户与腾讯云-子用户关联，如果不传默认按照子用户名称进行匹配</p>
        # @type TencentUin: Integer

        attr_accessor :RoleSystemId, :UserId, :Username, :Enabled, :Phone, :Attributes, :TencentUin

        def initialize(rolesystemid=nil, userid=nil, username=nil, enabled=nil, phone=nil, attributes=nil, tencentuin=nil)
          @RoleSystemId = rolesystemid
          @UserId = userid
          @Username = username
          @Enabled = enabled
          @Phone = phone
          @Attributes = attributes
          @TencentUin = tencentuin
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
          @TencentUin = params['TencentUin']
        end
      end

      # CreateRoleUser返回参数结构体
      class CreateRoleUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: <p>人员ID</p>
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
        # @param Key: <p>自定义角色体系中用户属性的ID</p><p>属性键名</p>
        # @type Key: String
        # @param Value: <p>自定义角色体系中的用户属性值，只支持传入对应用户属性支持的角色ID</p><p>属性值</p>
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

