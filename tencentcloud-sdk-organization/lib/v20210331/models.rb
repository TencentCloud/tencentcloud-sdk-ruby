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

      # CreateOrganizationMember请求参数结构体
      class CreateOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param PolicyType: 关系策略
        # @type PolicyType: String
        # @param PermissionIds: 关系权限
        # @type PermissionIds: Array
        # @param NodeId: 需要调节的节点
        # @type NodeId: Integer
        # @param AccountName: 账号名
        # @type AccountName: String
        # @param Remark: 备注
        # @type Remark: String
        # @param RecordId: 重试创建传记录ID
        # @type RecordId: Integer

        attr_accessor :Name, :PolicyType, :PermissionIds, :NodeId, :AccountName, :Remark, :RecordId
        
        def initialize(name=nil, policytype=nil, permissionids=nil, nodeid=nil, accountname=nil, remark=nil, recordid=nil)
          @Name = name
          @PolicyType = policytype
          @PermissionIds = permissionids
          @NodeId = nodeid
          @AccountName = accountname
          @Remark = remark
          @RecordId = recordid
        end

        def deserialize(params)
          @Name = params['Name']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @NodeId = params['NodeId']
          @AccountName = params['AccountName']
          @Remark = params['Remark']
          @RecordId = params['RecordId']
        end
      end

      # CreateOrganizationMember返回参数结构体
      class CreateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
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

      # DescribeOrganization请求参数结构体
      class DescribeOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Lang: 国际站：en，国内站：zh
        # @type Lang: String

        attr_accessor :Lang
        
        def initialize(lang=nil)
          @Lang = lang
        end

        def deserialize(params)
          @Lang = params['Lang']
        end
      end

      # DescribeOrganization返回参数结构体
      class DescribeOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgId: Integer
        # @param HostUin: 创建者UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostUin: Integer
        # @param NickName: 创建者昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param OrgType: 企业组织类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgType: Integer
        # @param IsManager: 组织管理员：true，组织成员：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsManager: Boolean
        # @param OrgPolicyType: 策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyName: String
        # @param OrgPermission: 策略权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPermission: Array
        # @param RootNodeId: 根节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootNodeId: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param JoinTime: 成员加入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTime: String
        # @param IsAllowQuit: 是否允许退出。允许：Allow，不允许：Denied。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowQuit: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :HostUin, :NickName, :OrgType, :IsManager, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :RootNodeId, :CreateTime, :JoinTime, :IsAllowQuit, :RequestId
        
        def initialize(orgid=nil, hostuin=nil, nickname=nil, orgtype=nil, ismanager=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, rootnodeid=nil, createtime=nil, jointime=nil, isallowquit=nil, requestid=nil)
          @OrgId = orgid
          @HostUin = hostuin
          @NickName = nickname
          @OrgType = orgtype
          @IsManager = ismanager
          @OrgPolicyType = orgpolicytype
          @OrgPolicyName = orgpolicyname
          @OrgPermission = orgpermission
          @RootNodeId = rootnodeid
          @CreateTime = createtime
          @JoinTime = jointime
          @IsAllowQuit = isallowquit
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @HostUin = params['HostUin']
          @NickName = params['NickName']
          @OrgType = params['OrgType']
          @IsManager = params['IsManager']
          @OrgPolicyType = params['OrgPolicyType']
          @OrgPolicyName = params['OrgPolicyName']
          unless params['OrgPermission'].nil?
            @OrgPermission = []
            params['OrgPermission'].each do |i|
              orgpermission_tmp = OrgPermission.new
              orgpermission_tmp.deserialize(i)
              @OrgPermission << orgpermission_tmp
            end
          end
          @RootNodeId = params['RootNodeId']
          @CreateTime = params['CreateTime']
          @JoinTime = params['JoinTime']
          @IsAllowQuit = params['IsAllowQuit']
          @RequestId = params['RequestId']
        end
      end

      # 关系策略权限
      class OrgPermission < TencentCloud::Common::AbstractModel
        # @param Id: 权限Id
        # @type Id: Integer
        # @param Name: 权限名
        # @type Name: String

        attr_accessor :Id, :Name
        
        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

    end
  end
end

