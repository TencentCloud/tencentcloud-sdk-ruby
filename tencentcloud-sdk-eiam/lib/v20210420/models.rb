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
  module Eiam
    module V20210420
      # 查询账号组信息列表。
      class AccountGroupInfo < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID。
        # @type AccountGroupId: String
        # @param GroupName: 账号组名。
        # @type GroupName: String
        # @param Description: 备注。
        # @type Description: String
        # @param CreatedDate: 创建时间。
        # @type CreatedDate: String

        attr_accessor :AccountGroupId, :GroupName, :Description, :CreatedDate

        def initialize(accountgroupid=nil, groupname=nil, description=nil, createddate=nil)
          @AccountGroupId = accountgroupid
          @GroupName = groupname
          @Description = description
          @CreatedDate = createddate
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @GroupName = params['GroupName']
          @Description = params['Description']
          @CreatedDate = params['CreatedDate']
        end
      end

      # 账号组查询参数
      class AccountGroupSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键字
        # @type Keyword: String

        attr_accessor :Keyword

        def initialize(keyword=nil)
          @Keyword = keyword
        end

        def deserialize(params)
          @Keyword = params['Keyword']
        end
      end

      # AddAccountToAccountGroup请求参数结构体
      class AddAccountToAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param AccountIds: 加入账号组的账号ID列表。
        # @type AccountIds: Array

        attr_accessor :AccountGroupId, :AccountIds

        def initialize(accountgroupid=nil, accountids=nil)
          @AccountGroupId = accountgroupid
          @AccountIds = accountids
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @AccountIds = params['AccountIds']
        end
      end

      # AddAccountToAccountGroup返回参数结构体
      class AddAccountToAccountGroupResponse < TencentCloud::Common::AbstractModel
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

      # AddUserToUserGroup请求参数结构体
      class AddUserToUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserIds: 加入用户组的用户ID列表。
        # @type UserIds: Array
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # @type UserGroupId: String

        attr_accessor :UserIds, :UserGroupId

        def initialize(userids=nil, usergroupid=nil)
          @UserIds = userids
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @UserIds = params['UserIds']
          @UserGroupId = params['UserGroupId']
        end
      end

      # AddUserToUserGroup返回参数结构体
      class AddUserToUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param FailedItems: 未成功加入用户组的用户ID列表信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedItems, :RequestId

        def initialize(faileditems=nil, requestid=nil)
          @FailedItems = faileditems
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedItems = params['FailedItems']
          @RequestId = params['RequestId']
        end
      end

      # 查询账号信息列表。
      class AppAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountId: 账号ID。
        # @type AccountId: String
        # @param AccountName: 账号名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param UserList: 用户信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedDate: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String

        attr_accessor :AccountId, :AccountName, :UserList, :Description, :CreatedDate

        def initialize(accountid=nil, accountname=nil, userlist=nil, description=nil, createddate=nil)
          @AccountId = accountid
          @AccountName = accountname
          @UserList = userlist
          @Description = description
          @CreatedDate = createddate
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @AccountName = params['AccountName']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              linkuserinfo_tmp = LinkUserInfo.new
              linkuserinfo_tmp.deserialize(i)
              @UserList << linkuserinfo_tmp
            end
          end
          @Description = params['Description']
          @CreatedDate = params['CreatedDate']
        end
      end

      # 账号查询参数
      class AppAccountSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键字
        # @type Keyword: String

        attr_accessor :Keyword

        def initialize(keyword=nil)
          @Keyword = keyword
        end

        def deserialize(params)
          @Keyword = params['Keyword']
        end
      end

      # 应用信息列表。
      class ApplicationAuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param ApplicationAccounts: 用户在被授权应用下对应的账号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationAccounts: Array
        # @param ApplicationId: 应用ID，是应用的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param InheritedForm: 展示用户所在的用户组、机构节点拥有该应用的访问权限的ID信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InheritedForm: :class:`Tencentcloud::Eiam.v20210420.models.InheritedForm`
        # @param ApplicationName: 应用名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param CreatedDate: 应用创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String

        attr_accessor :ApplicationAccounts, :ApplicationId, :InheritedForm, :ApplicationName, :CreatedDate

        def initialize(applicationaccounts=nil, applicationid=nil, inheritedform=nil, applicationname=nil, createddate=nil)
          @ApplicationAccounts = applicationaccounts
          @ApplicationId = applicationid
          @InheritedForm = inheritedform
          @ApplicationName = applicationname
          @CreatedDate = createddate
        end

        def deserialize(params)
          @ApplicationAccounts = params['ApplicationAccounts']
          @ApplicationId = params['ApplicationId']
          unless params['InheritedForm'].nil?
            @InheritedForm = InheritedForm.new
            @InheritedForm.deserialize(params['InheritedForm'])
          end
          @ApplicationName = params['ApplicationName']
          @CreatedDate = params['CreatedDate']
        end
      end

      # 应用属性搜索条件。
      class ApplicationInfoSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 应用匹配搜索关键字，匹配范围包括：应用名称、应用ID。
        # @type Keyword: String
        # @param ApplicationType: 应用类型。ApplicationType的取值范围有：OAUTH2、JWT、CAS、SAML2、FORM、OIDC、APIGW。
        # @type ApplicationType: String

        attr_accessor :Keyword, :ApplicationType

        def initialize(keyword=nil, applicationtype=nil)
          @Keyword = keyword
          @ApplicationType = applicationtype
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @ApplicationType = params['ApplicationType']
        end
      end

      # 应用信息列表。
      class ApplicationInformation < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID，是应用的全局唯一标识。
        # @type ApplicationId: String
        # @param DisplayName: 应用展示名称，长度限制：64个字符。 默认与应用名字相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param CreatedDate: 应用创建时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String
        # @param LastModifiedDate: 上次更新时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: String
        # @param AppStatus: 应用状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatus: Boolean
        # @param Icon: 应用图标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Icon: String
        # @param ApplicationType: 应用类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ClientId: 客户端id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientId: String

        attr_accessor :ApplicationId, :DisplayName, :CreatedDate, :LastModifiedDate, :AppStatus, :Icon, :ApplicationType, :ClientId

        def initialize(applicationid=nil, displayname=nil, createddate=nil, lastmodifieddate=nil, appstatus=nil, icon=nil, applicationtype=nil, clientid=nil)
          @ApplicationId = applicationid
          @DisplayName = displayname
          @CreatedDate = createddate
          @LastModifiedDate = lastmodifieddate
          @AppStatus = appstatus
          @Icon = icon
          @ApplicationType = applicationtype
          @ClientId = clientid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @DisplayName = params['DisplayName']
          @CreatedDate = params['CreatedDate']
          @LastModifiedDate = params['LastModifiedDate']
          @AppStatus = params['AppStatus']
          @Icon = params['Icon']
          @ApplicationType = params['ApplicationType']
          @ClientId = params['ClientId']
        end
      end

      # 返回的授权关系信息。
      class AuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param AppId: 应用唯一ID。
        # @type AppId: String
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param EntityName: 类型名称。
        # @type EntityName: String
        # @param EntityId: 类型唯一ID。
        # @type EntityId: String
        # @param LastModifiedDate: 上次更新时间，符合 ISO8601 标准。
        # @type LastModifiedDate: String
        # @param AuthorizationId: 授权类型唯一ID。
        # @type AuthorizationId: String

        attr_accessor :AppId, :AppName, :EntityName, :EntityId, :LastModifiedDate, :AuthorizationId

        def initialize(appid=nil, appname=nil, entityname=nil, entityid=nil, lastmodifieddate=nil, authorizationid=nil)
          @AppId = appid
          @AppName = appname
          @EntityName = entityname
          @EntityId = entityid
          @LastModifiedDate = lastmodifieddate
          @AuthorizationId = authorizationid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppName = params['AppName']
          @EntityName = params['EntityName']
          @EntityId = params['EntityId']
          @LastModifiedDate = params['LastModifiedDate']
          @AuthorizationId = params['AuthorizationId']
        end
      end

      # 用户属性搜索条件。
      class AuthorizationInfoSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 名称匹配搜索，当查询类型为用户时，匹配范围包括：用户名称、应用名称；当查询类型为用户组时，匹配范围包括：用户组名称、应用名称；当查询类型为组织机构时，匹配范围包括：组织机构名称、应用名称。
        # @type Keyword: String

        attr_accessor :Keyword

        def initialize(keyword=nil)
          @Keyword = keyword
        end

        def deserialize(params)
          @Keyword = params['Keyword']
        end
      end

      # 授权资源详情
      class AuthorizationResourceEntityInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 授权关系的唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源授权类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Resource: 授权的资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String

        attr_accessor :ResourceId, :ResourceType, :Resource, :ResourceName

        def initialize(resourceid=nil, resourcetype=nil, resource=nil, resourcename=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Resource = resource
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Resource = params['Resource']
          @ResourceName = params['ResourceName']
        end
      end

      # 返回符合条件的用户数据列表
      class AuthorizationUserResouceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Resource: 授权资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param InheritedForm: 继承关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InheritedForm: :class:`Tencentcloud::Eiam.v20210420.models.InheritedForm`
        # @param ApplicationAccounts: 应用账户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationAccounts: Array
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String

        attr_accessor :ResourceId, :ResourceType, :Resource, :InheritedForm, :ApplicationAccounts, :ResourceName

        def initialize(resourceid=nil, resourcetype=nil, resource=nil, inheritedform=nil, applicationaccounts=nil, resourcename=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Resource = resource
          @InheritedForm = inheritedform
          @ApplicationAccounts = applicationaccounts
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Resource = params['Resource']
          unless params['InheritedForm'].nil?
            @InheritedForm = InheritedForm.new
            @InheritedForm.deserialize(params['InheritedForm'])
          end
          @ApplicationAccounts = params['ApplicationAccounts']
          @ResourceName = params['ResourceName']
        end
      end

      # CreateAccountGroup请求参数结构体
      class CreateAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param GroupName: 账号组名。
        # @type GroupName: String
        # @param Description: 描述。
        # @type Description: String

        attr_accessor :ApplicationId, :GroupName, :Description

        def initialize(applicationid=nil, groupname=nil, description=nil)
          @ApplicationId = applicationid
          @GroupName = groupname
          @Description = description
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @GroupName = params['GroupName']
          @Description = params['Description']
        end
      end

      # CreateAccountGroup返回参数结构体
      class CreateAccountGroupResponse < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountGroupId, :RequestId

        def initialize(accountgroupid=nil, requestid=nil)
          @AccountGroupId = accountgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAppAccount请求参数结构体
      class CreateAppAccountRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param AccountName: 账号名称
        # @type AccountName: String
        # @param Password: 账号密码
        # @type Password: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :ApplicationId, :AccountName, :Password, :Description

        def initialize(applicationid=nil, accountname=nil, password=nil, description=nil)
          @ApplicationId = applicationid
          @AccountName = accountname
          @Password = password
          @Description = description
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @AccountName = params['AccountName']
          @Password = params['Password']
          @Description = params['Description']
        end
      end

      # CreateAppAccount返回参数结构体
      class CreateAppAccountResponse < TencentCloud::Common::AbstractModel
        # @param AccountId: 账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountId, :RequestId

        def initialize(accountid=nil, requestid=nil)
          @AccountId = accountid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrgNode请求参数结构体
      class CreateOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param DisplayName: 机构节点名称，长度限制：64个字符。
        # @type DisplayName: String
        # @param ParentOrgNodeId: 父机构节点ID，如果为空则默认创建在机构根节点下。
        # @type ParentOrgNodeId: String
        # @param Description: 机构节点描述。
        # @type Description: String
        # @param CustomizedOrgNodeId: 机构代码。如果为空，则默认生成机构代码。如果为非空，则校验机构代码的唯一性。
        # @type CustomizedOrgNodeId: String

        attr_accessor :DisplayName, :ParentOrgNodeId, :Description, :CustomizedOrgNodeId

        def initialize(displayname=nil, parentorgnodeid=nil, description=nil, customizedorgnodeid=nil)
          @DisplayName = displayname
          @ParentOrgNodeId = parentorgnodeid
          @Description = description
          @CustomizedOrgNodeId = customizedorgnodeid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @ParentOrgNodeId = params['ParentOrgNodeId']
          @Description = params['Description']
          @CustomizedOrgNodeId = params['CustomizedOrgNodeId']
        end
      end

      # CreateOrgNode返回参数结构体
      class CreateOrgNodeResponse < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgNodeId, :RequestId

        def initialize(orgnodeid=nil, requestid=nil)
          @OrgNodeId = orgnodeid
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserGroup请求参数结构体
      class CreateUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param DisplayName: 用户组昵称，长度限制：64个字符。 DisplayName是唯一的。
        # @type DisplayName: String
        # @param Description: 用户组备注，长度限制：512个字符。
        # @type Description: String

        attr_accessor :DisplayName, :Description

        def initialize(displayname=nil, description=nil)
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # CreateUserGroup返回参数结构体
      class CreateUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupId, :RequestId

        def initialize(usergroupid=nil, requestid=nil)
          @UserGroupId = usergroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：64个字符。
        # @type UserName: String
        # @param Password: 用户密码， 需要符合密码策略的配置。
        # @type Password: String
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # @type DisplayName: String
        # @param Description: 用户备注，长度限制：512个字符。
        # @type Description: String
        # @param UserGroupIds: 用户所属用户组ID列表。
        # @type UserGroupIds: Array
        # @param Phone: 用户手机号。例如：+86-1xxxxxxxxxx。
        # @type Phone: String
        # @param OrgNodeId: 用户所属的主组织机构唯一ID。如果为空，默认为在根节点下创建用户。
        # @type OrgNodeId: String
        # @param ExpirationTime: 用户过期时间，遵循 ISO 8601 标准。
        # @type ExpirationTime: String
        # @param Email: 用户邮箱。
        # @type Email: String
        # @param PwdNeedReset: 密码是否需要重置，为空默认为false不需要重置密码。
        # @type PwdNeedReset: Boolean
        # @param SecondaryOrgNodeIdList: 用户所属的次要组织机构ID列表。
        # @type SecondaryOrgNodeIdList: Array

        attr_accessor :UserName, :Password, :DisplayName, :Description, :UserGroupIds, :Phone, :OrgNodeId, :ExpirationTime, :Email, :PwdNeedReset, :SecondaryOrgNodeIdList

        def initialize(username=nil, password=nil, displayname=nil, description=nil, usergroupids=nil, phone=nil, orgnodeid=nil, expirationtime=nil, email=nil, pwdneedreset=nil, secondaryorgnodeidlist=nil)
          @UserName = username
          @Password = password
          @DisplayName = displayname
          @Description = description
          @UserGroupIds = usergroupids
          @Phone = phone
          @OrgNodeId = orgnodeid
          @ExpirationTime = expirationtime
          @Email = email
          @PwdNeedReset = pwdneedreset
          @SecondaryOrgNodeIdList = secondaryorgnodeidlist
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @UserGroupIds = params['UserGroupIds']
          @Phone = params['Phone']
          @OrgNodeId = params['OrgNodeId']
          @ExpirationTime = params['ExpirationTime']
          @Email = params['Email']
          @PwdNeedReset = params['PwdNeedReset']
          @SecondaryOrgNodeIdList = params['SecondaryOrgNodeIdList']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 返回的新创建的用户ID，是该用户的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteAccountGroup请求参数结构体
      class DeleteAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupIdList: 账号组ID数组。
        # @type AccountGroupIdList: Array

        attr_accessor :AccountGroupIdList

        def initialize(accountgroupidlist=nil)
          @AccountGroupIdList = accountgroupidlist
        end

        def deserialize(params)
          @AccountGroupIdList = params['AccountGroupIdList']
        end
      end

      # DeleteAccountGroup返回参数结构体
      class DeleteAccountGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAppAccount请求参数结构体
      class DeleteAppAccountRequest < TencentCloud::Common::AbstractModel
        # @param AccountIdList: 账号ID数组。
        # @type AccountIdList: Array

        attr_accessor :AccountIdList

        def initialize(accountidlist=nil)
          @AccountIdList = accountidlist
        end

        def deserialize(params)
          @AccountIdList = params['AccountIdList']
        end
      end

      # DeleteAppAccount返回参数结构体
      class DeleteAppAccountResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrgNode请求参数结构体
      class DeleteOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # @type OrgNodeId: String

        attr_accessor :OrgNodeId

        def initialize(orgnodeid=nil)
          @OrgNodeId = orgnodeid
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
        end
      end

      # DeleteOrgNode返回参数结构体
      class DeleteOrgNodeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserGroup请求参数结构体
      class DeleteUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # @type UserGroupId: String

        attr_accessor :UserGroupId

        def initialize(usergroupid=nil)
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
        end
      end

      # DeleteUserGroup返回参数结构体
      class DeleteUserGroupResponse < TencentCloud::Common::AbstractModel
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
        # @param UserName: 用户名，长度限制：32个字符。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        # @type UserName: String
        # @param UserId: 用户 id。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        # @type UserId: String

        attr_accessor :UserName, :UserId

        def initialize(username=nil, userid=nil)
          @UserName = username
          @UserId = userid
        end

        def deserialize(params)
          @UserName = params['UserName']
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

      # DeleteUsers请求参数结构体
      class DeleteUsersRequest < TencentCloud::Common::AbstractModel
        # @param DeleteIdList: 被删除用户的ID列表。DeleteIdList 和 DeleteNameList 需至少一个不为空；都不为空时优先使用 DeleteNameList。
        # @type DeleteIdList: Array
        # @param DeleteNameList: 被删除用户的名称列表。DeleteIdList 和 DeleteNameList 需至少一个不为空；都不为空时优先使用 DeleteNameList。
        # @type DeleteNameList: Array

        attr_accessor :DeleteIdList, :DeleteNameList

        def initialize(deleteidlist=nil, deletenamelist=nil)
          @DeleteIdList = deleteidlist
          @DeleteNameList = deletenamelist
        end

        def deserialize(params)
          @DeleteIdList = params['DeleteIdList']
          @DeleteNameList = params['DeleteNameList']
        end
      end

      # DeleteUsers返回参数结构体
      class DeleteUsersResponse < TencentCloud::Common::AbstractModel
        # @param FailedItems: 未被成功删除的用户信息。当业务参数为DeleteIdList时，本字段将返回未成功删除的用户ID列表。当业务参数为DeleteNameList时，本字段将返回未成功删除的用户名称列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedItems, :RequestId

        def initialize(faileditems=nil, requestid=nil)
          @FailedItems = faileditems
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedItems = params['FailedItems']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccountGroup请求参数结构体
      class DescribeAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param SearchCondition: 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.AccountGroupSearchCriteria`
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :ApplicationId, :SearchCondition, :Offset, :Limit

        def initialize(applicationid=nil, searchcondition=nil, offset=nil, limit=nil)
          @ApplicationId = applicationid
          @SearchCondition = searchcondition
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          unless params['SearchCondition'].nil?
            @SearchCondition = AccountGroupSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccountGroup返回参数结构体
      class DescribeAccountGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回查询的总记录数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApplicationId: 应用ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param AccountGroupList: 返回符合条件的数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationId, :AccountGroupList, :RequestId

        def initialize(totalcount=nil, applicationid=nil, accountgrouplist=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationId = applicationid
          @AccountGroupList = accountgrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ApplicationId = params['ApplicationId']
          unless params['AccountGroupList'].nil?
            @AccountGroupList = []
            params['AccountGroupList'].each do |i|
              accountgroupinfo_tmp = AccountGroupInfo.new
              accountgroupinfo_tmp.deserialize(i)
              @AccountGroupList << accountgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppAccount请求参数结构体
      class DescribeAppAccountRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param SearchCondition: 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.AppAccountSearchCriteria`
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :ApplicationId, :SearchCondition, :Offset, :Limit

        def initialize(applicationid=nil, searchcondition=nil, offset=nil, limit=nil)
          @ApplicationId = applicationid
          @SearchCondition = searchcondition
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          unless params['SearchCondition'].nil?
            @SearchCondition = AppAccountSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAppAccount返回参数结构体
      class DescribeAppAccountResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回查询的总记录数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApplicationId: 应用ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param AppAccountList: 返回符合条件的数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppAccountList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationId, :AppAccountList, :RequestId

        def initialize(totalcount=nil, applicationid=nil, appaccountlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationId = applicationid
          @AppAccountList = appaccountlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ApplicationId = params['ApplicationId']
          unless params['AppAccountList'].nil?
            @AppAccountList = []
            params['AppAccountList'].each do |i|
              appaccountinfo_tmp = AppAccountInfo.new
              appaccountinfo_tmp.deserialize(i)
              @AppAccountList << appaccountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplication请求参数结构体
      class DescribeApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用id，是应用的全局唯一标识，与ClientId参数不能同时为空。
        # @type ApplicationId: String
        # @param ClientId: 客户端id，与ApplicationId参数不能同时为空。
        # @type ClientId: String

        attr_accessor :ApplicationId, :ClientId

        def initialize(applicationid=nil, clientid=nil)
          @ApplicationId = applicationid
          @ClientId = clientid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ClientId = params['ClientId']
        end
      end

      # DescribeApplication返回参数结构体
      class DescribeApplicationResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param DisplayName: 应用展示名称，长度限制：64个字符。 默认与应用名字相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param LastModifiedDate: 应用最后修改时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: String
        # @param ClientId: 客户端id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientId: String
        # @param ApplicationType: 应用类型，即创建应用时所选择的应用模板类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param CreatedDate: 应用创建时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String
        # @param ApplicationId: 应用id，是应用的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param TokenExpired: 令牌有效时间，单位为秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenExpired: Integer
        # @param ClientSecret: 客户端secret。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientSecret: String
        # @param PublicKey: 公钥信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKey: String
        # @param AuthorizeUrl: 授权地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizeUrl: String
        # @param IconUrl: 应用图标图片访问地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String
        # @param SecureLevel: 安全等级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecureLevel: String
        # @param AppStatus: 应用状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppStatus: Boolean
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :DisplayName, :LastModifiedDate, :ClientId, :ApplicationType, :CreatedDate, :ApplicationId, :TokenExpired, :ClientSecret, :PublicKey, :AuthorizeUrl, :IconUrl, :SecureLevel, :AppStatus, :Description, :RequestId

        def initialize(keyid=nil, displayname=nil, lastmodifieddate=nil, clientid=nil, applicationtype=nil, createddate=nil, applicationid=nil, tokenexpired=nil, clientsecret=nil, publickey=nil, authorizeurl=nil, iconurl=nil, securelevel=nil, appstatus=nil, description=nil, requestid=nil)
          @KeyId = keyid
          @DisplayName = displayname
          @LastModifiedDate = lastmodifieddate
          @ClientId = clientid
          @ApplicationType = applicationtype
          @CreatedDate = createddate
          @ApplicationId = applicationid
          @TokenExpired = tokenexpired
          @ClientSecret = clientsecret
          @PublicKey = publickey
          @AuthorizeUrl = authorizeurl
          @IconUrl = iconurl
          @SecureLevel = securelevel
          @AppStatus = appstatus
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @DisplayName = params['DisplayName']
          @LastModifiedDate = params['LastModifiedDate']
          @ClientId = params['ClientId']
          @ApplicationType = params['ApplicationType']
          @CreatedDate = params['CreatedDate']
          @ApplicationId = params['ApplicationId']
          @TokenExpired = params['TokenExpired']
          @ClientSecret = params['ClientSecret']
          @PublicKey = params['PublicKey']
          @AuthorizeUrl = params['AuthorizeUrl']
          @IconUrl = params['IconUrl']
          @SecureLevel = params['SecureLevel']
          @AppStatus = params['AppStatus']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrgNode请求参数结构体
      class DescribeOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点信息。
        # @type OrgNodeId: String
        # @param IncludeOrgNodeChildInfo: 是否读取其子节点信息。当其为空或false时，默认仅读取当前机构节点信息。当其为true时，读取本机构节点以及其第一层子节点信息。
        # @type IncludeOrgNodeChildInfo: Boolean

        attr_accessor :OrgNodeId, :IncludeOrgNodeChildInfo

        def initialize(orgnodeid=nil, includeorgnodechildinfo=nil)
          @OrgNodeId = orgnodeid
          @IncludeOrgNodeChildInfo = includeorgnodechildinfo
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
          @IncludeOrgNodeChildInfo = params['IncludeOrgNodeChildInfo']
        end
      end

      # DescribeOrgNode返回参数结构体
      class DescribeOrgNodeResponse < TencentCloud::Common::AbstractModel
        # @param DisplayName: 机构节点展示名称，长度限制：64个字符。 默认与机构名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param LastModifiedDate: 机构节点最后修改时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: String
        # @param CustomizedOrgNodeId: 机构节点外部ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomizedOrgNodeId: String
        # @param ParentOrgNodeId: 当前机构节点的父节点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentOrgNodeId: String
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param DataSource: 数据来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param CreatedDate: 机构节点创建时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String
        # @param OrgNodeChildInfo: 当前机构节点下的子节点列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeChildInfo: Array
        # @param Description: 机构节点描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisplayName, :LastModifiedDate, :CustomizedOrgNodeId, :ParentOrgNodeId, :OrgNodeId, :DataSource, :CreatedDate, :OrgNodeChildInfo, :Description, :RequestId

        def initialize(displayname=nil, lastmodifieddate=nil, customizedorgnodeid=nil, parentorgnodeid=nil, orgnodeid=nil, datasource=nil, createddate=nil, orgnodechildinfo=nil, description=nil, requestid=nil)
          @DisplayName = displayname
          @LastModifiedDate = lastmodifieddate
          @CustomizedOrgNodeId = customizedorgnodeid
          @ParentOrgNodeId = parentorgnodeid
          @OrgNodeId = orgnodeid
          @DataSource = datasource
          @CreatedDate = createddate
          @OrgNodeChildInfo = orgnodechildinfo
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @LastModifiedDate = params['LastModifiedDate']
          @CustomizedOrgNodeId = params['CustomizedOrgNodeId']
          @ParentOrgNodeId = params['ParentOrgNodeId']
          @OrgNodeId = params['OrgNodeId']
          @DataSource = params['DataSource']
          @CreatedDate = params['CreatedDate']
          unless params['OrgNodeChildInfo'].nil?
            @OrgNodeChildInfo = []
            params['OrgNodeChildInfo'].each do |i|
              orgnodechildinfo_tmp = OrgNodeChildInfo.new
              orgnodechildinfo_tmp.deserialize(i)
              @OrgNodeChildInfo << orgnodechildinfo_tmp
            end
          end
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrgResourcesAuthorization请求参数结构体
      class DescribeOrgResourcesAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param OrgNodeId: 机构ID
        # @type OrgNodeId: String

        attr_accessor :ApplicationId, :OrgNodeId

        def initialize(applicationid=nil, orgnodeid=nil)
          @ApplicationId = applicationid
          @OrgNodeId = orgnodeid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @OrgNodeId = params['OrgNodeId']
        end
      end

      # DescribeOrgResourcesAuthorization返回参数结构体
      class DescribeOrgResourcesAuthorizationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param OrgNodeId: 授权机构ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param OrgNodeName: 机构名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeName: String
        # @param OrgNodePath: 机构目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodePath: String
        # @param AuthorizationOrgResourceList: 资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationOrgResourceList: Array
        # @param TotalCount: 资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :OrgNodeId, :OrgNodeName, :OrgNodePath, :AuthorizationOrgResourceList, :TotalCount, :RequestId

        def initialize(applicationid=nil, orgnodeid=nil, orgnodename=nil, orgnodepath=nil, authorizationorgresourcelist=nil, totalcount=nil, requestid=nil)
          @ApplicationId = applicationid
          @OrgNodeId = orgnodeid
          @OrgNodeName = orgnodename
          @OrgNodePath = orgnodepath
          @AuthorizationOrgResourceList = authorizationorgresourcelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @OrgNodeId = params['OrgNodeId']
          @OrgNodeName = params['OrgNodeName']
          @OrgNodePath = params['OrgNodePath']
          unless params['AuthorizationOrgResourceList'].nil?
            @AuthorizationOrgResourceList = []
            params['AuthorizationOrgResourceList'].each do |i|
              authorizationresourceentityinfo_tmp = AuthorizationResourceEntityInfo.new
              authorizationresourceentityinfo_tmp.deserialize(i)
              @AuthorizationOrgResourceList << authorizationresourceentityinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicKey请求参数结构体
      class DescribePublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID，是应用的全局唯一标识。
        # @type ApplicationId: String

        attr_accessor :ApplicationId

        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribePublicKey返回参数结构体
      class DescribePublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param PublicKey: jwt验证签名所用的公钥信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKey: String
        # @param KeyId: jwt的密钥id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param ApplicationId: 应用ID，是应用的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PublicKey, :KeyId, :ApplicationId, :RequestId

        def initialize(publickey=nil, keyid=nil, applicationid=nil, requestid=nil)
          @PublicKey = publickey
          @KeyId = keyid
          @ApplicationId = applicationid
          @RequestId = requestid
        end

        def deserialize(params)
          @PublicKey = params['PublicKey']
          @KeyId = params['KeyId']
          @ApplicationId = params['ApplicationId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroup请求参数结构体
      class DescribeUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # @type UserGroupId: String

        attr_accessor :UserGroupId

        def initialize(usergroupid=nil)
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
        end
      end

      # DescribeUserGroupResourcesAuthorization请求参数结构体
      class DescribeUserGroupResourcesAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param UserGroupId: 用户组ID
        # @type UserGroupId: String

        attr_accessor :ApplicationId, :UserGroupId

        def initialize(applicationid=nil, usergroupid=nil)
          @ApplicationId = applicationid
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @UserGroupId = params['UserGroupId']
        end
      end

      # DescribeUserGroupResourcesAuthorization返回参数结构体
      class DescribeUserGroupResourcesAuthorizationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param UserGroupId: 用户组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param UserGroupName: 用户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupName: String
        # @param AuthorizationUserGroupResourceList: 资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationUserGroupResourceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :UserGroupId, :UserGroupName, :AuthorizationUserGroupResourceList, :RequestId

        def initialize(applicationid=nil, usergroupid=nil, usergroupname=nil, authorizationusergroupresourcelist=nil, requestid=nil)
          @ApplicationId = applicationid
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
          @AuthorizationUserGroupResourceList = authorizationusergroupresourcelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
          unless params['AuthorizationUserGroupResourceList'].nil?
            @AuthorizationUserGroupResourceList = []
            params['AuthorizationUserGroupResourceList'].each do |i|
              authorizationresourceentityinfo_tmp = AuthorizationResourceEntityInfo.new
              authorizationresourceentityinfo_tmp.deserialize(i)
              @AuthorizationUserGroupResourceList << authorizationresourceentityinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroup返回参数结构体
      class DescribeUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param DisplayName: 用户组昵称，长度限制：64个字符。 DisplayName不唯一。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 用户组备注，长度限制：512个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisplayName, :Description, :UserGroupId, :RequestId

        def initialize(displayname=nil, description=nil, usergroupid=nil, requestid=nil)
          @DisplayName = displayname
          @Description = description
          @UserGroupId = usergroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @UserGroupId = params['UserGroupId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInfo请求参数结构体
      class DescribeUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：64个字符。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        # @type UserName: String
        # @param UserId: 用户 id，长度限制：64个字符。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        # @type UserId: String

        attr_accessor :UserName, :UserId

        def initialize(username=nil, userid=nil)
          @UserName = username
          @UserId = userid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserId = params['UserId']
        end
      end

      # DescribeUserInfo返回参数结构体
      class DescribeUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Status: 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param DisplayName: 昵称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 用户备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UserGroupIds: 用户所属用户组 id 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupIds: Array
        # @param UserId: 用户 id，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Email: 用户邮箱。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 用户手机号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param OrgNodeId: 用户所属的主组织机构唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param DataSource: 数据来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param ExpirationTime: 用户过期时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpirationTime: String
        # @param ActivationTime: 用户激活时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivationTime: String
        # @param PwdNeedReset: 当前用户的密码是否需要重置，该字段为false表示不需要重置密码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PwdNeedReset: Boolean
        # @param SecondaryOrgNodeIdList: 用户所属的次要组织机构ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryOrgNodeIdList: Array
        # @param AdminFlag: 是否管理员标志，0为否、1为是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminFlag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserName, :Status, :DisplayName, :Description, :UserGroupIds, :UserId, :Email, :Phone, :OrgNodeId, :DataSource, :ExpirationTime, :ActivationTime, :PwdNeedReset, :SecondaryOrgNodeIdList, :AdminFlag, :RequestId

        def initialize(username=nil, status=nil, displayname=nil, description=nil, usergroupids=nil, userid=nil, email=nil, phone=nil, orgnodeid=nil, datasource=nil, expirationtime=nil, activationtime=nil, pwdneedreset=nil, secondaryorgnodeidlist=nil, adminflag=nil, requestid=nil)
          @UserName = username
          @Status = status
          @DisplayName = displayname
          @Description = description
          @UserGroupIds = usergroupids
          @UserId = userid
          @Email = email
          @Phone = phone
          @OrgNodeId = orgnodeid
          @DataSource = datasource
          @ExpirationTime = expirationtime
          @ActivationTime = activationtime
          @PwdNeedReset = pwdneedreset
          @SecondaryOrgNodeIdList = secondaryorgnodeidlist
          @AdminFlag = adminflag
          @RequestId = requestid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Status = params['Status']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @UserGroupIds = params['UserGroupIds']
          @UserId = params['UserId']
          @Email = params['Email']
          @Phone = params['Phone']
          @OrgNodeId = params['OrgNodeId']
          @DataSource = params['DataSource']
          @ExpirationTime = params['ExpirationTime']
          @ActivationTime = params['ActivationTime']
          @PwdNeedReset = params['PwdNeedReset']
          @SecondaryOrgNodeIdList = params['SecondaryOrgNodeIdList']
          @AdminFlag = params['AdminFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserResourcesAuthorization请求参数结构体
      class DescribeUserResourcesAuthorizationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param UserId: 用户ID。UserName 和 UserId 需至少一个不为空；都不为空时优先使用 UserName。
        # @type UserId: String
        # @param UserName: 用户名。UserName 和 UserId 需至少一个不为空；都不为空时优先使用 UserName。
        # @type UserName: String
        # @param IncludeInheritedAuthorizations: 查询范围是否包括用户关联的用户组、组织机构的应用访问权限。默认为不查询 ，传false表示不查询该范围，传true查询该范围。
        # @type IncludeInheritedAuthorizations: Boolean

        attr_accessor :ApplicationId, :UserId, :UserName, :IncludeInheritedAuthorizations

        def initialize(applicationid=nil, userid=nil, username=nil, includeinheritedauthorizations=nil)
          @ApplicationId = applicationid
          @UserId = userid
          @UserName = username
          @IncludeInheritedAuthorizations = includeinheritedauthorizations
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @IncludeInheritedAuthorizations = params['IncludeInheritedAuthorizations']
        end
      end

      # DescribeUserResourcesAuthorization返回参数结构体
      class DescribeUserResourcesAuthorizationResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用的唯一ID。
        # @type ApplicationId: String
        # @param ApplicationAccounts: 应用账户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationAccounts: Array
        # @param UserId: 授权用户的唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 授权的用户名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param AuthorizationUserResourceList: 返回的资源列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationUserResourceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationId, :ApplicationAccounts, :UserId, :UserName, :AuthorizationUserResourceList, :RequestId

        def initialize(applicationid=nil, applicationaccounts=nil, userid=nil, username=nil, authorizationuserresourcelist=nil, requestid=nil)
          @ApplicationId = applicationid
          @ApplicationAccounts = applicationaccounts
          @UserId = userid
          @UserName = username
          @AuthorizationUserResourceList = authorizationuserresourcelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationAccounts = params['ApplicationAccounts']
          @UserId = params['UserId']
          @UserName = params['UserName']
          unless params['AuthorizationUserResourceList'].nil?
            @AuthorizationUserResourceList = []
            params['AuthorizationUserResourceList'].each do |i|
              authorizationuserresouceinfo_tmp = AuthorizationUserResouceInfo.new
              authorizationuserresouceinfo_tmp.deserialize(i)
              @AuthorizationUserResourceList << authorizationuserresouceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserThirdPartyAccountInfo请求参数结构体
      class DescribeUserThirdPartyAccountInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        # @type UserName: String
        # @param UserId: 用户 ID。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        # @type UserId: String

        attr_accessor :UserName, :UserId

        def initialize(username=nil, userid=nil)
          @UserName = username
          @UserId = userid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserId = params['UserId']
        end
      end

      # DescribeUserThirdPartyAccountInfo返回参数结构体
      class DescribeUserThirdPartyAccountInfoResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户 id。
        # @type UserId: String
        # @param UserName: 用户名。
        # @type UserName: String
        # @param ThirdPartyAccounts: 三方账号的绑定情况。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThirdPartyAccounts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :UserName, :ThirdPartyAccounts, :RequestId

        def initialize(userid=nil, username=nil, thirdpartyaccounts=nil, requestid=nil)
          @UserId = userid
          @UserName = username
          @ThirdPartyAccounts = thirdpartyaccounts
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          unless params['ThirdPartyAccounts'].nil?
            @ThirdPartyAccounts = []
            params['ThirdPartyAccounts'].each do |i|
              thirdpartyaccountinfo_tmp = ThirdPartyAccountInfo.new
              thirdpartyaccountinfo_tmp.deserialize(i)
              @ThirdPartyAccounts << thirdpartyaccountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用信息列表。
      class InheritedForm < TencentCloud::Common::AbstractModel
        # @param UserGroupIds: 用户所在的用户组ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupIds: Array
        # @param OrgNodeIds: 用户所在的机构节点ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeIds: Array

        attr_accessor :UserGroupIds, :OrgNodeIds

        def initialize(usergroupids=nil, orgnodeids=nil)
          @UserGroupIds = usergroupids
          @OrgNodeIds = orgnodeids
        end

        def deserialize(params)
          @UserGroupIds = params['UserGroupIds']
          @OrgNodeIds = params['OrgNodeIds']
        end
      end

      # 账号关联的用户信息
      class LinkUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，是用户全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :UserId, :UserName

        def initialize(userid=nil, username=nil)
          @UserId = userid
          @UserName = username
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
        end
      end

      # ListAccountInAccountGroup请求参数结构体
      class ListAccountInAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID。
        # @type AccountGroupId: String
        # @param SearchCondition: 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.AccountGroupSearchCriteria`
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :AccountGroupId, :SearchCondition, :Offset, :Limit

        def initialize(accountgroupid=nil, searchcondition=nil, offset=nil, limit=nil)
          @AccountGroupId = accountgroupid
          @SearchCondition = searchcondition
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          unless params['SearchCondition'].nil?
            @SearchCondition = AccountGroupSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListAccountInAccountGroup返回参数结构体
      class ListAccountInAccountGroupResponse < TencentCloud::Common::AbstractModel
        # @param AccountList: 查询返回的相关账号列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountList: Array
        # @param TotalCount: 返回查询账号的总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param AccountGroupId: 账号组ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountList, :TotalCount, :AccountGroupId, :RequestId

        def initialize(accountlist=nil, totalcount=nil, accountgroupid=nil, requestid=nil)
          @AccountList = accountlist
          @TotalCount = totalcount
          @AccountGroupId = accountgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountList'].nil?
            @AccountList = []
            params['AccountList'].each do |i|
              appaccountinfo_tmp = AppAccountInfo.new
              appaccountinfo_tmp.deserialize(i)
              @AccountList << appaccountinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AccountGroupId = params['AccountGroupId']
          @RequestId = params['RequestId']
        end
      end

      # ListApplicationAuthorizations请求参数结构体
      class ListApplicationAuthorizationsRequest < TencentCloud::Common::AbstractModel
        # @param EntityType: 查询类型，包含用户（User）、用户组（UserGroup）、组织机构（OrgNode）。
        # @type EntityType: String
        # @param SearchCondition: 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.AuthorizationInfoSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：上次修改时间（lastModifiedDate）。如果该字段为空，则默认按照应用名称正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        # @type Offset: Integer
        # @param Limit: 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        # @type Limit: Integer

        attr_accessor :EntityType, :SearchCondition, :Sort, :Offset, :Limit

        def initialize(entitytype=nil, searchcondition=nil, sort=nil, offset=nil, limit=nil)
          @EntityType = entitytype
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EntityType = params['EntityType']
          unless params['SearchCondition'].nil?
            @SearchCondition = AuthorizationInfoSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListApplicationAuthorizations返回参数结构体
      class ListApplicationAuthorizationsResponse < TencentCloud::Common::AbstractModel
        # @param AuthorizationInfoList: 返回的应用授权信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationInfoList: Array
        # @param TotalCount: 返回的应用信息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthorizationInfoList, :TotalCount, :RequestId

        def initialize(authorizationinfolist=nil, totalcount=nil, requestid=nil)
          @AuthorizationInfoList = authorizationinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuthorizationInfoList'].nil?
            @AuthorizationInfoList = []
            params['AuthorizationInfoList'].each do |i|
              authorizationinfo_tmp = AuthorizationInfo.new
              authorizationinfo_tmp.deserialize(i)
              @AuthorizationInfoList << authorizationinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListApplications请求参数结构体
      class ListApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param SearchCondition: 模糊匹配搜索条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.ApplicationInfoSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        # @type Offset: Integer
        # @param Limit: 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        # @type Limit: Integer
        # @param ApplicationIdList: 应用ID列表，通过应用ID列表精准匹配对应的应用信息。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        # @type ApplicationIdList: Array

        attr_accessor :SearchCondition, :Sort, :Offset, :Limit, :ApplicationIdList

        def initialize(searchcondition=nil, sort=nil, offset=nil, limit=nil, applicationidlist=nil)
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @ApplicationIdList = applicationidlist
        end

        def deserialize(params)
          unless params['SearchCondition'].nil?
            @SearchCondition = ApplicationInfoSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationIdList = params['ApplicationIdList']
        end
      end

      # ListApplications返回参数结构体
      class ListApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的应用信息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApplicationInfoList: 返回的应用信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationInfoList, :RequestId

        def initialize(totalcount=nil, applicationinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationInfoList = applicationinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinformation_tmp = ApplicationInformation.new
              applicationinformation_tmp.deserialize(i)
              @ApplicationInfoList << applicationinformation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAuthorizedApplicationsToOrgNode请求参数结构体
      class ListAuthorizedApplicationsToOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点 Id 。
        # @type OrgNodeId: String

        attr_accessor :OrgNodeId

        def initialize(orgnodeid=nil)
          @OrgNodeId = orgnodeid
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
        end
      end

      # ListAuthorizedApplicationsToOrgNode返回参数结构体
      class ListAuthorizedApplicationsToOrgNodeResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationIds: 机构节点拥有访问权限的应用 id 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationIds, :RequestId

        def initialize(applicationids=nil, requestid=nil)
          @ApplicationIds = applicationids
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationIds = params['ApplicationIds']
          @RequestId = params['RequestId']
        end
      end

      # ListAuthorizedApplicationsToUserGroup请求参数结构体
      class ListAuthorizedApplicationsToUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组 Id 。
        # @type UserGroupId: String

        attr_accessor :UserGroupId

        def initialize(usergroupid=nil)
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
        end
      end

      # ListAuthorizedApplicationsToUserGroup返回参数结构体
      class ListAuthorizedApplicationsToUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationIds: 用户组拥有访问权限的应用 id 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationIds, :RequestId

        def initialize(applicationids=nil, requestid=nil)
          @ApplicationIds = applicationids
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicationIds = params['ApplicationIds']
          @RequestId = params['RequestId']
        end
      end

      # ListAuthorizedApplicationsToUser请求参数结构体
      class ListAuthorizedApplicationsToUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户 ID。
        # @type UserId: String
        # @param IncludeInheritedAuthorizations: 查询范围是否包括用户关联的用户组、组织机构的应用访问权限。默认为不查询 。传false表示不查询该范围，传true表示应用查询该范围。
        # @type IncludeInheritedAuthorizations: Boolean

        attr_accessor :UserId, :IncludeInheritedAuthorizations

        def initialize(userid=nil, includeinheritedauthorizations=nil)
          @UserId = userid
          @IncludeInheritedAuthorizations = includeinheritedauthorizations
        end

        def deserialize(params)
          @UserId = params['UserId']
          @IncludeInheritedAuthorizations = params['IncludeInheritedAuthorizations']
        end
      end

      # ListAuthorizedApplicationsToUser返回参数结构体
      class ListAuthorizedApplicationsToUserResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationAuthorizationInfo: 用户拥有访问权限的应用信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationAuthorizationInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationAuthorizationInfo, :RequestId

        def initialize(applicationauthorizationinfo=nil, requestid=nil)
          @ApplicationAuthorizationInfo = applicationauthorizationinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationAuthorizationInfo'].nil?
            @ApplicationAuthorizationInfo = []
            params['ApplicationAuthorizationInfo'].each do |i|
              applicationauthorizationinfo_tmp = ApplicationAuthorizationInfo.new
              applicationauthorizationinfo_tmp.deserialize(i)
              @ApplicationAuthorizationInfo << applicationauthorizationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUserGroupsOfUser请求参数结构体
      class ListUserGroupsOfUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，是用户的全局唯一标识。
        # @type UserId: String
        # @param SearchCondition: 模糊查询条件，支持匹配用户组名称（DisplayName）。如果该字段为空，则默认展示该用户所有的用户组。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.UserGroupInformationSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：用户组名称（DisplayName）、用户组ID（UserGroupId）、创建时间（CreatedDate）。如果该字段为空，则默认按照用户组名称正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户组。
        # @type Offset: Integer
        # @param Limit: 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户组。
        # @type Limit: Integer

        attr_accessor :UserId, :SearchCondition, :Sort, :Offset, :Limit

        def initialize(userid=nil, searchcondition=nil, sort=nil, offset=nil, limit=nil)
          @UserId = userid
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['SearchCondition'].nil?
            @SearchCondition = UserGroupInformationSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListUserGroupsOfUser返回参数结构体
      class ListUserGroupsOfUserResponse < TencentCloud::Common::AbstractModel
        # @param UserGroupIds: 用户所属的用户组ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupIds: Array
        # @param UserId: 用户ID，是用户的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserGroupInfoList: 用户所属的用户组信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupInfoList: Array
        # @param TotalCount: 返回的用户组信息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupIds, :UserId, :UserGroupInfoList, :TotalCount, :RequestId

        def initialize(usergroupids=nil, userid=nil, usergroupinfolist=nil, totalcount=nil, requestid=nil)
          @UserGroupIds = usergroupids
          @UserId = userid
          @UserGroupInfoList = usergroupinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @UserGroupIds = params['UserGroupIds']
          @UserId = params['UserId']
          unless params['UserGroupInfoList'].nil?
            @UserGroupInfoList = []
            params['UserGroupInfoList'].each do |i|
              usergroupinfo_tmp = UserGroupInfo.new
              usergroupinfo_tmp.deserialize(i)
              @UserGroupInfoList << usergroupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListUserGroups请求参数结构体
      class ListUserGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchCondition: 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.UserGroupInfoSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：用户组名称（DisplayName）、用户组ID（UserGroupId）、上次更新时间（LastModifiedDate）。如果该字段为空，则默认按照用户组名称正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        # @type Offset: Integer
        # @param Limit: 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        # @type Limit: Integer

        attr_accessor :SearchCondition, :Sort, :Offset, :Limit

        def initialize(searchcondition=nil, sort=nil, offset=nil, limit=nil)
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['SearchCondition'].nil?
            @SearchCondition = UserGroupInfoSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListUserGroups返回参数结构体
      class ListUserGroupsResponse < TencentCloud::Common::AbstractModel
        # @param UserGroupList: 返回的用户组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupList: Array
        # @param TotalCount: 返回的用户组信息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupList, :TotalCount, :RequestId

        def initialize(usergrouplist=nil, totalcount=nil, requestid=nil)
          @UserGroupList = usergrouplist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserGroupList'].nil?
            @UserGroupList = []
            params['UserGroupList'].each do |i|
              usergroupinformation_tmp = UserGroupInformation.new
              usergroupinformation_tmp.deserialize(i)
              @UserGroupList << usergroupinformation_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListUsersInOrgNode请求参数结构体
      class ListUsersInOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点下用户信息。
        # @type OrgNodeId: String
        # @param IncludeOrgNodeChildInfo: 是否读取其子节点信息。当其为空或false时，默认仅读取当前机构节点信息。当其为true时，读取本机构节点以及其第一层子节点信息。
        # @type IncludeOrgNodeChildInfo: Boolean
        # @param SearchCondition: 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,*]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.ListUsersInOrgNodeSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：用户名字（UserName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreatedDate）、上次更新时间（LastModifiedDate）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        # @type Offset: Integer
        # @param Limit: 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        # @type Limit: Integer

        attr_accessor :OrgNodeId, :IncludeOrgNodeChildInfo, :SearchCondition, :Sort, :Offset, :Limit

        def initialize(orgnodeid=nil, includeorgnodechildinfo=nil, searchcondition=nil, sort=nil, offset=nil, limit=nil)
          @OrgNodeId = orgnodeid
          @IncludeOrgNodeChildInfo = includeorgnodechildinfo
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
          @IncludeOrgNodeChildInfo = params['IncludeOrgNodeChildInfo']
          unless params['SearchCondition'].nil?
            @SearchCondition = ListUsersInOrgNodeSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListUsersInOrgNode返回参数结构体
      class ListUsersInOrgNodeResponse < TencentCloud::Common::AbstractModel
        # @param OrgNodeChildUserInfo: 机构子节点下的用户信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeChildUserInfo: Array
        # @param OrgNodeId: 机构ID，是机构节点全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param UserInfo: 用户信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInfo: Array
        # @param TotalUserNum: 当前机构节点下的用户总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUserNum: Integer
        # @param OrgNodeIdPath: 组织机构ID路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeIdPath: String
        # @param OrgNodeNamePath: 组织机构名称路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeNamePath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgNodeChildUserInfo, :OrgNodeId, :UserInfo, :TotalUserNum, :OrgNodeIdPath, :OrgNodeNamePath, :RequestId

        def initialize(orgnodechilduserinfo=nil, orgnodeid=nil, userinfo=nil, totalusernum=nil, orgnodeidpath=nil, orgnodenamepath=nil, requestid=nil)
          @OrgNodeChildUserInfo = orgnodechilduserinfo
          @OrgNodeId = orgnodeid
          @UserInfo = userinfo
          @TotalUserNum = totalusernum
          @OrgNodeIdPath = orgnodeidpath
          @OrgNodeNamePath = orgnodenamepath
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OrgNodeChildUserInfo'].nil?
            @OrgNodeChildUserInfo = []
            params['OrgNodeChildUserInfo'].each do |i|
              orgnodechilduserinfo_tmp = OrgNodeChildUserInfo.new
              orgnodechilduserinfo_tmp.deserialize(i)
              @OrgNodeChildUserInfo << orgnodechilduserinfo_tmp
            end
          end
          @OrgNodeId = params['OrgNodeId']
          unless params['UserInfo'].nil?
            @UserInfo = []
            params['UserInfo'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfo << userinfo_tmp
            end
          end
          @TotalUserNum = params['TotalUserNum']
          @OrgNodeIdPath = params['OrgNodeIdPath']
          @OrgNodeNamePath = params['OrgNodeNamePath']
          @RequestId = params['RequestId']
        end
      end

      # 展示机构下用户的属性搜索条件。
      class ListUsersInOrgNodeSearchCriteria < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：64个字符。
        # @type UserName: String
        # @param Phone: 用户手机号。
        # @type Phone: String
        # @param Email: 用户邮箱。
        # @type Email: String
        # @param Status: 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        # @type Status: String
        # @param CreationTime: 用户创建时间，遵循 ISO 8601 标准。
        # @type CreationTime: String
        # @param LastUpdateTime: 用户上次更新时间。
        # @type LastUpdateTime: String
        # @param Keyword: 名称匹配搜索，匹配范围包括：用户名称、用户手机号。
        # @type Keyword: String

        attr_accessor :UserName, :Phone, :Email, :Status, :CreationTime, :LastUpdateTime, :Keyword

        def initialize(username=nil, phone=nil, email=nil, status=nil, creationtime=nil, lastupdatetime=nil, keyword=nil)
          @UserName = username
          @Phone = phone
          @Email = email
          @Status = status
          @CreationTime = creationtime
          @LastUpdateTime = lastupdatetime
          @Keyword = keyword
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Phone = params['Phone']
          @Email = params['Email']
          @Status = params['Status']
          @CreationTime = params['CreationTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Keyword = params['Keyword']
        end
      end

      # ListUsersInUserGroup请求参数结构体
      class ListUsersInUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # @type UserGroupId: String
        # @param SearchCondition: 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.UserSearchCriteria`
        # @param Sort: 排序条件集合。可排序的属性支持：用户名字（UserName）、用户昵称（DisplayName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreatedDate）、上次更新时间（LastModifiedDate）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        # @type Offset: Integer
        # @param Limit: 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        # @type Limit: Integer

        attr_accessor :UserGroupId, :SearchCondition, :Sort, :Offset, :Limit

        def initialize(usergroupid=nil, searchcondition=nil, sort=nil, offset=nil, limit=nil)
          @UserGroupId = usergroupid
          @SearchCondition = searchcondition
          @Sort = sort
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          unless params['SearchCondition'].nil?
            @SearchCondition = UserSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListUsersInUserGroup返回参数结构体
      class ListUsersInUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param UserInfo: 返回的用户信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInfo: Array
        # @param TotalNum: 返回的用户信息总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupId, :UserInfo, :TotalNum, :RequestId

        def initialize(usergroupid=nil, userinfo=nil, totalnum=nil, requestid=nil)
          @UserGroupId = usergroupid
          @UserInfo = userinfo
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          unless params['UserInfo'].nil?
            @UserInfo = []
            params['UserInfo'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfo << userinfo_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # ListUsers请求参数结构体
      class ListUsersRequest < TencentCloud::Common::AbstractModel
        # @param SearchCondition: 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,*]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        # @type SearchCondition: :class:`Tencentcloud::Eiam.v20210420.models.UserSearchCriteria`
        # @param ExpectedFields: 指定期望返回的用户属性，默认返回所有用户内置属性。内置用户属性包括：用户UUID（UserId）、用户昵称（DisplayName）、用户名字（UserName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、用户组（SubjectGroups）机构路径（OrgPath）、备注（Description）、创建时间 （CreationTime）、上次修改时间（LastUpdateTime）、上次登录时间（LastLoginTime）。
        # @type ExpectedFields: Array
        # @param Sort: 排序条件集合。可排序的属性支持：用户名字（UserName）、用户昵称（DisplayName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreationTime）、上次修改时间（LastUpdateTime）、上次登录时间（LastLoginTime）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        # @type Sort: :class:`Tencentcloud::Eiam.v20210420.models.SortCondition`
        # @param Offset: 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多1000个用户。
        # @type Offset: Integer
        # @param Limit: 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多1000个用户。
        # @type Limit: Integer
        # @param IncludeTotal: 是否查看搜索结果的总数，默认该选项为false不查看。
        # @type IncludeTotal: Boolean

        attr_accessor :SearchCondition, :ExpectedFields, :Sort, :Offset, :Limit, :IncludeTotal

        def initialize(searchcondition=nil, expectedfields=nil, sort=nil, offset=nil, limit=nil, includetotal=nil)
          @SearchCondition = searchcondition
          @ExpectedFields = expectedfields
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @IncludeTotal = includetotal
        end

        def deserialize(params)
          unless params['SearchCondition'].nil?
            @SearchCondition = UserSearchCriteria.new
            @SearchCondition.deserialize(params['SearchCondition'])
          end
          @ExpectedFields = params['ExpectedFields']
          unless params['Sort'].nil?
            @Sort = SortCondition.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IncludeTotal = params['IncludeTotal']
        end
      end

      # ListUsers返回参数结构体
      class ListUsersResponse < TencentCloud::Common::AbstractModel
        # @param UserList: 查询返回的相关用户列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param TotalCount: 返回查询用户的总数量，仅当入参IncludeTotal等于true时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserList, :TotalCount, :RequestId

        def initialize(userlist=nil, totalcount=nil, requestid=nil)
          @UserList = userlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userinformation_tmp = UserInformation.new
              userinformation_tmp.deserialize(i)
              @UserList << userinformation_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountGroup请求参数结构体
      class ModifyAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID。
        # @type AccountGroupId: String
        # @param GroupName: 账号组名。未传入该参数时，表示不进行修改。
        # @type GroupName: String
        # @param Description: 描述，未传入该参数时，表示不进行修改。
        # @type Description: String

        attr_accessor :AccountGroupId, :GroupName, :Description

        def initialize(accountgroupid=nil, groupname=nil, description=nil)
          @AccountGroupId = accountgroupid
          @GroupName = groupname
          @Description = description
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @GroupName = params['GroupName']
          @Description = params['Description']
        end
      end

      # ModifyAccountGroup返回参数结构体
      class ModifyAccountGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAppAccount请求参数结构体
      class ModifyAppAccountRequest < TencentCloud::Common::AbstractModel
        # @param AccountId: 账号ID。
        # @type AccountId: String
        # @param AccountName: 账号名称。未传入该参数时，表示不进行修改。
        # @type AccountName: String
        # @param Password: 账号密码。未传入该参数时，表示不进行修改。
        # @type Password: String
        # @param Description: 描述，未传入该参数时，表示不进行修改。
        # @type Description: String

        attr_accessor :AccountId, :AccountName, :Password, :Description

        def initialize(accountid=nil, accountname=nil, password=nil, description=nil)
          @AccountId = accountid
          @AccountName = accountname
          @Password = password
          @Description = description
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @AccountName = params['AccountName']
          @Password = params['Password']
          @Description = params['Description']
        end
      end

      # ModifyAppAccount返回参数结构体
      class ModifyAppAccountResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplication请求参数结构体
      class ModifyApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID，是应用的全局唯一标识。
        # @type ApplicationId: String
        # @param SecureLevel: 安全级别。
        # @type SecureLevel: String
        # @param DisplayName: 应用展示名称，长度限制：32个字符。 默认与应用名字相同。
        # @type DisplayName: String
        # @param AppStatus: 应用状态，true表示启用，false表示禁用。
        # @type AppStatus: Boolean
        # @param IconUrl: 应用图标图片访问地址。
        # @type IconUrl: String
        # @param Description: 描述。长度不超过128。
        # @type Description: String

        attr_accessor :ApplicationId, :SecureLevel, :DisplayName, :AppStatus, :IconUrl, :Description

        def initialize(applicationid=nil, securelevel=nil, displayname=nil, appstatus=nil, iconurl=nil, description=nil)
          @ApplicationId = applicationid
          @SecureLevel = securelevel
          @DisplayName = displayname
          @AppStatus = appstatus
          @IconUrl = iconurl
          @Description = description
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SecureLevel = params['SecureLevel']
          @DisplayName = params['DisplayName']
          @AppStatus = params['AppStatus']
          @IconUrl = params['IconUrl']
          @Description = params['Description']
        end
      end

      # ModifyApplication返回参数结构体
      class ModifyApplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserInfo请求参数结构体
      class ModifyUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：32个字符。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        # @type UserName: String
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # @type DisplayName: String
        # @param Description: 用户备注，长度限制：512个字符。
        # @type Description: String
        # @param UserGroupIds: 用户所属用户组ID列表。
        # @type UserGroupIds: Array
        # @param UserId: 用户 id。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        # @type UserId: String
        # @param Phone: 用户手机号。
        # @type Phone: String
        # @param ExpirationTime: 用户过期时间，遵循 ISO 8601 标准。
        # @type ExpirationTime: String
        # @param Password: 用户密码， 需要符合密码策略的配置。
        # @type Password: String
        # @param Email: 用户邮箱。
        # @type Email: String
        # @param PwdNeedReset: 密码是否需要重置，为空默认为false不需要重置密码。
        # @type PwdNeedReset: Boolean
        # @param OrgNodeId: 用户所属的主组织机构唯一ID。如果为空，默认为在根节点下创建用户。
        # @type OrgNodeId: String
        # @param SecondaryOrgNodeIdList: 用户所属的次要组织机构ID列表。
        # @type SecondaryOrgNodeIdList: Array

        attr_accessor :UserName, :DisplayName, :Description, :UserGroupIds, :UserId, :Phone, :ExpirationTime, :Password, :Email, :PwdNeedReset, :OrgNodeId, :SecondaryOrgNodeIdList

        def initialize(username=nil, displayname=nil, description=nil, usergroupids=nil, userid=nil, phone=nil, expirationtime=nil, password=nil, email=nil, pwdneedreset=nil, orgnodeid=nil, secondaryorgnodeidlist=nil)
          @UserName = username
          @DisplayName = displayname
          @Description = description
          @UserGroupIds = usergroupids
          @UserId = userid
          @Phone = phone
          @ExpirationTime = expirationtime
          @Password = password
          @Email = email
          @PwdNeedReset = pwdneedreset
          @OrgNodeId = orgnodeid
          @SecondaryOrgNodeIdList = secondaryorgnodeidlist
        end

        def deserialize(params)
          @UserName = params['UserName']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @UserGroupIds = params['UserGroupIds']
          @UserId = params['UserId']
          @Phone = params['Phone']
          @ExpirationTime = params['ExpirationTime']
          @Password = params['Password']
          @Email = params['Email']
          @PwdNeedReset = params['PwdNeedReset']
          @OrgNodeId = params['OrgNodeId']
          @SecondaryOrgNodeIdList = params['SecondaryOrgNodeIdList']
        end
      end

      # ModifyUserInfo返回参数结构体
      class ModifyUserInfoResponse < TencentCloud::Common::AbstractModel
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

      # 当前机构节点下的子节点列表
      class OrgNodeChildInfo < TencentCloud::Common::AbstractModel
        # @param DisplayName: 机构节点展示名称，长度限制：64个字符。 默认与机构名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param LastModifiedDate: 机构节点最后修改时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: String
        # @param CustomizedOrgNodeId: 用户自定义可选填的机构节点对外ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomizedOrgNodeId: String
        # @param ParentOrgNodeId: 当前机构节点的父节点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentOrgNodeId: String
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param DataSource: 数据来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param CreatedDate: 机构节点创建时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String
        # @param Description: 机构节点描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :DisplayName, :LastModifiedDate, :CustomizedOrgNodeId, :ParentOrgNodeId, :OrgNodeId, :DataSource, :CreatedDate, :Description

        def initialize(displayname=nil, lastmodifieddate=nil, customizedorgnodeid=nil, parentorgnodeid=nil, orgnodeid=nil, datasource=nil, createddate=nil, description=nil)
          @DisplayName = displayname
          @LastModifiedDate = lastmodifieddate
          @CustomizedOrgNodeId = customizedorgnodeid
          @ParentOrgNodeId = parentorgnodeid
          @OrgNodeId = orgnodeid
          @DataSource = datasource
          @CreatedDate = createddate
          @Description = description
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @LastModifiedDate = params['LastModifiedDate']
          @CustomizedOrgNodeId = params['CustomizedOrgNodeId']
          @ParentOrgNodeId = params['ParentOrgNodeId']
          @OrgNodeId = params['OrgNodeId']
          @DataSource = params['DataSource']
          @CreatedDate = params['CreatedDate']
          @Description = params['Description']
        end
      end

      # 机构子节点下的用户信息列表
      class OrgNodeChildUserInfo < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构ID，是机构节点全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param UserInfo: 用户信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInfo: Array
        # @param TotalUserNum: 当前机构节点下的用户总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUserNum: Integer
        # @param OrgNodeIdPath: 组织机构ID路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeIdPath: String
        # @param OrgNodeNamePath: 组织机构名称路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeNamePath: String

        attr_accessor :OrgNodeId, :UserInfo, :TotalUserNum, :OrgNodeIdPath, :OrgNodeNamePath

        def initialize(orgnodeid=nil, userinfo=nil, totalusernum=nil, orgnodeidpath=nil, orgnodenamepath=nil)
          @OrgNodeId = orgnodeid
          @UserInfo = userinfo
          @TotalUserNum = totalusernum
          @OrgNodeIdPath = orgnodeidpath
          @OrgNodeNamePath = orgnodenamepath
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
          unless params['UserInfo'].nil?
            @UserInfo = []
            params['UserInfo'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfo << userinfo_tmp
            end
          end
          @TotalUserNum = params['TotalUserNum']
          @OrgNodeIdPath = params['OrgNodeIdPath']
          @OrgNodeNamePath = params['OrgNodeNamePath']
        end
      end

      # RemoveAccountFromAccountGroup请求参数结构体
      class RemoveAccountFromAccountGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 账号组ID
        # @type AccountGroupId: String
        # @param AccountIds: 需要移除账号ID列表。
        # @type AccountIds: Array

        attr_accessor :AccountGroupId, :AccountIds

        def initialize(accountgroupid=nil, accountids=nil)
          @AccountGroupId = accountgroupid
          @AccountIds = accountids
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
          @AccountIds = params['AccountIds']
        end
      end

      # RemoveAccountFromAccountGroup返回参数结构体
      class RemoveAccountFromAccountGroupResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUserFromUserGroup请求参数结构体
      class RemoveUserFromUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UserIds: 要加入用户组的用户ID列表。
        # @type UserIds: Array
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # @type UserGroupId: String

        attr_accessor :UserIds, :UserGroupId

        def initialize(userids=nil, usergroupid=nil)
          @UserIds = userids
          @UserGroupId = usergroupid
        end

        def deserialize(params)
          @UserIds = params['UserIds']
          @UserGroupId = params['UserGroupId']
        end
      end

      # RemoveUserFromUserGroup返回参数结构体
      class RemoveUserFromUserGroupResponse < TencentCloud::Common::AbstractModel
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

      # 排序条件。
      class SortCondition < TencentCloud::Common::AbstractModel
        # @param SortKey: 排序属性。
        # @type SortKey: String
        # @param SortOrder: 排序顺序，ASC为正向排序，DESC为反向排序。
        # @type SortOrder: String

        attr_accessor :SortKey, :SortOrder

        def initialize(sortkey=nil, sortorder=nil)
          @SortKey = sortkey
          @SortOrder = sortorder
        end

        def deserialize(params)
          @SortKey = params['SortKey']
          @SortOrder = params['SortOrder']
        end
      end

      # 三方账号信息。
      class ThirdPartyAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountCode: 第三方账号代码。"2"代表企业微信。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountCode: String
        # @param AccountName: 账号对应的用户名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String

        attr_accessor :AccountCode, :AccountName

        def initialize(accountcode=nil, accountname=nil)
          @AccountCode = accountcode
          @AccountName = accountname
        end

        def deserialize(params)
          @AccountCode = params['AccountCode']
          @AccountName = params['AccountName']
        end
      end

      # UpdateOrgNode请求参数结构体
      class UpdateOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # @type OrgNodeId: String
        # @param DisplayName: 机构节点名称，长度限制：64个字符。
        # @type DisplayName: String
        # @param Description: 机构节点描述。
        # @type Description: String
        # @param CustomizedOrgNodeId: 机构代码。如果非空则校验此ID的唯一性。
        # @type CustomizedOrgNodeId: String

        attr_accessor :OrgNodeId, :DisplayName, :Description, :CustomizedOrgNodeId

        def initialize(orgnodeid=nil, displayname=nil, description=nil, customizedorgnodeid=nil)
          @OrgNodeId = orgnodeid
          @DisplayName = displayname
          @Description = description
          @CustomizedOrgNodeId = customizedorgnodeid
        end

        def deserialize(params)
          @OrgNodeId = params['OrgNodeId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @CustomizedOrgNodeId = params['CustomizedOrgNodeId']
        end
      end

      # UpdateOrgNode返回参数结构体
      class UpdateOrgNodeResponse < TencentCloud::Common::AbstractModel
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

      # 返回的用户组列表。
      class UserGroupInfo < TencentCloud::Common::AbstractModel
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param UserGroupId: 用户组ID，是用户组全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param Description: 用户组备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedDate: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedDate: String

        attr_accessor :DisplayName, :UserGroupId, :Description, :CreatedDate

        def initialize(displayname=nil, usergroupid=nil, description=nil, createddate=nil)
          @DisplayName = displayname
          @UserGroupId = usergroupid
          @Description = description
          @CreatedDate = createddate
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @UserGroupId = params['UserGroupId']
          @Description = params['Description']
          @CreatedDate = params['CreatedDate']
        end
      end

      # 用户组属性搜索条件。
      class UserGroupInfoSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 名称匹配搜索，匹配范围包括：用户组名称、用户组ID。
        # @type Keyword: String

        attr_accessor :Keyword

        def initialize(keyword=nil)
          @Keyword = keyword
        end

        def deserialize(params)
          @Keyword = params['Keyword']
        end
      end

      # 返回的用户组列表。
      class UserGroupInformation < TencentCloud::Common::AbstractModel
        # @param UserGroupId: 用户组ID。
        # @type UserGroupId: String
        # @param UserGroupName: 用户组名称。
        # @type UserGroupName: String
        # @param LastModifiedDate: 上次更新时间，符合 ISO8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: String

        attr_accessor :UserGroupId, :UserGroupName, :LastModifiedDate

        def initialize(usergroupid=nil, usergroupname=nil, lastmodifieddate=nil)
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
          @LastModifiedDate = lastmodifieddate
        end

        def deserialize(params)
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
          @LastModifiedDate = params['LastModifiedDate']
        end
      end

      # 获取用户所在的用户组列表功能中用户组属性搜索条件。
      class UserGroupInformationSearchCriteria < TencentCloud::Common::AbstractModel
        # @param Keyword: 名称匹配搜索，匹配范围包括：用户组名称。
        # @type Keyword: String

        attr_accessor :Keyword

        def initialize(keyword=nil)
          @Keyword = keyword
        end

        def deserialize(params)
          @Keyword = params['Keyword']
        end
      end

      # 用户信息列表。
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，是用户全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param UserName: 用户名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Phone: 用户手机号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Email: 邮箱地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Status: 用户状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param DataSource: 数据来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String

        attr_accessor :UserId, :DisplayName, :UserName, :Phone, :Email, :Status, :DataSource

        def initialize(userid=nil, displayname=nil, username=nil, phone=nil, email=nil, status=nil, datasource=nil)
          @UserId = userid
          @DisplayName = displayname
          @UserName = username
          @Phone = phone
          @Email = email
          @Status = status
          @DataSource = datasource
        end

        def deserialize(params)
          @UserId = params['UserId']
          @DisplayName = params['DisplayName']
          @UserName = params['UserName']
          @Phone = params['Phone']
          @Email = params['Email']
          @Status = params['Status']
          @DataSource = params['DataSource']
        end
      end

      # 用户信息列表。
      class UserInformation < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：32个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Status: 用户状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 用户备注，长度限制：512个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param LastUpdateTime: 用户上次更新时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param CreationTime: 用户创建时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param OrgPath: 用户所属主组织机构的路径ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPath: String
        # @param Phone: 带国家号的用户手机号，例如+86-00000000000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param SubjectGroups: 用户所属用户组ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectGroups: Array
        # @param Email: 用户邮箱。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param LastLoginTime: 用户上次登录时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLoginTime: String
        # @param UserId: 用户ID，是用户全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String

        attr_accessor :UserName, :Status, :DisplayName, :Description, :LastUpdateTime, :CreationTime, :OrgPath, :Phone, :SubjectGroups, :Email, :LastLoginTime, :UserId

        def initialize(username=nil, status=nil, displayname=nil, description=nil, lastupdatetime=nil, creationtime=nil, orgpath=nil, phone=nil, subjectgroups=nil, email=nil, lastlogintime=nil, userid=nil)
          @UserName = username
          @Status = status
          @DisplayName = displayname
          @Description = description
          @LastUpdateTime = lastupdatetime
          @CreationTime = creationtime
          @OrgPath = orgpath
          @Phone = phone
          @SubjectGroups = subjectgroups
          @Email = email
          @LastLoginTime = lastlogintime
          @UserId = userid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Status = params['Status']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
          @LastUpdateTime = params['LastUpdateTime']
          @CreationTime = params['CreationTime']
          @OrgPath = params['OrgPath']
          @Phone = params['Phone']
          @SubjectGroups = params['SubjectGroups']
          @Email = params['Email']
          @LastLoginTime = params['LastLoginTime']
          @UserId = params['UserId']
        end
      end

      # 用户属性搜索条件。
      class UserSearchCriteria < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，长度限制：64个字符。
        # @type UserName: String
        # @param Phone: 用户手机号。
        # @type Phone: String
        # @param Email: 用户邮箱。
        # @type Email: String
        # @param Status: 用户状态，取值 NORMAL （正常）、FREEZE （已冻结）、LOCKED （已锁定）或 NOT_ENABLED （未启用）。
        # @type Status: String
        # @param CreationTime: 用户创建时间，遵循 ISO 8601 标准。
        # @type CreationTime: String
        # @param LastUpdateTime: 用户上次更新时间区间。
        # @type LastUpdateTime: String
        # @param Keyword: 名称匹配搜索，匹配范围包括：用户名称、用户ID。
        # @type Keyword: String

        attr_accessor :UserName, :Phone, :Email, :Status, :CreationTime, :LastUpdateTime, :Keyword

        def initialize(username=nil, phone=nil, email=nil, status=nil, creationtime=nil, lastupdatetime=nil, keyword=nil)
          @UserName = username
          @Phone = phone
          @Email = email
          @Status = status
          @CreationTime = creationtime
          @LastUpdateTime = lastupdatetime
          @Keyword = keyword
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Phone = params['Phone']
          @Email = params['Email']
          @Status = params['Status']
          @CreationTime = params['CreationTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Keyword = params['Keyword']
        end
      end

    end
  end
end

