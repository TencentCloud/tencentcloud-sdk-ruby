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
  module Organization
    module V20210331
      # BindOrganizationMemberAuthAccount请求参数结构体
      class BindOrganizationMemberAuthAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param OrgSubAccountUins: 组织子账号Uin。
        # @type OrgSubAccountUins: Array

        attr_accessor :MemberUin, :PolicyId, :OrgSubAccountUins
        
        def initialize(memberuin=nil, policyid=nil, orgsubaccountuins=nil)
          @MemberUin = memberuin
          @PolicyId = policyid
          @OrgSubAccountUins = orgsubaccountuins
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @PolicyId = params['PolicyId']
          @OrgSubAccountUins = params['OrgSubAccountUins']
        end
      end

      # BindOrganizationMemberAuthAccount返回参数结构体
      class BindOrganizationMemberAuthAccountResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

