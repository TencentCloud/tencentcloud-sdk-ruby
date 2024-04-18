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
      # AddOrganizationMemberEmail请求参数结构体
      class AddOrganizationMemberEmailRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param Email: 邮箱地址。
        # @type Email: String
        # @param CountryCode: 国际区号。
        # @type CountryCode: String
        # @param Phone: 手机号。
        # @type Phone: String

        attr_accessor :MemberUin, :Email, :CountryCode, :Phone

        def initialize(memberuin=nil, email=nil, countrycode=nil, phone=nil)
          @MemberUin = memberuin
          @Email = email
          @CountryCode = countrycode
          @Phone = phone
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Email = params['Email']
          @CountryCode = params['CountryCode']
          @Phone = params['Phone']
        end
      end

      # AddOrganizationMemberEmail返回参数结构体
      class AddOrganizationMemberEmailResponse < TencentCloud::Common::AbstractModel
        # @param BindId: 绑定Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindId, :RequestId

        def initialize(bindid=nil, requestid=nil)
          @BindId = bindid
          @RequestId = requestid
        end

        def deserialize(params)
          @BindId = params['BindId']
          @RequestId = params['RequestId']
        end
      end

      # AddOrganizationNode请求参数结构体
      class AddOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param ParentNodeId: 父节点ID。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # AddShareUnitMembers请求参数结构体
      class AddShareUnitMembersRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Members: 共享成员列表。最大10个。
        # @type Members: Array

        attr_accessor :UnitId, :Area, :Members

        def initialize(unitid=nil, area=nil, members=nil)
          @UnitId = unitid
          @Area = area
          @Members = members
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              sharemember_tmp = ShareMember.new
              sharemember_tmp.deserialize(i)
              @Members << sharemember_tmp
            end
          end
        end
      end

      # AddShareUnitMembers返回参数结构体
      class AddShareUnitMembersResponse < TencentCloud::Common::AbstractModel
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

      # AddShareUnit请求参数结构体
      class AddShareUnitRequest < TencentCloud::Common::AbstractModel
        # @param Name: 共享单元名称。仅支持大小写字母、数字、-、以及_的组合，3-128个字符。
        # @type Name: String
        # @param Area: 共享单元地域。可通过接口[DescribeShareAreas](https://cloud.tencent.com/document/product/850/103050)获取支持共享的地域。
        # @type Area: String
        # @param Description: 共享单元描述。最大128个字符。
        # @type Description: String

        attr_accessor :Name, :Area, :Description

        def initialize(name=nil, area=nil, description=nil)
          @Name = name
          @Area = area
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Area = params['Area']
          @Description = params['Description']
        end
      end

      # AddShareUnitResources请求参数结构体
      class AddShareUnitResourcesRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Type: 共享资源类型。支持共享的资源类型,请参见[资源共享概述](https://cloud.tencent.com/document/product/850/59489)
        # @type Type: String
        # @param Resources: 共享资源列表。最大10个。
        # @type Resources: Array

        attr_accessor :UnitId, :Area, :Type, :Resources

        def initialize(unitid=nil, area=nil, type=nil, resources=nil)
          @UnitId = unitid
          @Area = area
          @Type = type
          @Resources = resources
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          @Type = params['Type']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              productresource_tmp = ProductResource.new
              productresource_tmp.deserialize(i)
              @Resources << productresource_tmp
            end
          end
        end
      end

      # AddShareUnitResources返回参数结构体
      class AddShareUnitResourcesResponse < TencentCloud::Common::AbstractModel
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

      # AddShareUnit返回参数结构体
      class AddShareUnitResponse < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnitId, :RequestId

        def initialize(unitid=nil, requestid=nil)
          @UnitId = unitid
          @RequestId = requestid
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @RequestId = params['RequestId']
        end
      end

      # AttachPolicy请求参数结构体
      class AttachPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TargetId: 绑定策略目标ID。成员Uin或部门ID
        # @type TargetId: Integer
        # @param TargetType: 目标类型。取值范围：NODE-部门、MEMBER-成员
        # @type TargetType: String
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param Type: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String

        attr_accessor :TargetId, :TargetType, :PolicyId, :Type

        def initialize(targetid=nil, targettype=nil, policyid=nil, type=nil)
          @TargetId = targetid
          @TargetType = targettype
          @PolicyId = policyid
          @Type = type
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @PolicyId = params['PolicyId']
          @Type = params['Type']
        end
      end

      # AttachPolicy返回参数结构体
      class AttachPolicyResponse < TencentCloud::Common::AbstractModel
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
        # @param PolicyId: 策略ID。可以调用[DescribeOrganizationMemberPolicies](https://cloud.tencent.com/document/product/850/82935)获取
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

      # CancelOrganizationMemberAuthAccount请求参数结构体
      class CancelOrganizationMemberAuthAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。可以通过[DescribeOrganizationMemberPolicies](https://cloud.tencent.com/document/product/850/82935)获取
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

      # CheckAccountDelete请求参数结构体
      class CheckAccountDeleteRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer

        attr_accessor :MemberUin

        def initialize(memberuin=nil)
          @MemberUin = memberuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
        end
      end

      # CheckAccountDelete返回参数结构体
      class CheckAccountDeleteResponse < TencentCloud::Common::AbstractModel
        # @param AllowDelete: 成员是否允许删除。 true-是、false-否
        # @type AllowDelete: Boolean
        # @param NotAllowReason: 不允许删除原因。
        # @type NotAllowReason: :class:`Tencentcloud::Organization.v20210331.models.NotAllowReason`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllowDelete, :NotAllowReason, :RequestId

        def initialize(allowdelete=nil, notallowreason=nil, requestid=nil)
          @AllowDelete = allowdelete
          @NotAllowReason = notallowreason
          @RequestId = requestid
        end

        def deserialize(params)
          @AllowDelete = params['AllowDelete']
          unless params['NotAllowReason'].nil?
            @NotAllowReason = NotAllowReason.new
            @NotAllowReason.deserialize(params['NotAllowReason'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationIdentity请求参数结构体
      class CreateOrganizationIdentityRequest < TencentCloud::Common::AbstractModel
        # @param IdentityAliasName: 身份名称
        # @type IdentityAliasName: String
        # @param IdentityPolicy: 身份策略
        # @type IdentityPolicy: Array
        # @param Description: 身份描述
        # @type Description: String

        attr_accessor :IdentityAliasName, :IdentityPolicy, :Description

        def initialize(identityaliasname=nil, identitypolicy=nil, description=nil)
          @IdentityAliasName = identityaliasname
          @IdentityPolicy = identitypolicy
          @Description = description
        end

        def deserialize(params)
          @IdentityAliasName = params['IdentityAliasName']
          unless params['IdentityPolicy'].nil?
            @IdentityPolicy = []
            params['IdentityPolicy'].each do |i|
              identitypolicy_tmp = IdentityPolicy.new
              identitypolicy_tmp.deserialize(i)
              @IdentityPolicy << identitypolicy_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # CreateOrganizationIdentity返回参数结构体
      class CreateOrganizationIdentityResponse < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdentityId, :RequestId

        def initialize(identityid=nil, requestid=nil)
          @IdentityId = identityid
          @RequestId = requestid
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrganizationMemberAuthIdentity请求参数结构体
      class CreateOrganizationMemberAuthIdentityRequest < TencentCloud::Common::AbstractModel
        # @param MemberUins: 成员Uin列表。最多10个
        # @type MemberUins: Array
        # @param IdentityIds: 身份Id列表。最多5个，可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityIds: Array

        attr_accessor :MemberUins, :IdentityIds

        def initialize(memberuins=nil, identityids=nil)
          @MemberUins = memberuins
          @IdentityIds = identityids
        end

        def deserialize(params)
          @MemberUins = params['MemberUins']
          @IdentityIds = params['IdentityIds']
        end
      end

      # CreateOrganizationMemberAuthIdentity返回参数结构体
      class CreateOrganizationMemberAuthIdentityResponse < TencentCloud::Common::AbstractModel
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

      # CreateOrganizationMemberPolicy请求参数结构体
      class CreateOrganizationMemberPolicyRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyName: 策略名。最大长度为128个字符，支持英文字母、数字、符号+=,.@_-
        # @type PolicyName: String
        # @param IdentityId: 成员访问身份ID。可以调用[DescribeOrganizationMemberAuthIdentities](https://cloud.tencent.com/document/product/850/82936)获取
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param NodeId: 成员所属部门的节点ID。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateOrganizationMembersPolicy请求参数结构体
      class CreateOrganizationMembersPolicyRequest < TencentCloud::Common::AbstractModel
        # @param MemberUins: 成员Uin列表。最多10个
        # @type MemberUins: Array
        # @param PolicyName: 策略名。长度1～128个字符，支持英文字母、数字、符号+=,.@_-
        # @type PolicyName: String
        # @param IdentityId: 成员访问身份ID。可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityId: Integer
        # @param Description: 策略描述。最大长度为128个字符
        # @type Description: String

        attr_accessor :MemberUins, :PolicyName, :IdentityId, :Description

        def initialize(memberuins=nil, policyname=nil, identityid=nil, description=nil)
          @MemberUins = memberuins
          @PolicyName = policyname
          @IdentityId = identityid
          @Description = description
        end

        def deserialize(params)
          @MemberUins = params['MemberUins']
          @PolicyName = params['PolicyName']
          @IdentityId = params['IdentityId']
          @Description = params['Description']
        end
      end

      # CreateOrganizationMembersPolicy返回参数结构体
      class CreateOrganizationMembersPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateOrganization请求参数结构体
      class CreateOrganizationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateOrganization返回参数结构体
      class CreateOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # @type OrgId: Integer
        # @param NickName: 创建者昵称
        # @type NickName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :NickName, :RequestId

        def initialize(orgid=nil, nickname=nil, requestid=nil)
          @OrgId = orgid
          @NickName = nickname
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @NickName = params['NickName']
          @RequestId = params['RequestId']
        end
      end

      # CreatePolicy请求参数结构体
      class CreatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Name: 策略名。
        # 长度为1~128个字符，可以包含汉字、英文字母、数字和下划线（_）
        # @type Name: String
        # @param Content: 策略内容。参考CAM策略语法
        # @type Content: String
        # @param Type: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String
        # @param Description: 策略描述。
        # @type Description: String

        attr_accessor :Name, :Content, :Type, :Description

        def initialize(name=nil, content=nil, type=nil, description=nil)
          @Name = name
          @Content = content
          @Type = type
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Content = params['Content']
          @Type = params['Type']
          @Description = params['Description']
        end
      end

      # CreatePolicy返回参数结构体
      class CreatePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer

        attr_accessor :MemberUin

        def initialize(memberuin=nil)
          @MemberUin = memberuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationIdentity请求参数结构体
      class DeleteOrganizationIdentityRequest < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityId: Integer

        attr_accessor :IdentityId

        def initialize(identityid=nil)
          @IdentityId = identityid
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
        end
      end

      # DeleteOrganizationIdentity返回参数结构体
      class DeleteOrganizationIdentityResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationMemberAuthIdentity请求参数结构体
      class DeleteOrganizationMemberAuthIdentityRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param IdentityId: 身份ID。可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityId: Integer

        attr_accessor :MemberUin, :IdentityId

        def initialize(memberuin=nil, identityid=nil)
          @MemberUin = memberuin
          @IdentityId = identityid
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @IdentityId = params['IdentityId']
        end
      end

      # DeleteOrganizationMemberAuthIdentity返回参数结构体
      class DeleteOrganizationMemberAuthIdentityResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationMembersPolicy请求参数结构体
      class DeleteOrganizationMembersPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 访问策略ID。可以通过[DescribeOrganizationMemberPolicies](https://cloud.tencent.com/document/product/850/82935)获取
        # @type PolicyId: Integer

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteOrganizationMembersPolicy返回参数结构体
      class DeleteOrganizationMembersPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationMembers请求参数结构体
      class DeleteOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 被删除成员的Uin列表。
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

      # DeleteOrganizationNodes请求参数结构体
      class DeleteOrganizationNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID列表。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
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

      # DeleteOrganization请求参数结构体
      class DeleteOrganizationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteOrganization返回参数结构体
      class DeleteOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # DeletePolicy请求参数结构体
      class DeletePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 需要删除的策略ID。可以调用[ListPolicies](https://cloud.tencent.com/document/product/850/105311)获取
        # @type PolicyId: Integer
        # @param Type: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String

        attr_accessor :PolicyId, :Type

        def initialize(policyid=nil, type=nil)
          @PolicyId = policyid
          @Type = type
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Type = params['Type']
        end
      end

      # DeletePolicy返回参数结构体
      class DeletePolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteShareUnitMembers请求参数结构体
      class DeleteShareUnitMembersRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Members: 成员列表。
        # @type Members: Array

        attr_accessor :UnitId, :Area, :Members

        def initialize(unitid=nil, area=nil, members=nil)
          @UnitId = unitid
          @Area = area
          @Members = members
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              sharemember_tmp = ShareMember.new
              sharemember_tmp.deserialize(i)
              @Members << sharemember_tmp
            end
          end
        end
      end

      # DeleteShareUnitMembers返回参数结构体
      class DeleteShareUnitMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteShareUnit请求参数结构体
      class DeleteShareUnitRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String

        attr_accessor :UnitId

        def initialize(unitid=nil)
          @UnitId = unitid
        end

        def deserialize(params)
          @UnitId = params['UnitId']
        end
      end

      # DeleteShareUnitResources请求参数结构体
      class DeleteShareUnitResourcesRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Type: 共享资源类型。支持共享的资源类型,请参见[资源共享概述](https://cloud.tencent.com/document/product/850/59489)
        # @type Type: String
        # @param Resources: 共享资源列表。最大10个。
        # @type Resources: Array

        attr_accessor :UnitId, :Area, :Type, :Resources

        def initialize(unitid=nil, area=nil, type=nil, resources=nil)
          @UnitId = unitid
          @Area = area
          @Type = type
          @Resources = resources
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          @Type = params['Type']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              shareresource_tmp = ShareResource.new
              shareresource_tmp.deserialize(i)
              @Resources << shareresource_tmp
            end
          end
        end
      end

      # DeleteShareUnitResources返回参数结构体
      class DeleteShareUnitResourcesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteShareUnit返回参数结构体
      class DeleteShareUnitResponse < TencentCloud::Common::AbstractModel
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

      # DescribeOrganizationAuthNode请求参数结构体
      class DescribeOrganizationAuthNodeRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。默认值：10。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeOrganizationFinancialByMember请求参数结构体
      class DescribeOrganizationFinancialByMemberRequest < TencentCloud::Common::AbstractModel
        # @param Month: 查询开始月份。格式：yyyy-mm，例如：2021-01。
        # @type Month: String
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
        # @type Limit: Integer
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param EndMonth: 查询结束月份。格式：yyyy-mm，例如：2021-01,默认值为查询开始月份。
        # @type EndMonth: String
        # @param MemberUins: 查询成员列表。 最大100个
        # @type MemberUins: Array
        # @param ProductCodes: 查询产品列表。 最大100个
        # @type ProductCodes: Array

        attr_accessor :Month, :Limit, :Offset, :EndMonth, :MemberUins, :ProductCodes

        def initialize(month=nil, limit=nil, offset=nil, endmonth=nil, memberuins=nil, productcodes=nil)
          @Month = month
          @Limit = limit
          @Offset = offset
          @EndMonth = endmonth
          @MemberUins = memberuins
          @ProductCodes = productcodes
        end

        def deserialize(params)
          @Month = params['Month']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EndMonth = params['EndMonth']
          @MemberUins = params['MemberUins']
          @ProductCodes = params['ProductCodes']
        end
      end

      # DescribeOrganizationFinancialByMember返回参数结构体
      class DescribeOrganizationFinancialByMemberResponse < TencentCloud::Common::AbstractModel
        # @param TotalCost: 当月总消耗。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Float
        # @param Items: 成员消耗详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCost, :Items, :Total, :RequestId

        def initialize(totalcost=nil, items=nil, total=nil, requestid=nil)
          @TotalCost = totalcost
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCost = params['TotalCost']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmemberfinancial_tmp = OrgMemberFinancial.new
              orgmemberfinancial_tmp.deserialize(i)
              @Items << orgmemberfinancial_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationFinancialByMonth请求参数结构体
      class DescribeOrganizationFinancialByMonthRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 查询月数。取值范围：1~6，默认值：6
        # @type Limit: Integer
        # @param EndMonth: 查询结束月份。格式：yyyy-mm，例如：2021-01
        # @type EndMonth: String
        # @param MemberUins: 查询成员列表。 最大100个
        # @type MemberUins: Array
        # @param ProductCodes: 查询产品列表。 最大100个
        # @type ProductCodes: Array

        attr_accessor :Limit, :EndMonth, :MemberUins, :ProductCodes

        def initialize(limit=nil, endmonth=nil, memberuins=nil, productcodes=nil)
          @Limit = limit
          @EndMonth = endmonth
          @MemberUins = memberuins
          @ProductCodes = productcodes
        end

        def deserialize(params)
          @Limit = params['Limit']
          @EndMonth = params['EndMonth']
          @MemberUins = params['MemberUins']
          @ProductCodes = params['ProductCodes']
        end
      end

      # DescribeOrganizationFinancialByMonth返回参数结构体
      class DescribeOrganizationFinancialByMonthResponse < TencentCloud::Common::AbstractModel
        # @param Items: 产品消耗详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgfinancialbymonth_tmp = OrgFinancialByMonth.new
              orgfinancialbymonth_tmp.deserialize(i)
              @Items << orgfinancialbymonth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationFinancialByProduct请求参数结构体
      class DescribeOrganizationFinancialByProductRequest < TencentCloud::Common::AbstractModel
        # @param Month: 查询开始月份。格式：yyyy-mm，例如：2021-01
        # @type Month: String
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
        # @type Limit: Integer
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param EndMonth: 查询结束月份。格式：yyyy-mm，例如：2021-01,默认值为查询开始月份
        # @type EndMonth: String
        # @param MemberUins: 查询成员列表。 最大100个
        # @type MemberUins: Array
        # @param ProductCodes: 查询产品列表。 最大100个
        # @type ProductCodes: Array

        attr_accessor :Month, :Limit, :Offset, :EndMonth, :MemberUins, :ProductCodes

        def initialize(month=nil, limit=nil, offset=nil, endmonth=nil, memberuins=nil, productcodes=nil)
          @Month = month
          @Limit = limit
          @Offset = offset
          @EndMonth = endmonth
          @MemberUins = memberuins
          @ProductCodes = productcodes
        end

        def deserialize(params)
          @Month = params['Month']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EndMonth = params['EndMonth']
          @MemberUins = params['MemberUins']
          @ProductCodes = params['ProductCodes']
        end
      end

      # DescribeOrganizationFinancialByProduct返回参数结构体
      class DescribeOrganizationFinancialByProductResponse < TencentCloud::Common::AbstractModel
        # @param TotalCost: 当月总消耗。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Float
        # @param Items: 产品消耗详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCost, :Items, :Total, :RequestId

        def initialize(totalcost=nil, items=nil, total=nil, requestid=nil)
          @TotalCost = totalcost
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCost = params['TotalCost']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgproductfinancial_tmp = OrgProductFinancial.new
              orgproductfinancial_tmp.deserialize(i)
              @Items << orgproductfinancial_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMemberAuthAccounts请求参数结构体
      class DescribeOrganizationMemberAuthAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。默认值：10。
        # @type Limit: Integer
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。可以通过[DescribeOrganizationMemberPolicies](https://cloud.tencent.com/document/product/850/82935)获取
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
        # @type Limit: Integer
        # @param MemberUin: 组织成员Uin。入参MemberUin与IdentityId至少填写一个
        # @type MemberUin: Integer
        # @param IdentityId: 身份ID。入参MemberUin与IdentityId至少填写一个, 可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityId: Integer

        attr_accessor :Offset, :Limit, :MemberUin, :IdentityId

        def initialize(offset=nil, limit=nil, memberuin=nil, identityid=nil)
          @Offset = offset
          @Limit = limit
          @MemberUin = memberuin
          @IdentityId = identityid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MemberUin = params['MemberUin']
          @IdentityId = params['IdentityId']
        end
      end

      # DescribeOrganizationMemberAuthIdentities返回参数结构体
      class DescribeOrganizationMemberAuthIdentitiesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 授权身份列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeOrganizationMemberEmailBind请求参数结构体
      class DescribeOrganizationMemberEmailBindRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer

        attr_accessor :MemberUin

        def initialize(memberuin=nil)
          @MemberUin = memberuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
        end
      end

      # DescribeOrganizationMemberEmailBind返回参数结构体
      class DescribeOrganizationMemberEmailBindResponse < TencentCloud::Common::AbstractModel
        # @param BindId: 绑定ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindId: Integer
        # @param ApplyTime: 申请时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyTime: String
        # @param Email: 邮箱地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 安全手机号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param BindStatus: 绑定状态。    未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindStatus: String
        # @param BindTime: 绑定时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindTime: String
        # @param Description: 失败说明。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param PhoneBind: 安全手机绑定状态 。 未绑定：0，已绑定：1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneBind: Integer
        # @param CountryCode: 国际区号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountryCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindId, :ApplyTime, :Email, :Phone, :BindStatus, :BindTime, :Description, :PhoneBind, :CountryCode, :RequestId

        def initialize(bindid=nil, applytime=nil, email=nil, phone=nil, bindstatus=nil, bindtime=nil, description=nil, phonebind=nil, countrycode=nil, requestid=nil)
          @BindId = bindid
          @ApplyTime = applytime
          @Email = email
          @Phone = phone
          @BindStatus = bindstatus
          @BindTime = bindtime
          @Description = description
          @PhoneBind = phonebind
          @CountryCode = countrycode
          @RequestId = requestid
        end

        def deserialize(params)
          @BindId = params['BindId']
          @ApplyTime = params['ApplyTime']
          @Email = params['Email']
          @Phone = params['Phone']
          @BindStatus = params['BindStatus']
          @BindTime = params['BindTime']
          @Description = params['Description']
          @PhoneBind = params['PhoneBind']
          @CountryCode = params['CountryCode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMemberPolicies请求参数结构体
      class DescribeOrganizationMemberPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。默认值：10。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePolicyConfig请求参数结构体
      class DescribePolicyConfigRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 企业组织Id。可以调用[DescribeOrganization](https://cloud.tencent.com/document/product/850/67059)获取
        # @type OrganizationId: Integer
        # @param Type: 策略类型。默认值0，取值范围：0-服务控制策略、1-标签策略
        # @type Type: Integer

        attr_accessor :OrganizationId, :Type

        def initialize(organizationid=nil, type=nil)
          @OrganizationId = organizationid
          @Type = type
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Type = params['Type']
        end
      end

      # DescribePolicyConfig返回参数结构体
      class DescribePolicyConfigResponse < TencentCloud::Common::AbstractModel
        # @param Status: 开启状态。0-未开启、1-开启
        # @type Status: Integer
        # @param Type: 策略类型。SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Type, :RequestId

        def initialize(status=nil, type=nil, requestid=nil)
          @Status = status
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicy请求参数结构体
      class DescribePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id。
        # @type PolicyId: Integer
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String

        attr_accessor :PolicyId, :PolicyType

        def initialize(policyid=nil, policytype=nil)
          @PolicyId = policyid
          @PolicyType = policytype
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyType = params['PolicyType']
        end
      end

      # DescribePolicy返回参数结构体
      class DescribePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param Type: 策略类型。1-自定义 2-预设策略
        # @type Type: Integer
        # @param Description: 策略描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param PolicyDocument: 策略文档。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String
        # @param UpdateTime: 策略更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param AddTime: 策略创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :PolicyName, :Type, :Description, :PolicyDocument, :UpdateTime, :AddTime, :RequestId

        def initialize(policyid=nil, policyname=nil, type=nil, description=nil, policydocument=nil, updatetime=nil, addtime=nil, requestid=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Type = type
          @Description = description
          @PolicyDocument = policydocument
          @UpdateTime = updatetime
          @AddTime = addtime
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Type = params['Type']
          @Description = params['Description']
          @PolicyDocument = params['PolicyDocument']
          @UpdateTime = params['UpdateTime']
          @AddTime = params['AddTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeShareAreas请求参数结构体
      class DescribeShareAreasRequest < TencentCloud::Common::AbstractModel
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

      # DescribeShareAreas返回参数结构体
      class DescribeShareAreasResponse < TencentCloud::Common::AbstractModel
        # @param Items: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              sharearea_tmp = ShareArea.new
              sharearea_tmp.deserialize(i)
              @Items << sharearea_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShareUnitMembers请求参数结构体
      class DescribeShareUnitMembersRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键字。支持成员Uin搜索。
        # @type SearchKey: String

        attr_accessor :UnitId, :Area, :Offset, :Limit, :SearchKey

        def initialize(unitid=nil, area=nil, offset=nil, limit=nil, searchkey=nil)
          @UnitId = unitid
          @Area = area
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeShareUnitMembers返回参数结构体
      class DescribeShareUnitMembersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 共享单元成员列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              shareunitmember_tmp = ShareUnitMember.new
              shareunitmember_tmp.deserialize(i)
              @Items << shareunitmember_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShareUnitResources请求参数结构体
      class DescribeShareUnitResourcesRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键字。支持产品资源ID搜索。
        # @type SearchKey: String
        # @param Type: 共享资源类型。支持共享的资源类型,请参见[资源共享概述](https://cloud.tencent.com/document/product/850/59489)
        # @type Type: String

        attr_accessor :UnitId, :Area, :Offset, :Limit, :SearchKey, :Type

        def initialize(unitid=nil, area=nil, offset=nil, limit=nil, searchkey=nil, type=nil)
          @UnitId = unitid
          @Area = area
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @Type = type
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Area = params['Area']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @Type = params['Type']
        end
      end

      # DescribeShareUnitResources返回参数结构体
      class DescribeShareUnitResourcesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 共享单元资源列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              shareunitresource_tmp = ShareUnitResource.new
              shareunitresource_tmp.deserialize(i)
              @Items << shareunitresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShareUnits请求参数结构体
      class DescribeShareUnitsRequest < TencentCloud::Common::AbstractModel
        # @param Area: 共享单元地域。可通过接口[DescribeShareAreas](https://cloud.tencent.com/document/product/850/103050)获取支持共享的地域。
        # @type Area: String
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键字。支持UnitId和Name搜索。
        # @type SearchKey: String

        attr_accessor :Area, :Offset, :Limit, :SearchKey

        def initialize(area=nil, offset=nil, limit=nil, searchkey=nil)
          @Area = area
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Area = params['Area']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeShareUnits返回参数结构体
      class DescribeShareUnitsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Items: 共享单元列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              managershareunit_tmp = ManagerShareUnit.new
              managershareunit_tmp.deserialize(i)
              @Items << managershareunit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachPolicy请求参数结构体
      class DetachPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TargetId: 解绑策略目标ID。成员Uin或部门ID
        # @type TargetId: Integer
        # @param TargetType: 目标类型。取值范围：NODE-部门、MEMBER-成员
        # @type TargetType: String
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param Type: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String

        attr_accessor :TargetId, :TargetType, :PolicyId, :Type

        def initialize(targetid=nil, targettype=nil, policyid=nil, type=nil)
          @TargetId = targetid
          @TargetType = targettype
          @PolicyId = policyid
          @Type = type
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @PolicyId = params['PolicyId']
          @Type = params['Type']
        end
      end

      # DetachPolicy返回参数结构体
      class DetachPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DisablePolicyType请求参数结构体
      class DisablePolicyTypeRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 企业组织Id。可以调用[DescribeOrganization](https://cloud.tencent.com/document/product/850/67059)获取
        # @type OrganizationId: Integer
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String

        attr_accessor :OrganizationId, :PolicyType

        def initialize(organizationid=nil, policytype=nil)
          @OrganizationId = organizationid
          @PolicyType = policytype
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @PolicyType = params['PolicyType']
        end
      end

      # DisablePolicyType返回参数结构体
      class DisablePolicyTypeResponse < TencentCloud::Common::AbstractModel
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

      # EnablePolicyType请求参数结构体
      class EnablePolicyTypeRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 企业组织Id。可以调用[DescribeOrganization](https://cloud.tencent.com/document/product/850/67059)获取
        # @type OrganizationId: Integer
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String

        attr_accessor :OrganizationId, :PolicyType

        def initialize(organizationid=nil, policytype=nil)
          @OrganizationId = organizationid
          @PolicyType = policytype
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @PolicyType = params['PolicyType']
        end
      end

      # EnablePolicyType返回参数结构体
      class EnablePolicyTypeResponse < TencentCloud::Common::AbstractModel
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

      # 组织身份策略
      class IdentityPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: CAM预设策略ID。PolicyType 为预设策略时有效且必选
        # @type PolicyId: Integer
        # @param PolicyName: CAM预设策略名称。PolicyType 为预设策略时有效且必选
        # @type PolicyName: String
        # @param PolicyType: 策略类型。取值 1-自定义策略  2-预设策略；默认值2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: Integer
        # @param PolicyDocument: 自定义策略内容，遵循CAM策略语法。PolicyType 为自定义策略时有效且必选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String

        attr_accessor :PolicyId, :PolicyName, :PolicyType, :PolicyDocument

        def initialize(policyid=nil, policyname=nil, policytype=nil, policydocument=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @PolicyType = policytype
          @PolicyDocument = policydocument
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @PolicyType = params['PolicyType']
          @PolicyDocument = params['PolicyDocument']
        end
      end

      # ListOrganizationIdentity请求参数结构体
      class ListOrganizationIdentityRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍。默认值 : 0。
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50。默认值：10。
        # @type Limit: Integer
        # @param SearchKey: 名称搜索关键字。
        # @type SearchKey: String
        # @param IdentityId: 身份ID。可以通过身份ID搜索
        # @type IdentityId: Integer
        # @param IdentityType: 身份类型。取值范围 1-预设, 2-自定义
        # @type IdentityType: Integer

        attr_accessor :Offset, :Limit, :SearchKey, :IdentityId, :IdentityType

        def initialize(offset=nil, limit=nil, searchkey=nil, identityid=nil, identitytype=nil)
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @IdentityId = identityid
          @IdentityType = identitytype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @IdentityId = params['IdentityId']
          @IdentityType = params['IdentityType']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 查询目标关联的SCP策略列表
      class ListPoliciesForTarget < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略Id
        # @type StrategyId: Integer
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Uin: 关联的账号或节点
        # @type Uin: Integer
        # @param Type: 关联类型 1-节点 2-用户
        # @type Type: Integer
        # @param AddTime: 策略创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param UpdateTime: 策略更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Name: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AttachTime: 策略绑定时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachTime: String

        attr_accessor :StrategyId, :StrategyName, :Remark, :Uin, :Type, :AddTime, :UpdateTime, :Name, :AttachTime

        def initialize(strategyid=nil, strategyname=nil, remark=nil, uin=nil, type=nil, addtime=nil, updatetime=nil, name=nil, attachtime=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @Remark = remark
          @Uin = uin
          @Type = type
          @AddTime = addtime
          @UpdateTime = updatetime
          @Name = name
          @AttachTime = attachtime
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @Remark = params['Remark']
          @Uin = params['Uin']
          @Type = params['Type']
          @AddTime = params['AddTime']
          @UpdateTime = params['UpdateTime']
          @Name = params['Name']
          @AttachTime = params['AttachTime']
        end
      end

      # ListPoliciesForTarget请求参数结构体
      class ListPoliciesForTargetRequest < TencentCloud::Common::AbstractModel
        # @param TargetId: 账号uin或者节点id。
        # @type TargetId: Integer
        # @param Rp: 每页数量。默认值是 20，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码。默认值是 1，从 1开始，不能大于 200
        # @type Page: Integer
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String
        # @param Keyword: 搜索关键字。按照策略名称搜索
        # @type Keyword: String

        attr_accessor :TargetId, :Rp, :Page, :PolicyType, :Keyword

        def initialize(targetid=nil, rp=nil, page=nil, policytype=nil, keyword=nil)
          @TargetId = targetid
          @Rp = rp
          @Page = page
          @PolicyType = policytype
          @Keyword = keyword
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @Rp = params['Rp']
          @Page = params['Page']
          @PolicyType = params['PolicyType']
          @Keyword = params['Keyword']
        end
      end

      # ListPoliciesForTarget返回参数结构体
      class ListPoliciesForTargetResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 总数。
        # @type TotalNum: Integer
        # @param List: 目标关联的策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId

        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listpoliciesfortarget_tmp = ListPoliciesForTarget.new
              listpoliciesfortarget_tmp.deserialize(i)
              @List << listpoliciesfortarget_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPolicies请求参数结构体
      class ListPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Rp: 每页数量。默认值是 20，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码。默认值是 1，从 1开始，不能大于 200
        # @type Page: Integer
        # @param Scope: 查询范围。取值范围： All-获取所有策略、QCS-只获取预设策略、Local-只获取自定义策略，默认值：All
        # @type Scope: String
        # @param Keyword: 搜索关键字。按照策略名搜索
        # @type Keyword: String
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String

        attr_accessor :Rp, :Page, :Scope, :Keyword, :PolicyType

        def initialize(rp=nil, page=nil, scope=nil, keyword=nil, policytype=nil)
          @Rp = rp
          @Page = page
          @Scope = scope
          @Keyword = keyword
          @PolicyType = policytype
        end

        def deserialize(params)
          @Rp = params['Rp']
          @Page = params['Page']
          @Scope = params['Scope']
          @Keyword = params['Keyword']
          @PolicyType = params['PolicyType']
        end
      end

      # ListPolicies返回参数结构体
      class ListPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略列表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId

        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listpolicynode_tmp = ListPolicyNode.new
              listpolicynode_tmp.deserialize(i)
              @List << listpolicynode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 企业组织策略列表
      class ListPolicyNode < TencentCloud::Common::AbstractModel
        # @param AddTime: 策略创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param AttachedTimes: 策略绑定次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachedTimes: Integer
        # @param Description: 策略描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param PolicyId: 策略Id
        # @type PolicyId: Integer
        # @param UpdateTime: 策略更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Type: 策略类型 1-自定义 2-预设
        # @type Type: Integer

        attr_accessor :AddTime, :AttachedTimes, :Description, :PolicyName, :PolicyId, :UpdateTime, :Type

        def initialize(addtime=nil, attachedtimes=nil, description=nil, policyname=nil, policyid=nil, updatetime=nil, type=nil)
          @AddTime = addtime
          @AttachedTimes = attachedtimes
          @Description = description
          @PolicyName = policyname
          @PolicyId = policyid
          @UpdateTime = updatetime
          @Type = type
        end

        def deserialize(params)
          @AddTime = params['AddTime']
          @AttachedTimes = params['AttachedTimes']
          @Description = params['Description']
          @PolicyName = params['PolicyName']
          @PolicyId = params['PolicyId']
          @UpdateTime = params['UpdateTime']
          @Type = params['Type']
        end
      end

      # 查询某个指定SCP策略关联的目标列表
      class ListTargetsForPolicyNode < TencentCloud::Common::AbstractModel
        # @param Uin: scp账号uin或节点Id
        # @type Uin: Integer
        # @param RelatedType: 关联类型 1-节点关联 2-用户关联
        # @type RelatedType: Integer
        # @param Name: 账号或者节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AddTime: 绑定时间
        # @type AddTime: String

        attr_accessor :Uin, :RelatedType, :Name, :AddTime

        def initialize(uin=nil, relatedtype=nil, name=nil, addtime=nil)
          @Uin = uin
          @RelatedType = relatedtype
          @Name = name
          @AddTime = addtime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RelatedType = params['RelatedType']
          @Name = params['Name']
          @AddTime = params['AddTime']
        end
      end

      # ListTargetsForPolicy请求参数结构体
      class ListTargetsForPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id。
        # @type PolicyId: Integer
        # @param Rp: 每页数量。默认值是 20，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码。默认值是 1，从 1开始，不能大于 200
        # @type Page: Integer
        # @param TargetType: 策略类型。取值范围：All-全部、User-用户、Node-节点
        # @type TargetType: String
        # @param PolicyType: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type PolicyType: String
        # @param Keyword: 按照多个策略id搜索，空格隔开。
        # @type Keyword: String

        attr_accessor :PolicyId, :Rp, :Page, :TargetType, :PolicyType, :Keyword

        def initialize(policyid=nil, rp=nil, page=nil, targettype=nil, policytype=nil, keyword=nil)
          @PolicyId = policyid
          @Rp = rp
          @Page = page
          @TargetType = targettype
          @PolicyType = policytype
          @Keyword = keyword
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Rp = params['Rp']
          @Page = params['Page']
          @TargetType = params['TargetType']
          @PolicyType = params['PolicyType']
          @Keyword = params['Keyword']
        end
      end

      # ListTargetsForPolicy返回参数结构体
      class ListTargetsForPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 总数。
        # @type TotalNum: Integer
        # @param List: 指定SCP策略关联目标列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId

        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listtargetsforpolicynode_tmp = ListTargetsForPolicyNode.new
              listtargetsforpolicynode_tmp.deserialize(i)
              @List << listtargetsforpolicynode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 我的共享单元列表详情
      class ManagerShareUnit < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Name: 共享单元名称。
        # @type Name: String
        # @param Uin: 共享单元管理员Uin。
        # @type Uin: Integer
        # @param OwnerUin: 共享单元管理员OwnerUin。
        # @type OwnerUin: Integer
        # @param Area: 共享单元地域。
        # @type Area: String
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ShareResourceNum: 共享单元资源数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareResourceNum: Integer
        # @param ShareMemberNum: 共享单元成员数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareMemberNum: Integer

        attr_accessor :UnitId, :Name, :Uin, :OwnerUin, :Area, :Description, :CreateTime, :ShareResourceNum, :ShareMemberNum

        def initialize(unitid=nil, name=nil, uin=nil, owneruin=nil, area=nil, description=nil, createtime=nil, shareresourcenum=nil, sharemembernum=nil)
          @UnitId = unitid
          @Name = name
          @Uin = uin
          @OwnerUin = owneruin
          @Area = area
          @Description = description
          @CreateTime = createtime
          @ShareResourceNum = shareresourcenum
          @ShareMemberNum = sharemembernum
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Name = params['Name']
          @Uin = params['Uin']
          @OwnerUin = params['OwnerUin']
          @Area = params['Area']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ShareResourceNum = params['ShareResourceNum']
          @ShareMemberNum = params['ShareMemberNum']
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
        # @param NodeId: 组织节点ID。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
        # @type NodeId: Integer
        # @param MemberUin: 成员Uin列表。
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

      # 不允许删除的原因。
      class NotAllowReason < TencentCloud::Common::AbstractModel
        # @param IsCreateMember: 是否创建的成员。true-是、false-否；成员不是创建的成员不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCreateMember: Boolean
        # @param DeletionPermission: 成员删除许可。true-开启、false-关闭；成员删除许可关闭时不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionPermission: Boolean
        # @param IsAssignManager: 是否可信服务委派管理员。true-是、false-否；成员是可信服务委派管理员不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAssignManager: Boolean
        # @param IsAuthManager: 是否主体管理员。true-是、false-否；成员是主体管理员不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAuthManager: Boolean
        # @param IsShareManager: 是否共享资源管理员。true-是、false-否；成员是共享资源管理员不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsShareManager: Boolean
        # @param OperateProcess: 成员是否设置了操作审批。true-是、false-否；成员设置了操作审批时不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateProcess: Boolean
        # @param BillingPermission: 是否允许解除成员财务权限。true-是、false-否；成员不能解除财务权限时不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingPermission: Boolean
        # @param ExistResources: 存在的资源列表。账号存在资源时不允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExistResources: Array
        # @param DetectFailedResources: 检测失败的资源列表。账号有资源检测失败时不允许删除。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectFailedResources: Array

        attr_accessor :IsCreateMember, :DeletionPermission, :IsAssignManager, :IsAuthManager, :IsShareManager, :OperateProcess, :BillingPermission, :ExistResources, :DetectFailedResources

        def initialize(iscreatemember=nil, deletionpermission=nil, isassignmanager=nil, isauthmanager=nil, issharemanager=nil, operateprocess=nil, billingpermission=nil, existresources=nil, detectfailedresources=nil)
          @IsCreateMember = iscreatemember
          @DeletionPermission = deletionpermission
          @IsAssignManager = isassignmanager
          @IsAuthManager = isauthmanager
          @IsShareManager = issharemanager
          @OperateProcess = operateprocess
          @BillingPermission = billingpermission
          @ExistResources = existresources
          @DetectFailedResources = detectfailedresources
        end

        def deserialize(params)
          @IsCreateMember = params['IsCreateMember']
          @DeletionPermission = params['DeletionPermission']
          @IsAssignManager = params['IsAssignManager']
          @IsAuthManager = params['IsAuthManager']
          @IsShareManager = params['IsShareManager']
          @OperateProcess = params['OperateProcess']
          @BillingPermission = params['BillingPermission']
          @ExistResources = params['ExistResources']
          @DetectFailedResources = params['DetectFailedResources']
        end
      end

      # 按月获取组织财务信息
      class OrgFinancialByMonth < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Month: 月份，格式：yyyy-mm，示例：2021-01。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Month: String
        # @param TotalCost: 消耗金额，单元：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Float
        # @param GrowthRate: 比上月增长率%。正数增长，负数下降，空值无法统计。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrowthRate: String

        attr_accessor :Id, :Month, :TotalCost, :GrowthRate

        def initialize(id=nil, month=nil, totalcost=nil, growthrate=nil)
          @Id = id
          @Month = month
          @TotalCost = totalcost
          @GrowthRate = growthrate
        end

        def deserialize(params)
          @Id = params['Id']
          @Month = params['Month']
          @TotalCost = params['TotalCost']
          @GrowthRate = params['GrowthRate']
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
        # @param IdentityRoleName: 身份的角色名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份的角色别名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityRoleAliasName: String
        # @param Description: 身份描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 首次配置成功的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最后一次配置成功的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IdentityType: 身份类型。取值： 1-预设身份  2-自定义身份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityType: Integer
        # @param Status: 配置状态。取值：1-配置完成 2-需重新配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param MemberUin: 成员Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param MemberName: 成员名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String

        attr_accessor :IdentityId, :IdentityRoleName, :IdentityRoleAliasName, :Description, :CreateTime, :UpdateTime, :IdentityType, :Status, :MemberUin, :MemberName

        def initialize(identityid=nil, identityrolename=nil, identityrolealiasname=nil, description=nil, createtime=nil, updatetime=nil, identitytype=nil, status=nil, memberuin=nil, membername=nil)
          @IdentityId = identityid
          @IdentityRoleName = identityrolename
          @IdentityRoleAliasName = identityrolealiasname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IdentityType = identitytype
          @Status = status
          @MemberUin = memberuin
          @MemberName = membername
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @IdentityRoleName = params['IdentityRoleName']
          @IdentityRoleAliasName = params['IdentityRoleAliasName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IdentityType = params['IdentityType']
          @Status = params['Status']
          @MemberUin = params['MemberUin']
          @MemberName = params['MemberName']
        end
      end

      # 组织成员财务信息。
      class OrgMemberFinancial < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param MemberName: 成员名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String
        # @param TotalCost: 消耗金额，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Float
        # @param Ratio: 占比%。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ratio: String

        attr_accessor :MemberUin, :MemberName, :TotalCost, :Ratio

        def initialize(memberuin=nil, membername=nil, totalcost=nil, ratio=nil)
          @MemberUin = memberuin
          @MemberName = membername
          @TotalCost = totalcost
          @Ratio = ratio
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @MemberName = params['MemberName']
          @TotalCost = params['TotalCost']
          @Ratio = params['Ratio']
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

      # 组织产品财务信息
      class OrgProductFinancial < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品Code。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ProductCode: 产品名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param TotalCost: 产品消耗，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCost: Float
        # @param Ratio: 占比%。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ratio: String

        attr_accessor :ProductName, :ProductCode, :TotalCost, :Ratio

        def initialize(productname=nil, productcode=nil, totalcost=nil, ratio=nil)
          @ProductName = productname
          @ProductCode = productcode
          @TotalCost = totalcost
          @Ratio = ratio
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @ProductCode = params['ProductCode']
          @TotalCost = params['TotalCost']
          @Ratio = params['Ratio']
        end
      end

      # 产品资源
      class ProductResource < TencentCloud::Common::AbstractModel
        # @param ProductResourceId: 产品资源ID。
        # @type ProductResourceId: String
        # @param ResourceGrantLast: 资源六段式最后一节
        # @type ResourceGrantLast: String

        attr_accessor :ProductResourceId, :ResourceGrantLast
        extend Gem::Deprecate
        deprecate :ResourceGrantLast, :none, 2024, 4
        deprecate :ResourceGrantLast=, :none, 2024, 4

        def initialize(productresourceid=nil, resourcegrantlast=nil)
          @ProductResourceId = productresourceid
          @ResourceGrantLast = resourcegrantlast
        end

        def deserialize(params)
          @ProductResourceId = params['ProductResourceId']
          @ResourceGrantLast = params['ResourceGrantLast']
        end
      end

      # QuitOrganization请求参数结构体
      class QuitOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # @type OrgId: Integer

        attr_accessor :OrgId

        def initialize(orgid=nil)
          @OrgId = orgid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
        end
      end

      # QuitOrganization返回参数结构体
      class QuitOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # 共享地域
      class ShareArea < TencentCloud::Common::AbstractModel
        # @param Name: 地域名称。
        # @type Name: String
        # @param Area: 地域标识。
        # @type Area: String
        # @param AreaId: 地域ID。
        # @type AreaId: Integer

        attr_accessor :Name, :Area, :AreaId

        def initialize(name=nil, area=nil, areaid=nil)
          @Name = name
          @Area = area
          @AreaId = areaid
        end

        def deserialize(params)
          @Name = params['Name']
          @Area = params['Area']
          @AreaId = params['AreaId']
        end
      end

      # 共享成员信息
      class ShareMember < TencentCloud::Common::AbstractModel
        # @param ShareMemberUin: 共享成员Uin。
        # @type ShareMemberUin: Integer

        attr_accessor :ShareMemberUin

        def initialize(sharememberuin=nil)
          @ShareMemberUin = sharememberuin
        end

        def deserialize(params)
          @ShareMemberUin = params['ShareMemberUin']
        end
      end

      # 共享资源
      class ShareResource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 共享资源ID。
        # @type ResourceId: String
        # @param ProductResourceId: 产品资源ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductResourceId: String

        attr_accessor :ResourceId, :ProductResourceId
        extend Gem::Deprecate
        deprecate :ResourceId, :none, 2024, 4
        deprecate :ResourceId=, :none, 2024, 4

        def initialize(resourceid=nil, productresourceid=nil)
          @ResourceId = resourceid
          @ProductResourceId = productresourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ProductResourceId = params['ProductResourceId']
        end
      end

      # 共享单元成员
      class ShareUnitMember < TencentCloud::Common::AbstractModel
        # @param ShareMemberUin: 共享成员Uin。
        # @type ShareMemberUin: Integer
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :ShareMemberUin, :CreateTime

        def initialize(sharememberuin=nil, createtime=nil)
          @ShareMemberUin = sharememberuin
          @CreateTime = createtime
        end

        def deserialize(params)
          @ShareMemberUin = params['ShareMemberUin']
          @CreateTime = params['CreateTime']
        end
      end

      # 共享单元资源
      class ShareUnitResource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 共享资源ID。
        # @type ResourceId: String
        # @param Type: 共享资源类型。
        # @type Type: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ProductResourceId: 产品资源ID。
        # @type ProductResourceId: String
        # @param SharedMemberNum: 共享单元成员数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharedMemberNum: Integer
        # @param SharedMemberUseNum: 使用中共享单元成员数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharedMemberUseNum: Integer
        # @param ShareManagerUin: 共享管理员OwnerUin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareManagerUin: Integer

        attr_accessor :ResourceId, :Type, :CreateTime, :ProductResourceId, :SharedMemberNum, :SharedMemberUseNum, :ShareManagerUin

        def initialize(resourceid=nil, type=nil, createtime=nil, productresourceid=nil, sharedmembernum=nil, sharedmemberusenum=nil, sharemanageruin=nil)
          @ResourceId = resourceid
          @Type = type
          @CreateTime = createtime
          @ProductResourceId = productresourceid
          @SharedMemberNum = sharedmembernum
          @SharedMemberUseNum = sharedmemberusenum
          @ShareManagerUin = sharemanageruin
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @ProductResourceId = params['ProductResourceId']
          @SharedMemberNum = params['SharedMemberNum']
          @SharedMemberUseNum = params['SharedMemberUseNum']
          @ShareManagerUin = params['ShareManagerUin']
        end
      end

      # UpdateOrganizationIdentity请求参数结构体
      class UpdateOrganizationIdentityRequest < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。可以通过[ListOrganizationIdentity](https://cloud.tencent.com/document/product/850/82934)获取
        # @type IdentityId: Integer
        # @param Description: 身份描述。
        # @type Description: String
        # @param IdentityPolicy: 身份策略。
        # @type IdentityPolicy: Array

        attr_accessor :IdentityId, :Description, :IdentityPolicy

        def initialize(identityid=nil, description=nil, identitypolicy=nil)
          @IdentityId = identityid
          @Description = description
          @IdentityPolicy = identitypolicy
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @Description = params['Description']
          unless params['IdentityPolicy'].nil?
            @IdentityPolicy = []
            params['IdentityPolicy'].each do |i|
              identitypolicy_tmp = IdentityPolicy.new
              identitypolicy_tmp.deserialize(i)
              @IdentityPolicy << identitypolicy_tmp
            end
          end
        end
      end

      # UpdateOrganizationIdentity返回参数结构体
      class UpdateOrganizationIdentityResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOrganizationMemberEmailBind请求参数结构体
      class UpdateOrganizationMemberEmailBindRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param BindId: 绑定ID。可以通过[DescribeOrganizationMemberEmailBind](https://cloud.tencent.com/document/product/850/93332)获取
        # @type BindId: Integer
        # @param Email: 邮箱地址。
        # @type Email: String
        # @param CountryCode: 国际区号。
        # @type CountryCode: String
        # @param Phone: 手机号。
        # @type Phone: String

        attr_accessor :MemberUin, :BindId, :Email, :CountryCode, :Phone

        def initialize(memberuin=nil, bindid=nil, email=nil, countrycode=nil, phone=nil)
          @MemberUin = memberuin
          @BindId = bindid
          @Email = email
          @CountryCode = countrycode
          @Phone = phone
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @BindId = params['BindId']
          @Email = params['Email']
          @CountryCode = params['CountryCode']
          @Phone = params['Phone']
        end
      end

      # UpdateOrganizationMemberEmailBind返回参数结构体
      class UpdateOrganizationMemberEmailBindResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOrganizationMember请求参数结构体
      class UpdateOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param Name: 成员名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        # @type Name: String
        # @param Remark: 备注。最大长度为40个字符
        # @type Remark: String
        # @param PolicyType: 关系策略类型。PolicyType不为空，PermissionIds不能为空。取值：Financial
        # @type PolicyType: String
        # @param PermissionIds: 成员财务权限ID列表。PermissionIds不为空，PolicyType不能为空。
        # 取值：1-查看账单、2-查看余额、3-资金划拨、4-合并出账、5-开票、6-优惠继承、7-代付费、8-成本分析，如果有值，1、2 默认必须
        # @type PermissionIds: Array
        # @param IsAllowQuit: 是否允许成员退出组织。取值：Allow-允许、Denied-不允许
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin。成员财务权限有代付费时需要，取值为成员对应主体的主体管理员Uin
        # @type PayUin: String

        attr_accessor :MemberUin, :Name, :Remark, :PolicyType, :PermissionIds, :IsAllowQuit, :PayUin

        def initialize(memberuin=nil, name=nil, remark=nil, policytype=nil, permissionids=nil, isallowquit=nil, payuin=nil)
          @MemberUin = memberuin
          @Name = name
          @Remark = remark
          @PolicyType = policytype
          @PermissionIds = permissionids
          @IsAllowQuit = isallowquit
          @PayUin = payuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @Remark = params['Remark']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
        end
      end

      # UpdateOrganizationMember返回参数结构体
      class UpdateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOrganizationNode请求参数结构体
      class UpdateOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点ID。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
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

      # UpdatePolicy请求参数结构体
      class UpdatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 需要编辑的策略ID。可以调用[ListPolicies](https://cloud.tencent.com/document/product/850/105311)获取
        # @type PolicyId: Integer
        # @param Description: 策略描述。
        # @type Description: String
        # @param Content: 策略内容。参考CAM策略语法
        # @type Content: String
        # @param Name: 策略名。长度为1~128个字符，可以包含汉字、英文字母、数字和下划线（_）
        # @type Name: String
        # @param Type: 策略类型。默认值SERVICE_CONTROL_POLICY，取值范围：SERVICE_CONTROL_POLICY-服务控制策略、TAG_POLICY-标签策略
        # @type Type: String

        attr_accessor :PolicyId, :Description, :Content, :Name, :Type

        def initialize(policyid=nil, description=nil, content=nil, name=nil, type=nil)
          @PolicyId = policyid
          @Description = description
          @Content = content
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Description = params['Description']
          @Content = params['Content']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # UpdatePolicy返回参数结构体
      class UpdatePolicyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateShareUnit请求参数结构体
      class UpdateShareUnitRequest < TencentCloud::Common::AbstractModel
        # @param UnitId: 共享单元ID。
        # @type UnitId: String
        # @param Name: 共享单元名称。仅支持大小写字母、数字、-、以及_的组合，3-128个字符。
        # @type Name: String
        # @param Description: 共享单元描述。最大128个字符。
        # @type Description: String

        attr_accessor :UnitId, :Name, :Description

        def initialize(unitid=nil, name=nil, description=nil)
          @UnitId = unitid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # UpdateShareUnit返回参数结构体
      class UpdateShareUnitResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

