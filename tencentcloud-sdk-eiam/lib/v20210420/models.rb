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
  module Eiam
    module V20210420
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

        attr_accessor :ApplicationAccounts, :ApplicationId, :InheritedForm
        
        def initialize(applicationaccounts=nil, applicationid=nil, inheritedform=nil)
          @ApplicationAccounts = applicationaccounts
          @ApplicationId = applicationid
          @InheritedForm = inheritedform
        end

        def deserialize(params)
          @ApplicationAccounts = params['ApplicationAccounts']
          @ApplicationId = params['ApplicationId']
          unless params['InheritedForm'].nil?
            @InheritedForm = InheritedForm.new
            @InheritedForm.deserialize(params['InheritedForm'])
          end
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
        # @param CustomizedOrgNodeId: 用户自定义可选填的机构节点对外ID，如果非空则校验此ID的唯一性。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param DisplayName: 昵称，长度限制：64个字符。 DisplayName是唯一的。
        # @type DisplayName: String
        # @param Description: 用户备注，长度限制：512个字符。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Phone: 用户手机号。
        # @type Phone: String
        # @param OrgNodeId: 用户所属组织机构唯一ID。如果为空，默认为在根节点下创建用户。
        # @type OrgNodeId: String
        # @param ExpirationTime: 用户过期时间，遵循 ISO 8601 标准。
        # @type ExpirationTime: String
        # @param Email: 用户邮箱。
        # @type Email: String
        # @param PwdNeedReset: 密码是否需要重置，为空默认为false不需要重置密码。
        # @type PwdNeedReset: Boolean

        attr_accessor :UserName, :Password, :DisplayName, :Description, :UserGroupIds, :Phone, :OrgNodeId, :ExpirationTime, :Email, :PwdNeedReset
        
        def initialize(username=nil, password=nil, displayname=nil, description=nil, usergroupids=nil, phone=nil, orgnodeid=nil, expirationtime=nil, email=nil, pwdneedreset=nil)
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
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 返回的新创建的用户ID，是该用户的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ApplicationType: 应用类型，即创建应用时所选择的应用模版类型。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :DisplayName, :LastModifiedDate, :ClientId, :ApplicationType, :CreatedDate, :ApplicationId, :TokenExpired, :ClientSecret, :PublicKey, :AuthorizeUrl, :RequestId
        
        def initialize(keyid=nil, displayname=nil, lastmodifieddate=nil, clientid=nil, applicationtype=nil, createddate=nil, applicationid=nil, tokenexpired=nil, clientsecret=nil, publickey=nil, authorizeurl=nil, requestid=nil)
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrgNode请求参数结构体
      class DescribeOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点信息。
        # @type OrgNodeId: String
        # @param IncludeOrgNodeChildInfo: 是否读取其子节点信息。当读取层数为空或0时，默认仅读取当前机构节点信息。当读取层数为1时，读取本机构节点以及其第一层子节点信息。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisplayName, :LastModifiedDate, :CustomizedOrgNodeId, :ParentOrgNodeId, :OrgNodeId, :DataSource, :CreatedDate, :OrgNodeChildInfo, :RequestId
        
        def initialize(displayname=nil, lastmodifieddate=nil, customizedorgnodeid=nil, parentorgnodeid=nil, orgnodeid=nil, datasource=nil, createddate=nil, orgnodechildinfo=nil, requestid=nil)
          @DisplayName = displayname
          @LastModifiedDate = lastmodifieddate
          @CustomizedOrgNodeId = customizedorgnodeid
          @ParentOrgNodeId = parentorgnodeid
          @OrgNodeId = orgnodeid
          @DataSource = datasource
          @CreatedDate = createddate
          @OrgNodeChildInfo = orgnodechildinfo
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

      # DescribeUserGroup返回参数结构体
      class DescribeUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param DisplayName: 昵称，长度限制：64个字符。 DisplayName不唯一。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param Description: 用户备注，长度限制：512个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UserGroupId: 用户组ID，是用户组的全局唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param DisplayName: 昵称
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
        # @param OrgNodeId: 用户所属组织机构 Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgNodeId: String
        # @param DataSource: 数据来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param ExpirationTime: 用户过期时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpirationTime: String
        # @param ActivationTime: 用户激活时间，遵循 ISO 8601 标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivationTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserName, :Status, :DisplayName, :Description, :UserGroupIds, :UserId, :Email, :Phone, :OrgNodeId, :DataSource, :ExpirationTime, :ActivationTime, :RequestId
        
        def initialize(username=nil, status=nil, displayname=nil, description=nil, usergroupids=nil, userid=nil, email=nil, phone=nil, orgnodeid=nil, datasource=nil, expirationtime=nil, activationtime=nil, requestid=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param IncludeInheritedAuthorizations: 查询范围是否包括用户关联的用户组、组织机构的应用访问权限。默认为不查询 。传0表示不查询该范围，传1表示应用查询该范围。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :UserId
        
        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserGroupIds, :UserId, :RequestId
        
        def initialize(usergroupids=nil, userid=nil, requestid=nil)
          @UserGroupIds = usergroupids
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserGroupIds = params['UserGroupIds']
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # ListUsersInOrgNode请求参数结构体
      class ListUsersInOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点下用户信息。
        # @type OrgNodeId: String
        # @param IncludeOrgNodeChildInfo: 限制读取子节点信息层数。当读取层数为空或0时，默认仅读取当前机构节点信息。当读取层数为1时，读取本机构节点以及其第一层子节点信息。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgNodeChildUserInfo, :OrgNodeId, :UserInfo, :TotalUserNum, :RequestId
        
        def initialize(orgnodechilduserinfo=nil, orgnodeid=nil, userinfo=nil, totalusernum=nil, requestid=nil)
          @OrgNodeChildUserInfo = orgnodechilduserinfo
          @OrgNodeId = orgnodeid
          @UserInfo = userinfo
          @TotalUserNum = totalusernum
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
          @RequestId = params['RequestId']
        end
      end

      # ListUsersInUserGroup请求参数结构体
      class ListUsersInUserGroupRequest < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :UserName, :DisplayName, :Description, :UserGroupIds, :UserId, :Phone, :ExpirationTime, :Password, :Email, :PwdNeedReset
        
        def initialize(username=nil, displayname=nil, description=nil, usergroupids=nil, userid=nil, phone=nil, expirationtime=nil, password=nil, email=nil, pwdneedreset=nil)
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
        end
      end

      # ModifyUserInfo返回参数结构体
      class ModifyUserInfoResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :DisplayName, :LastModifiedDate, :CustomizedOrgNodeId, :ParentOrgNodeId, :OrgNodeId, :DataSource, :CreatedDate
        
        def initialize(displayname=nil, lastmodifieddate=nil, customizedorgnodeid=nil, parentorgnodeid=nil, orgnodeid=nil, datasource=nil, createddate=nil)
          @DisplayName = displayname
          @LastModifiedDate = lastmodifieddate
          @CustomizedOrgNodeId = customizedorgnodeid
          @ParentOrgNodeId = parentorgnodeid
          @OrgNodeId = orgnodeid
          @DataSource = datasource
          @CreatedDate = createddate
        end

        def deserialize(params)
          @DisplayName = params['DisplayName']
          @LastModifiedDate = params['LastModifiedDate']
          @CustomizedOrgNodeId = params['CustomizedOrgNodeId']
          @ParentOrgNodeId = params['ParentOrgNodeId']
          @OrgNodeId = params['OrgNodeId']
          @DataSource = params['DataSource']
          @CreatedDate = params['CreatedDate']
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

        attr_accessor :OrgNodeId, :UserInfo, :TotalUserNum
        
        def initialize(orgnodeid=nil, userinfo=nil, totalusernum=nil)
          @OrgNodeId = orgnodeid
          @UserInfo = userinfo
          @TotalUserNum = totalusernum
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

      # UpdateOrgNode请求参数结构体
      class UpdateOrgNodeRequest < TencentCloud::Common::AbstractModel
        # @param OrgNodeId: 机构节点ID，是机构节点的全局唯一标识。
        # @type OrgNodeId: String
        # @param DisplayName: 机构节点名称，长度限制：64个字符。
        # @type DisplayName: String
        # @param Description: 机构节点描述。
        # @type Description: String
        # @param CustomizedOrgNodeId: 用户自定义可选填的机构节点对外ID，如果非空则校验此ID的唯一性。
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

      # 用户信息列表。
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，是用户全局唯一标识，长度限制：64个字符。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param DisplayName: 昵称，长度限制：64个字符。 默认与用户名相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String

        attr_accessor :UserId, :DisplayName
        
        def initialize(userid=nil, displayname=nil)
          @UserId = userid
          @DisplayName = displayname
        end

        def deserialize(params)
          @UserId = params['UserId']
          @DisplayName = params['DisplayName']
        end
      end

    end
  end
end

