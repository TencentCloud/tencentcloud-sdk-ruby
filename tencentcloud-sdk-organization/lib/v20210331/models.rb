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
      # AddOrganizationNode请求参数结构体
      class AddOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param ParentNodeId: 父节点ID。可以调用DescribeOrganizationNodes获取
        # @type ParentNodeId: Integer
        # @param Name: 节点名称。最大长度为40个字符，支持英文字母、数字、汉字、符号+@、&._[]-
        # @type Name: String
        # @param Remark: 备注。
        # @type Remark: String

        attr_accessor :ParentNodeId, :Name, :Remark
        
        def initialize(parentnodeid=nil, name=nil, remark=nil)
          @ParentNodeId = parentnodeid
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @ParentNodeId = params['ParentNodeId']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # AddOrganizationNode返回参数结构体
      class AddOrganizationNodeResponse < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID。
        # @type NodeId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeId, :RequestId
        
        def initialize(nodeid=nil, requestid=nil)
          @NodeId = nodeid
          @RequestId = requestid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @RequestId = params['RequestId']
        end
      end

      # 互信主体主要信息
      class AuthNode < TencentCloud::Common::AbstractModel
        # @param RelationId: 互信主体关系ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationId: Integer
        # @param AuthName: 互信主体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthName: String
        # @param Manager: 主体管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manager: :class:`Tencentcloud::Organization.v20210331.models.MemberMainInfo`

        attr_accessor :RelationId, :AuthName, :Manager
        
        def initialize(relationid=nil, authname=nil, manager=nil)
          @RelationId = relationid
          @AuthName = authname
          @Manager = manager
        end

        def deserialize(params)
          @RelationId = params['RelationId']
          @AuthName = params['AuthName']
          unless params['Manager'].nil?
            @Manager = MemberMainInfo.new
            @Manager.deserialize(params['Manager'])
          end
        end
      end

      # BindOrganizationMemberAuthAccount请求参数结构体
      class BindOrganizationMemberAuthAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。可以调用DescribeOrganizationMemberPolicies获取
        # @type PolicyId: Integer
        # @param OrgSubAccountUins: 组织管理员子账号Uin列表。最大5个
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

      # CancelOrganizationMemberAuthAccount请求参数结构体
      class CancelOrganizationMemberAuthAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param OrgSubAccountUin: 组织子账号Uin。
        # @type OrgSubAccountUin: Integer

        attr_accessor :MemberUin, :PolicyId, :OrgSubAccountUin
        
        def initialize(memberuin=nil, policyid=nil, orgsubaccountuin=nil)
          @MemberUin = memberuin
          @PolicyId = policyid
          @OrgSubAccountUin = orgsubaccountuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @PolicyId = params['PolicyId']
          @OrgSubAccountUin = params['OrgSubAccountUin']
        end
      end

      # CancelOrganizationMemberAuthAccount返回参数结构体
      class CancelOrganizationMemberAuthAccountResponse < TencentCloud::Common::AbstractModel
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

      # CreateOrganizationMemberPolicy请求参数结构体
      class CreateOrganizationMemberPolicyRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyName: 策略名。最大长度为128个字符，支持英文字母、数字、符号+=,.@_-
        # @type PolicyName: String
        # @param IdentityId: 成员访问身份ID。可以调用DescribeOrganizationMemberAuthIdentities获取
        # @type IdentityId: Integer
        # @param Description: 描述。
        # @type Description: String

        attr_accessor :MemberUin, :PolicyName, :IdentityId, :Description
        
        def initialize(memberuin=nil, policyname=nil, identityid=nil, description=nil)
          @MemberUin = memberuin
          @PolicyName = policyname
          @IdentityId = identityid
          @Description = description
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @PolicyName = params['PolicyName']
          @IdentityId = params['IdentityId']
          @Description = params['Description']
        end
      end

      # CreateOrganizationMemberPolicy返回参数结构体
      class CreateOrganizationMemberPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId
        
        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationMember请求参数结构体
      class CreateOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param Name: 成员名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        # @type Name: String
        # @param PolicyType: 关系策略。取值：Financial
        # @type PolicyType: String
        # @param PermissionIds: 成员财务权限ID列表。取值：1-查看账单、2-查看余额、3-资金划拨、4-合并出账、5-开票、6-优惠继承、7-代付费，1、2 默认必须
        # @type PermissionIds: Array
        # @param NodeId: 成员所属部门的节点ID。可以调用DescribeOrganizationNodes获取
        # @type NodeId: Integer
        # @param AccountName: 账号名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        # @type AccountName: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param RecordId: 成员创建记录ID。创建异常重试时需要
        # @type RecordId: Integer
        # @param PayUin: 代付者Uin。成员代付费时需要
        # @type PayUin: String
        # @param IdentityRoleID: 成员访问身份ID列表。可以调用ListOrganizationIdentity获取，1默认支持
        # @type IdentityRoleID: Array
        # @param AuthRelationId: 认证主体关系ID。给不同主体创建成员时需要，可以调用DescribeOrganizationAuthNode获取
        # @type AuthRelationId: Integer

        attr_accessor :Name, :PolicyType, :PermissionIds, :NodeId, :AccountName, :Remark, :RecordId, :PayUin, :IdentityRoleID, :AuthRelationId
        
        def initialize(name=nil, policytype=nil, permissionids=nil, nodeid=nil, accountname=nil, remark=nil, recordid=nil, payuin=nil, identityroleid=nil, authrelationid=nil)
          @Name = name
          @PolicyType = policytype
          @PermissionIds = permissionids
          @NodeId = nodeid
          @AccountName = accountname
          @Remark = remark
          @RecordId = recordid
          @PayUin = payuin
          @IdentityRoleID = identityroleid
          @AuthRelationId = authrelationid
        end

        def deserialize(params)
          @Name = params['Name']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @NodeId = params['NodeId']
          @AccountName = params['AccountName']
          @Remark = params['Remark']
          @RecordId = params['RecordId']
          @PayUin = params['PayUin']
          @IdentityRoleID = params['IdentityRoleID']
          @AuthRelationId = params['AuthRelationId']
        end
      end

      # CreateOrganizationMember返回参数结构体
      class CreateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 成员Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :RequestId
        
        def initialize(uin=nil, requestid=nil)
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOrganizationMembers请求参数结构体
      class DeleteOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 被删除成员的UIN列表。
        # @type MemberUin: Array

        attr_accessor :MemberUin
        
        def initialize(memberuin=nil)
          @MemberUin = memberuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
        end
      end

      # DeleteOrganizationMembers返回参数结构体
      class DeleteOrganizationMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationNodes请求参数结构体
      class DeleteOrganizationNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID列表。
        # @type NodeId: Array

        attr_accessor :NodeId
        
        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # DeleteOrganizationNodes返回参数结构体
      class DeleteOrganizationNodesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeOrganizationAuthNode请求参数结构体
      class DescribeOrganizationAuthNodeRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param AuthName: 互信主体名称。
        # @type AuthName: String

        attr_accessor :Offset, :Limit, :AuthName
        
        def initialize(offset=nil, limit=nil, authname=nil)
          @Offset = offset
          @Limit = limit
          @AuthName = authname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AuthName = params['AuthName']
        end
      end

      # DescribeOrganizationAuthNode返回参数结构体
      class DescribeOrganizationAuthNodeResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 条目详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId
        
        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              authnode_tmp = AuthNode.new
              authnode_tmp.deserialize(i)
              @Items << authnode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMemberAuthAccounts请求参数结构体
      class DescribeOrganizationMemberAuthAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。
        # @type Limit: Integer
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer

        attr_accessor :Offset, :Limit, :MemberUin, :PolicyId
        
        def initialize(offset=nil, limit=nil, memberuin=nil, policyid=nil)
          @Offset = offset
          @Limit = limit
          @MemberUin = memberuin
          @PolicyId = policyid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MemberUin = params['MemberUin']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeOrganizationMemberAuthAccounts返回参数结构体
      class DescribeOrganizationMemberAuthAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmemberauthaccount_tmp = OrgMemberAuthAccount.new
              orgmemberauthaccount_tmp.deserialize(i)
              @Items << orgmemberauthaccount_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMemberAuthIdentities请求参数结构体
      class DescribeOrganizationMemberAuthIdentitiesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param MemberUin: 组织成员Uin。
        # @type MemberUin: Integer

        attr_accessor :Offset, :Limit, :MemberUin
        
        def initialize(offset=nil, limit=nil, memberuin=nil)
          @Offset = offset
          @Limit = limit
          @MemberUin = memberuin
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MemberUin = params['MemberUin']
        end
      end

      # DescribeOrganizationMemberAuthIdentities返回参数结构体
      class DescribeOrganizationMemberAuthIdentitiesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmemberauthidentity_tmp = OrgMemberAuthIdentity.new
              orgmemberauthidentity_tmp.deserialize(i)
              @Items << orgmemberauthidentity_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMemberPolicies请求参数结构体
      class DescribeOrganizationMemberPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param SearchKey: 搜索关键字。可用于策略名或描述搜索
        # @type SearchKey: String

        attr_accessor :Offset, :Limit, :MemberUin, :SearchKey
        
        def initialize(offset=nil, limit=nil, memberuin=nil, searchkey=nil)
          @Offset = offset
          @Limit = limit
          @MemberUin = memberuin
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MemberUin = params['MemberUin']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeOrganizationMemberPolicies返回参数结构体
      class DescribeOrganizationMemberPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmemberpolicy_tmp = OrgMemberPolicy.new
              orgmemberpolicy_tmp.deserialize(i)
              @Items << orgmemberpolicy_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMembers请求参数结构体
      class DescribeOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param Lang: 国际站：en，国内站：zh
        # @type Lang: String
        # @param SearchKey: 成员名称或者成员ID搜索。
        # @type SearchKey: String
        # @param AuthName: 主体名称搜索。
        # @type AuthName: String
        # @param Product: 可信服务产品简称。可信服务管理员查询时必须指定
        # @type Product: String

        attr_accessor :Offset, :Limit, :Lang, :SearchKey, :AuthName, :Product
        
        def initialize(offset=nil, limit=nil, lang=nil, searchkey=nil, authname=nil, product=nil)
          @Offset = offset
          @Limit = limit
          @Lang = lang
          @SearchKey = searchkey
          @AuthName = authname
          @Product = product
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Lang = params['Lang']
          @SearchKey = params['SearchKey']
          @AuthName = params['AuthName']
          @Product = params['Product']
        end
      end

      # DescribeOrganizationMembers返回参数结构体
      class DescribeOrganizationMembersResponse < TencentCloud::Common::AbstractModel
        # @param Items: 成员列表。
        # @type Items: Array
        # @param Total: 总数目。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmember_tmp = OrgMember.new
              orgmember_tmp.deserialize(i)
              @Items << orgmember_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationNodes请求参数结构体
      class DescribeOrganizationNodesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeOrganizationNodes返回参数结构体
      class DescribeOrganizationNodesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 列表详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId
        
        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgnode_tmp = OrgNode.new
              orgnode_tmp.deserialize(i)
              @Items << orgnode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganization请求参数结构体
      class DescribeOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Lang: 国际站：en，国内站：zh
        # @type Lang: String
        # @param Product: 可信服务产品简称。查询是否该可信服务管理员时必须指定
        # @type Product: String

        attr_accessor :Lang, :Product
        
        def initialize(lang=nil, product=nil)
          @Lang = lang
          @Product = product
        end

        def deserialize(params)
          @Lang = params['Lang']
          @Product = params['Product']
        end
      end

      # DescribeOrganization返回参数结构体
      class DescribeOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgId: Integer
        # @param HostUin: 创建者UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostUin: Integer
        # @param NickName: 创建者昵称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param OrgType: 企业组织类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgType: Integer
        # @param IsManager: 是否组织管理员。是：true ，否：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsManager: Boolean
        # @param OrgPolicyType: 策略类型。财务管理：Financial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 策略名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyName: String
        # @param OrgPermission: 成员财务权限列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPermission: Array
        # @param RootNodeId: 组织根节点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootNodeId: Integer
        # @param CreateTime: 组织创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param JoinTime: 成员加入时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTime: String
        # @param IsAllowQuit: 成员是否允许退出。允许：Allow，不允许：Denied
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayUin: String
        # @param PayName: 代付者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param IsAssignManager: 是否可信服务管理员。是：true，否：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAssignManager: Boolean
        # @param IsAuthManager: 是否实名主体管理员。是：true，否：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAuthManager: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :HostUin, :NickName, :OrgType, :IsManager, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :RootNodeId, :CreateTime, :JoinTime, :IsAllowQuit, :PayUin, :PayName, :IsAssignManager, :IsAuthManager, :RequestId
        
        def initialize(orgid=nil, hostuin=nil, nickname=nil, orgtype=nil, ismanager=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, rootnodeid=nil, createtime=nil, jointime=nil, isallowquit=nil, payuin=nil, payname=nil, isassignmanager=nil, isauthmanager=nil, requestid=nil)
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
          @PayUin = payuin
          @PayName = payname
          @IsAssignManager = isassignmanager
          @IsAuthManager = isauthmanager
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
          @PayUin = params['PayUin']
          @PayName = params['PayName']
          @IsAssignManager = params['IsAssignManager']
          @IsAuthManager = params['IsAuthManager']
          @RequestId = params['RequestId']
        end
      end

      # 组织身份策略
      class IdentityPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称
        # @type PolicyName: String

        attr_accessor :PolicyId, :PolicyName
        
        def initialize(policyid=nil, policyname=nil)
          @PolicyId = policyid
          @PolicyName = policyname
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
        end
      end

      # ListOrganizationIdentity请求参数结构体
      class ListOrganizationIdentityRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 限制数目。最大50
        # @type Limit: Integer
        # @param SearchKey: 名称搜索关键字。
        # @type SearchKey: String
        # @param IdentityId: 身份ID搜索。
        # @type IdentityId: Integer

        attr_accessor :Offset, :Limit, :SearchKey, :IdentityId
        
        def initialize(offset=nil, limit=nil, searchkey=nil, identityid=nil)
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @IdentityId = identityid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @IdentityId = params['IdentityId']
        end
      end

      # ListOrganizationIdentity返回参数结构体
      class ListOrganizationIdentityResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 条目详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId
        
        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgidentity_tmp = OrgIdentity.new
              orgidentity_tmp.deserialize(i)
              @Items << orgidentity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 成员管理身份
      class MemberIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityAliasName: 身份名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityAliasName: String

        attr_accessor :IdentityId, :IdentityAliasName
        
        def initialize(identityid=nil, identityaliasname=nil)
          @IdentityId = identityid
          @IdentityAliasName = identityaliasname
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @IdentityAliasName = params['IdentityAliasName']
        end
      end

      # 成员主要信息
      class MemberMainInfo < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param MemberName: 成员名称j
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String

        attr_accessor :MemberUin, :MemberName
        
        def initialize(memberuin=nil, membername=nil)
          @MemberUin = memberuin
          @MemberName = membername
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @MemberName = params['MemberName']
        end
      end

      # MoveOrganizationNodeMembers请求参数结构体
      class MoveOrganizationNodeMembersRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 组织节点ID。
        # @type NodeId: Integer
        # @param MemberUin: 成员UIN列表。
        # @type MemberUin: Array

        attr_accessor :NodeId, :MemberUin
        
        def initialize(nodeid=nil, memberuin=nil)
          @NodeId = nodeid
          @MemberUin = memberuin
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @MemberUin = params['MemberUin']
        end
      end

      # MoveOrganizationNodeMembers返回参数结构体
      class MoveOrganizationNodeMembersResponse < TencentCloud::Common::AbstractModel
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

      # 组织身份
      class OrgIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityAliasName: 身份名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityAliasName: String
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param IdentityPolicy: 身份策略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityPolicy: Array
        # @param IdentityType: 身份类型。 1-预设、 2-自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityType: Integer
        # @param UpdateTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :IdentityId, :IdentityAliasName, :Description, :IdentityPolicy, :IdentityType, :UpdateTime
        
        def initialize(identityid=nil, identityaliasname=nil, description=nil, identitypolicy=nil, identitytype=nil, updatetime=nil)
          @IdentityId = identityid
          @IdentityAliasName = identityaliasname
          @Description = description
          @IdentityPolicy = identitypolicy
          @IdentityType = identitytype
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @IdentityAliasName = params['IdentityAliasName']
          @Description = params['Description']
          unless params['IdentityPolicy'].nil?
            @IdentityPolicy = []
            params['IdentityPolicy'].each do |i|
              identitypolicy_tmp = IdentityPolicy.new
              identitypolicy_tmp.deserialize(i)
              @IdentityPolicy << identitypolicy_tmp
            end
          end
          @IdentityType = params['IdentityType']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 企业组织成员
      class OrgMember < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param Name: 成员名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param MemberType: 成员类型，邀请：Invite， 创建：Create
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberType: String
        # @param OrgPolicyType: 关系策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 关系策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyName: String
        # @param OrgPermission: 关系策略权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPermission: Array
        # @param NodeId: 所属节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: Integer
        # @param NodeName: 所属节点名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsAllowQuit: 是否允许成员退出。允许：Allow，不允许：Denied。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayUin: String
        # @param PayName: 代付者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param OrgIdentity: 管理身份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgIdentity: Array
        # @param BindStatus: 安全信息绑定状态  未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindStatus: String
        # @param PermissionStatus: 成员权限状态 已确认：Confirmed ，待确认：UnConfirmed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionStatus: String

        attr_accessor :MemberUin, :Name, :MemberType, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :NodeId, :NodeName, :Remark, :CreateTime, :UpdateTime, :IsAllowQuit, :PayUin, :PayName, :OrgIdentity, :BindStatus, :PermissionStatus
        
        def initialize(memberuin=nil, name=nil, membertype=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, nodeid=nil, nodename=nil, remark=nil, createtime=nil, updatetime=nil, isallowquit=nil, payuin=nil, payname=nil, orgidentity=nil, bindstatus=nil, permissionstatus=nil)
          @MemberUin = memberuin
          @Name = name
          @MemberType = membertype
          @OrgPolicyType = orgpolicytype
          @OrgPolicyName = orgpolicyname
          @OrgPermission = orgpermission
          @NodeId = nodeid
          @NodeName = nodename
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsAllowQuit = isallowquit
          @PayUin = payuin
          @PayName = payname
          @OrgIdentity = orgidentity
          @BindStatus = bindstatus
          @PermissionStatus = permissionstatus
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @MemberType = params['MemberType']
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
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
          @PayName = params['PayName']
          unless params['OrgIdentity'].nil?
            @OrgIdentity = []
            params['OrgIdentity'].each do |i|
              memberidentity_tmp = MemberIdentity.new
              memberidentity_tmp.deserialize(i)
              @OrgIdentity << memberidentity_tmp
            end
          end
          @BindStatus = params['BindStatus']
          @PermissionStatus = params['PermissionStatus']
        end
      end

      # 成员和子账号的授权关系
      class OrgMemberAuthAccount < TencentCloud::Common::AbstractModel
        # @param OrgSubAccountUin: 组织子账号Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgSubAccountUin: Integer
        # @param PolicyId: 策略ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份角色名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份角色别名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleAliasName: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param OrgSubAccountName: 子账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgSubAccountName: String

        attr_accessor :OrgSubAccountUin, :PolicyId, :PolicyName, :IdentityId, :IdentityRoleName, :IdentityRoleAliasName, :CreateTime, :UpdateTime, :OrgSubAccountName
        
        def initialize(orgsubaccountuin=nil, policyid=nil, policyname=nil, identityid=nil, identityrolename=nil, identityrolealiasname=nil, createtime=nil, updatetime=nil, orgsubaccountname=nil)
          @OrgSubAccountUin = orgsubaccountuin
          @PolicyId = policyid
          @PolicyName = policyname
          @IdentityId = identityid
          @IdentityRoleName = identityrolename
          @IdentityRoleAliasName = identityrolealiasname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @OrgSubAccountName = orgsubaccountname
        end

        def deserialize(params)
          @OrgSubAccountUin = params['OrgSubAccountUin']
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @IdentityId = params['IdentityId']
          @IdentityRoleName = params['IdentityRoleName']
          @IdentityRoleAliasName = params['IdentityRoleAliasName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @OrgSubAccountName = params['OrgSubAccountName']
        end
      end

      # 组织成员可授权的身份
      class OrgMemberAuthIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份角色名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份角色别名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleAliasName: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :IdentityId, :IdentityRoleName, :IdentityRoleAliasName, :Description, :CreateTime, :UpdateTime
        
        def initialize(identityid=nil, identityrolename=nil, identityrolealiasname=nil, description=nil, createtime=nil, updatetime=nil)
          @IdentityId = identityid
          @IdentityRoleName = identityrolename
          @IdentityRoleAliasName = identityrolealiasname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @IdentityRoleName = params['IdentityRoleName']
          @IdentityRoleAliasName = params['IdentityRoleAliasName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 组织成员被授权的策略
      class OrgMemberPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份角色名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份角色别名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleAliasName: String
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :PolicyId, :PolicyName, :IdentityId, :IdentityRoleName, :IdentityRoleAliasName, :Description, :CreateTime, :UpdateTime
        
        def initialize(policyid=nil, policyname=nil, identityid=nil, identityrolename=nil, identityrolealiasname=nil, description=nil, createtime=nil, updatetime=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @IdentityId = identityid
          @IdentityRoleName = identityrolename
          @IdentityRoleAliasName = identityrolealiasname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @IdentityId = params['IdentityId']
          @IdentityRoleName = params['IdentityRoleName']
          @IdentityRoleAliasName = params['IdentityRoleAliasName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 企业组织单元
      class OrgNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 组织节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ParentNodeId: 父节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentNodeId: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :NodeId, :Name, :ParentNodeId, :Remark, :CreateTime, :UpdateTime
        
        def initialize(nodeid=nil, name=nil, parentnodeid=nil, remark=nil, createtime=nil, updatetime=nil)
          @NodeId = nodeid
          @Name = name
          @ParentNodeId = parentnodeid
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Name = params['Name']
          @ParentNodeId = params['ParentNodeId']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

      # UpdateOrganizationNode请求参数结构体
      class UpdateOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID。
        # @type NodeId: Integer
        # @param Name: 节点名称。最大长度为40个字符，支持英文字母、数字、汉字、符号+@、&._[]-
        # @type Name: String
        # @param Remark: 备注。
        # @type Remark: String

        attr_accessor :NodeId, :Name, :Remark
        
        def initialize(nodeid=nil, name=nil, remark=nil)
          @NodeId = nodeid
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # UpdateOrganizationNode返回参数结构体
      class UpdateOrganizationNodeResponse < TencentCloud::Common::AbstractModel
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

