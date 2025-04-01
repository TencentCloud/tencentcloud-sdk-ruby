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
      # AcceptJoinShareUnitInvitation请求参数结构体
      class AcceptJoinShareUnitInvitationRequest < TencentCloud::Common::AbstractModel
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

      # AcceptJoinShareUnitInvitation返回参数结构体
      class AcceptJoinShareUnitInvitationResponse < TencentCloud::Common::AbstractModel
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

      # AddExternalSAMLIdPCertificate请求参数结构体
      class AddExternalSAMLIdPCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param X509Certificate: PEM 格式的 X509 证书。  由 SAML 身份提供商提供。
        # @type X509Certificate: String

        attr_accessor :ZoneId, :X509Certificate

        def initialize(zoneid=nil, x509certificate=nil)
          @ZoneId = zoneid
          @X509Certificate = x509certificate
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @X509Certificate = params['X509Certificate']
        end
      end

      # AddExternalSAMLIdPCertificate返回参数结构体
      class AddExternalSAMLIdPCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: SAML 签名证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId

        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

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
        # @param Tags: 部门标签列表。最大10个
        # @type Tags: Array

        attr_accessor :ParentNodeId, :Name, :Remark, :Tags

        def initialize(parentnodeid=nil, name=nil, remark=nil, tags=nil)
          @ParentNodeId = parentnodeid
          @Name = name
          @Remark = remark
          @Tags = tags
        end

        def deserialize(params)
          @ParentNodeId = params['ParentNodeId']
          @Name = params['Name']
          @Remark = params['Remark']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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

      # AddPermissionPolicyToRoleConfiguration请求参数结构体
      class AddPermissionPolicyToRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String
        # @param RolePolicyType: 权限策略类型。取值：  System：系统策略。复用 CAM 的系统策略。 Custom: 自定义策略。按照 CAM 权限策略语法和结构编写的自定义策略。
        # @type RolePolicyType: String
        # @param RolePolicyNames: 权限策略名称，长度最大为 20策略，每个策略长度最大32个字符。如果要添加系统策略，建议使用RolePolicies参数。自定义策略时，数组长度最大为1。
        # @type RolePolicyNames: Array
        # @param RolePolicies: 添加的系统策略详情。
        # @type RolePolicies: Array
        # @param CustomPolicyDocument: 自定义策略内容。长度：最大 4096 个字符。当RolePolicyType为Inline时，该参数必须配置。关于权限策略的语法和结构，请参见权限策略语法和结构。
        # @type CustomPolicyDocument: String
        # @param CustomPolicyDocuments: 自定义策略内容列表（跟RolePolicyNames一一对应）
        # @type CustomPolicyDocuments: Array

        attr_accessor :ZoneId, :RoleConfigurationId, :RolePolicyType, :RolePolicyNames, :RolePolicies, :CustomPolicyDocument, :CustomPolicyDocuments

        def initialize(zoneid=nil, roleconfigurationid=nil, rolepolicytype=nil, rolepolicynames=nil, rolepolicies=nil, custompolicydocument=nil, custompolicydocuments=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @RolePolicyType = rolepolicytype
          @RolePolicyNames = rolepolicynames
          @RolePolicies = rolepolicies
          @CustomPolicyDocument = custompolicydocument
          @CustomPolicyDocuments = custompolicydocuments
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RolePolicyType = params['RolePolicyType']
          @RolePolicyNames = params['RolePolicyNames']
          unless params['RolePolicies'].nil?
            @RolePolicies = []
            params['RolePolicies'].each do |i|
              policydetail_tmp = PolicyDetail.new
              policydetail_tmp.deserialize(i)
              @RolePolicies << policydetail_tmp
            end
          end
          @CustomPolicyDocument = params['CustomPolicyDocument']
          @CustomPolicyDocuments = params['CustomPolicyDocuments']
        end
      end

      # AddPermissionPolicyToRoleConfiguration返回参数结构体
      class AddPermissionPolicyToRoleConfigurationResponse < TencentCloud::Common::AbstractModel
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
        # @param ShareScope: 共享范围。取值：1-仅允许集团组织内共享 2-允许共享给任意账号，默认值：1
        # @type ShareScope: Integer

        attr_accessor :Name, :Area, :Description, :ShareScope

        def initialize(name=nil, area=nil, description=nil, sharescope=nil)
          @Name = name
          @Area = area
          @Description = description
          @ShareScope = sharescope
        end

        def deserialize(params)
          @Name = params['Name']
          @Area = params['Area']
          @Description = params['Description']
          @ShareScope = params['ShareScope']
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

      # AddUserToGroup请求参数结构体
      class AddUserToGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupId: 用户组 ID。
        # @type GroupId: String
        # @param UserId: 用户 ID。
        # @type UserId: String

        attr_accessor :ZoneId, :GroupId, :UserId

        def initialize(zoneid=nil, groupid=nil, userid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @UserId = userid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @UserId = params['UserId']
        end
      end

      # AddUserToGroup返回参数结构体
      class AddUserToGroupResponse < TencentCloud::Common::AbstractModel
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
        # @type RelationId: Integer
        # @param AuthName: 互信主体名称
        # @type AuthName: String
        # @param Manager: 主体管理员
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

      # 野鹤实名互信申请证明文件
      class AuthRelationFile < TencentCloud::Common::AbstractModel
        # @param Name: 文件名。
        # @type Name: String
        # @param Url: 文件路径。
        # @type Url: String

        attr_accessor :Name, :Url

        def initialize(name=nil, url=nil)
          @Name = name
          @Url = url
        end

        def deserialize(params)
          @Name = params['Name']
          @Url = params['Url']
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

      # BindOrganizationPolicySubAccount请求参数结构体
      class BindOrganizationPolicySubAccountRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param OrgSubAccountUins: 组织管理员子账号Uin列表。最大5个
        # @type OrgSubAccountUins: Array

        attr_accessor :PolicyId, :OrgSubAccountUins

        def initialize(policyid=nil, orgsubaccountuins=nil)
          @PolicyId = policyid
          @OrgSubAccountUins = orgsubaccountuins
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @OrgSubAccountUins = params['OrgSubAccountUins']
        end
      end

      # BindOrganizationPolicySubAccount返回参数结构体
      class BindOrganizationPolicySubAccountResponse < TencentCloud::Common::AbstractModel
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

      # CancelOrganizationPolicySubAccount请求参数结构体
      class CancelOrganizationPolicySubAccountRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param OrgSubAccountUins: 组织管理员子账号Uin列表。最大5个
        # @type OrgSubAccountUins: Array

        attr_accessor :PolicyId, :OrgSubAccountUins

        def initialize(policyid=nil, orgsubaccountuins=nil)
          @PolicyId = policyid
          @OrgSubAccountUins = orgsubaccountuins
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @OrgSubAccountUins = params['OrgSubAccountUins']
        end
      end

      # CancelOrganizationPolicySubAccount返回参数结构体
      class CancelOrganizationPolicySubAccountResponse < TencentCloud::Common::AbstractModel
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

      # ClearExternalSAMLIdentityProvider请求参数结构体
      class ClearExternalSAMLIdentityProviderRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # ClearExternalSAMLIdentityProvider返回参数结构体
      class ClearExternalSAMLIdentityProviderResponse < TencentCloud::Common::AbstractModel
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

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupName: 用户组的名称。  格式：允许英文字母、数字和特殊字符-。 长度：最大 128 个字符。
        # @type GroupName: String
        # @param Description: 用户组的描述。  长度：最大 1024 个字符。
        # @type Description: String
        # @param GroupType: 用户组类型  Manual：手动创建，Synchronized：外部导入
        # @type GroupType: String

        attr_accessor :ZoneId, :GroupName, :Description, :GroupType

        def initialize(zoneid=nil, groupname=nil, description=nil, grouptype=nil)
          @ZoneId = zoneid
          @GroupName = groupname
          @Description = description
          @GroupType = grouptype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupName = params['GroupName']
          @Description = params['Description']
          @GroupType = params['GroupType']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfo: 用户组信息。
        # @type GroupInfo: :class:`Tencentcloud::Organization.v20210331.models.GroupInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfo, :RequestId

        def initialize(groupinfo=nil, requestid=nil)
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfo'].nil?
            @GroupInfo = GroupInfo.new
            @GroupInfo.deserialize(params['GroupInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateOrgServiceAssign请求参数结构体
      class CreateOrgServiceAssignRequest < TencentCloud::Common::AbstractModel
        # @param MemberUins: 委派管理员Uin列表。 最大长度20个
        # @type MemberUins: Array
        # @param ServiceId: 集团服务ID。和集团服务产品标识二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type ServiceId: Integer
        # @param Product: 集团服务产品标识。和集团服务ID二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type Product: String
        # @param ManagementScope: 委派管理员管理范围。 取值：1-全部成员 2-部分成员，默认值1
        # @type ManagementScope: Integer
        # @param ManagementScopeUins: 管理的成员Uin列表。ManagementScope为2时该参数有效
        # @type ManagementScopeUins: Array
        # @param ManagementScopeNodeIds: 管理的部门ID列表。ManagementScope为2时该参数有效
        # @type ManagementScopeNodeIds: Array

        attr_accessor :MemberUins, :ServiceId, :Product, :ManagementScope, :ManagementScopeUins, :ManagementScopeNodeIds

        def initialize(memberuins=nil, serviceid=nil, product=nil, managementscope=nil, managementscopeuins=nil, managementscopenodeids=nil)
          @MemberUins = memberuins
          @ServiceId = serviceid
          @Product = product
          @ManagementScope = managementscope
          @ManagementScopeUins = managementscopeuins
          @ManagementScopeNodeIds = managementscopenodeids
        end

        def deserialize(params)
          @MemberUins = params['MemberUins']
          @ServiceId = params['ServiceId']
          @Product = params['Product']
          @ManagementScope = params['ManagementScope']
          @ManagementScopeUins = params['ManagementScopeUins']
          @ManagementScopeNodeIds = params['ManagementScopeNodeIds']
        end
      end

      # CreateOrgServiceAssign返回参数结构体
      class CreateOrgServiceAssignResponse < TencentCloud::Common::AbstractModel
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
        # @param Tags: 成员标签列表。最大10个
        # @type Tags: Array

        attr_accessor :Name, :PolicyType, :PermissionIds, :NodeId, :AccountName, :Remark, :RecordId, :PayUin, :IdentityRoleID, :AuthRelationId, :Tags

        def initialize(name=nil, policytype=nil, permissionids=nil, nodeid=nil, accountname=nil, remark=nil, recordid=nil, payuin=nil, identityroleid=nil, authrelationid=nil, tags=nil)
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
          @Tags = tags
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateOrganizationMember返回参数结构体
      class CreateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 成员Uin。
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

      # CreateRoleAssignment请求参数结构体
      class CreateRoleAssignmentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleAssignmentInfo: 授权成员账号信息，最多授权50条。
        # @type RoleAssignmentInfo: Array

        attr_accessor :ZoneId, :RoleAssignmentInfo

        def initialize(zoneid=nil, roleassignmentinfo=nil)
          @ZoneId = zoneid
          @RoleAssignmentInfo = roleassignmentinfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['RoleAssignmentInfo'].nil?
            @RoleAssignmentInfo = []
            params['RoleAssignmentInfo'].each do |i|
              roleassignmentinfo_tmp = RoleAssignmentInfo.new
              roleassignmentinfo_tmp.deserialize(i)
              @RoleAssignmentInfo << roleassignmentinfo_tmp
            end
          end
        end
      end

      # CreateRoleAssignment返回参数结构体
      class CreateRoleAssignmentResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务详情。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId

        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @Tasks << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRoleConfiguration请求参数结构体
      class CreateRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationName: 权限配置名称。格式：包含英文字母、数字或短划线（-）。 长度：最大 128 个字符。
        # @type RoleConfigurationName: String
        # @param Description: 权限配置的描述。 长度：最大 1024 个字符。
        # @type Description: String
        # @param SessionDuration: 会话持续时间。 CIC用户使用权限配置访问集团账号目标账号时，会话最多保持的时间。 单位：秒。 取值范围：900 ~ 43200（15 分钟~12 小时）。 默认值：3600（1 小时）。
        # @type SessionDuration: Integer
        # @param RelayState: 初始访问页面。 CIC用户使用权限配置访问集团账号目标账号时，初始访问的页面地址。 该页面必须是腾讯云控制台页面。默认为空，表示跳转到腾讯云控制台首页。
        # @type RelayState: String

        attr_accessor :ZoneId, :RoleConfigurationName, :Description, :SessionDuration, :RelayState

        def initialize(zoneid=nil, roleconfigurationname=nil, description=nil, sessionduration=nil, relaystate=nil)
          @ZoneId = zoneid
          @RoleConfigurationName = roleconfigurationname
          @Description = description
          @SessionDuration = sessionduration
          @RelayState = relaystate
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @Description = params['Description']
          @SessionDuration = params['SessionDuration']
          @RelayState = params['RelayState']
        end
      end

      # CreateRoleConfiguration返回参数结构体
      class CreateRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RoleConfigurationInfo: 配置访问详情
        # @type RoleConfigurationInfo: :class:`Tencentcloud::Organization.v20210331.models.RoleConfiguration`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleConfigurationInfo, :RequestId

        def initialize(roleconfigurationinfo=nil, requestid=nil)
          @RoleConfigurationInfo = roleconfigurationinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleConfigurationInfo'].nil?
            @RoleConfigurationInfo = RoleConfiguration.new
            @RoleConfigurationInfo.deserialize(params['RoleConfigurationInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSCIMCredential请求参数结构体
      class CreateSCIMCredentialRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param ExpireDuration: 过期时间（秒），最小1小时，最大99年。如果不传则默认一年过期
        # @type ExpireDuration: Integer

        attr_accessor :ZoneId, :ExpireDuration

        def initialize(zoneid=nil, expireduration=nil)
          @ZoneId = zoneid
          @ExpireDuration = expireduration
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ExpireDuration = params['ExpireDuration']
        end
      end

      # CreateSCIMCredential返回参数结构体
      class CreateSCIMCredentialResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母。
        # @type ZoneId: String
        # @param CredentialId: SCIM密钥ID。scimcred-前缀开头，后面是12位随机数字/小写字母。
        # @type CredentialId: String
        # @param CredentialType: SCIM密钥类型。
        # @type CredentialType: String
        # @param CreateTime: SCIM 密钥的创建时间。
        # @type CreateTime: String
        # @param ExpireTime: SCIM 密钥的过期时间。
        # @type ExpireTime: String
        # @param CredentialStatus: SCIM密钥状态，Enabled已开启，Disabled已关闭。
        # @type CredentialStatus: String
        # @param CredentialSecret: SCIM密钥。
        # @type CredentialSecret: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :CredentialId, :CredentialType, :CreateTime, :ExpireTime, :CredentialStatus, :CredentialSecret, :RequestId

        def initialize(zoneid=nil, credentialid=nil, credentialtype=nil, createtime=nil, expiretime=nil, credentialstatus=nil, credentialsecret=nil, requestid=nil)
          @ZoneId = zoneid
          @CredentialId = credentialid
          @CredentialType = credentialtype
          @CreateTime = createtime
          @ExpireTime = expiretime
          @CredentialStatus = credentialstatus
          @CredentialSecret = credentialsecret
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CredentialId = params['CredentialId']
          @CredentialType = params['CredentialType']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @CredentialStatus = params['CredentialStatus']
          @CredentialSecret = params['CredentialSecret']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserName: 用户名称。空间内必须唯一。不支持修改。  格式：包含数字、英文字母和特殊符号+ = , . @ - _ 。  长度：最大 64 个字符
        # @type UserName: String
        # @param FirstName: 用户的姓。  长度：最大 64 个字符。
        # @type FirstName: String
        # @param LastName: 用户的名。  长度：最大 64 个字符。
        # @type LastName: String
        # @param DisplayName: 用户的显示名称。  长度：最大 256 个字符。
        # @type DisplayName: String
        # @param Description: 用户的描述。  长度：最大 1024 个字符。
        # @type Description: String
        # @param Email: 用户的电子邮箱。目录内必须唯一。  长度：最大 128 个字符。
        # @type Email: String
        # @param UserStatus: 用户的状态。取值：  Enabled（默认值）：启用。 Disabled：禁用。
        # @type UserStatus: String
        # @param UserType: 用户类型  Manual：手动创建，Synchronized：外部导入
        # @type UserType: String

        attr_accessor :ZoneId, :UserName, :FirstName, :LastName, :DisplayName, :Description, :Email, :UserStatus, :UserType

        def initialize(zoneid=nil, username=nil, firstname=nil, lastname=nil, displayname=nil, description=nil, email=nil, userstatus=nil, usertype=nil)
          @ZoneId = zoneid
          @UserName = username
          @FirstName = firstname
          @LastName = lastname
          @DisplayName = displayname
          @Description = description
          @Email = email
          @UserStatus = userstatus
          @UserType = usertype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserName = params['UserName']
          @FirstName = params['FirstName']
          @LastName = params['LastName']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Email = params['Email']
          @UserStatus = params['UserStatus']
          @UserType = params['UserType']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户详情
        # @type UserInfo: :class:`Tencentcloud::Organization.v20210331.models.UserInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId

        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUserSyncProvisioning请求参数结构体
      class CreateUserSyncProvisioningRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param UserSyncProvisionings: CAM用户同步信息。
        # @type UserSyncProvisionings: Array

        attr_accessor :ZoneId, :UserSyncProvisionings

        def initialize(zoneid=nil, usersyncprovisionings=nil)
          @ZoneId = zoneid
          @UserSyncProvisionings = usersyncprovisionings
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['UserSyncProvisionings'].nil?
            @UserSyncProvisionings = []
            params['UserSyncProvisionings'].each do |i|
              usersyncprovisioning_tmp = UserSyncProvisioning.new
              usersyncprovisioning_tmp.deserialize(i)
              @UserSyncProvisionings << usersyncprovisioning_tmp
            end
          end
        end
      end

      # CreateUserSyncProvisioning返回参数结构体
      class CreateUserSyncProvisioningResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务详细。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId

        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              userprovisioningstask_tmp = UserProvisioningsTask.new
              userprovisioningstask_tmp.deserialize(i)
              @Tasks << userprovisioningstask_tmp
            end
          end
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

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupId: 用户组的 ID。
        # @type GroupId: String

        attr_accessor :ZoneId, :GroupId

        def initialize(zoneid=nil, groupid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrgServiceAssign请求参数结构体
      class DeleteOrgServiceAssignRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 委派管理员Uin。
        # @type MemberUin: Integer
        # @param ServiceId: 集团服务ID。和集团服务产品标识二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type ServiceId: Integer
        # @param Product: 集团服务产品标识。和集团服务ID二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type Product: String

        attr_accessor :MemberUin, :ServiceId, :Product

        def initialize(memberuin=nil, serviceid=nil, product=nil)
          @MemberUin = memberuin
          @ServiceId = serviceid
          @Product = product
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @ServiceId = params['ServiceId']
          @Product = params['Product']
        end
      end

      # DeleteOrgServiceAssign返回参数结构体
      class DeleteOrgServiceAssignResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRoleAssignment请求参数结构体
      class DeleteRoleAssignmentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param TargetUin: 集团账号目标账号的UIN
        # @type TargetUin: Integer
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示同步的身份是用户。 Group：表示同步的身份是用户组。
        # @type PrincipalType: String
        # @param PrincipalId: 用户同步 ID。取值： 当PrincipalType取值为Group时，该值为用户组 ID（g-********）， 当PrincipalType取值为User时，该值为用户 ID（u-********）。
        # @type PrincipalId: String
        # @param DeprovisionStrategy: 当您移除一个集团账号目标账号上使用某权限配置的最后一个授权时，是否同时解除权限配置部署。取值： DeprovisionForLastRoleAssignmentOnAccount：解除权限配置部署。 None（默认值）：不解除权限配置部署。
        # @type DeprovisionStrategy: String

        attr_accessor :ZoneId, :RoleConfigurationId, :TargetType, :TargetUin, :PrincipalType, :PrincipalId, :DeprovisionStrategy

        def initialize(zoneid=nil, roleconfigurationid=nil, targettype=nil, targetuin=nil, principaltype=nil, principalid=nil, deprovisionstrategy=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @TargetType = targettype
          @TargetUin = targetuin
          @PrincipalType = principaltype
          @PrincipalId = principalid
          @DeprovisionStrategy = deprovisionstrategy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @TargetType = params['TargetType']
          @TargetUin = params['TargetUin']
          @PrincipalType = params['PrincipalType']
          @PrincipalId = params['PrincipalId']
          @DeprovisionStrategy = params['DeprovisionStrategy']
        end
      end

      # DeleteRoleAssignment返回参数结构体
      class DeleteRoleAssignmentResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务详情
        # @type Task: :class:`Tencentcloud::Organization.v20210331.models.TaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = TaskInfo.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteRoleConfiguration请求参数结构体
      class DeleteRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String

        attr_accessor :ZoneId, :RoleConfigurationId

        def initialize(zoneid=nil, roleconfigurationid=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
        end
      end

      # DeleteRoleConfiguration返回参数结构体
      class DeleteRoleConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSCIMCredential请求参数结构体
      class DeleteSCIMCredentialRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param CredentialId: SCIM密钥ID。scimcred-前缀开头，后面是12位随机数字/小写字母。
        # @type CredentialId: String

        attr_accessor :ZoneId, :CredentialId

        def initialize(zoneid=nil, credentialid=nil)
          @ZoneId = zoneid
          @CredentialId = credentialid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CredentialId = params['CredentialId']
        end
      end

      # DeleteSCIMCredential返回参数结构体
      class DeleteSCIMCredentialResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserId: 用户 ID。
        # @type UserId: String

        attr_accessor :ZoneId, :UserId

        def initialize(zoneid=nil, userid=nil)
          @ZoneId = zoneid
          @UserId = userid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserId = params['UserId']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserSyncProvisioning请求参数结构体
      class DeleteUserSyncProvisioningRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param UserProvisioningId: 用户同步的ID。
        # @type UserProvisioningId: String

        attr_accessor :ZoneId, :UserProvisioningId

        def initialize(zoneid=nil, userprovisioningid=nil)
          @ZoneId = zoneid
          @UserProvisioningId = userprovisioningid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserProvisioningId = params['UserProvisioningId']
        end
      end

      # DeleteUserSyncProvisioning返回参数结构体
      class DeleteUserSyncProvisioningResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务详情。
        # @type Tasks: :class:`Tencentcloud::Organization.v20210331.models.UserProvisioningsTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId

        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = UserProvisioningsTask.new
            @Tasks.deserialize(params['Tasks'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEffectivePolicy请求参数结构体
      class DescribeEffectivePolicyRequest < TencentCloud::Common::AbstractModel
        # @param TargetId: 账号uin或者节点id。
        # @type TargetId: Integer

        attr_accessor :TargetId

        def initialize(targetid=nil)
          @TargetId = targetid
        end

        def deserialize(params)
          @TargetId = params['TargetId']
        end
      end

      # DescribeEffectivePolicy返回参数结构体
      class DescribeEffectivePolicyResponse < TencentCloud::Common::AbstractModel
        # @param EffectivePolicy: 有效策略。
        # @type EffectivePolicy: :class:`Tencentcloud::Organization.v20210331.models.EffectivePolicy`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EffectivePolicy, :RequestId

        def initialize(effectivepolicy=nil, requestid=nil)
          @EffectivePolicy = effectivepolicy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EffectivePolicy'].nil?
            @EffectivePolicy = EffectivePolicy.new
            @EffectivePolicy.deserialize(params['EffectivePolicy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdentityCenter请求参数结构体
      class DescribeIdentityCenterRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIdentityCenter返回参数结构体
      class DescribeIdentityCenterResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param ZoneName: 空间名，必须全局唯一。包含小写字母、数字和短划线（-）。不能以短划线（-）开头或结尾，且不能有两个连续的短划线（-）。长度：2~64 个字符。
        # @type ZoneName: String
        # @param ServiceStatus: 服务开启状态，Disabled代表未开通，Enabled代表已开通
        # @type ServiceStatus: String
        # @param ScimSyncStatus: SCIM 同步状态。Enabled：启用。 Disabled：禁用。
        # @type ScimSyncStatus: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :ZoneName, :ServiceStatus, :ScimSyncStatus, :CreateTime, :UpdateTime, :RequestId

        def initialize(zoneid=nil, zonename=nil, servicestatus=nil, scimsyncstatus=nil, createtime=nil, updatetime=nil, requestid=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ServiceStatus = servicestatus
          @ScimSyncStatus = scimsyncstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ServiceStatus = params['ServiceStatus']
          @ScimSyncStatus = params['ScimSyncStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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
        # @type Total: Integer
        # @param Items: 条目详情。
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
        # @type TotalCost: Float
        # @param Items: 成员消耗详情。
        # @type Items: Array
        # @param Total: 总数目。
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
        # @type TotalCost: Float
        # @param Items: 产品消耗详情。
        # @type Items: Array
        # @param Total: 总数目。
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
        # @type Items: Array
        # @param Total: 总数目
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
        # @type BindId: Integer
        # @param ApplyTime: 申请时间。
        # @type ApplyTime: String
        # @param Email: 邮箱地址。
        # @type Email: String
        # @param Phone: 安全手机号。
        # @type Phone: String
        # @param BindStatus: 绑定状态。    未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        # @type BindStatus: String
        # @param BindTime: 绑定时间。
        # @type BindTime: String
        # @param Description: 失败说明。
        # @type Description: String
        # @param PhoneBind: 安全手机绑定状态 。 未绑定：0，已绑定：1
        # @type PhoneBind: Integer
        # @param CountryCode: 国际区号。
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
        # @param Tags: 成员标签搜索列表，最大10个
        # @type Tags: Array
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer
        # @param NodeName: 组织单元名称
        # @type NodeName: String

        attr_accessor :Offset, :Limit, :Lang, :SearchKey, :AuthName, :Product, :Tags, :NodeId, :NodeName

        def initialize(offset=nil, limit=nil, lang=nil, searchkey=nil, authname=nil, product=nil, tags=nil, nodeid=nil, nodename=nil)
          @Offset = offset
          @Limit = limit
          @Lang = lang
          @SearchKey = searchkey
          @AuthName = authname
          @Product = product
          @Tags = tags
          @NodeId = nodeid
          @NodeName = nodename
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Lang = params['Lang']
          @SearchKey = params['SearchKey']
          @AuthName = params['AuthName']
          @Product = params['Product']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
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
        # @param Tags: 部门标签搜索列表，最大10个
        # @type Tags: Array

        attr_accessor :Limit, :Offset, :Tags

        def initialize(limit=nil, offset=nil, tags=nil)
          @Limit = limit
          @Offset = offset
          @Tags = tags
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # DescribeOrganizationNodes返回参数结构体
      class DescribeOrganizationNodesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # @type Total: Integer
        # @param Items: 列表详情。
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
        # @type OrgId: Integer
        # @param HostUin: 创建者UIN。
        # @type HostUin: Integer
        # @param NickName: 创建者昵称。
        # @type NickName: String
        # @param OrgType: 企业组织类型。
        # @type OrgType: Integer
        # @param IsManager: 是否组织管理员。是：true ，否：false
        # @type IsManager: Boolean
        # @param OrgPolicyType: 策略类型。财务管理：Financial
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 策略名。
        # @type OrgPolicyName: String
        # @param OrgPermission: 成员财务权限列表。
        # @type OrgPermission: Array
        # @param RootNodeId: 组织根节点ID。
        # @type RootNodeId: Integer
        # @param CreateTime: 组织创建时间。
        # @type CreateTime: String
        # @param JoinTime: 成员加入时间。
        # @type JoinTime: String
        # @param IsAllowQuit: 成员是否允许退出。允许：Allow，不允许：Denied
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin。
        # @type PayUin: String
        # @param PayName: 代付者名称。
        # @type PayName: String
        # @param IsAssignManager: 是否可信服务管理员。是：true，否：false
        # @type IsAssignManager: Boolean
        # @param IsAuthManager: 是否实名主体管理员。是：true，否：false
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
        # @param PolicyId: 策略Id。可以调用[ListPolicies](https://cloud.tencent.com/document/product/850/105311)获取
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
        # @type PolicyName: String
        # @param Type: 策略类型。1-自定义 2-预设策略
        # @type Type: Integer
        # @param Description: 策略描述。
        # @type Description: String
        # @param PolicyDocument: 策略文档。
        # @type PolicyDocument: String
        # @param UpdateTime: 策略更新时间。
        # @type UpdateTime: String
        # @param AddTime: 策略创建时间。
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
        # @type Total: Integer
        # @param Items: 共享单元成员列表。
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
        # @type Total: Integer
        # @param Items: 共享单元资源列表。
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
        # @type Total: Integer
        # @param Items: 共享单元列表。
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

      # DismantleRoleConfiguration请求参数结构体
      class DismantleRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号。
        # @type TargetType: String
        # @param TargetUin: 同步的集团账号目标账号的UIN。
        # @type TargetUin: Integer

        attr_accessor :ZoneId, :RoleConfigurationId, :TargetType, :TargetUin

        def initialize(zoneid=nil, roleconfigurationid=nil, targettype=nil, targetuin=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @TargetType = targettype
          @TargetUin = targetuin
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @TargetType = params['TargetType']
          @TargetUin = params['TargetUin']
        end
      end

      # DismantleRoleConfiguration返回参数结构体
      class DismantleRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务详情。
        # @type Task: :class:`Tencentcloud::Organization.v20210331.models.RoleProvisioningsTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = RoleProvisioningsTask.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 有效策略。
      class EffectivePolicy < TencentCloud::Common::AbstractModel
        # @param TargetId: 目标ID。
        # @type TargetId: Integer
        # @param PolicyContent: 有效策略内容。
        # @type PolicyContent: String
        # @param LastUpdatedTimestamp: 有效策略更新时间。
        # @type LastUpdatedTimestamp: Integer

        attr_accessor :TargetId, :PolicyContent, :LastUpdatedTimestamp

        def initialize(targetid=nil, policycontent=nil, lastupdatedtimestamp=nil)
          @TargetId = targetid
          @PolicyContent = policycontent
          @LastUpdatedTimestamp = lastupdatedtimestamp
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @PolicyContent = params['PolicyContent']
          @LastUpdatedTimestamp = params['LastUpdatedTimestamp']
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

      # GetExternalSAMLIdentityProvider请求参数结构体
      class GetExternalSAMLIdentityProviderRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # GetExternalSAMLIdentityProvider返回参数结构体
      class GetExternalSAMLIdentityProviderResponse < TencentCloud::Common::AbstractModel
        # @param SAMLIdentityProviderConfiguration: saml 身份提供商配置信息。
        # @type SAMLIdentityProviderConfiguration: :class:`Tencentcloud::Organization.v20210331.models.SAMLIdentityProviderConfiguration`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SAMLIdentityProviderConfiguration, :RequestId

        def initialize(samlidentityproviderconfiguration=nil, requestid=nil)
          @SAMLIdentityProviderConfiguration = samlidentityproviderconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SAMLIdentityProviderConfiguration'].nil?
            @SAMLIdentityProviderConfiguration = SAMLIdentityProviderConfiguration.new
            @SAMLIdentityProviderConfiguration.deserialize(params['SAMLIdentityProviderConfiguration'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetGroup请求参数结构体
      class GetGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupId: 用户组的 ID。
        # @type GroupId: String

        attr_accessor :ZoneId, :GroupId

        def initialize(zoneid=nil, groupid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
        end
      end

      # GetGroup返回参数结构体
      class GetGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfo: 用户组信息
        # @type GroupInfo: :class:`Tencentcloud::Organization.v20210331.models.GroupInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfo, :RequestId

        def initialize(groupinfo=nil, requestid=nil)
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfo'].nil?
            @GroupInfo = GroupInfo.new
            @GroupInfo.deserialize(params['GroupInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetProvisioningTaskStatus请求参数结构体
      class GetProvisioningTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param TaskId: 任务ID。
        # @type TaskId: String

        attr_accessor :ZoneId, :TaskId

        def initialize(zoneid=nil, taskid=nil)
          @ZoneId = zoneid
          @TaskId = taskid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
        end
      end

      # GetProvisioningTaskStatus返回参数结构体
      class GetProvisioningTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务状态信息。
        # @type TaskStatus: :class:`Tencentcloud::Organization.v20210331.models.TaskStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :RequestId

        def initialize(taskstatus=nil, requestid=nil)
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskStatus'].nil?
            @TaskStatus = TaskStatus.new
            @TaskStatus.deserialize(params['TaskStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRoleConfiguration请求参数结构体
      class GetRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID
        # @type RoleConfigurationId: String

        attr_accessor :ZoneId, :RoleConfigurationId

        def initialize(zoneid=nil, roleconfigurationid=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
        end
      end

      # GetRoleConfiguration返回参数结构体
      class GetRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RoleConfigurationInfo: 权限配置详情
        # @type RoleConfigurationInfo: :class:`Tencentcloud::Organization.v20210331.models.RoleConfiguration`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleConfigurationInfo, :RequestId

        def initialize(roleconfigurationinfo=nil, requestid=nil)
          @RoleConfigurationInfo = roleconfigurationinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleConfigurationInfo'].nil?
            @RoleConfigurationInfo = RoleConfiguration.new
            @RoleConfigurationInfo.deserialize(params['RoleConfigurationInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSCIMSynchronizationStatus请求参数结构体
      class GetSCIMSynchronizationStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # GetSCIMSynchronizationStatus返回参数结构体
      class GetSCIMSynchronizationStatusResponse < TencentCloud::Common::AbstractModel
        # @param SCIMSynchronizationStatus: SCIM 同步状态。Enabled：启用。 Disabled：禁用。
        # @type SCIMSynchronizationStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SCIMSynchronizationStatus, :RequestId

        def initialize(scimsynchronizationstatus=nil, requestid=nil)
          @SCIMSynchronizationStatus = scimsynchronizationstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SCIMSynchronizationStatus = params['SCIMSynchronizationStatus']
          @RequestId = params['RequestId']
        end
      end

      # GetTaskStatus请求参数结构体
      class GetTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param TaskId: 任务ID。
        # @type TaskId: String

        attr_accessor :ZoneId, :TaskId

        def initialize(zoneid=nil, taskid=nil)
          @ZoneId = zoneid
          @TaskId = taskid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
        end
      end

      # GetTaskStatus返回参数结构体
      class GetTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务状态信息。
        # @type TaskStatus: :class:`Tencentcloud::Organization.v20210331.models.TaskStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :RequestId

        def initialize(taskstatus=nil, requestid=nil)
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskStatus'].nil?
            @TaskStatus = TaskStatus.new
            @TaskStatus.deserialize(params['TaskStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetUser请求参数结构体
      class GetUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户 ID。
        # @type UserId: String
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String

        attr_accessor :UserId, :ZoneId

        def initialize(userid=nil, zoneid=nil)
          @UserId = userid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @ZoneId = params['ZoneId']
        end
      end

      # GetUser返回参数结构体
      class GetUserResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息。
        # @type UserInfo: :class:`Tencentcloud::Organization.v20210331.models.UserInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId

        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetUserSyncProvisioning请求参数结构体
      class GetUserSyncProvisioningRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param UserProvisioningId: CAM 用户同步的 ID。
        # @type UserProvisioningId: String

        attr_accessor :ZoneId, :UserProvisioningId

        def initialize(zoneid=nil, userprovisioningid=nil)
          @ZoneId = zoneid
          @UserProvisioningId = userprovisioningid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserProvisioningId = params['UserProvisioningId']
        end
      end

      # GetUserSyncProvisioning返回参数结构体
      class GetUserSyncProvisioningResponse < TencentCloud::Common::AbstractModel
        # @param UserProvisioning: CAM 用户同步信息。
        # @type UserProvisioning: :class:`Tencentcloud::Organization.v20210331.models.UserProvisioning`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserProvisioning, :RequestId

        def initialize(userprovisioning=nil, requestid=nil)
          @UserProvisioning = userprovisioning
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserProvisioning'].nil?
            @UserProvisioning = UserProvisioning.new
            @UserProvisioning.deserialize(params['UserProvisioning'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetZoneSAMLServiceProviderInfo请求参数结构体
      class GetZoneSAMLServiceProviderInfoRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # GetZoneSAMLServiceProviderInfo返回参数结构体
      class GetZoneSAMLServiceProviderInfoResponse < TencentCloud::Common::AbstractModel
        # @param SAMLServiceProvider: saml服务提供商配置信息
        # @type SAMLServiceProvider: :class:`Tencentcloud::Organization.v20210331.models.SAMLServiceProvider`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SAMLServiceProvider, :RequestId

        def initialize(samlserviceprovider=nil, requestid=nil)
          @SAMLServiceProvider = samlserviceprovider
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SAMLServiceProvider'].nil?
            @SAMLServiceProvider = SAMLServiceProvider.new
            @SAMLServiceProvider.deserialize(params['SAMLServiceProvider'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetZoneStatistics请求参数结构体
      class GetZoneStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # GetZoneStatistics返回参数结构体
      class GetZoneStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param ZoneStatistics: 空间的统计信息。
        # @type ZoneStatistics: :class:`Tencentcloud::Organization.v20210331.models.ZoneStatistics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneStatistics, :RequestId

        def initialize(zonestatistics=nil, requestid=nil)
          @ZoneStatistics = zonestatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneStatistics'].nil?
            @ZoneStatistics = ZoneStatistics.new
            @ZoneStatistics.deserialize(params['ZoneStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 用户组信息。
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 用户组的名称。
        # @type GroupName: String
        # @param Description: 用户组的描述。
        # @type Description: String
        # @param CreateTime: 用户组的创建时间。
        # @type CreateTime: String
        # @param GroupType: 用户组的类型  Manual：手动创建，Synchronized：外部导入。
        # @type GroupType: String
        # @param UpdateTime: 用户组的修改时间。
        # @type UpdateTime: String
        # @param GroupId: 用户组的 ID。
        # @type GroupId: String
        # @param MemberCount: 组员数量。
        # @type MemberCount: Integer
        # @param IsSelected: 如果有入参FilterUsers，用户在用户组返回true，否则返回false
        # @type IsSelected: Boolean

        attr_accessor :GroupName, :Description, :CreateTime, :GroupType, :UpdateTime, :GroupId, :MemberCount, :IsSelected

        def initialize(groupname=nil, description=nil, createtime=nil, grouptype=nil, updatetime=nil, groupid=nil, membercount=nil, isselected=nil)
          @GroupName = groupname
          @Description = description
          @CreateTime = createtime
          @GroupType = grouptype
          @UpdateTime = updatetime
          @GroupId = groupid
          @MemberCount = membercount
          @IsSelected = isselected
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @GroupType = params['GroupType']
          @UpdateTime = params['UpdateTime']
          @GroupId = params['GroupId']
          @MemberCount = params['MemberCount']
          @IsSelected = params['IsSelected']
        end
      end

      # 用户信息
      class GroupMembers < TencentCloud::Common::AbstractModel
        # @param UserName: 查询username。
        # @type UserName: String
        # @param DisplayName: 用户的显示名称。
        # @type DisplayName: String
        # @param Description: 用户的描述。
        # @type Description: String
        # @param Email: 用户的电子邮箱。目录内必须唯一。
        # @type Email: String
        # @param UserStatus: 用户状态 Enabled：启用， Disabled：禁用。
        # @type UserStatus: String
        # @param UserType: 用户类型  Manual：手动创建，Synchronized：外部导入。
        # @type UserType: String
        # @param UserId: 用户 ID
        # @type UserId: String
        # @param JoinTime: 用户加入用户组的时间
        # @type JoinTime: String

        attr_accessor :UserName, :DisplayName, :Description, :Email, :UserStatus, :UserType, :UserId, :JoinTime

        def initialize(username=nil, displayname=nil, description=nil, email=nil, userstatus=nil, usertype=nil, userid=nil, jointime=nil)
          @UserName = username
          @DisplayName = displayname
          @Description = description
          @Email = email
          @UserStatus = userstatus
          @UserType = usertype
          @UserId = userid
          @JoinTime = jointime
        end

        def deserialize(params)
          @UserName = params['UserName']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Email = params['Email']
          @UserStatus = params['UserStatus']
          @UserType = params['UserType']
          @UserId = params['UserId']
          @JoinTime = params['JoinTime']
        end
      end

      # 组织身份策略
      class IdentityPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: CAM预设策略ID。PolicyType 为预设策略时有效且必选
        # @type PolicyId: Integer
        # @param PolicyName: CAM预设策略名称。PolicyType 为预设策略时有效且必选
        # @type PolicyName: String
        # @param PolicyType: 策略类型。取值 1-自定义策略  2-预设策略；默认值2
        # @type PolicyType: Integer
        # @param PolicyDocument: 自定义策略内容，遵循CAM策略语法。PolicyType 为自定义策略时有效且必选
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

      # InviteOrganizationMember请求参数结构体
      class InviteOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 被邀请账号Uin。
        # @type MemberUin: Integer
        # @param Name: 成员名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        # @type Name: String
        # @param PolicyType: 关系策略。取值：Financial
        # @type PolicyType: String
        # @param PermissionIds: 成员财务权限ID列表。取值：1-查看账单、2-查看余额、3-资金划拨、4-合并出账、5-开票、6-优惠继承、7-代付费，1、2 默认必须
        # @type PermissionIds: Array
        # @param NodeId: 成员所属部门的节点ID。可以通过[DescribeOrganizationNodes](https://cloud.tencent.com/document/product/850/82926)获取
        # @type NodeId: Integer
        # @param Remark: 备注。
        # @type Remark: String
        # @param IsAllowQuit: 是否允许成员退出。允许：Allow，不允许：Denied。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin。成员代付费时需要
        # @type PayUin: String
        # @param RelationAuthName: 互信实名主体名称。
        # @type RelationAuthName: String
        # @param AuthFile: 互信主体证明文件列表。
        # @type AuthFile: Array
        # @param Tags: 成员标签列表。最大10个
        # @type Tags: Array

        attr_accessor :MemberUin, :Name, :PolicyType, :PermissionIds, :NodeId, :Remark, :IsAllowQuit, :PayUin, :RelationAuthName, :AuthFile, :Tags

        def initialize(memberuin=nil, name=nil, policytype=nil, permissionids=nil, nodeid=nil, remark=nil, isallowquit=nil, payuin=nil, relationauthname=nil, authfile=nil, tags=nil)
          @MemberUin = memberuin
          @Name = name
          @PolicyType = policytype
          @PermissionIds = permissionids
          @NodeId = nodeid
          @Remark = remark
          @IsAllowQuit = isallowquit
          @PayUin = payuin
          @RelationAuthName = relationauthname
          @AuthFile = authfile
          @Tags = tags
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @NodeId = params['NodeId']
          @Remark = params['Remark']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
          @RelationAuthName = params['RelationAuthName']
          unless params['AuthFile'].nil?
            @AuthFile = []
            params['AuthFile'].each do |i|
              authrelationfile_tmp = AuthRelationFile.new
              authrelationfile_tmp.deserialize(i)
              @AuthFile << authrelationfile_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # InviteOrganizationMember返回参数结构体
      class InviteOrganizationMemberResponse < TencentCloud::Common::AbstractModel
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

      # 用户加入的用户组
      class JoinedGroups < TencentCloud::Common::AbstractModel
        # @param GroupName: 用户组的名称。
        # @type GroupName: String
        # @param Description: 用户组的描述。
        # @type Description: String
        # @param GroupId: 用户组 ID。
        # @type GroupId: String
        # @param GroupType: 用户组的类型。取值：

        # Manual：手动创建。
        # Synchronized：外部同步。
        # @type GroupType: String
        # @param JoinTime: 加入用户组的时间
        # @type JoinTime: String

        attr_accessor :GroupName, :Description, :GroupId, :GroupType, :JoinTime

        def initialize(groupname=nil, description=nil, groupid=nil, grouptype=nil, jointime=nil)
          @GroupName = groupname
          @Description = description
          @GroupId = groupid
          @GroupType = grouptype
          @JoinTime = jointime
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Description = params['Description']
          @GroupId = params['GroupId']
          @GroupType = params['GroupType']
          @JoinTime = params['JoinTime']
        end
      end

      # ListExternalSAMLIdPCertificates请求参数结构体
      class ListExternalSAMLIdPCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # ListExternalSAMLIdPCertificates返回参数结构体
      class ListExternalSAMLIdPCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param SAMLIdPCertificates: SAML 签名证书列表
        # @type SAMLIdPCertificates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :SAMLIdPCertificates, :RequestId

        def initialize(totalcounts=nil, samlidpcertificates=nil, requestid=nil)
          @TotalCounts = totalcounts
          @SAMLIdPCertificates = samlidpcertificates
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          unless params['SAMLIdPCertificates'].nil?
            @SAMLIdPCertificates = []
            params['SAMLIdPCertificates'].each do |i|
              samlidpcertificate_tmp = SAMLIdPCertificate.new
              samlidpcertificate_tmp.deserialize(i)
              @SAMLIdPCertificates << samlidpcertificate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListGroupMembers请求参数结构体
      class ListGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupId: 用户组ID。
        # @type GroupId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param UserType: 用户类型  Manual：手动创建，Synchronized：外部导入。
        # @type UserType: String

        attr_accessor :ZoneId, :GroupId, :NextToken, :MaxResults, :UserType

        def initialize(zoneid=nil, groupid=nil, nexttoken=nil, maxresults=nil, usertype=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @UserType = usertype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @UserType = params['UserType']
        end
      end

      # ListGroupMembers返回参数结构体
      class ListGroupMembersResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param GroupMembers: 用户组的用户列表
        # @type GroupMembers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :GroupMembers, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, groupmembers=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @GroupMembers = groupmembers
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['GroupMembers'].nil?
            @GroupMembers = []
            params['GroupMembers'].each do |i|
              groupmembers_tmp = GroupMembers.new
              groupmembers_tmp.deserialize(i)
              @GroupMembers << groupmembers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListGroups请求参数结构体
      class ListGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param Filter: 过滤条件。  格式：<Attribute> <Operator> <Value>，不区分大小写。目前，<Attribute>只支持GroupName，<Operator>只支持eq（Equals）和sw（Start With）。  示例：Filter = "GroupName sw test"，表示查询名称以 test 开头的全部用户组。Filter = "GroupName eq testgroup"，表示查询名称为 testgroup 的用户组。
        # @type Filter: String
        # @param GroupType: 用户组的类型  Manual：手动创建，Synchronized：外部导入。
        # @type GroupType: String
        # @param FilterUsers: 筛选的用户，该用户关联的用户组会返回IsSelected=1
        # @type FilterUsers: Array
        # @param SortField: 排序的字段，目前只支持CreateTime，默认是CreateTime字段
        # @type SortField: String
        # @param SortType: 排序类型：Desc 倒序 Asc  正序，需要您和SortField一起设置
        # @type SortType: String
        # @param Offset: 翻页offset. 不要与NextToken同时使用，优先使用NextToken
        # @type Offset: Integer

        attr_accessor :ZoneId, :NextToken, :MaxResults, :Filter, :GroupType, :FilterUsers, :SortField, :SortType, :Offset

        def initialize(zoneid=nil, nexttoken=nil, maxresults=nil, filter=nil, grouptype=nil, filterusers=nil, sortfield=nil, sorttype=nil, offset=nil)
          @ZoneId = zoneid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @Filter = filter
          @GroupType = grouptype
          @FilterUsers = filterusers
          @SortField = sortfield
          @SortType = sorttype
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @Filter = params['Filter']
          @GroupType = params['GroupType']
          @FilterUsers = params['FilterUsers']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @Offset = params['Offset']
        end
      end

      # ListGroups返回参数结构体
      class ListGroupsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param Groups: 用户组列表。
        # @type Groups: Array
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :Groups, :MaxResults, :TotalCounts, :IsTruncated, :RequestId

        def initialize(nexttoken=nil, groups=nil, maxresults=nil, totalcounts=nil, istruncated=nil, requestid=nil)
          @NextToken = nexttoken
          @Groups = groups
          @MaxResults = maxresults
          @TotalCounts = totalcounts
          @IsTruncated = istruncated
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @TotalCounts = params['TotalCounts']
          @IsTruncated = params['IsTruncated']
          @RequestId = params['RequestId']
        end
      end

      # ListJoinedGroupsForUser请求参数结构体
      class ListJoinedGroupsForUserRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer

        attr_accessor :ZoneId, :UserId, :NextToken, :MaxResults

        def initialize(zoneid=nil, userid=nil, nexttoken=nil, maxresults=nil)
          @ZoneId = zoneid
          @UserId = userid
          @NextToken = nexttoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserId = params['UserId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
        end
      end

      # ListJoinedGroupsForUser返回参数结构体
      class ListJoinedGroupsForUserResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param JoinedGroups: 用户加入的用户组列表
        # @type JoinedGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :JoinedGroups, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, joinedgroups=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @JoinedGroups = joinedgroups
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['JoinedGroups'].nil?
            @JoinedGroups = []
            params['JoinedGroups'].each do |i|
              joinedgroups_tmp = JoinedGroups.new
              joinedgroups_tmp.deserialize(i)
              @JoinedGroups << joinedgroups_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListNonCompliantResource请求参数结构体
      class ListNonCompliantResourceRequest < TencentCloud::Common::AbstractModel
        # @param MaxResults: 限制数目。取值范围：1~50。
        # @type MaxResults: Integer
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PaginationToken: 从上一页的响应中获取的下一页的Token值。
        # 如果是第一次请求，设置为空。
        # @type PaginationToken: String
        # @param TagKey: 标签键。
        # @type TagKey: String

        attr_accessor :MaxResults, :MemberUin, :PaginationToken, :TagKey

        def initialize(maxresults=nil, memberuin=nil, paginationtoken=nil, tagkey=nil)
          @MaxResults = maxresults
          @MemberUin = memberuin
          @PaginationToken = paginationtoken
          @TagKey = tagkey
        end

        def deserialize(params)
          @MaxResults = params['MaxResults']
          @MemberUin = params['MemberUin']
          @PaginationToken = params['PaginationToken']
          @TagKey = params['TagKey']
        end
      end

      # ListNonCompliantResource返回参数结构体
      class ListNonCompliantResourceResponse < TencentCloud::Common::AbstractModel
        # @param Items: 资源及标签合规信息。
        # @type Items: Array
        # @param PaginationToken: 获取的下一页的Token值。
        # @type PaginationToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :PaginationToken, :RequestId

        def initialize(items=nil, paginationtoken=nil, requestid=nil)
          @Items = items
          @PaginationToken = paginationtoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              resourcetagmapping_tmp = ResourceTagMapping.new
              resourcetagmapping_tmp.deserialize(i)
              @Items << resourcetagmapping_tmp
            end
          end
          @PaginationToken = params['PaginationToken']
          @RequestId = params['RequestId']
        end
      end

      # ListOrgServiceAssignMember请求参数结构体
      class ListOrgServiceAssignMemberRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
        # @type Limit: Integer
        # @param ServiceId: 集团服务ID。和集团服务产品标识二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type ServiceId: Integer
        # @param Product: 集团服务产品标识。和集团服务ID二选一必填，可以通过[ListOrganizationService](https://cloud.tencent.com/document/product/850/109561)获取
        # @type Product: String

        attr_accessor :Offset, :Limit, :ServiceId, :Product

        def initialize(offset=nil, limit=nil, serviceid=nil, product=nil)
          @Offset = offset
          @Limit = limit
          @ServiceId = serviceid
          @Product = product
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ServiceId = params['ServiceId']
          @Product = params['Product']
        end
      end

      # ListOrgServiceAssignMember返回参数结构体
      class ListOrgServiceAssignMemberResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # @type Total: Integer
        # @param Items: 委派管理员列表。
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
              organizationserviceassignmember_tmp = OrganizationServiceAssignMember.new
              organizationserviceassignmember_tmp.deserialize(i)
              @Items << organizationserviceassignmember_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # @type Total: Integer
        # @param Items: 条目详情。
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

      # ListOrganizationService请求参数结构体
      class ListOrganizationServiceRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量。取值是limit的整数倍，默认值 : 0
        # @type Offset: Integer
        # @param Limit: 限制数目。取值范围：1~50，默认值：10
        # @type Limit: Integer
        # @param SearchKey: 名称搜索关键字。
        # @type SearchKey: String

        attr_accessor :Offset, :Limit, :SearchKey

        def initialize(offset=nil, limit=nil, searchkey=nil)
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
        end
      end

      # ListOrganizationService返回参数结构体
      class ListOrganizationServiceResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # @type Total: Integer
        # @param Items: 集团服务列表。
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
              organizationserviceassign_tmp = OrganizationServiceAssign.new
              organizationserviceassign_tmp.deserialize(i)
              @Items << organizationserviceassign_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPermissionPoliciesInRoleConfiguration请求参数结构体
      class ListPermissionPoliciesInRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String
        # @param RolePolicyType: 权限策略类型。取值：  System：系统策略。复用 CAM 的系统策略。 Custom: 自定义策略。按照 CAM 权限策略语法和结构编写的自定义策略。
        # @type RolePolicyType: String
        # @param Filter: 按策略名称搜索
        # @type Filter: String

        attr_accessor :ZoneId, :RoleConfigurationId, :RolePolicyType, :Filter

        def initialize(zoneid=nil, roleconfigurationid=nil, rolepolicytype=nil, filter=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @RolePolicyType = rolepolicytype
          @Filter = filter
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RolePolicyType = params['RolePolicyType']
          @Filter = params['Filter']
        end
      end

      # ListPermissionPoliciesInRoleConfiguration返回参数结构体
      class ListPermissionPoliciesInRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: 权限策略总个数。
        # @type TotalCounts: Integer
        # @param RolePolicies: 权限策略列表。
        # @type RolePolicies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :RolePolicies, :RequestId

        def initialize(totalcounts=nil, rolepolicies=nil, requestid=nil)
          @TotalCounts = totalcounts
          @RolePolicies = rolepolicies
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          unless params['RolePolicies'].nil?
            @RolePolicies = []
            params['RolePolicies'].each do |i|
              rolepolicie_tmp = RolePolicie.new
              rolepolicie_tmp.deserialize(i)
              @RolePolicies << rolepolicie_tmp
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
        # @type Remark: String
        # @param Uin: 关联的账号或节点
        # @type Uin: Integer
        # @param Type: 关联类型 1-节点 2-用户
        # @type Type: Integer
        # @param AddTime: 策略创建时间
        # @type AddTime: String
        # @param UpdateTime: 策略更新时间
        # @type UpdateTime: String
        # @param Name: 部门名称
        # @type Name: String
        # @param AttachTime: 策略绑定时间
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
        # @type AddTime: String
        # @param AttachedTimes: 策略绑定次数
        # @type AttachedTimes: Integer
        # @param Description: 策略描述信息
        # @type Description: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param PolicyId: 策略Id
        # @type PolicyId: Integer
        # @param UpdateTime: 策略更新时间
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

      # ListRoleAssignments请求参数结构体
      class ListRoleAssignmentsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param TargetUin: 同步的集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示同步的身份是用户。 Group：表示同步的身份是用户组。
        # @type PrincipalType: String
        # @param PrincipalId: 用户同步 ID。取值： 当PrincipalType取值为Group时，该值为用户组 ID（g-****)，当PrincipalType取值为User时，该值为用户 ID （u-****）。
        # @type PrincipalId: String
        # @param Filter: 查询条件，目前只支持权限配置名称查询。
        # @type Filter: String

        attr_accessor :ZoneId, :RoleConfigurationId, :MaxResults, :NextToken, :TargetType, :TargetUin, :PrincipalType, :PrincipalId, :Filter

        def initialize(zoneid=nil, roleconfigurationid=nil, maxresults=nil, nexttoken=nil, targettype=nil, targetuin=nil, principaltype=nil, principalid=nil, filter=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TargetType = targettype
          @TargetUin = targetuin
          @PrincipalType = principaltype
          @PrincipalId = principalid
          @Filter = filter
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TargetType = params['TargetType']
          @TargetUin = params['TargetUin']
          @PrincipalType = params['PrincipalType']
          @PrincipalId = params['PrincipalId']
          @Filter = params['Filter']
        end
      end

      # ListRoleAssignments返回参数结构体
      class ListRoleAssignmentsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param RoleAssignments: 集团账号目标账号的授权列表。
        # @type RoleAssignments: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :RoleAssignments, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, roleassignments=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @RoleAssignments = roleassignments
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['RoleAssignments'].nil?
            @RoleAssignments = []
            params['RoleAssignments'].each do |i|
              roleassignments_tmp = RoleAssignments.new
              roleassignments_tmp.deserialize(i)
              @RoleAssignments << roleassignments_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRoleConfigurationProvisionings请求参数结构体
      class ListRoleConfigurationProvisioningsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param TargetUin: 同步的集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param DeploymentStatus: Deployed: 部署成功 DeployedRequired：需要重新部署 DeployFailed：部署失败
        # @type DeploymentStatus: String
        # @param Filter: 支持配置名称搜索。
        # @type Filter: String

        attr_accessor :ZoneId, :RoleConfigurationId, :MaxResults, :NextToken, :TargetType, :TargetUin, :DeploymentStatus, :Filter

        def initialize(zoneid=nil, roleconfigurationid=nil, maxresults=nil, nexttoken=nil, targettype=nil, targetuin=nil, deploymentstatus=nil, filter=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TargetType = targettype
          @TargetUin = targetuin
          @DeploymentStatus = deploymentstatus
          @Filter = filter
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TargetType = params['TargetType']
          @TargetUin = params['TargetUin']
          @DeploymentStatus = params['DeploymentStatus']
          @Filter = params['Filter']
        end
      end

      # ListRoleConfigurationProvisionings返回参数结构体
      class ListRoleConfigurationProvisioningsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param RoleConfigurationProvisionings: 部成员账号列表。
        # @type RoleConfigurationProvisionings: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :RoleConfigurationProvisionings, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, roleconfigurationprovisionings=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @RoleConfigurationProvisionings = roleconfigurationprovisionings
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['RoleConfigurationProvisionings'].nil?
            @RoleConfigurationProvisionings = []
            params['RoleConfigurationProvisionings'].each do |i|
              roleconfigurationprovisionings_tmp = RoleConfigurationProvisionings.new
              roleconfigurationprovisionings_tmp.deserialize(i)
              @RoleConfigurationProvisionings << roleconfigurationprovisionings_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRoleConfigurations请求参数结构体
      class ListRoleConfigurationsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param Filter: 过滤文本。不区分大小写。目前，支持 RoleConfigurationName和Description. 示例：Filter = "test"，表示查询名称或描述里包含 test 的权限配置。
        # @type Filter: String
        # @param FilterTargets: 检索成员账号是否配置过权限，如果配置过返回IsSelected: true, 否则返回false。
        # @type FilterTargets: Array
        # @param PrincipalId: 授权的用户UserId或者用户组的GroupId，必须和入参数FilterTargets一起设置
        # @type PrincipalId: String

        attr_accessor :ZoneId, :NextToken, :MaxResults, :Filter, :FilterTargets, :PrincipalId

        def initialize(zoneid=nil, nexttoken=nil, maxresults=nil, filter=nil, filtertargets=nil, principalid=nil)
          @ZoneId = zoneid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @Filter = filter
          @FilterTargets = filtertargets
          @PrincipalId = principalid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @Filter = params['Filter']
          @FilterTargets = params['FilterTargets']
          @PrincipalId = params['PrincipalId']
        end
      end

      # ListRoleConfigurations返回参数结构体
      class ListRoleConfigurationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param RoleConfigurations: 权限配置列表。
        # @type RoleConfigurations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :MaxResults, :IsTruncated, :NextToken, :RoleConfigurations, :RequestId

        def initialize(totalcounts=nil, maxresults=nil, istruncated=nil, nexttoken=nil, roleconfigurations=nil, requestid=nil)
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @NextToken = nexttoken
          @RoleConfigurations = roleconfigurations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          @NextToken = params['NextToken']
          unless params['RoleConfigurations'].nil?
            @RoleConfigurations = []
            params['RoleConfigurations'].each do |i|
              roleconfiguration_tmp = RoleConfiguration.new
              roleconfiguration_tmp.deserialize(i)
              @RoleConfigurations << roleconfiguration_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSCIMCredentials请求参数结构体
      class ListSCIMCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param CredentialId: SCIM密钥ID
        # @type CredentialId: String

        attr_accessor :ZoneId, :CredentialId

        def initialize(zoneid=nil, credentialid=nil)
          @ZoneId = zoneid
          @CredentialId = credentialid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CredentialId = params['CredentialId']
        end
      end

      # ListSCIMCredentials返回参数结构体
      class ListSCIMCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: SCIM密钥数量。
        # @type TotalCounts: Integer
        # @param SCIMCredentials: SCIM 密钥信息。
        # @type SCIMCredentials: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :SCIMCredentials, :RequestId

        def initialize(totalcounts=nil, scimcredentials=nil, requestid=nil)
          @TotalCounts = totalcounts
          @SCIMCredentials = scimcredentials
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          unless params['SCIMCredentials'].nil?
            @SCIMCredentials = []
            params['SCIMCredentials'].each do |i|
              scimcredential_tmp = SCIMCredential.new
              scimcredential_tmp.deserialize(i)
              @SCIMCredentials << scimcredential_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询某个指定SCP策略关联的目标列表
      class ListTargetsForPolicyNode < TencentCloud::Common::AbstractModel
        # @param Uin: scp账号uin或节点Id
        # @type Uin: Integer
        # @param RelatedType: 关联类型 1-节点关联 2-用户关联
        # @type RelatedType: Integer
        # @param Name: 账号或者节点名称
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

      # ListTasks请求参数结构体
      class ListTasksRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param PrincipalId: 用户同步 ID。取值： 当PrincipalType取值为Group时，该值为用户组 ID（g-****）， 当PrincipalType取值为User时，该值为用户 ID（u-****）。
        # @type PrincipalId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示同步的身份是用户。 Group：表示同步的身份是用户组。
        # @type PrincipalType: String
        # @param TargetUin: 同步的集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param Status: InProgress：任务执行中。 Success：任务执行成功。 Failed：任务执行失败。
        # @type Status: String
        # @param TaskType: 任务类型。
        # @type TaskType: String

        attr_accessor :ZoneId, :PrincipalId, :NextToken, :MaxResults, :PrincipalType, :TargetUin, :TargetType, :RoleConfigurationId, :Status, :TaskType

        def initialize(zoneid=nil, principalid=nil, nexttoken=nil, maxresults=nil, principaltype=nil, targetuin=nil, targettype=nil, roleconfigurationid=nil, status=nil, tasktype=nil)
          @ZoneId = zoneid
          @PrincipalId = principalid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @PrincipalType = principaltype
          @TargetUin = targetuin
          @TargetType = targettype
          @RoleConfigurationId = roleconfigurationid
          @Status = status
          @TaskType = tasktype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PrincipalId = params['PrincipalId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @PrincipalType = params['PrincipalType']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @RoleConfigurationId = params['RoleConfigurationId']
          @Status = params['Status']
          @TaskType = params['TaskType']
        end
      end

      # ListTasks返回参数结构体
      class ListTasksResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param Tasks: 任务详情
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :Tasks, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, tasks=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @Tasks << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUserSyncProvisionings请求参数结构体
      class ListUserSyncProvisioningsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param PrincipalId: 用户同步 ID。取值：  当PrincipalType取值为Group时，该值为用户组 ID（g-********）。 当PrincipalType取值为User时，该值为用户 ID（u-********）。
        # @type PrincipalId: String
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法多次查询，直到IsTruncated为false，表示全部数据查询完毕。
        # @type NextToken: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示同步的身份是用户。 Group：表示同步的身份是用户组。
        # @type PrincipalType: String
        # @param TargetUin: 集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param Filter: 检测条件。
        # @type Filter: String

        attr_accessor :ZoneId, :PrincipalId, :NextToken, :MaxResults, :PrincipalType, :TargetUin, :TargetType, :Filter

        def initialize(zoneid=nil, principalid=nil, nexttoken=nil, maxresults=nil, principaltype=nil, targetuin=nil, targettype=nil, filter=nil)
          @ZoneId = zoneid
          @PrincipalId = principalid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @PrincipalType = principaltype
          @TargetUin = targetuin
          @TargetType = targettype
          @Filter = filter
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PrincipalId = params['PrincipalId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @PrincipalType = params['PrincipalType']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @Filter = params['Filter']
        end
      end

      # ListUserSyncProvisionings返回参数结构体
      class ListUserSyncProvisioningsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查询返回结果下一页的令牌。  说明 只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param UserProvisionings: CAM同步的用户列表。
        # @type UserProvisionings: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TotalCounts, :MaxResults, :IsTruncated, :UserProvisionings, :RequestId

        def initialize(nexttoken=nil, totalcounts=nil, maxresults=nil, istruncated=nil, userprovisionings=nil, requestid=nil)
          @NextToken = nexttoken
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @IsTruncated = istruncated
          @UserProvisionings = userprovisionings
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          @IsTruncated = params['IsTruncated']
          unless params['UserProvisionings'].nil?
            @UserProvisionings = []
            params['UserProvisionings'].each do |i|
              userprovisioning_tmp = UserProvisioning.new
              userprovisioning_tmp.deserialize(i)
              @UserProvisionings << userprovisioning_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUsers请求参数结构体
      class ListUsersRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserStatus: 用户状态 Enabled：启用， Disabled：禁用。
        # @type UserStatus: String
        # @param UserType: 用户类型  Manual：手动创建，Synchronized：外部导入。
        # @type UserType: String
        # @param Filter: 过滤条件。  目前仅支持用户名，邮箱，用户userId，描述
        # @type Filter: String
        # @param MaxResults: 每页的最大数据条数。  取值范围：1~100。  默认值：10。
        # @type MaxResults: Integer
        # @param NextToken: 查询返回结果下一页的令牌。首次调用 API 不需要NextToken。  当您首次调用 API 时，如果返回数据总条数超过MaxResults限制，数据会被截断，只返回MaxResults条数据，同时，返回参数IsTruncated为true，返回一个NextToken。您可以使用上一次返回的NextToken继续调用 API，其他请求参数保持不变，查询被截断的数据。您可以按此方法经过多次查询，直到IsTruncated为false时，表示全部数据查询完毕。
        # @type NextToken: String
        # @param FilterGroups: 筛选的用户组，该用户组关联的子用户会返回IsSelected=1
        # @type FilterGroups: Array
        # @param SortField: 排序的字段，目前只支持CreateTime，默认是CreateTime字段
        # @type SortField: String
        # @param SortType: 排序类型：Desc 倒序 Asc  正序，需要您和SortField一起设置
        # @type SortType: String
        # @param Offset: 翻页offset. 不要与NextToken同时使用，优先使用NextToken
        # @type Offset: Integer

        attr_accessor :ZoneId, :UserStatus, :UserType, :Filter, :MaxResults, :NextToken, :FilterGroups, :SortField, :SortType, :Offset

        def initialize(zoneid=nil, userstatus=nil, usertype=nil, filter=nil, maxresults=nil, nexttoken=nil, filtergroups=nil, sortfield=nil, sorttype=nil, offset=nil)
          @ZoneId = zoneid
          @UserStatus = userstatus
          @UserType = usertype
          @Filter = filter
          @MaxResults = maxresults
          @NextToken = nexttoken
          @FilterGroups = filtergroups
          @SortField = sortfield
          @SortType = sorttype
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserStatus = params['UserStatus']
          @UserType = params['UserType']
          @Filter = params['Filter']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @FilterGroups = params['FilterGroups']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @Offset = params['Offset']
        end
      end

      # ListUsers返回参数结构体
      class ListUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: 符合请求参数条件的数据总条数。
        # @type TotalCounts: Integer
        # @param MaxResults: 每页的最大数据条数。
        # @type MaxResults: Integer
        # @param Users: 用户列表。
        # @type Users: Array
        # @param NextToken: 查询返回结果下一页的令牌。只有IsTruncated为true时，才显示该参数。
        # @type NextToken: String
        # @param IsTruncated: 返回结果是否被截断。取值：  true：已截断。 false：未截断。
        # @type IsTruncated: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :MaxResults, :Users, :NextToken, :IsTruncated, :RequestId

        def initialize(totalcounts=nil, maxresults=nil, users=nil, nexttoken=nil, istruncated=nil, requestid=nil)
          @TotalCounts = totalcounts
          @MaxResults = maxresults
          @Users = users
          @NextToken = nexttoken
          @IsTruncated = istruncated
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          @MaxResults = params['MaxResults']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          @NextToken = params['NextToken']
          @IsTruncated = params['IsTruncated']
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
        # @type Description: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ShareResourceNum: 共享单元资源数。
        # @type ShareResourceNum: Integer
        # @param ShareMemberNum: 共享单元成员数。
        # @type ShareMemberNum: Integer
        # @param ShareScope: 共享范围。取值：1-仅允许集团组织内共享 2-允许共享给任意账号
        # @type ShareScope: Integer

        attr_accessor :UnitId, :Name, :Uin, :OwnerUin, :Area, :Description, :CreateTime, :ShareResourceNum, :ShareMemberNum, :ShareScope

        def initialize(unitid=nil, name=nil, uin=nil, owneruin=nil, area=nil, description=nil, createtime=nil, shareresourcenum=nil, sharemembernum=nil, sharescope=nil)
          @UnitId = unitid
          @Name = name
          @Uin = uin
          @OwnerUin = owneruin
          @Area = area
          @Description = description
          @CreateTime = createtime
          @ShareResourceNum = shareresourcenum
          @ShareMemberNum = sharemembernum
          @ShareScope = sharescope
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
          @ShareScope = params['ShareScope']
        end
      end

      # 成员管理身份
      class MemberIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。
        # @type IdentityId: Integer
        # @param IdentityAliasName: 身份名称。
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
        # @type MemberUin: Integer
        # @param MemberName: 成员名称
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

      # 部门主要信息
      class NodeMainInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 部门ID
        # @type NodeId: Integer
        # @param NodeName: 部门名称
        # @type NodeName: String

        attr_accessor :NodeId, :NodeName

        def initialize(nodeid=nil, nodename=nil)
          @NodeId = nodeid
          @NodeName = nodename
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
        end
      end

      # 不允许删除的原因。
      class NotAllowReason < TencentCloud::Common::AbstractModel
        # @param IsCreateMember: 是否创建的成员。true-是、false-否；成员不是创建的成员不允许删除
        # @type IsCreateMember: Boolean
        # @param DeletionPermission: 成员删除许可。true-开启、false-关闭；成员删除许可关闭时不允许删除
        # @type DeletionPermission: Boolean
        # @param IsAssignManager: 是否可信服务委派管理员。true-是、false-否；成员是可信服务委派管理员不允许删除
        # @type IsAssignManager: Boolean
        # @param IsAuthManager: 是否主体管理员。true-是、false-否；成员是主体管理员不允许删除
        # @type IsAuthManager: Boolean
        # @param IsShareManager: 是否共享资源管理员。true-是、false-否；成员是共享资源管理员不允许删除
        # @type IsShareManager: Boolean
        # @param OperateProcess: 成员是否设置了操作审批。true-是、false-否；成员设置了操作审批时不允许删除
        # @type OperateProcess: Boolean
        # @param BillingPermission: 是否允许解除成员财务权限。true-是、false-否；成员不能解除财务权限时不允许删除
        # @type BillingPermission: Boolean
        # @param ExistResources: 存在的资源列表。账号存在资源时不允许删除
        # @type ExistResources: Array
        # @param DetectFailedResources: 检测失败的资源列表。账号有资源检测失败时不允许删除。
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

      # OpenIdentityCenter请求参数结构体
      class OpenIdentityCenterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneName: 空间名，必须全局唯一。包含小写字母、数字和短划线（-）。不能以短划线（-）开头或结尾，且不能有两个连续的短划线（-）。长度：2~64 个字符。
        # @type ZoneName: String

        attr_accessor :ZoneName

        def initialize(zonename=nil)
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
        end
      end

      # OpenIdentityCenter返回参数结构体
      class OpenIdentityCenterResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RequestId

        def initialize(zoneid=nil, requestid=nil)
          @ZoneId = zoneid
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RequestId = params['RequestId']
        end
      end

      # 按月获取组织财务信息
      class OrgFinancialByMonth < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID。
        # @type Id: Integer
        # @param Month: 月份，格式：yyyy-mm，示例：2021-01。
        # @type Month: String
        # @param TotalCost: 消耗金额，单元：元。
        # @type TotalCost: Float
        # @param GrowthRate: 比上月增长率%。正数增长，负数下降，空值无法统计。
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
        # @type IdentityId: Integer
        # @param IdentityAliasName: 身份名称。
        # @type IdentityAliasName: String
        # @param Description: 描述。
        # @type Description: String
        # @param IdentityPolicy: 身份策略。
        # @type IdentityPolicy: Array
        # @param IdentityType: 身份类型。 1-预设、 2-自定义
        # @type IdentityType: Integer
        # @param UpdateTime: 更新时间。
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
        # @type MemberUin: Integer
        # @param Name: 成员名
        # @type Name: String
        # @param MemberType: 成员类型，邀请：Invite， 创建：Create
        # @type MemberType: String
        # @param OrgPolicyType: 关系策略类型
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 关系策略名
        # @type OrgPolicyName: String
        # @param OrgPermission: 关系策略权限
        # @type OrgPermission: Array
        # @param NodeId: 所属节点ID
        # @type NodeId: Integer
        # @param NodeName: 所属节点名
        # @type NodeName: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param IsAllowQuit: 是否允许成员退出。允许：Allow，不允许：Denied。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin
        # @type PayUin: String
        # @param PayName: 代付者名称
        # @type PayName: String
        # @param OrgIdentity: 管理身份
        # @type OrgIdentity: Array
        # @param BindStatus: 安全信息绑定状态  未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        # @type BindStatus: String
        # @param PermissionStatus: 成员权限状态 已确认：Confirmed ，待确认：UnConfirmed
        # @type PermissionStatus: String
        # @param Tags: 成员标签列表
        # @type Tags: Array
        # @param NickName: 腾讯云昵称
        # @type NickName: String

        attr_accessor :MemberUin, :Name, :MemberType, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :NodeId, :NodeName, :Remark, :CreateTime, :UpdateTime, :IsAllowQuit, :PayUin, :PayName, :OrgIdentity, :BindStatus, :PermissionStatus, :Tags, :NickName

        def initialize(memberuin=nil, name=nil, membertype=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, nodeid=nil, nodename=nil, remark=nil, createtime=nil, updatetime=nil, isallowquit=nil, payuin=nil, payname=nil, orgidentity=nil, bindstatus=nil, permissionstatus=nil, tags=nil, nickname=nil)
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
          @Tags = tags
          @NickName = nickname
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @NickName = params['NickName']
        end
      end

      # 成员和子账号的授权关系
      class OrgMemberAuthAccount < TencentCloud::Common::AbstractModel
        # @param OrgSubAccountUin: 组织子账号Uin。
        # @type OrgSubAccountUin: Integer
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名。
        # @type PolicyName: String
        # @param IdentityId: 身份ID。
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份角色名。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份角色别名。
        # @type IdentityRoleAliasName: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param OrgSubAccountName: 子账号名称
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
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份的角色名。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份的角色别名。
        # @type IdentityRoleAliasName: String
        # @param Description: 身份描述。
        # @type Description: String
        # @param CreateTime: 首次配置成功的时间。
        # @type CreateTime: String
        # @param UpdateTime: 最后一次配置成功的时间。
        # @type UpdateTime: String
        # @param IdentityType: 身份类型。取值： 1-预设身份  2-自定义身份
        # @type IdentityType: Integer
        # @param Status: 配置状态。取值：1-配置完成 2-需重新配置
        # @type Status: Integer
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param MemberName: 成员名称。
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
        # @type MemberUin: Integer
        # @param MemberName: 成员名称。
        # @type MemberName: String
        # @param TotalCost: 消耗金额，单位：元。
        # @type TotalCost: Float
        # @param Ratio: 占比%。
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
        # @type PolicyId: Integer
        # @param PolicyName: 策略名。
        # @type PolicyName: String
        # @param IdentityId: 身份ID。
        # @type IdentityId: Integer
        # @param IdentityRoleName: 身份角色名。
        # @type IdentityRoleName: String
        # @param IdentityRoleAliasName: 身份角色别名。
        # @type IdentityRoleAliasName: String
        # @param Description: 描述。
        # @type Description: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
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
        # @type NodeId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param ParentNodeId: 父节点ID
        # @type ParentNodeId: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Tags: 成员标签列表
        # @type Tags: Array

        attr_accessor :NodeId, :Name, :ParentNodeId, :Remark, :CreateTime, :UpdateTime, :Tags

        def initialize(nodeid=nil, name=nil, parentnodeid=nil, remark=nil, createtime=nil, updatetime=nil, tags=nil)
          @NodeId = nodeid
          @Name = name
          @ParentNodeId = parentnodeid
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Tags = tags
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Name = params['Name']
          @ParentNodeId = params['ParentNodeId']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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
        # @type ProductName: String
        # @param ProductCode: 产品名。
        # @type ProductCode: String
        # @param TotalCost: 产品消耗，单位：元。
        # @type TotalCost: Float
        # @param Ratio: 占比%。
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

      # 集团服务设置
      class OrganizationServiceAssign < TencentCloud::Common::AbstractModel
        # @param ServiceId: 集团服务ID。
        # @type ServiceId: Integer
        # @param ProductName: 集团服务产品名称。
        # @type ProductName: String
        # @param IsAssign: 是否支持委派。取值: 1-是  2-否
        # @type IsAssign: Integer
        # @param Description: 集团服务描述。
        # @type Description: String
        # @param MemberNum: 当前委派管理员数。
        # @type MemberNum: String
        # @param Document: 帮助文档。
        # @type Document: String
        # @param ConsoleUrl: 集团服务产品控制台路径。
        # @type ConsoleUrl: String
        # @param IsUsageStatus: 是否接入使用状态。取值: 1-是
        #  2-否
        # @type IsUsageStatus: Integer
        # @param CanAssignCount: 委派管理员数量限制。
        # @type CanAssignCount: Integer
        # @param Product: 集团服务产品标识。
        # @type Product: String
        # @param ServiceGrant: 是否支持集团服务授权。取值 1-是、2-否
        # @type ServiceGrant: Integer
        # @param GrantStatus: 集团服务授权启用状态。ServiceGrant值为1时该字段有效 ，取值：Enabled-开启  Disabled-关闭
        # @type GrantStatus: String
        # @param IsSetManagementScope: 是否支持设置委派管理范围。取值: 1-是  2-否
        # @type IsSetManagementScope: Integer

        attr_accessor :ServiceId, :ProductName, :IsAssign, :Description, :MemberNum, :Document, :ConsoleUrl, :IsUsageStatus, :CanAssignCount, :Product, :ServiceGrant, :GrantStatus, :IsSetManagementScope

        def initialize(serviceid=nil, productname=nil, isassign=nil, description=nil, membernum=nil, document=nil, consoleurl=nil, isusagestatus=nil, canassigncount=nil, product=nil, servicegrant=nil, grantstatus=nil, issetmanagementscope=nil)
          @ServiceId = serviceid
          @ProductName = productname
          @IsAssign = isassign
          @Description = description
          @MemberNum = membernum
          @Document = document
          @ConsoleUrl = consoleurl
          @IsUsageStatus = isusagestatus
          @CanAssignCount = canassigncount
          @Product = product
          @ServiceGrant = servicegrant
          @GrantStatus = grantstatus
          @IsSetManagementScope = issetmanagementscope
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ProductName = params['ProductName']
          @IsAssign = params['IsAssign']
          @Description = params['Description']
          @MemberNum = params['MemberNum']
          @Document = params['Document']
          @ConsoleUrl = params['ConsoleUrl']
          @IsUsageStatus = params['IsUsageStatus']
          @CanAssignCount = params['CanAssignCount']
          @Product = params['Product']
          @ServiceGrant = params['ServiceGrant']
          @GrantStatus = params['GrantStatus']
          @IsSetManagementScope = params['IsSetManagementScope']
        end
      end

      # 集团服务委派成员信息
      class OrganizationServiceAssignMember < TencentCloud::Common::AbstractModel
        # @param ServiceId: 集团服务ID。
        # @type ServiceId: Integer
        # @param ProductName: 集团服务产品名称。
        # @type ProductName: String
        # @param MemberUin: 委派管理员Uin。
        # @type MemberUin: Integer
        # @param MemberName: 委派管理员名称。
        # @type MemberName: String
        # @param UsageStatus: 启用状态 。取值：0-服务无启用状态  1-已启用  2-未启用
        # @type UsageStatus: Integer
        # @param CreateTime: 委派时间。
        # @type CreateTime: String
        # @param ManagementScope: 委派管理员管理范围。取值: 1-全部成员  2-部分成员
        # @type ManagementScope: Integer
        # @param ManagementScopeMembers: 管理的成员Uin列表。ManagementScope值为2时该参数有效
        # @type ManagementScopeMembers: Array
        # @param ManagementScopeNodes: 管理的部门ID列表。ManagementScope值为2时该参数有效
        # @type ManagementScopeNodes: Array

        attr_accessor :ServiceId, :ProductName, :MemberUin, :MemberName, :UsageStatus, :CreateTime, :ManagementScope, :ManagementScopeMembers, :ManagementScopeNodes

        def initialize(serviceid=nil, productname=nil, memberuin=nil, membername=nil, usagestatus=nil, createtime=nil, managementscope=nil, managementscopemembers=nil, managementscopenodes=nil)
          @ServiceId = serviceid
          @ProductName = productname
          @MemberUin = memberuin
          @MemberName = membername
          @UsageStatus = usagestatus
          @CreateTime = createtime
          @ManagementScope = managementscope
          @ManagementScopeMembers = managementscopemembers
          @ManagementScopeNodes = managementscopenodes
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ProductName = params['ProductName']
          @MemberUin = params['MemberUin']
          @MemberName = params['MemberName']
          @UsageStatus = params['UsageStatus']
          @CreateTime = params['CreateTime']
          @ManagementScope = params['ManagementScope']
          unless params['ManagementScopeMembers'].nil?
            @ManagementScopeMembers = []
            params['ManagementScopeMembers'].each do |i|
              membermaininfo_tmp = MemberMainInfo.new
              membermaininfo_tmp.deserialize(i)
              @ManagementScopeMembers << membermaininfo_tmp
            end
          end
          unless params['ManagementScopeNodes'].nil?
            @ManagementScopeNodes = []
            params['ManagementScopeNodes'].each do |i|
              nodemaininfo_tmp = NodeMainInfo.new
              nodemaininfo_tmp.deserialize(i)
              @ManagementScopeNodes << nodemaininfo_tmp
            end
          end
        end
      end

      # 策略详情
      class PolicyDetail < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 产品资源
      class ProductResource < TencentCloud::Common::AbstractModel
        # @param ProductResourceId: 产品资源ID。
        # @type ProductResourceId: String
        # @param ResourceGrantLast: 资源六段式最后一节
        # @type ResourceGrantLast: String

        attr_accessor :ProductResourceId, :ResourceGrantLast
        extend Gem::Deprecate
        deprecate :ResourceGrantLast, :none, 2025, 4
        deprecate :ResourceGrantLast=, :none, 2025, 4

        def initialize(productresourceid=nil, resourcegrantlast=nil)
          @ProductResourceId = productresourceid
          @ResourceGrantLast = resourcegrantlast
        end

        def deserialize(params)
          @ProductResourceId = params['ProductResourceId']
          @ResourceGrantLast = params['ResourceGrantLast']
        end
      end

      # ProvisionRoleConfiguration请求参数结构体
      class ProvisionRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号。
        # @type TargetType: String
        # @param TargetUin: 集团账号目标账号的UIN。
        # @type TargetUin: Integer

        attr_accessor :ZoneId, :RoleConfigurationId, :TargetType, :TargetUin

        def initialize(zoneid=nil, roleconfigurationid=nil, targettype=nil, targetuin=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @TargetType = targettype
          @TargetUin = targetuin
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @TargetType = params['TargetType']
          @TargetUin = params['TargetUin']
        end
      end

      # ProvisionRoleConfiguration返回参数结构体
      class ProvisionRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务详情。
        # @type Task: :class:`Tencentcloud::Organization.v20210331.models.RoleProvisioningsTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = RoleProvisioningsTask.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
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

      # RejectJoinShareUnitInvitation请求参数结构体
      class RejectJoinShareUnitInvitationRequest < TencentCloud::Common::AbstractModel
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

      # RejectJoinShareUnitInvitation返回参数结构体
      class RejectJoinShareUnitInvitationResponse < TencentCloud::Common::AbstractModel
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

      # RemoveExternalSAMLIdPCertificate请求参数结构体
      class RemoveExternalSAMLIdPCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param CertificateId: PEM 格式的 X509 证书。  由 SAML 身份提供商提供。
        # @type CertificateId: String

        attr_accessor :ZoneId, :CertificateId

        def initialize(zoneid=nil, certificateid=nil)
          @ZoneId = zoneid
          @CertificateId = certificateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CertificateId = params['CertificateId']
        end
      end

      # RemoveExternalSAMLIdPCertificate返回参数结构体
      class RemoveExternalSAMLIdPCertificateResponse < TencentCloud::Common::AbstractModel
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

      # RemovePermissionPolicyFromRoleConfiguration请求参数结构体
      class RemovePermissionPolicyFromRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String
        # @param RolePolicyType: 权限策略类型。取值：  System：系统策略。复用 CAM 的系统策略。 Custom: 自定义策略。按照 CAM 权限策略语法和结构编写的自定义策略。
        # @type RolePolicyType: String
        # @param RolePolicyName: 权限策略名称，长度最大为 32 个字符。
        # @type RolePolicyName: String
        # @param RolePolicyId: 策略ID。
        # @type RolePolicyId: Integer

        attr_accessor :ZoneId, :RoleConfigurationId, :RolePolicyType, :RolePolicyName, :RolePolicyId

        def initialize(zoneid=nil, roleconfigurationid=nil, rolepolicytype=nil, rolepolicyname=nil, rolepolicyid=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @RolePolicyType = rolepolicytype
          @RolePolicyName = rolepolicyname
          @RolePolicyId = rolepolicyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RolePolicyType = params['RolePolicyType']
          @RolePolicyName = params['RolePolicyName']
          @RolePolicyId = params['RolePolicyId']
        end
      end

      # RemovePermissionPolicyFromRoleConfiguration返回参数结构体
      class RemovePermissionPolicyFromRoleConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUserFromGroup请求参数结构体
      class RemoveUserFromGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param GroupId: 用户组ID。
        # @type GroupId: String
        # @param UserId: 用户ID。
        # @type UserId: String

        attr_accessor :ZoneId, :GroupId, :UserId

        def initialize(zoneid=nil, groupid=nil, userid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @UserId = userid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @UserId = params['UserId']
        end
      end

      # RemoveUserFromGroup返回参数结构体
      class RemoveUserFromGroupResponse < TencentCloud::Common::AbstractModel
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

      # 资源及关联的标签
      class ResourceTagMapping < TencentCloud::Common::AbstractModel
        # @param Resource: 资源六段式。腾讯云使用资源六段式描述一个资源。
        # 例如：qcs::${ServiceType}:${Region}:${Account}:${ResourcePreifx}/${ResourceId}。
        # @type Resource: String
        # @param ComplianceDetails: 合规详情。
        # @type ComplianceDetails: :class:`Tencentcloud::Organization.v20210331.models.TagComplianceDetails`
        # @param Tags: 资源标签。
        # @type Tags: Array

        attr_accessor :Resource, :ComplianceDetails, :Tags

        def initialize(resource=nil, compliancedetails=nil, tags=nil)
          @Resource = resource
          @ComplianceDetails = compliancedetails
          @Tags = tags
        end

        def deserialize(params)
          @Resource = params['Resource']
          unless params['ComplianceDetails'].nil?
            @ComplianceDetails = TagComplianceDetails.new
            @ComplianceDetails.deserialize(params['ComplianceDetails'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # 授权成员账号信息
      class RoleAssignmentInfo < TencentCloud::Common::AbstractModel
        # @param PrincipalId: CAM 用户同步的身份 ID。取值：
        # 当PrincipalType取值为Group时，该值为CIC用户组 ID（g-********）。
        # 当PrincipalType取值为User时，该值为CIC用户 ID（u-********）。
        # @type PrincipalId: String
        # @param PrincipalType: CAM 用户同步的身份类型。取值：

        # User：表示该 CAM 用户同步的身份是CIC用户。
        # Group：表示该 CAM 用户同步的身份是CIC用户组。
        # @type PrincipalType: String
        # @param TargetUin: 同步集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param TargetType: 同步集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String

        attr_accessor :PrincipalId, :PrincipalType, :TargetUin, :TargetType, :RoleConfigurationId

        def initialize(principalid=nil, principaltype=nil, targetuin=nil, targettype=nil, roleconfigurationid=nil)
          @PrincipalId = principalid
          @PrincipalType = principaltype
          @TargetUin = targetuin
          @TargetType = targettype
          @RoleConfigurationId = roleconfigurationid
        end

        def deserialize(params)
          @PrincipalId = params['PrincipalId']
          @PrincipalType = params['PrincipalType']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @RoleConfigurationId = params['RoleConfigurationId']
        end
      end

      # 成员账号的授权详情
      class RoleAssignments < TencentCloud::Common::AbstractModel
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param RoleConfigurationName: 权限配置名称。
        # @type RoleConfigurationName: String
        # @param TargetUin: 集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号。
        # @type TargetType: String
        # @param PrincipalId: CAM 用户同步的身份 ID。取值： 当PrincipalType取值为Group时，该值为CIC 用户组 ID（g-********）。 当PrincipalType取值为User时，该值为CIC 用户 ID（u-********）。
        # @type PrincipalId: String
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示该 CAM 用户同步的身份是CIC用户。 Group：表示该 CAM 用户同步的身份是CIC用户组。
        # @type PrincipalType: String
        # @param PrincipalName: 用户名称或者用户组名称
        # @type PrincipalName: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param TargetName: 集团账号目标账号的名称。
        # @type TargetName: String

        attr_accessor :RoleConfigurationId, :RoleConfigurationName, :TargetUin, :TargetType, :PrincipalId, :PrincipalType, :PrincipalName, :CreateTime, :UpdateTime, :TargetName

        def initialize(roleconfigurationid=nil, roleconfigurationname=nil, targetuin=nil, targettype=nil, principalid=nil, principaltype=nil, principalname=nil, createtime=nil, updatetime=nil, targetname=nil)
          @RoleConfigurationId = roleconfigurationid
          @RoleConfigurationName = roleconfigurationname
          @TargetUin = targetuin
          @TargetType = targettype
          @PrincipalId = principalid
          @PrincipalType = principaltype
          @PrincipalName = principalname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TargetName = targetname
        end

        def deserialize(params)
          @RoleConfigurationId = params['RoleConfigurationId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @PrincipalId = params['PrincipalId']
          @PrincipalType = params['PrincipalType']
          @PrincipalName = params['PrincipalName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TargetName = params['TargetName']
        end
      end

      # CIC权限配置
      class RoleConfiguration < TencentCloud::Common::AbstractModel
        # @param RoleConfigurationId: 权限配置配置ID。
        # @type RoleConfigurationId: String
        # @param RoleConfigurationName: 权限配置配名称。
        # @type RoleConfigurationName: String
        # @param Description: 权限配置的描述。
        # @type Description: String
        # @param SessionDuration: 会话持续时间。CIC 用户使用访问配置访问成员账号时，会话最多保持的时间。
        # 单位：秒。
        # @type SessionDuration: Integer
        # @param RelayState: 初始访问页面。CIC 用户使用访问配置访问成员账号时，初始访问的页面地址。
        # @type RelayState: String
        # @param CreateTime: 权限配置的创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 权限配置的更新时间。
        # @type UpdateTime: String
        # @param IsSelected: 如果有入参FilterTargets查询成员账号是否配置过权限，配置了返回true，否则返回false。
        # @type IsSelected: Boolean

        attr_accessor :RoleConfigurationId, :RoleConfigurationName, :Description, :SessionDuration, :RelayState, :CreateTime, :UpdateTime, :IsSelected

        def initialize(roleconfigurationid=nil, roleconfigurationname=nil, description=nil, sessionduration=nil, relaystate=nil, createtime=nil, updatetime=nil, isselected=nil)
          @RoleConfigurationId = roleconfigurationid
          @RoleConfigurationName = roleconfigurationname
          @Description = description
          @SessionDuration = sessionduration
          @RelayState = relaystate
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsSelected = isselected
        end

        def deserialize(params)
          @RoleConfigurationId = params['RoleConfigurationId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @Description = params['Description']
          @SessionDuration = params['SessionDuration']
          @RelayState = params['RelayState']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsSelected = params['IsSelected']
        end
      end

      # 权限配置同步
      class RoleConfigurationProvisionings < TencentCloud::Common::AbstractModel
        # @param DeploymentStatus: Deployed: 部署成功 DeployedRequired：需要重新部署 DeployFailed：部署失败
        # @type DeploymentStatus: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param RoleConfigurationName: 权限配置名称。
        # @type RoleConfigurationName: String
        # @param TargetUin: 集团账号目标账号的UIN
        # @type TargetUin: Integer
        # @param TargetName: 集团账号目标账号的名称。
        # @type TargetName: String
        # @param CreateTime: 创建时间，
        # @type CreateTime: String
        # @param UpdateTime: 修改时间，
        # @type UpdateTime: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String

        attr_accessor :DeploymentStatus, :RoleConfigurationId, :RoleConfigurationName, :TargetUin, :TargetName, :CreateTime, :UpdateTime, :TargetType

        def initialize(deploymentstatus=nil, roleconfigurationid=nil, roleconfigurationname=nil, targetuin=nil, targetname=nil, createtime=nil, updatetime=nil, targettype=nil)
          @DeploymentStatus = deploymentstatus
          @RoleConfigurationId = roleconfigurationid
          @RoleConfigurationName = roleconfigurationname
          @TargetUin = targetuin
          @TargetName = targetname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TargetType = targettype
        end

        def deserialize(params)
          @DeploymentStatus = params['DeploymentStatus']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @TargetUin = params['TargetUin']
          @TargetName = params['TargetName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TargetType = params['TargetType']
        end
      end

      # CIC的权限策略
      class RolePolicie < TencentCloud::Common::AbstractModel
        # @param RolePolicyId: 策略ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RolePolicyId: Integer
        # @param RolePolicyName: 权限策略名称
        # @type RolePolicyName: String
        # @param RolePolicyType: 权限策略类型
        # @type RolePolicyType: String
        # @param RolePolicyDocument: 自定义策略内容。仅自定义策略返回该参数。
        # @type RolePolicyDocument: String
        # @param AddTime: 权限策略被添加到权限配置的时间。
        # @type AddTime: String

        attr_accessor :RolePolicyId, :RolePolicyName, :RolePolicyType, :RolePolicyDocument, :AddTime

        def initialize(rolepolicyid=nil, rolepolicyname=nil, rolepolicytype=nil, rolepolicydocument=nil, addtime=nil)
          @RolePolicyId = rolepolicyid
          @RolePolicyName = rolepolicyname
          @RolePolicyType = rolepolicytype
          @RolePolicyDocument = rolepolicydocument
          @AddTime = addtime
        end

        def deserialize(params)
          @RolePolicyId = params['RolePolicyId']
          @RolePolicyName = params['RolePolicyName']
          @RolePolicyType = params['RolePolicyType']
          @RolePolicyDocument = params['RolePolicyDocument']
          @AddTime = params['AddTime']
        end
      end

      # 同步部署角色任务状态信息。
      class RoleProvisioningsTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param RoleConfigurationName: 权限配置名称。
        # @type RoleConfigurationName: String
        # @param TargetUin: 授权的集团账号目标账号的UIN
        # @type TargetUin: Integer
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: String
        # @param TaskType: 任务类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskStatus: 任务状态：InProgress: 进行中，Failed: 失败 3:Success: 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String

        attr_accessor :TaskId, :RoleConfigurationId, :RoleConfigurationName, :TargetUin, :TargetType, :TaskType, :TaskStatus

        def initialize(taskid=nil, roleconfigurationid=nil, roleconfigurationname=nil, targetuin=nil, targettype=nil, tasktype=nil, taskstatus=nil)
          @TaskId = taskid
          @RoleConfigurationId = roleconfigurationid
          @RoleConfigurationName = roleconfigurationname
          @TargetUin = targetuin
          @TargetType = targettype
          @TaskType = tasktype
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
        end
      end

      # SAML 签名证书信息
      class SAMLIdPCertificate < TencentCloud::Common::AbstractModel
        # @param SerialNumber: 证书序列号。
        # @type SerialNumber: String
        # @param Issuer: 证书颁发者。
        # @type Issuer: String
        # @param Version: 证书版本。
        # @type Version: Integer
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param PublicKey: PEM 格式的公钥证书（Base64 编码）。
        # @type PublicKey: String
        # @param SignatureAlgorithm: 证书的签名算法。
        # @type SignatureAlgorithm: String
        # @param NotAfter: 证书的过期时间。
        # @type NotAfter: String
        # @param NotBefore: 证书的创建时间。
        # @type NotBefore: String
        # @param Subject: 证书的主体。
        # @type Subject: String
        # @param X509Certificate: PEM 格式的 X509 证书。
        # @type X509Certificate: String

        attr_accessor :SerialNumber, :Issuer, :Version, :CertificateId, :PublicKey, :SignatureAlgorithm, :NotAfter, :NotBefore, :Subject, :X509Certificate

        def initialize(serialnumber=nil, issuer=nil, version=nil, certificateid=nil, publickey=nil, signaturealgorithm=nil, notafter=nil, notbefore=nil, subject=nil, x509certificate=nil)
          @SerialNumber = serialnumber
          @Issuer = issuer
          @Version = version
          @CertificateId = certificateid
          @PublicKey = publickey
          @SignatureAlgorithm = signaturealgorithm
          @NotAfter = notafter
          @NotBefore = notbefore
          @Subject = subject
          @X509Certificate = x509certificate
        end

        def deserialize(params)
          @SerialNumber = params['SerialNumber']
          @Issuer = params['Issuer']
          @Version = params['Version']
          @CertificateId = params['CertificateId']
          @PublicKey = params['PublicKey']
          @SignatureAlgorithm = params['SignatureAlgorithm']
          @NotAfter = params['NotAfter']
          @NotBefore = params['NotBefore']
          @Subject = params['Subject']
          @X509Certificate = params['X509Certificate']
        end
      end

      # saml 身份提供商配置信息。
      class SAMLIdentityProviderConfiguration < TencentCloud::Common::AbstractModel
        # @param EntityId: IdP 标识。
        # @type EntityId: String
        # @param SSOStatus: SSO 登录的启用状态。取值：  Enabled：启用。 Disabled（默认值）：禁用。
        # @type SSOStatus: String
        # @param EncodedMetadataDocument: IdP 元数据文档（Base64 编码）。
        # @type EncodedMetadataDocument: String
        # @param CertificateIds: X509证书ID。
        # @type CertificateIds: Array
        # @param LoginUrl: IdP 的登录地址。
        # @type LoginUrl: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :EntityId, :SSOStatus, :EncodedMetadataDocument, :CertificateIds, :LoginUrl, :CreateTime, :UpdateTime

        def initialize(entityid=nil, ssostatus=nil, encodedmetadatadocument=nil, certificateids=nil, loginurl=nil, createtime=nil, updatetime=nil)
          @EntityId = entityid
          @SSOStatus = ssostatus
          @EncodedMetadataDocument = encodedmetadatadocument
          @CertificateIds = certificateids
          @LoginUrl = loginurl
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @EntityId = params['EntityId']
          @SSOStatus = params['SSOStatus']
          @EncodedMetadataDocument = params['EncodedMetadataDocument']
          @CertificateIds = params['CertificateIds']
          @LoginUrl = params['LoginUrl']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # SAML服务提供商信息
      class SAMLServiceProvider < TencentCloud::Common::AbstractModel
        # @param EntityId: https://tencentcloudsso.com/saml/sp/z-sjw8ensa**
        # @type EntityId: String
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param EncodedMetadataDocument: SP 元数据文档（Base64 编码）。
        # @type EncodedMetadataDocument: String
        # @param AcsUrl: SP 的 ACS URL。
        # @type AcsUrl: String

        attr_accessor :EntityId, :ZoneId, :EncodedMetadataDocument, :AcsUrl

        def initialize(entityid=nil, zoneid=nil, encodedmetadatadocument=nil, acsurl=nil)
          @EntityId = entityid
          @ZoneId = zoneid
          @EncodedMetadataDocument = encodedmetadatadocument
          @AcsUrl = acsurl
        end

        def deserialize(params)
          @EntityId = params['EntityId']
          @ZoneId = params['ZoneId']
          @EncodedMetadataDocument = params['EncodedMetadataDocument']
          @AcsUrl = params['AcsUrl']
        end
      end

      # SCIM密钥
      class SCIMCredential < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param Status: SCIM密钥状态，Enabled已开启，Disabled已关闭。
        # @type Status: String
        # @param CredentialId: SCIM密钥ID。scimcred-前缀开头，后面是12位随机数字/小写字母。
        # @type CredentialId: String
        # @param CredentialType: SCIM密钥类型。
        # @type CredentialType: String
        # @param CreateTime: SCIM 密钥的创建时间。
        # @type CreateTime: String
        # @param ExpireTime: SCIM 密钥的过期时间。
        # @type ExpireTime: String

        attr_accessor :ZoneId, :Status, :CredentialId, :CredentialType, :CreateTime, :ExpireTime

        def initialize(zoneid=nil, status=nil, credentialid=nil, credentialtype=nil, createtime=nil, expiretime=nil)
          @ZoneId = zoneid
          @Status = status
          @CredentialId = credentialid
          @CredentialType = credentialtype
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @CredentialId = params['CredentialId']
          @CredentialType = params['CredentialType']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # SendOrgMemberAccountBindEmail请求参数结构体
      class SendOrgMemberAccountBindEmailRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param BindId: 绑定ID。可以通过[DescribeOrganizationMemberEmailBind](https://cloud.tencent.com/document/product/850/93332)获取
        # @type BindId: Integer

        attr_accessor :MemberUin, :BindId

        def initialize(memberuin=nil, bindid=nil)
          @MemberUin = memberuin
          @BindId = bindid
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @BindId = params['BindId']
        end
      end

      # SendOrgMemberAccountBindEmail返回参数结构体
      class SendOrgMemberAccountBindEmailResponse < TencentCloud::Common::AbstractModel
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

      # SetExternalSAMLIdentityProvider请求参数结构体
      class SetExternalSAMLIdentityProviderRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param EncodedMetadataDocument: IdP 元数据文档（Base64 编码）。  由支持 SAML 2.0 协议的 IdP 提供。
        # @type EncodedMetadataDocument: String
        # @param SSOStatus: SSO 登录的启用状态。取值：  Enabled：启用。 Disabled（默认值）：禁用。
        # @type SSOStatus: String
        # @param EntityId: IdP 标识。
        # @type EntityId: String
        # @param LoginUrl: IdP 的登录地址。
        # @type LoginUrl: String
        # @param X509Certificate: PEM 格式的 X509 证书。指定该参数会替换所有已经存在的证书。
        # @type X509Certificate: String

        attr_accessor :ZoneId, :EncodedMetadataDocument, :SSOStatus, :EntityId, :LoginUrl, :X509Certificate

        def initialize(zoneid=nil, encodedmetadatadocument=nil, ssostatus=nil, entityid=nil, loginurl=nil, x509certificate=nil)
          @ZoneId = zoneid
          @EncodedMetadataDocument = encodedmetadatadocument
          @SSOStatus = ssostatus
          @EntityId = entityid
          @LoginUrl = loginurl
          @X509Certificate = x509certificate
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @EncodedMetadataDocument = params['EncodedMetadataDocument']
          @SSOStatus = params['SSOStatus']
          @EntityId = params['EntityId']
          @LoginUrl = params['LoginUrl']
          @X509Certificate = params['X509Certificate']
        end
      end

      # SetExternalSAMLIdentityProvider返回参数结构体
      class SetExternalSAMLIdentityProviderResponse < TencentCloud::Common::AbstractModel
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
        # @type ProductResourceId: String

        attr_accessor :ResourceId, :ProductResourceId
        extend Gem::Deprecate
        deprecate :ResourceId, :none, 2025, 4
        deprecate :ResourceId=, :none, 2025, 4

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
        # @type CreateTime: String
        # @param ProductResourceId: 产品资源ID。
        # @type ProductResourceId: String
        # @param SharedMemberNum: 共享单元成员数。
        # @type SharedMemberNum: Integer
        # @param SharedMemberUseNum: 使用中共享单元成员数。
        # @type SharedMemberUseNum: Integer
        # @param ShareManagerUin: 共享管理员OwnerUin。
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

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签合规信息
      class TagComplianceDetails < TencentCloud::Common::AbstractModel
        # @param ComplianceStatus: 合规状态。true-合规，false-不合规
        # @type ComplianceStatus: Boolean
        # @param KeysWithNonCompliantValues: 值不合规的标签键列表。
        # @type KeysWithNonCompliantValues: Array
        # @param NonCompliantKeys: 键不合规的标签键列表。
        # @type NonCompliantKeys: Array

        attr_accessor :ComplianceStatus, :KeysWithNonCompliantValues, :NonCompliantKeys

        def initialize(compliancestatus=nil, keyswithnoncompliantvalues=nil, noncompliantkeys=nil)
          @ComplianceStatus = compliancestatus
          @KeysWithNonCompliantValues = keyswithnoncompliantvalues
          @NonCompliantKeys = noncompliantkeys
        end

        def deserialize(params)
          @ComplianceStatus = params['ComplianceStatus']
          @KeysWithNonCompliantValues = params['KeysWithNonCompliantValues']
          @NonCompliantKeys = params['NonCompliantKeys']
        end
      end

      # 标签键值对
      class Tags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 任务状态信息。
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param RoleConfigurationId: 权限配置ID。
        # @type RoleConfigurationId: String
        # @param RoleConfigurationName: 权限配置名称。
        # @type RoleConfigurationName: String
        # @param TargetUin: 授权的目标成员账号的UIN
        # @type TargetUin: Integer
        # @param TargetType: 同步的目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param PrincipalId: 用户授权的身份ID,如果是身份类型是CIC用户,则为用户ID; 如果是用户组，则为用户组ID;
        # @type PrincipalId: String
        # @param PrincipalType: 用户授权的身份类型, User代表CIC用户, Group代表CIC用户组
        # @type PrincipalType: String
        # @param TaskType: 任务类型。
        # @type TaskType: String
        # @param Status: InProgress：任务执行中。 Success：任务执行成功。 Failed：任务执行失败。
        # @type Status: String
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String

        attr_accessor :TaskId, :RoleConfigurationId, :RoleConfigurationName, :TargetUin, :TargetType, :PrincipalId, :PrincipalType, :TaskType, :Status, :FailureReason

        def initialize(taskid=nil, roleconfigurationid=nil, roleconfigurationname=nil, targetuin=nil, targettype=nil, principalid=nil, principaltype=nil, tasktype=nil, status=nil, failurereason=nil)
          @TaskId = taskid
          @RoleConfigurationId = roleconfigurationid
          @RoleConfigurationName = roleconfigurationname
          @TargetUin = targetuin
          @TargetType = targettype
          @PrincipalId = principalid
          @PrincipalType = principaltype
          @TaskType = tasktype
          @Status = status
          @FailureReason = failurereason
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @RoleConfigurationName = params['RoleConfigurationName']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @PrincipalId = params['PrincipalId']
          @PrincipalType = params['PrincipalType']
          @TaskType = params['TaskType']
          @Status = params['Status']
          @FailureReason = params['FailureReason']
        end
      end

      # 任务状态信息。
      class TaskStatus < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。取值：  InProgress：任务执行中。 Success：任务执行成功。 Failed：任务执行失败。
        # @type Status: String
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param TaskType: 任务类型。取值：
        # ProvisionRoleConfiguration：部署权限配置。
        # DeprovisionRoleConfiguration：解除权限配置部署。
        # CreateRoleAssignment：在成员 账号上授权。
        # DeleteRoleAssignment：移除 成员 账号上的授权。
        # @type TaskType: String
        # @param FailureReason: 任务失败原因。
        # 说明
        # 只有Status为Failed，才会显示该参数。
        # @type FailureReason: String

        attr_accessor :Status, :TaskId, :TaskType, :FailureReason

        def initialize(status=nil, taskid=nil, tasktype=nil, failurereason=nil)
          @Status = status
          @TaskId = taskid
          @TaskType = tasktype
          @FailureReason = failurereason
        end

        def deserialize(params)
          @Status = params['Status']
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @FailureReason = params['FailureReason']
        end
      end

      # UpdateCustomPolicyForRoleConfiguration请求参数结构体
      class UpdateCustomPolicyForRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String
        # @param CustomPolicyName: 权限策略名称，长度最大为 32 个字符。
        # @type CustomPolicyName: String
        # @param NewCustomPolicyDocument: 自定义策略内容。长度：最大 4096 个字符。当RolePolicyType为Inline时，该参数必须配置。关于权限策略的语法和结构，请参见权限策略语法和结构。
        # @type NewCustomPolicyDocument: String

        attr_accessor :ZoneId, :RoleConfigurationId, :CustomPolicyName, :NewCustomPolicyDocument

        def initialize(zoneid=nil, roleconfigurationid=nil, custompolicyname=nil, newcustompolicydocument=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @CustomPolicyName = custompolicyname
          @NewCustomPolicyDocument = newcustompolicydocument
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @CustomPolicyName = params['CustomPolicyName']
          @NewCustomPolicyDocument = params['NewCustomPolicyDocument']
        end
      end

      # UpdateCustomPolicyForRoleConfiguration返回参数结构体
      class UpdateCustomPolicyForRoleConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGroup请求参数结构体
      class UpdateGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param GroupId: 用户组ID。
        # @type GroupId: String
        # @param NewGroupName: 新的用户组名称。
        # @type NewGroupName: String
        # @param NewDescription: 新的用户组描述。
        # @type NewDescription: String

        attr_accessor :ZoneId, :GroupId, :NewGroupName, :NewDescription

        def initialize(zoneid=nil, groupid=nil, newgroupname=nil, newdescription=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @NewGroupName = newgroupname
          @NewDescription = newdescription
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @NewGroupName = params['NewGroupName']
          @NewDescription = params['NewDescription']
        end
      end

      # UpdateGroup返回参数结构体
      class UpdateGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfo: 用户组信息。
        # @type GroupInfo: :class:`Tencentcloud::Organization.v20210331.models.GroupInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfo, :RequestId

        def initialize(groupinfo=nil, requestid=nil)
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfo'].nil?
            @GroupInfo = GroupInfo.new
            @GroupInfo.deserialize(params['GroupInfo'])
          end
          @RequestId = params['RequestId']
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
        # @param IsModifyNickName: 是否同步组织成员名称到成员账号昵称。取值： 1-同步 0-不同步
        # @type IsModifyNickName: Integer

        attr_accessor :MemberUin, :Name, :Remark, :PolicyType, :PermissionIds, :IsAllowQuit, :PayUin, :IsModifyNickName

        def initialize(memberuin=nil, name=nil, remark=nil, policytype=nil, permissionids=nil, isallowquit=nil, payuin=nil, ismodifynickname=nil)
          @MemberUin = memberuin
          @Name = name
          @Remark = remark
          @PolicyType = policytype
          @PermissionIds = permissionids
          @IsAllowQuit = isallowquit
          @PayUin = payuin
          @IsModifyNickName = ismodifynickname
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @Remark = params['Remark']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
          @IsModifyNickName = params['IsModifyNickName']
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

      # UpdateOrganizationMembersPolicy请求参数结构体
      class UpdateOrganizationMembersPolicyRequest < TencentCloud::Common::AbstractModel
        # @param MemberUins: 成员Uin列表。最多10个
        # @type MemberUins: Array
        # @param PolicyId: 成员访问策略Id。可通过DescribeOrganizationMemberPolicies获取
        # @type PolicyId: Integer
        # @param IdentityId: 成员访问身份ID。可通过ListOrganizationIdentity获取
        # @type IdentityId: Integer
        # @param Description: 策略描述。最大长度为128个字符
        # @type Description: String

        attr_accessor :MemberUins, :PolicyId, :IdentityId, :Description

        def initialize(memberuins=nil, policyid=nil, identityid=nil, description=nil)
          @MemberUins = memberuins
          @PolicyId = policyid
          @IdentityId = identityid
          @Description = description
        end

        def deserialize(params)
          @MemberUins = params['MemberUins']
          @PolicyId = params['PolicyId']
          @IdentityId = params['IdentityId']
          @Description = params['Description']
        end
      end

      # UpdateOrganizationMembersPolicy返回参数结构体
      class UpdateOrganizationMembersPolicyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRoleConfiguration请求参数结构体
      class UpdateRoleConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID
        # @type ZoneId: String
        # @param RoleConfigurationId: 权限配置 ID
        # @type RoleConfigurationId: String
        # @param NewDescription: 新的权限配置描述。  长度：最大 1024 个字符。
        # @type NewDescription: String
        # @param NewSessionDuration: 新的会话持续时间。  CIC 用户使用权限配置访问集团账号目标账号时，会话最多保持的时间。  单位：秒。  取值范围：900-43200（15 分钟-12 小时）。
        # @type NewSessionDuration: Integer
        # @param NewRelayState: 新的初始访问页面。  CIC 用户使用权限配置访问集团账号目标账号时，初始访问的页面地址。  该页面必须是腾讯云控制台页面。
        # @type NewRelayState: String

        attr_accessor :ZoneId, :RoleConfigurationId, :NewDescription, :NewSessionDuration, :NewRelayState

        def initialize(zoneid=nil, roleconfigurationid=nil, newdescription=nil, newsessionduration=nil, newrelaystate=nil)
          @ZoneId = zoneid
          @RoleConfigurationId = roleconfigurationid
          @NewDescription = newdescription
          @NewSessionDuration = newsessionduration
          @NewRelayState = newrelaystate
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RoleConfigurationId = params['RoleConfigurationId']
          @NewDescription = params['NewDescription']
          @NewSessionDuration = params['NewSessionDuration']
          @NewRelayState = params['NewRelayState']
        end
      end

      # UpdateRoleConfiguration返回参数结构体
      class UpdateRoleConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RoleConfigurationInfo: 权限配置详情
        # @type RoleConfigurationInfo: :class:`Tencentcloud::Organization.v20210331.models.RoleConfiguration`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleConfigurationInfo, :RequestId

        def initialize(roleconfigurationinfo=nil, requestid=nil)
          @RoleConfigurationInfo = roleconfigurationinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleConfigurationInfo'].nil?
            @RoleConfigurationInfo = RoleConfiguration.new
            @RoleConfigurationInfo.deserialize(params['RoleConfigurationInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateSCIMCredentialStatus请求参数结构体
      class UpdateSCIMCredentialStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param CredentialId: SCIM密钥ID。scimcred-前缀开头，后面是12位随机数字/小写字母。
        # @type CredentialId: String
        # @param NewStatus: SCIM密钥状态。Enabled：启用。 Disabled：禁用。
        # @type NewStatus: String

        attr_accessor :ZoneId, :CredentialId, :NewStatus

        def initialize(zoneid=nil, credentialid=nil, newstatus=nil)
          @ZoneId = zoneid
          @CredentialId = credentialid
          @NewStatus = newstatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @CredentialId = params['CredentialId']
          @NewStatus = params['NewStatus']
        end
      end

      # UpdateSCIMCredentialStatus返回参数结构体
      class UpdateSCIMCredentialStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateSCIMSynchronizationStatus请求参数结构体
      class UpdateSCIMSynchronizationStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param SCIMSynchronizationStatus: SCIM 同步状态。Enabled：启用。Disabled：禁用。
        # @type SCIMSynchronizationStatus: String

        attr_accessor :ZoneId, :SCIMSynchronizationStatus

        def initialize(zoneid=nil, scimsynchronizationstatus=nil)
          @ZoneId = zoneid
          @SCIMSynchronizationStatus = scimsynchronizationstatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @SCIMSynchronizationStatus = params['SCIMSynchronizationStatus']
        end
      end

      # UpdateSCIMSynchronizationStatus返回参数结构体
      class UpdateSCIMSynchronizationStatusResponse < TencentCloud::Common::AbstractModel
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
        # @param ShareScope: 共享范围。取值：1-仅允许集团组织内共享 2-允许共享给任意账号，默认值：1
        # @type ShareScope: Integer

        attr_accessor :UnitId, :Name, :Description, :ShareScope

        def initialize(unitid=nil, name=nil, description=nil, sharescope=nil)
          @UnitId = unitid
          @Name = name
          @Description = description
          @ShareScope = sharescope
        end

        def deserialize(params)
          @UnitId = params['UnitId']
          @Name = params['Name']
          @Description = params['Description']
          @ShareScope = params['ShareScope']
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

      # UpdateUser请求参数结构体
      class UpdateUserRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserId: 用户 ID。
        # @type UserId: String
        # @param NewFirstName: 用户的名。
        # @type NewFirstName: String
        # @param NewLastName: 用户的姓。
        # @type NewLastName: String
        # @param NewDisplayName: 用户的显示名称。
        # @type NewDisplayName: String
        # @param NewDescription: 用户的描述。
        # @type NewDescription: String
        # @param NewEmail: 用户的电子邮箱。
        # @type NewEmail: String

        attr_accessor :ZoneId, :UserId, :NewFirstName, :NewLastName, :NewDisplayName, :NewDescription, :NewEmail

        def initialize(zoneid=nil, userid=nil, newfirstname=nil, newlastname=nil, newdisplayname=nil, newdescription=nil, newemail=nil)
          @ZoneId = zoneid
          @UserId = userid
          @NewFirstName = newfirstname
          @NewLastName = newlastname
          @NewDisplayName = newdisplayname
          @NewDescription = newdescription
          @NewEmail = newemail
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserId = params['UserId']
          @NewFirstName = params['NewFirstName']
          @NewLastName = params['NewLastName']
          @NewDisplayName = params['NewDisplayName']
          @NewDescription = params['NewDescription']
          @NewEmail = params['NewEmail']
        end
      end

      # UpdateUser返回参数结构体
      class UpdateUserResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Organization.v20210331.models.UserInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId

        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateUserStatus请求参数结构体
      class UpdateUserStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间 ID。
        # @type ZoneId: String
        # @param UserId: 用户 ID。
        # @type UserId: String
        # @param NewUserStatus: 用户的状态。取值：  Enabled：启用。 Disabled：禁用。
        # @type NewUserStatus: String

        attr_accessor :ZoneId, :UserId, :NewUserStatus

        def initialize(zoneid=nil, userid=nil, newuserstatus=nil)
          @ZoneId = zoneid
          @UserId = userid
          @NewUserStatus = newuserstatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserId = params['UserId']
          @NewUserStatus = params['NewUserStatus']
        end
      end

      # UpdateUserStatus返回参数结构体
      class UpdateUserStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUserSyncProvisioning请求参数结构体
      class UpdateUserSyncProvisioningRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。
        # @type ZoneId: String
        # @param UserProvisioningId: 用户同步的iD
        # @type UserProvisioningId: String
        # @param NewDescription: 用户同步描述。
        # @type NewDescription: String
        # @param NewDuplicationStateful: 冲突策略。当CIC 用户同步到 CAM 时，如果 CAM 中存在同名用户时的处理策略。取值： KeepBoth：两者都保留。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则对CIC 用户的用户名添加后缀_cic后尝试创建该用户名的 CAM 用户。 TakeOver：替换。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则直接将已经存在的 CAM 用户替换为CIC 同步用户。
        # @type NewDuplicationStateful: String
        # @param NewDeletionStrategy: 删除策略。删除 CAM 用户同步时，对已同步的 CAM 用户的处理策略。取值： Delete：删除。删除 CAM 用户同步时，会删除从CIC 已经同步到 CAM 中的 CAM 用户。 Keep：保留。删除 RAM 用户同步时，会保留从CIC 已经同步到 CAM 中的 CAM 用户。
        # @type NewDeletionStrategy: String

        attr_accessor :ZoneId, :UserProvisioningId, :NewDescription, :NewDuplicationStateful, :NewDeletionStrategy

        def initialize(zoneid=nil, userprovisioningid=nil, newdescription=nil, newduplicationstateful=nil, newdeletionstrategy=nil)
          @ZoneId = zoneid
          @UserProvisioningId = userprovisioningid
          @NewDescription = newdescription
          @NewDuplicationStateful = newduplicationstateful
          @NewDeletionStrategy = newdeletionstrategy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @UserProvisioningId = params['UserProvisioningId']
          @NewDescription = params['NewDescription']
          @NewDuplicationStateful = params['NewDuplicationStateful']
          @NewDeletionStrategy = params['NewDeletionStrategy']
        end
      end

      # UpdateUserSyncProvisioning返回参数结构体
      class UpdateUserSyncProvisioningResponse < TencentCloud::Common::AbstractModel
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

      # UpdateZone请求参数结构体
      class UpdateZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 空间ID。z-前缀开头，后面是12位随机数字/小写字母
        # @type ZoneId: String
        # @param NewZoneName: 空间名，必须全局唯一。包含小写字母、数字和短划线（-）。不能以短划线（-）开头或结尾，且不能有两个连续的短划线（-）。长度：2~64 个字符。
        # @type NewZoneName: String

        attr_accessor :ZoneId, :NewZoneName

        def initialize(zoneid=nil, newzonename=nil)
          @ZoneId = zoneid
          @NewZoneName = newzonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @NewZoneName = params['NewZoneName']
        end
      end

      # UpdateZone返回参数结构体
      class UpdateZoneResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 查询username。
        # @type UserName: String
        # @param FirstName: 用户的名。
        # @type FirstName: String
        # @param LastName: 用户的姓。
        # @type LastName: String
        # @param DisplayName: 用户的显示名称。
        # @type DisplayName: String
        # @param Description: 用户的描述。
        # @type Description: String
        # @param Email: 用户的电子邮箱。目录内必须唯一。
        # @type Email: String
        # @param UserStatus: 用户状态 Enabled：启用， Disabled：禁用。
        # @type UserStatus: String
        # @param UserType: 用户类型  Manual：手动创建，Synchronized：外部导入。
        # @type UserType: String
        # @param UserId: 用户 ID
        # @type UserId: String
        # @param CreateTime: 用户的创建时间
        # @type CreateTime: String
        # @param UpdateTime: 用户的修改时间
        # @type UpdateTime: String
        # @param IsSelected: 是否选中
        # @type IsSelected: Boolean

        attr_accessor :UserName, :FirstName, :LastName, :DisplayName, :Description, :Email, :UserStatus, :UserType, :UserId, :CreateTime, :UpdateTime, :IsSelected

        def initialize(username=nil, firstname=nil, lastname=nil, displayname=nil, description=nil, email=nil, userstatus=nil, usertype=nil, userid=nil, createtime=nil, updatetime=nil, isselected=nil)
          @UserName = username
          @FirstName = firstname
          @LastName = lastname
          @DisplayName = displayname
          @Description = description
          @Email = email
          @UserStatus = userstatus
          @UserType = usertype
          @UserId = userid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsSelected = isselected
        end

        def deserialize(params)
          @UserName = params['UserName']
          @FirstName = params['FirstName']
          @LastName = params['LastName']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @Email = params['Email']
          @UserStatus = params['UserStatus']
          @UserType = params['UserType']
          @UserId = params['UserId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsSelected = params['IsSelected']
        end
      end

      # 用户同步信息
      class UserProvisioning < TencentCloud::Common::AbstractModel
        # @param UserProvisioningId: CAM 用户同步的状态。取值：

        # Enabled：CAM 用户同步已启用。
        # Disabled：CAM 用户同步未启用。
        # @type UserProvisioningId: String
        # @param Description: 描述。
        # @type Description: String
        # @param Status: CAM 用户同步的状态。取值：
        # Enabled：CAM 用户同步已启用。
        # Disabled：CAM 用户同步未启用。
        # @type Status: String
        # @param PrincipalId: CAM 用户同步的身份 ID。取值：
        # 当PrincipalType取值为Group时，该值为CIC用户组 ID（g-********）。
        # 当PrincipalType取值为User时，该值为CIC用户 ID（u-********）。
        # @type PrincipalId: String
        # @param PrincipalName: CAM 用户同步的身份名称。取值：
        # 当PrincipalType取值为Group时，该值为CIC用户组名称。
        # 当PrincipalType取值为User时，该值为CIC用户名称。
        # @type PrincipalName: String
        # @param PrincipalType: CAM 用户同步的身份类型。取值：

        # User：表示该 CAM 用户同步的身份是CIC用户。
        # Group：表示该 CAM 用户同步的身份是CIC用户组。
        # @type PrincipalType: String
        # @param TargetUin: 集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param TargetName: 集团账号目标账号的名称。
        # @type TargetName: String
        # @param DuplicationStrategy: 冲突策略。当CIC 用户同步到 CAM 时，如果 CAM 中存在同名用户时的处理策略。取值： KeepBoth：两者都保留。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则对CIC 用户的用户名添加后缀_cic后尝试创建该用户名的 CAM 用户。 TakeOver：替换。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则直接将已经存在的 CAM 用户替换为CIC 同步用户。
        # @type DuplicationStrategy: String
        # @param DeletionStrategy: 删除策略。删除 CAM 用户同步时，对已同步的 CAM 用户的处理策略。取值： Delete：删除。删除 CAM 用户同步时，会删除从CIC 已经同步到 CAM 中的 CAM 用户。 Keep：保留。删除 RAM 用户同步时，会保留从CIC 已经同步到 CAM 中的 CAM 用户。
        # @type DeletionStrategy: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String

        attr_accessor :UserProvisioningId, :Description, :Status, :PrincipalId, :PrincipalName, :PrincipalType, :TargetUin, :TargetName, :DuplicationStrategy, :DeletionStrategy, :CreateTime, :UpdateTime, :TargetType

        def initialize(userprovisioningid=nil, description=nil, status=nil, principalid=nil, principalname=nil, principaltype=nil, targetuin=nil, targetname=nil, duplicationstrategy=nil, deletionstrategy=nil, createtime=nil, updatetime=nil, targettype=nil)
          @UserProvisioningId = userprovisioningid
          @Description = description
          @Status = status
          @PrincipalId = principalid
          @PrincipalName = principalname
          @PrincipalType = principaltype
          @TargetUin = targetuin
          @TargetName = targetname
          @DuplicationStrategy = duplicationstrategy
          @DeletionStrategy = deletionstrategy
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TargetType = targettype
        end

        def deserialize(params)
          @UserProvisioningId = params['UserProvisioningId']
          @Description = params['Description']
          @Status = params['Status']
          @PrincipalId = params['PrincipalId']
          @PrincipalName = params['PrincipalName']
          @PrincipalType = params['PrincipalType']
          @TargetUin = params['TargetUin']
          @TargetName = params['TargetName']
          @DuplicationStrategy = params['DuplicationStrategy']
          @DeletionStrategy = params['DeletionStrategy']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TargetType = params['TargetType']
        end
      end

      # 用户同步任务状态信息。
      class UserProvisioningsTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param TargetUin: 授权的集团账号目标账号的UIN
        # @type TargetUin: Integer
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String
        # @param TaskType: 任务类型。StartProvisioning：用户同步，DeleteProvisioning：删除用户同步
        # @type TaskType: String
        # @param TaskStatus: 任务状态：InProgress: 进行中，Failed: 失败 3:Success: 成功
        # @type TaskStatus: String
        # @param UserProvisioningId: 用户同步ID。
        # @type UserProvisioningId: String
        # @param PrincipalId:  CAM 用户同步的身份 ID。取值： 当PrincipalType取值为Group时，该值为CIC 用户组 ID（g-********）。 当PrincipalType取值为User时，该值为CIC 用户 ID（u-********）。
        # @type PrincipalId: String
        # @param PrincipalType: CAM 用户同步的身份类型。取值： User：表示该 CAM 用户同步的身份是CIC 用户。 Group：表示该 CAM 用户同步的身份是CIC 用户组。
        # @type PrincipalType: String
        # @param PrincipalName: 用户或者用户组名称。
        # @type PrincipalName: String
        # @param DuplicationStrategy: 冲突策略。KeepBoth:两者都保留;TakeOver:替换
        # @type DuplicationStrategy: String
        # @param DeletionStrategy: 删除策略。Delete:删除;Keep:保留
        # @type DeletionStrategy: String

        attr_accessor :TaskId, :TargetUin, :TargetType, :TaskType, :TaskStatus, :UserProvisioningId, :PrincipalId, :PrincipalType, :PrincipalName, :DuplicationStrategy, :DeletionStrategy

        def initialize(taskid=nil, targetuin=nil, targettype=nil, tasktype=nil, taskstatus=nil, userprovisioningid=nil, principalid=nil, principaltype=nil, principalname=nil, duplicationstrategy=nil, deletionstrategy=nil)
          @TaskId = taskid
          @TargetUin = targetuin
          @TargetType = targettype
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @UserProvisioningId = userprovisioningid
          @PrincipalId = principalid
          @PrincipalType = principaltype
          @PrincipalName = principalname
          @DuplicationStrategy = duplicationstrategy
          @DeletionStrategy = deletionstrategy
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TargetUin = params['TargetUin']
          @TargetType = params['TargetType']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
          @UserProvisioningId = params['UserProvisioningId']
          @PrincipalId = params['PrincipalId']
          @PrincipalType = params['PrincipalType']
          @PrincipalName = params['PrincipalName']
          @DuplicationStrategy = params['DuplicationStrategy']
          @DeletionStrategy = params['DeletionStrategy']
        end
      end

      # CAM用户同步信息
      class UserSyncProvisioning < TencentCloud::Common::AbstractModel
        # @param Description: 描述。
        # @type Description: String
        # @param PrincipalId: CAM 用户同步的身份 ID。取值：
        # 当PrincipalType取值为Group时，该值为CIC用户组 ID（g-********）。
        # 当PrincipalType取值为User时，该值为CIC用户 ID（u-********）。
        # @type PrincipalId: String
        # @param PrincipalType: CAM 用户同步的身份类型。取值：

        # User：表示该 CAM 用户同步的身份是CIC用户。
        # Group：表示该 CAM 用户同步的身份是CIC用户组。
        # @type PrincipalType: String
        # @param TargetUin: 同步的集团账号目标账号的UIN。
        # @type TargetUin: Integer
        # @param DuplicationStrategy: 冲突策略。当CIC 用户同步到 CAM 时，如果 CAM 中存在同名用户时的处理策略。取值： KeepBoth：两者都保留。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则对CIC 用户的用户名添加后缀_cic后尝试创建该用户名的 CAM 用户。 TakeOver：替换。当CIC 用户被同步到 CAM 时，如果 CAM 已经存在同名用户，则直接将已经存在的 CAM 用户替换为CIC 同步用户。
        # @type DuplicationStrategy: String
        # @param DeletionStrategy: 删除策略。删除 CAM 用户同步时，对已同步的 CAM 用户的处理策略。取值： Delete：删除。删除 CAM 用户同步时，会删除从CIC 已经同步到 CAM 中的 CAM 用户。 Keep：保留。删除 RAM 用户同步时，会保留从CIC 已经同步到 CAM 中的 CAM 用户。
        # @type DeletionStrategy: String
        # @param TargetType: 同步的集团账号目标账号的类型，ManagerUin管理账号;MemberUin成员账号
        # @type TargetType: String

        attr_accessor :Description, :PrincipalId, :PrincipalType, :TargetUin, :DuplicationStrategy, :DeletionStrategy, :TargetType

        def initialize(description=nil, principalid=nil, principaltype=nil, targetuin=nil, duplicationstrategy=nil, deletionstrategy=nil, targettype=nil)
          @Description = description
          @PrincipalId = principalid
          @PrincipalType = principaltype
          @TargetUin = targetuin
          @DuplicationStrategy = duplicationstrategy
          @DeletionStrategy = deletionstrategy
          @TargetType = targettype
        end

        def deserialize(params)
          @Description = params['Description']
          @PrincipalId = params['PrincipalId']
          @PrincipalType = params['PrincipalType']
          @TargetUin = params['TargetUin']
          @DuplicationStrategy = params['DuplicationStrategy']
          @DeletionStrategy = params['DeletionStrategy']
          @TargetType = params['TargetType']
        end
      end

      # CIC的空间统计
      class ZoneStatistics < TencentCloud::Common::AbstractModel
        # @param UserQuota: 用户配额。
        # @type UserQuota: Integer
        # @param GroupQuota: 用户组配额。
        # @type GroupQuota: Integer
        # @param RoleConfigurationQuota: 权限配置配额。
        # @type RoleConfigurationQuota: Integer
        # @param SystemPolicyPerRoleConfigurationQuota: 权限配置绑定的系统策略配额。
        # @type SystemPolicyPerRoleConfigurationQuota: Integer
        # @param UserCount: 用户数。
        # @type UserCount: Integer
        # @param GroupCount: 用户组数。
        # @type GroupCount: Integer
        # @param RoleConfigurationCount: 权限配置数
        # @type RoleConfigurationCount: Integer
        # @param UserProvisioningCount: 同步用户数。
        # @type UserProvisioningCount: Integer
        # @param RoleConfigurationSyncCount: 同步角色数。
        # @type RoleConfigurationSyncCount: Integer

        attr_accessor :UserQuota, :GroupQuota, :RoleConfigurationQuota, :SystemPolicyPerRoleConfigurationQuota, :UserCount, :GroupCount, :RoleConfigurationCount, :UserProvisioningCount, :RoleConfigurationSyncCount

        def initialize(userquota=nil, groupquota=nil, roleconfigurationquota=nil, systempolicyperroleconfigurationquota=nil, usercount=nil, groupcount=nil, roleconfigurationcount=nil, userprovisioningcount=nil, roleconfigurationsynccount=nil)
          @UserQuota = userquota
          @GroupQuota = groupquota
          @RoleConfigurationQuota = roleconfigurationquota
          @SystemPolicyPerRoleConfigurationQuota = systempolicyperroleconfigurationquota
          @UserCount = usercount
          @GroupCount = groupcount
          @RoleConfigurationCount = roleconfigurationcount
          @UserProvisioningCount = userprovisioningcount
          @RoleConfigurationSyncCount = roleconfigurationsynccount
        end

        def deserialize(params)
          @UserQuota = params['UserQuota']
          @GroupQuota = params['GroupQuota']
          @RoleConfigurationQuota = params['RoleConfigurationQuota']
          @SystemPolicyPerRoleConfigurationQuota = params['SystemPolicyPerRoleConfigurationQuota']
          @UserCount = params['UserCount']
          @GroupCount = params['GroupCount']
          @RoleConfigurationCount = params['RoleConfigurationCount']
          @UserProvisioningCount = params['UserProvisioningCount']
          @RoleConfigurationSyncCount = params['RoleConfigurationSyncCount']
        end
      end

    end
  end
end

