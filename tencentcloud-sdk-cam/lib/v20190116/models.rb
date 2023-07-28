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
  module Cam
    module V20190116
      # 访问密钥列表
      class AccessKey < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 访问密钥标识
        # @type AccessKeyId: String
        # @param Status: 密钥状态，激活（Active）或未激活（Inactive）
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AccessKeyId, :Status, :CreateTime

        def initialize(accesskeyid=nil, status=nil, createtime=nil)
          @AccessKeyId = accesskeyid
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 访问密钥
      class AccessKeyDetail < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 访问密钥标识
        # @type AccessKeyId: String
        # @param SecretAccessKey: 访问密钥（密钥仅创建时可见，请妥善保存）
        # @type SecretAccessKey: String
        # @param Status: 密钥状态，激活（Active）或未激活（Inactive）
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AccessKeyId, :SecretAccessKey, :Status, :CreateTime

        def initialize(accesskeyid=nil, secretaccesskey=nil, status=nil, createtime=nil)
          @AccessKeyId = accesskeyid
          @SecretAccessKey = secretaccesskey
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @SecretAccessKey = params['SecretAccessKey']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # AddUser请求参数结构体
      class AddUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户是否可以登录控制台。传0子用户无法登录控制台，传1子用户可以登录控制台。
        # @type ConsoleLogin: Integer
        # @param UseApi: 是否生成子用户密钥。传0不生成子用户密钥，传1生成子用户密钥。
        # @type UseApi: Integer
        # @param Password: 子用户控制台登录密码，若未进行密码规则设置则默认密码规则为8位以上同时包含大小写字母、数字和特殊字符。只有可以登录控制台时才有效，如果传空并且上面指定允许登录控制台，则自动生成随机密码，随机密码规则为32位包含大小写字母、数字和特殊字符。
        # @type Password: String
        # @param NeedResetPassword: 子用户是否要在下次登录时重置密码。传0子用户下次登录控制台不需重置密码，传1子用户下次登录控制台需要重置密码。
        # @type NeedResetPassword: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Name, :Remark, :ConsoleLogin, :UseApi, :Password, :NeedResetPassword, :PhoneNum, :CountryCode, :Email

        def initialize(name=nil, remark=nil, consolelogin=nil, useapi=nil, password=nil, needresetpassword=nil, phonenum=nil, countrycode=nil, email=nil)
          @Name = name
          @Remark = remark
          @ConsoleLogin = consolelogin
          @UseApi = useapi
          @Password = password
          @NeedResetPassword = needresetpassword
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @UseApi = params['UseApi']
          @Password = params['Password']
          @NeedResetPassword = params['NeedResetPassword']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
        end
      end

      # AddUser返回参数结构体
      class AddUserResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户 UIN
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Password: 如果输入参数组合为自动生成随机密码，则返回生成的密码
        # @type Password: String
        # @param SecretId: 子用户密钥 ID
        # @type SecretId: String
        # @param SecretKey: 子用户密钥 Key
        # @type SecretKey: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :Name, :Password, :SecretId, :SecretKey, :Uid, :RequestId

        def initialize(uin=nil, name=nil, password=nil, secretid=nil, secretkey=nil, uid=nil, requestid=nil)
          @Uin = uin
          @Name = name
          @Password = password
          @SecretId = secretid
          @SecretKey = secretkey
          @Uid = uid
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Password = params['Password']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Uid = params['Uid']
          @RequestId = params['RequestId']
        end
      end

      # AddUserToGroup请求参数结构体
      class AddUserToGroupRequest < TencentCloud::Common::AbstractModel
        # @param Info: 添加的子用户 UIN/UID 和用户组 ID 关联关系
        # @type Info: Array

        attr_accessor :Info

        def initialize(info=nil)
          @Info = info
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              groupidofuidinfo_tmp = GroupIdOfUidInfo.new
              groupidofuidinfo_tmp.deserialize(i)
              @Info << groupidofuidinfo_tmp
            end
          end
        end
      end

      # AddUserToGroup返回参数结构体
      class AddUserToGroupResponse < TencentCloud::Common::AbstractModel
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

      # 策略关联的实体信息
      class AttachEntityOfPolicy < TencentCloud::Common::AbstractModel
        # @param Id: 实体ID
        # @type Id: String
        # @param Name: 实体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Uin: 实体Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: Integer
        # @param RelatedType: 关联类型。1 用户关联 ； 2 用户组关联
        # @type RelatedType: Integer
        # @param AttachmentTime: 策略关联时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachmentTime: String

        attr_accessor :Id, :Name, :Uin, :RelatedType, :AttachmentTime

        def initialize(id=nil, name=nil, uin=nil, relatedtype=nil, attachmenttime=nil)
          @Id = id
          @Name = name
          @Uin = uin
          @RelatedType = relatedtype
          @AttachmentTime = attachmenttime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Uin = params['Uin']
          @RelatedType = params['RelatedType']
          @AttachmentTime = params['AttachmentTime']
        end
      end

      # AttachGroupPolicy请求参数结构体
      class AttachGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param AttachGroupId: 用户组 id
        # @type AttachGroupId: Integer

        attr_accessor :PolicyId, :AttachGroupId

        def initialize(policyid=nil, attachgroupid=nil)
          @PolicyId = policyid
          @AttachGroupId = attachgroupid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachGroupId = params['AttachGroupId']
        end
      end

      # AttachGroupPolicy返回参数结构体
      class AttachGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 关联策略信息
      class AttachPolicyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param CreateMode: 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateMode: Integer
        # @param PolicyType: 取值为user和QCS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param Remark: 策略备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param OperateOwnerUin: 策略关联操作者主帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateOwnerUin: String
        # @param OperateUin: 策略关联操作者ID，如果UinType为0表示子帐号Uin，如果UinType为1表示角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param OperateUinType: UinType为0表示OperateUin字段是子帐号Uin，如果UinType为1表示OperateUin字段是角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUinType: Integer
        # @param Deactived: 是否已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线的产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array

        attr_accessor :PolicyId, :PolicyName, :AddTime, :CreateMode, :PolicyType, :Remark, :OperateOwnerUin, :OperateUin, :OperateUinType, :Deactived, :DeactivedDetail

        def initialize(policyid=nil, policyname=nil, addtime=nil, createmode=nil, policytype=nil, remark=nil, operateowneruin=nil, operateuin=nil, operateuintype=nil, deactived=nil, deactiveddetail=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @CreateMode = createmode
          @PolicyType = policytype
          @Remark = remark
          @OperateOwnerUin = operateowneruin
          @OperateUin = operateuin
          @OperateUinType = operateuintype
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @CreateMode = params['CreateMode']
          @PolicyType = params['PolicyType']
          @Remark = params['Remark']
          @OperateOwnerUin = params['OperateOwnerUin']
          @OperateUin = params['OperateUin']
          @OperateUinType = params['OperateUinType']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
        end
      end

      # AttachRolePolicy请求参数结构体
      class AttachRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，入参PolicyId与PolicyName二选一
        # @type PolicyId: Integer
        # @param AttachRoleId: 角色ID，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type AttachRoleId: String
        # @param AttachRoleName: 角色名称，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type AttachRoleName: String
        # @param PolicyName: 策略名，入参PolicyId与PolicyName二选一
        # @type PolicyName: String

        attr_accessor :PolicyId, :AttachRoleId, :AttachRoleName, :PolicyName

        def initialize(policyid=nil, attachroleid=nil, attachrolename=nil, policyname=nil)
          @PolicyId = policyid
          @AttachRoleId = attachroleid
          @AttachRoleName = attachrolename
          @PolicyName = policyname
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachRoleId = params['AttachRoleId']
          @AttachRoleName = params['AttachRoleName']
          @PolicyName = params['PolicyName']
        end
      end

      # AttachRolePolicy返回参数结构体
      class AttachRolePolicyResponse < TencentCloud::Common::AbstractModel
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

      # AttachUserPolicy请求参数结构体
      class AttachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param AttachUin: 子账号 uin
        # @type AttachUin: Integer

        attr_accessor :PolicyId, :AttachUin

        def initialize(policyid=nil, attachuin=nil)
          @PolicyId = policyid
          @AttachUin = attachuin
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachUin = params['AttachUin']
        end
      end

      # AttachUserPolicy返回参数结构体
      class AttachUserPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 角色关联的策略信息
      class AttachedPolicyOfRole < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param AddTime: 绑定时间
        # @type AddTime: String
        # @param PolicyType: 策略类型，User表示自定义策略，QCS表示预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param CreateMode: 策略创建方式，1表示按产品功能或项目权限创建，其他表示按策略语法创建
        # @type CreateMode: Integer
        # @param Deactived: 是否已下线(0:否 1:是)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线的产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array
        # @param Description: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :PolicyId, :PolicyName, :AddTime, :PolicyType, :CreateMode, :Deactived, :DeactivedDetail, :Description

        def initialize(policyid=nil, policyname=nil, addtime=nil, policytype=nil, createmode=nil, deactived=nil, deactiveddetail=nil, description=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @PolicyType = policytype
          @CreateMode = createmode
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
          @Description = description
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @PolicyType = params['PolicyType']
          @CreateMode = params['CreateMode']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
          @Description = params['Description']
        end
      end

      # 用户关联的策略详情
      class AttachedUserPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param PolicyName: 策略名
        # @type PolicyName: String
        # @param Description: 策略描述
        # @type Description: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param StrategyType: 策略类型(1表示自定义策略，2表示预设策略)
        # @type StrategyType: String
        # @param CreateMode: 创建模式(1表示按产品或项目权限创建的策略，其他表示策略语法创建的策略)
        # @type CreateMode: String
        # @param Groups: 随组关联信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param Deactived: 是否已下线(0:否 1:是)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线的产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array

        attr_accessor :PolicyId, :PolicyName, :Description, :AddTime, :StrategyType, :CreateMode, :Groups, :Deactived, :DeactivedDetail

        def initialize(policyid=nil, policyname=nil, description=nil, addtime=nil, strategytype=nil, createmode=nil, groups=nil, deactived=nil, deactiveddetail=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Description = description
          @AddTime = addtime
          @StrategyType = strategytype
          @CreateMode = createmode
          @Groups = groups
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @StrategyType = params['StrategyType']
          @CreateMode = params['CreateMode']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              attacheduserpolicygroupinfo_tmp = AttachedUserPolicyGroupInfo.new
              attacheduserpolicygroupinfo_tmp.deserialize(i)
              @Groups << attacheduserpolicygroupinfo_tmp
            end
          end
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
        end
      end

      # 用户关联策略(随组关联)信息
      class AttachedUserPolicyGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: Integer
        # @param GroupName: 分组名称
        # @type GroupName: String

        attr_accessor :GroupId, :GroupName

        def initialize(groupid=nil, groupname=nil)
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # ConsumeCustomMFAToken请求参数结构体
      class ConsumeCustomMFATokenRequest < TencentCloud::Common::AbstractModel
        # @param MFAToken: 自定义多因子验证Token
        # @type MFAToken: String

        attr_accessor :MFAToken

        def initialize(mfatoken=nil)
          @MFAToken = mfatoken
        end

        def deserialize(params)
          @MFAToken = params['MFAToken']
        end
      end

      # ConsumeCustomMFAToken返回参数结构体
      class ConsumeCustomMFATokenResponse < TencentCloud::Common::AbstractModel
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

      # CreateAccessKey请求参数结构体
      class CreateAccessKeyRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 指定用户Uin，不填默认为当前用户创建访问密钥
        # @type TargetUin: Integer

        attr_accessor :TargetUin

        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # CreateAccessKey返回参数结构体
      class CreateAccessKeyResponse < TencentCloud::Common::AbstractModel
        # @param AccessKey: 访问密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: :class:`Tencentcloud::Cam.v20190116.models.AccessKeyDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessKey, :RequestId

        def initialize(accesskey=nil, requestid=nil)
          @AccessKey = accesskey
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessKey'].nil?
            @AccessKey = AccessKeyDetail.new
            @AccessKey.deserialize(params['AccessKey'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 用户组名
        # @type GroupName: String
        # @param Remark: 用户组描述
        # @type Remark: String

        attr_accessor :GroupName, :Remark

        def initialize(groupname=nil, remark=nil)
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId

        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOIDCConfig请求参数结构体
      class CreateOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥，需要base64
        # @type IdentityKey: String
        # @param ClientId: 客户端ID
        # @type ClientId: Array
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :IdentityUrl, :IdentityKey, :ClientId, :Name, :Description

        def initialize(identityurl=nil, identitykey=nil, clientid=nil, name=nil, description=nil)
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateOIDCConfig返回参数结构体
      class CreateOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreatePolicy请求参数结构体
      class CreatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyName: 策略名称。长度为1~128个字符，可包含英文字母、数字和+=,.@-_。
        # @type PolicyName: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Description: 策略描述
        # @type Description: String

        attr_accessor :PolicyName, :PolicyDocument, :Description

        def initialize(policyname=nil, policydocument=nil, description=nil)
          @PolicyName = policyname
          @PolicyDocument = policydocument
          @Description = description
        end

        def deserialize(params)
          @PolicyName = params['PolicyName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
        end
      end

      # CreatePolicy返回参数结构体
      class CreatePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 新增策略ID
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

      # CreatePolicyVersion请求参数结构体
      class CreatePolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param PolicyDocument: 策略文本信息
        # @type PolicyDocument: String
        # @param SetAsDefault: 是否设置为当前策略的版本
        # @type SetAsDefault: Boolean

        attr_accessor :PolicyId, :PolicyDocument, :SetAsDefault

        def initialize(policyid=nil, policydocument=nil, setasdefault=nil)
          @PolicyId = policyid
          @PolicyDocument = policydocument
          @SetAsDefault = setasdefault
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyDocument = params['PolicyDocument']
          @SetAsDefault = params['SetAsDefault']
        end
      end

      # CreatePolicyVersion返回参数结构体
      class CreatePolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :RequestId

        def initialize(versionid=nil, requestid=nil)
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRole请求参数结构体
      class CreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称。长度为1~128个字符，可包含英文字母、数字和+=,.@-_。
        # @type RoleName: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Description: 角色描述
        # @type Description: String
        # @param ConsoleLogin: 是否允许登录 1 为允许 0 为不允许
        # @type ConsoleLogin: Integer
        # @param SessionDuration: 申请角色临时密钥的最长有效期限制(范围：0~43200)
        # @type SessionDuration: Integer
        # @param Tags: 角色绑定标签
        # @type Tags: Array

        attr_accessor :RoleName, :PolicyDocument, :Description, :ConsoleLogin, :SessionDuration, :Tags

        def initialize(rolename=nil, policydocument=nil, description=nil, consolelogin=nil, sessionduration=nil, tags=nil)
          @RoleName = rolename
          @PolicyDocument = policydocument
          @Description = description
          @ConsoleLogin = consolelogin
          @SessionDuration = sessionduration
          @Tags = tags
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
          @ConsoleLogin = params['ConsoleLogin']
          @SessionDuration = params['SessionDuration']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              roletags_tmp = RoleTags.new
              roletags_tmp.deserialize(i)
              @Tags << roletags_tmp
            end
          end
        end
      end

      # CreateRole返回参数结构体
      class CreateRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId

        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSAMLProvider请求参数结构体
      class CreateSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param SAMLMetadataDocument: SAML身份提供商Base64编码的元数据文档
        # @type SAMLMetadataDocument: String

        attr_accessor :Name, :Description, :SAMLMetadataDocument

        def initialize(name=nil, description=nil, samlmetadatadocument=nil)
          @Name = name
          @Description = description
          @SAMLMetadataDocument = samlmetadatadocument
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
        end
      end

      # CreateSAMLProvider返回参数结构体
      class CreateSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param ProviderArn: SAML身份提供商资源描述符
        # @type ProviderArn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProviderArn, :RequestId

        def initialize(providerarn=nil, requestid=nil)
          @ProviderArn = providerarn
          @RequestId = requestid
        end

        def deserialize(params)
          @ProviderArn = params['ProviderArn']
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceLinkedRole请求参数结构体
      class CreateServiceLinkedRoleRequest < TencentCloud::Common::AbstractModel
        # @param QCSServiceName: 授权服务，附加了此角色的腾讯云服务主体。
        # @type QCSServiceName: Array
        # @param CustomSuffix: 自定义后缀，根据您提供的字符串，与服务提供的前缀组合在一起以形成完整的角色名称。
        # @type CustomSuffix: String
        # @param Description: 角色说明。
        # @type Description: String
        # @param Tags: 角色绑定标签。
        # @type Tags: Array

        attr_accessor :QCSServiceName, :CustomSuffix, :Description, :Tags

        def initialize(qcsservicename=nil, customsuffix=nil, description=nil, tags=nil)
          @QCSServiceName = qcsservicename
          @CustomSuffix = customsuffix
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @QCSServiceName = params['QCSServiceName']
          @CustomSuffix = params['CustomSuffix']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              roletags_tmp = RoleTags.new
              roletags_tmp.deserialize(i)
              @Tags << roletags_tmp
            end
          end
        end
      end

      # CreateServiceLinkedRole返回参数结构体
      class CreateServiceLinkedRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId

        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserOIDCConfig请求参数结构体
      class CreateUserOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL。OpenID Connect身份提供商标识。
        # 对应企业IdP提供的Openid-configuration中"issuer"字段的值。
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥，需要base64_encode。验证OpenID Connect身份提供商ID Token签名的公钥。为了您的帐号安全，建议您定期轮换签名公钥。
        # @type IdentityKey: String
        # @param ClientId: 客户端ID，在OpenID Connect身份提供商注册的客户端ID。
        # @type ClientId: String
        # @param AuthorizationEndpoint: 授权请求Endpoint，OpenID Connect身份提供商授权地址。对应企业IdP提供的Openid-configuration中"authorization_endpoint"字段的值。
        # @type AuthorizationEndpoint: String
        # @param ResponseType: 授权请求Response type，固定值id_token
        # @type ResponseType: String
        # @param ResponseMode: 授权请求Response mode。授权请求返回模式，form_post和fragment两种可选模式，推荐选择form_post模式。
        # @type ResponseMode: String
        # @param MappingFiled: 映射字段名称。IdP的id_token中哪一个字段映射到子用户的用户名，通常是sub或者name字段
        # @type MappingFiled: String
        # @param Scope: 授权请求Scope。openid; email;profile。授权请求信息范围。默认必选openid。
        # @type Scope: Array
        # @param Description: 描述
        # @type Description: String

        attr_accessor :IdentityUrl, :IdentityKey, :ClientId, :AuthorizationEndpoint, :ResponseType, :ResponseMode, :MappingFiled, :Scope, :Description

        def initialize(identityurl=nil, identitykey=nil, clientid=nil, authorizationendpoint=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, scope=nil, description=nil)
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @AuthorizationEndpoint = authorizationendpoint
          @ResponseType = responsetype
          @ResponseMode = responsemode
          @MappingFiled = mappingfiled
          @Scope = scope
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @Scope = params['Scope']
          @Description = params['Description']
        end
      end

      # CreateUserOIDCConfig返回参数结构体
      class CreateUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateUserSAMLConfig请求参数结构体
      class CreateUserSAMLConfigRequest < TencentCloud::Common::AbstractModel
        # @param SAMLMetadataDocument: SAML元数据文档，需要base64 encode
        # @type SAMLMetadataDocument: String
        # @param AuxiliaryDomain: 辅助域名
        # @type AuxiliaryDomain: String

        attr_accessor :SAMLMetadataDocument, :AuxiliaryDomain

        def initialize(samlmetadatadocument=nil, auxiliarydomain=nil)
          @SAMLMetadataDocument = samlmetadatadocument
          @AuxiliaryDomain = auxiliarydomain
        end

        def deserialize(params)
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
          @AuxiliaryDomain = params['AuxiliaryDomain']
        end
      end

      # CreateUserSAMLConfig返回参数结构体
      class CreateUserSAMLConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAccessKey请求参数结构体
      class DeleteAccessKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 指定需要删除的AccessKeyId
        # @type AccessKeyId: String
        # @param TargetUin: 指定用户Uin，不填默认为当前用户删除访问密钥
        # @type TargetUin: Integer

        attr_accessor :AccessKeyId, :TargetUin

        def initialize(accesskeyid=nil, targetuin=nil)
          @AccessKeyId = accesskeyid
          @TargetUin = targetuin
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @TargetUin = params['TargetUin']
        end
      end

      # DeleteAccessKey返回参数结构体
      class DeleteAccessKeyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer

        attr_accessor :GroupId

        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOIDCConfig请求参数结构体
      class DeleteOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: OIDC身份提供商名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DeleteOIDCConfig返回参数结构体
      class DeleteOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeletePolicy请求参数结构体
      class DeletePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 数组，数组成员是策略 id，支持批量删除策略
        # @type PolicyId: Array

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DeletePolicy返回参数结构体
      class DeletePolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeletePolicyVersion请求参数结构体
      class DeletePolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号
        # @type VersionId: Array

        attr_accessor :PolicyId, :VersionId

        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # DeletePolicyVersion返回参数结构体
      class DeletePolicyVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRolePermissionsBoundary请求参数结构体
      class DeleteRolePermissionsBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID（与角色名至少填一个）
        # @type RoleId: String
        # @param RoleName: 角色名（与角色ID至少填一个）
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName

        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # DeleteRolePermissionsBoundary返回参数结构体
      class DeleteRolePermissionsBoundaryResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRole请求参数结构体
      class DeleteRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName

        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # DeleteRole返回参数结构体
      class DeleteRoleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSAMLProvider请求参数结构体
      class DeleteSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DeleteSAMLProvider返回参数结构体
      class DeleteSAMLProviderResponse < TencentCloud::Common::AbstractModel
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

      # DeleteServiceLinkedRole请求参数结构体
      class DeleteServiceLinkedRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 要删除的服务相关角色的名称。
        # @type RoleName: String

        attr_accessor :RoleName

        def initialize(rolename=nil)
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleName = params['RoleName']
        end
      end

      # DeleteServiceLinkedRole返回参数结构体
      class DeleteServiceLinkedRoleResponse < TencentCloud::Common::AbstractModel
        # @param DeletionTaskId: 删除任务ID，可用于检查删除服务相关角色状态。
        # @type DeletionTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeletionTaskId, :RequestId

        def initialize(deletiontaskid=nil, requestid=nil)
          @DeletionTaskId = deletiontaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeletionTaskId = params['DeletionTaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserPermissionsBoundary请求参数结构体
      class DeleteUserPermissionsBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号Uin
        # @type TargetUin: Integer

        attr_accessor :TargetUin

        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # DeleteUserPermissionsBoundary返回参数结构体
      class DeleteUserPermissionsBoundaryResponse < TencentCloud::Common::AbstractModel
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
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Force: 是否强制删除该子用户，默认入参为0。0：若该用户存在未删除API密钥，则不删除用户；1：若该用户存在未删除API密钥，则先删除密钥后删除用户。删除密钥需要您拥有cam:DeleteApiKey权限，您将可以删除该用户下启用或禁用状态的所有密钥，无权限则删除密钥和用户失败
        # @type Force: Integer

        attr_accessor :Name, :Force

        def initialize(name=nil, force=nil)
          @Name = name
          @Force = force
        end

        def deserialize(params)
          @Name = params['Name']
          @Force = params['Force']
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

      # DescribeOIDCConfig请求参数结构体
      class DescribeOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DescribeOIDCConfig返回参数结构体
      class DescribeOIDCConfigResponse < TencentCloud::Common::AbstractModel
        # @param ProviderType: 身份提供商类型 11角色身份提供商
        # @type ProviderType: Integer
        # @param IdentityUrl: 身份提供商URL
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥
        # @type IdentityKey: String
        # @param ClientId: 客户端id
        # @type ClientId: Array
        # @param Status: 状态：0:未设置，11:已开启，2:已禁用
        # @type Status: Integer
        # @param Description: 描述
        # @type Description: String
        # @param Name: 名称
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProviderType, :IdentityUrl, :IdentityKey, :ClientId, :Status, :Description, :Name, :RequestId

        def initialize(providertype=nil, identityurl=nil, identitykey=nil, clientid=nil, status=nil, description=nil, name=nil, requestid=nil)
          @ProviderType = providertype
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @Status = status
          @Description = description
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @ProviderType = params['ProviderType']
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @Status = params['Status']
          @Description = params['Description']
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoleList请求参数结构体
      class DescribeRoleListRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码，从1开始
        # @type Page: Integer
        # @param Rp: 每页行数，不能大于200
        # @type Rp: Integer
        # @param Tags: 标签筛选
        # @type Tags: Array

        attr_accessor :Page, :Rp, :Tags

        def initialize(page=nil, rp=nil, tags=nil)
          @Page = page
          @Rp = rp
          @Tags = tags
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              roletags_tmp = RoleTags.new
              roletags_tmp.deserialize(i)
              @Tags << roletags_tmp
            end
          end
        end
      end

      # DescribeRoleList返回参数结构体
      class DescribeRoleListResponse < TencentCloud::Common::AbstractModel
        # @param List: 角色详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalNum: 角色总数
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalNum, :RequestId

        def initialize(list=nil, totalnum=nil, requestid=nil)
          @List = list
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              roleinfo_tmp = RoleInfo.new
              roleinfo_tmp.deserialize(i)
              @List << roleinfo_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSafeAuthFlagColl请求参数结构体
      class DescribeSafeAuthFlagCollRequest < TencentCloud::Common::AbstractModel
        # @param SubUin: 子账号
        # @type SubUin: Integer

        attr_accessor :SubUin

        def initialize(subuin=nil)
          @SubUin = subuin
        end

        def deserialize(params)
          @SubUin = params['SubUin']
        end
      end

      # DescribeSafeAuthFlagColl返回参数结构体
      class DescribeSafeAuthFlagCollResponse < TencentCloud::Common::AbstractModel
        # @param LoginFlag: 登录保护设置
        # @type LoginFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlag`
        # @param ActionFlag: 敏感操作保护设置
        # @type ActionFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlag`
        # @param OffsiteFlag: 异地登录保护设置
        # @type OffsiteFlag: :class:`Tencentcloud::Cam.v20190116.models.OffsiteFlag`
        # @param PromptTrust: 是否提示信任设备1 ：提示 0: 不提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PromptTrust: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginFlag, :ActionFlag, :OffsiteFlag, :PromptTrust, :RequestId

        def initialize(loginflag=nil, actionflag=nil, offsiteflag=nil, prompttrust=nil, requestid=nil)
          @LoginFlag = loginflag
          @ActionFlag = actionflag
          @OffsiteFlag = offsiteflag
          @PromptTrust = prompttrust
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginFlag'].nil?
            @LoginFlag = LoginActionFlag.new
            @LoginFlag.deserialize(params['LoginFlag'])
          end
          unless params['ActionFlag'].nil?
            @ActionFlag = LoginActionFlag.new
            @ActionFlag.deserialize(params['ActionFlag'])
          end
          unless params['OffsiteFlag'].nil?
            @OffsiteFlag = OffsiteFlag.new
            @OffsiteFlag.deserialize(params['OffsiteFlag'])
          end
          @PromptTrust = params['PromptTrust']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSafeAuthFlagIntl请求参数结构体
      class DescribeSafeAuthFlagIntlRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSafeAuthFlagIntl返回参数结构体
      class DescribeSafeAuthFlagIntlResponse < TencentCloud::Common::AbstractModel
        # @param LoginFlag: 登录保护设置
        # @type LoginFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlagIntl`
        # @param ActionFlag: 敏感操作保护设置
        # @type ActionFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlagIntl`
        # @param OffsiteFlag: 异地登录保护设置
        # @type OffsiteFlag: :class:`Tencentcloud::Cam.v20190116.models.OffsiteFlag`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginFlag, :ActionFlag, :OffsiteFlag, :RequestId

        def initialize(loginflag=nil, actionflag=nil, offsiteflag=nil, requestid=nil)
          @LoginFlag = loginflag
          @ActionFlag = actionflag
          @OffsiteFlag = offsiteflag
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginFlag'].nil?
            @LoginFlag = LoginActionFlagIntl.new
            @LoginFlag.deserialize(params['LoginFlag'])
          end
          unless params['ActionFlag'].nil?
            @ActionFlag = LoginActionFlagIntl.new
            @ActionFlag.deserialize(params['ActionFlag'])
          end
          unless params['OffsiteFlag'].nil?
            @OffsiteFlag = OffsiteFlag.new
            @OffsiteFlag.deserialize(params['OffsiteFlag'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSafeAuthFlag请求参数结构体
      class DescribeSafeAuthFlagRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSafeAuthFlag返回参数结构体
      class DescribeSafeAuthFlagResponse < TencentCloud::Common::AbstractModel
        # @param LoginFlag: 登录保护设置
        # @type LoginFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlag`
        # @param ActionFlag: 敏感操作保护设置
        # @type ActionFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionFlag`
        # @param OffsiteFlag: 异地登录保护设置
        # @type OffsiteFlag: :class:`Tencentcloud::Cam.v20190116.models.OffsiteFlag`
        # @param PromptTrust: 1: 提示7天信任设备 0: 不提示
        # @type PromptTrust: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginFlag, :ActionFlag, :OffsiteFlag, :PromptTrust, :RequestId

        def initialize(loginflag=nil, actionflag=nil, offsiteflag=nil, prompttrust=nil, requestid=nil)
          @LoginFlag = loginflag
          @ActionFlag = actionflag
          @OffsiteFlag = offsiteflag
          @PromptTrust = prompttrust
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginFlag'].nil?
            @LoginFlag = LoginActionFlag.new
            @LoginFlag.deserialize(params['LoginFlag'])
          end
          unless params['ActionFlag'].nil?
            @ActionFlag = LoginActionFlag.new
            @ActionFlag.deserialize(params['ActionFlag'])
          end
          unless params['OffsiteFlag'].nil?
            @OffsiteFlag = OffsiteFlag.new
            @OffsiteFlag.deserialize(params['OffsiteFlag'])
          end
          @PromptTrust = params['PromptTrust']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubAccounts请求参数结构体
      class DescribeSubAccountsRequest < TencentCloud::Common::AbstractModel
        # @param FilterSubAccountUin: 子用户UIN列表，最多支持50个UIN
        # @type FilterSubAccountUin: Array

        attr_accessor :FilterSubAccountUin

        def initialize(filtersubaccountuin=nil)
          @FilterSubAccountUin = filtersubaccountuin
        end

        def deserialize(params)
          @FilterSubAccountUin = params['FilterSubAccountUin']
        end
      end

      # DescribeSubAccounts返回参数结构体
      class DescribeSubAccountsResponse < TencentCloud::Common::AbstractModel
        # @param SubAccounts: 子用户列表
        # @type SubAccounts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAccounts, :RequestId

        def initialize(subaccounts=nil, requestid=nil)
          @SubAccounts = subaccounts
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubAccounts'].nil?
            @SubAccounts = []
            params['SubAccounts'].each do |i|
              subaccountuser_tmp = SubAccountUser.new
              subaccountuser_tmp.deserialize(i)
              @SubAccounts << subaccountuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserOIDCConfig请求参数结构体
      class DescribeUserOIDCConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserOIDCConfig返回参数结构体
      class DescribeUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
        # @param ProviderType: 身份提供商类型。 12：用户OIDC身份提供商
        # @type ProviderType: Integer
        # @param IdentityUrl: 身份提供商URL
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥
        # @type IdentityKey: String
        # @param ClientId: 客户端id
        # @type ClientId: String
        # @param Status: 状态：0:未设置，11:已开启，2:已禁用
        # @type Status: Integer
        # @param AuthorizationEndpoint: 授权请求Endpoint
        # @type AuthorizationEndpoint: String
        # @param Scope: 授权请求Scope
        # @type Scope: Array
        # @param ResponseType: 授权请求Response type
        # @type ResponseType: String
        # @param ResponseMode: 授权请求Response mode
        # @type ResponseMode: String
        # @param MappingFiled: 映射字段名称
        # @type MappingFiled: String
        # @param Description: 描述
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProviderType, :IdentityUrl, :IdentityKey, :ClientId, :Status, :AuthorizationEndpoint, :Scope, :ResponseType, :ResponseMode, :MappingFiled, :Description, :RequestId

        def initialize(providertype=nil, identityurl=nil, identitykey=nil, clientid=nil, status=nil, authorizationendpoint=nil, scope=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, description=nil, requestid=nil)
          @ProviderType = providertype
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @Status = status
          @AuthorizationEndpoint = authorizationendpoint
          @Scope = scope
          @ResponseType = responsetype
          @ResponseMode = responsemode
          @MappingFiled = mappingfiled
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @ProviderType = params['ProviderType']
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @Status = params['Status']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @Scope = params['Scope']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserSAMLConfig请求参数结构体
      class DescribeUserSAMLConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserSAMLConfig返回参数结构体
      class DescribeUserSAMLConfigResponse < TencentCloud::Common::AbstractModel
        # @param SAMLMetadata: SAML元数据文档
        # @type SAMLMetadata: String
        # @param Status: 状态：0:未设置，1:已开启，2:已禁用
        # @type Status: Integer
        # @param AuxiliaryDomain: 辅助域名
        # @type AuxiliaryDomain: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SAMLMetadata, :Status, :AuxiliaryDomain, :RequestId

        def initialize(samlmetadata=nil, status=nil, auxiliarydomain=nil, requestid=nil)
          @SAMLMetadata = samlmetadata
          @Status = status
          @AuxiliaryDomain = auxiliarydomain
          @RequestId = requestid
        end

        def deserialize(params)
          @SAMLMetadata = params['SAMLMetadata']
          @Status = params['Status']
          @AuxiliaryDomain = params['AuxiliaryDomain']
          @RequestId = params['RequestId']
        end
      end

      # DetachGroupPolicy请求参数结构体
      class DetachGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param DetachGroupId: 用户组 id
        # @type DetachGroupId: Integer

        attr_accessor :PolicyId, :DetachGroupId

        def initialize(policyid=nil, detachgroupid=nil)
          @PolicyId = policyid
          @DetachGroupId = detachgroupid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachGroupId = params['DetachGroupId']
        end
      end

      # DetachGroupPolicy返回参数结构体
      class DetachGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DetachRolePolicy请求参数结构体
      class DetachRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，入参PolicyId与PolicyName二选一
        # @type PolicyId: Integer
        # @param DetachRoleId: 角色ID，用于指定角色，入参 DetachRoleId 与 DetachRoleName 二选一
        # @type DetachRoleId: String
        # @param DetachRoleName: 角色名称，用于指定角色，入参 DetachRoleId 与 DetachRoleName 二选一
        # @type DetachRoleName: String
        # @param PolicyName: 策略名，入参PolicyId与PolicyName二选一
        # @type PolicyName: String

        attr_accessor :PolicyId, :DetachRoleId, :DetachRoleName, :PolicyName

        def initialize(policyid=nil, detachroleid=nil, detachrolename=nil, policyname=nil)
          @PolicyId = policyid
          @DetachRoleId = detachroleid
          @DetachRoleName = detachrolename
          @PolicyName = policyname
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachRoleId = params['DetachRoleId']
          @DetachRoleName = params['DetachRoleName']
          @PolicyName = params['PolicyName']
        end
      end

      # DetachRolePolicy返回参数结构体
      class DetachRolePolicyResponse < TencentCloud::Common::AbstractModel
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

      # DetachUserPolicy请求参数结构体
      class DetachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param DetachUin: 子账号 uin
        # @type DetachUin: Integer

        attr_accessor :PolicyId, :DetachUin

        def initialize(policyid=nil, detachuin=nil)
          @PolicyId = policyid
          @DetachUin = detachuin
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachUin = params['DetachUin']
        end
      end

      # DetachUserPolicy返回参数结构体
      class DetachUserPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DisableUserSSO请求参数结构体
      class DisableUserSSORequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DisableUserSSO返回参数结构体
      class DisableUserSSOResponse < TencentCloud::Common::AbstractModel
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

      # GetAccountSummary请求参数结构体
      class GetAccountSummaryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetAccountSummary返回参数结构体
      class GetAccountSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Policies: 策略数
        # @type Policies: Integer
        # @param Roles: 角色数
        # @type Roles: Integer
        # @param Idps: 身份提供商数
        # @type Idps: Integer
        # @param User: 子账户数
        # @type User: Integer
        # @param Group: 分组数
        # @type Group: Integer
        # @param Member: 分组用户总数
        # @type Member: Integer
        # @param IdentityProviders: 身份提供商数。
        # @type IdentityProviders: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Policies, :Roles, :Idps, :User, :Group, :Member, :IdentityProviders, :RequestId
        extend Gem::Deprecate
        deprecate :Idps, :none, 2023, 7
        deprecate :Idps=, :none, 2023, 7

        def initialize(policies=nil, roles=nil, idps=nil, user=nil, group=nil, member=nil, identityproviders=nil, requestid=nil)
          @Policies = policies
          @Roles = roles
          @Idps = idps
          @User = user
          @Group = group
          @Member = member
          @IdentityProviders = identityproviders
          @RequestId = requestid
        end

        def deserialize(params)
          @Policies = params['Policies']
          @Roles = params['Roles']
          @Idps = params['Idps']
          @User = params['User']
          @Group = params['Group']
          @Member = params['Member']
          @IdentityProviders = params['IdentityProviders']
          @RequestId = params['RequestId']
        end
      end

      # GetCustomMFATokenInfo请求参数结构体
      class GetCustomMFATokenInfoRequest < TencentCloud::Common::AbstractModel
        # @param MFAToken: 自定义多因子验证Token
        # @type MFAToken: String

        attr_accessor :MFAToken

        def initialize(mfatoken=nil)
          @MFAToken = mfatoken
        end

        def deserialize(params)
          @MFAToken = params['MFAToken']
        end
      end

      # GetCustomMFATokenInfo返回参数结构体
      class GetCustomMFATokenInfoResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 自定义多因子验证Token对应的帐号Id
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

      # GetGroup请求参数结构体
      class GetGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer

        attr_accessor :GroupId

        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # GetGroup返回参数结构体
      class GetGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param GroupName: 用户组名称
        # @type GroupName: String
        # @param GroupNum: 用户组成员数量
        # @type GroupNum: Integer
        # @param Remark: 用户组描述
        # @type Remark: String
        # @param CreateTime: 用户组创建时间
        # @type CreateTime: String
        # @param UserInfo: 用户组成员信息
        # @type UserInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :GroupName, :GroupNum, :Remark, :CreateTime, :UserInfo, :RequestId

        def initialize(groupid=nil, groupname=nil, groupnum=nil, remark=nil, createtime=nil, userinfo=nil, requestid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupNum = groupnum
          @Remark = remark
          @CreateTime = createtime
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupNum = params['GroupNum']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          unless params['UserInfo'].nil?
            @UserInfo = []
            params['UserInfo'].each do |i|
              groupmemberinfo_tmp = GroupMemberInfo.new
              groupmemberinfo_tmp.deserialize(i)
              @UserInfo << groupmemberinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetPolicy请求参数结构体
      class GetPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: Integer

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # GetPolicy返回参数结构体
      class GetPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param Description: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 1 表示自定义策略，2 表示预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param UpdateTime: 最近更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param PolicyDocument: 策略文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String
        # @param PresetAlias: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PresetAlias: String
        # @param IsServiceLinkedRolePolicy: 是否服务相关策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsServiceLinkedRolePolicy: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyName, :Description, :Type, :AddTime, :UpdateTime, :PolicyDocument, :PresetAlias, :IsServiceLinkedRolePolicy, :RequestId

        def initialize(policyname=nil, description=nil, type=nil, addtime=nil, updatetime=nil, policydocument=nil, presetalias=nil, isservicelinkedrolepolicy=nil, requestid=nil)
          @PolicyName = policyname
          @Description = description
          @Type = type
          @AddTime = addtime
          @UpdateTime = updatetime
          @PolicyDocument = policydocument
          @PresetAlias = presetalias
          @IsServiceLinkedRolePolicy = isservicelinkedrolepolicy
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @Type = params['Type']
          @AddTime = params['AddTime']
          @UpdateTime = params['UpdateTime']
          @PolicyDocument = params['PolicyDocument']
          @PresetAlias = params['PresetAlias']
          @IsServiceLinkedRolePolicy = params['IsServiceLinkedRolePolicy']
          @RequestId = params['RequestId']
        end
      end

      # GetPolicyVersion请求参数结构体
      class GetPolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号，可由ListPolicyVersions获取
        # @type VersionId: Integer

        attr_accessor :PolicyId, :VersionId

        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # GetPolicyVersion返回参数结构体
      class GetPolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param PolicyVersion: 策略版本详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyVersion: :class:`Tencentcloud::Cam.v20190116.models.PolicyVersionDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyVersion, :RequestId

        def initialize(policyversion=nil, requestid=nil)
          @PolicyVersion = policyversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyVersion'].nil?
            @PolicyVersion = PolicyVersionDetail.new
            @PolicyVersion.deserialize(params['PolicyVersion'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRolePermissionBoundary请求参数结构体
      class GetRolePermissionBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: String

        attr_accessor :RoleId

        def initialize(roleid=nil)
          @RoleId = roleid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
        end
      end

      # GetRolePermissionBoundary返回参数结构体
      class GetRolePermissionBoundaryResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param PolicyDocument: 策略语法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String
        # @param PolicyType: 策略类型：1.自定义策略，2.预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: Integer
        # @param CreateMode: 创建方式：1.按产品功能或项目权限创建，2.按策略语法创建，3.按策略生成器创建，4.按标签授权创建，5.按权限边界规则创建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateMode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :PolicyName, :PolicyDocument, :PolicyType, :CreateMode, :RequestId

        def initialize(policyid=nil, policyname=nil, policydocument=nil, policytype=nil, createmode=nil, requestid=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @PolicyDocument = policydocument
          @PolicyType = policytype
          @CreateMode = createmode
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @PolicyDocument = params['PolicyDocument']
          @PolicyType = params['PolicyType']
          @CreateMode = params['CreateMode']
          @RequestId = params['RequestId']
        end
      end

      # GetRole请求参数结构体
      class GetRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色 ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName

        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # GetRole返回参数结构体
      class GetRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleInfo: 角色详情
        # @type RoleInfo: :class:`Tencentcloud::Cam.v20190116.models.RoleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleInfo, :RequestId

        def initialize(roleinfo=nil, requestid=nil)
          @RoleInfo = roleinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleInfo'].nil?
            @RoleInfo = RoleInfo.new
            @RoleInfo.deserialize(params['RoleInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSAMLProvider请求参数结构体
      class GetSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # GetSAMLProvider返回参数结构体
      class GetSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param CreateTime: SAML身份提供商创建时间
        # @type CreateTime: String
        # @param ModifyTime: SAML身份提供商上次修改时间
        # @type ModifyTime: String
        # @param SAMLMetadata: SAML身份提供商元数据文档
        # @type SAMLMetadata: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :CreateTime, :ModifyTime, :SAMLMetadata, :RequestId

        def initialize(name=nil, description=nil, createtime=nil, modifytime=nil, samlmetadata=nil, requestid=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @ModifyTime = modifytime
          @SAMLMetadata = samlmetadata
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @SAMLMetadata = params['SAMLMetadata']
          @RequestId = params['RequestId']
        end
      end

      # GetSecurityLastUsed请求参数结构体
      class GetSecurityLastUsedRequest < TencentCloud::Common::AbstractModel
        # @param SecretIdList: 查询密钥ID列表。最多支持10个。
        # @type SecretIdList: Array

        attr_accessor :SecretIdList

        def initialize(secretidlist=nil)
          @SecretIdList = secretidlist
        end

        def deserialize(params)
          @SecretIdList = params['SecretIdList']
        end
      end

      # GetSecurityLastUsed返回参数结构体
      class GetSecurityLastUsedResponse < TencentCloud::Common::AbstractModel
        # @param SecretIdLastUsedRows: 密钥ID最近访问列表
        # @type SecretIdLastUsedRows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretIdLastUsedRows, :RequestId

        def initialize(secretidlastusedrows=nil, requestid=nil)
          @SecretIdLastUsedRows = secretidlastusedrows
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecretIdLastUsedRows'].nil?
            @SecretIdLastUsedRows = []
            params['SecretIdLastUsedRows'].each do |i|
              secretidlastused_tmp = SecretIdLastUsed.new
              secretidlastused_tmp.deserialize(i)
              @SecretIdLastUsedRows << secretidlastused_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetServiceLinkedRoleDeletionStatus请求参数结构体
      class GetServiceLinkedRoleDeletionStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeletionTaskId: 删除任务ID
        # @type DeletionTaskId: String

        attr_accessor :DeletionTaskId

        def initialize(deletiontaskid=nil)
          @DeletionTaskId = deletiontaskid
        end

        def deserialize(params)
          @DeletionTaskId = params['DeletionTaskId']
        end
      end

      # GetServiceLinkedRoleDeletionStatus返回参数结构体
      class GetServiceLinkedRoleDeletionStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态：NOT_STARTED，IN_PROGRESS，SUCCEEDED，FAILED
        # @type Status: String
        # @param Reason: 失败原因
        # @type Reason: String
        # @param ServiceType: 服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param ServiceName: 服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Reason, :ServiceType, :ServiceName, :RequestId

        def initialize(status=nil, reason=nil, servicetype=nil, servicename=nil, requestid=nil)
          @Status = status
          @Reason = reason
          @ServiceType = servicetype
          @ServiceName = servicename
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Reason = params['Reason']
          @ServiceType = params['ServiceType']
          @ServiceName = params['ServiceName']
          @RequestId = params['RequestId']
        end
      end

      # GetUserAppId请求参数结构体
      class GetUserAppIdRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetUserAppId返回参数结构体
      class GetUserAppIdResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 当前账号Uin
        # @type Uin: String
        # @param OwnerUin: 当前账号OwnerUin
        # @type OwnerUin: String
        # @param AppId: 当前账号AppId
        # @type AppId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :OwnerUin, :AppId, :RequestId

        def initialize(uin=nil, owneruin=nil, appid=nil, requestid=nil)
          @Uin = uin
          @OwnerUin = owneruin
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # GetUserPermissionBoundary请求参数结构体
      class GetUserPermissionBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号Uin
        # @type TargetUin: Integer

        attr_accessor :TargetUin

        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # GetUserPermissionBoundary返回参数结构体
      class GetUserPermissionBoundaryResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param PolicyDocument: 策略语法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String
        # @param PolicyType: 策略类型：1.自定义策略，2.预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: Integer
        # @param CreateMode: 创建方式：1.按产品功能或项目权限创建，2.按策略语法创建，3.按策略生成器创建，4.按标签授权创建，5.按权限边界规则创建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateMode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :PolicyName, :PolicyDocument, :PolicyType, :CreateMode, :RequestId

        def initialize(policyid=nil, policyname=nil, policydocument=nil, policytype=nil, createmode=nil, requestid=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @PolicyDocument = policydocument
          @PolicyType = policytype
          @CreateMode = createmode
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @PolicyDocument = params['PolicyDocument']
          @PolicyType = params['PolicyType']
          @CreateMode = params['CreateMode']
          @RequestId = params['RequestId']
        end
      end

      # GetUser请求参数结构体
      class GetUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # GetUser返回参数结构体
      class GetUserResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 UIN
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Remark: 子用户备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param ConsoleLogin: 子用户能否登录控制台 0-无法登录控制台，1-可以登录控制台
        # @type ConsoleLogin: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String
        # @param RecentlyLoginIP: 最近一次登录ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecentlyLoginIP: String
        # @param RecentlyLoginTime: 最近一次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecentlyLoginTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :ConsoleLogin, :PhoneNum, :CountryCode, :Email, :RecentlyLoginIP, :RecentlyLoginTime, :RequestId

        def initialize(uin=nil, name=nil, uid=nil, remark=nil, consolelogin=nil, phonenum=nil, countrycode=nil, email=nil, recentlyloginip=nil, recentlylogintime=nil, requestid=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @ConsoleLogin = consolelogin
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
          @RecentlyLoginIP = recentlyloginip
          @RecentlyLoginTime = recentlylogintime
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
          @RecentlyLoginIP = params['RecentlyLoginIP']
          @RecentlyLoginTime = params['RecentlyLoginTime']
          @RequestId = params['RequestId']
        end
      end

      # 子用户和用户组关联信息
      class GroupIdOfUidInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Uin: 子用户 Uin，Uid和Uin至少有一个必填
        # @type Uin: Integer

        attr_accessor :GroupId, :Uid, :Uin

        def initialize(groupid=nil, uid=nil, uin=nil)
          @GroupId = groupid
          @Uid = uid
          @Uin = uin
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Uid = params['Uid']
          @Uin = params['Uin']
        end
      end

      # 用户组信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID。
        # @type GroupId: Integer
        # @param GroupName: 用户组名称。
        # @type GroupName: String
        # @param CreateTime: 用户组创建时间。
        # @type CreateTime: String
        # @param Remark: 用户组描述。
        # @type Remark: String

        attr_accessor :GroupId, :GroupName, :CreateTime, :Remark

        def initialize(groupid=nil, groupname=nil, createtime=nil, remark=nil)
          @GroupId = groupid
          @GroupName = groupname
          @CreateTime = createtime
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
        end
      end

      # 用户组用户信息
      class GroupMemberInfo < TencentCloud::Common::AbstractModel
        # @param Uid: 子用户 Uid。
        # @type Uid: Integer
        # @param Uin: 子用户 Uin。
        # @type Uin: Integer
        # @param Name: 子用户名称。
        # @type Name: String
        # @param PhoneNum: 手机号。
        # @type PhoneNum: String
        # @param CountryCode: 手机区域代码。
        # @type CountryCode: String
        # @param PhoneFlag: 是否已验证手机。0-未验证  1-验证
        # @type PhoneFlag: Integer
        # @param Email: 邮箱地址。
        # @type Email: String
        # @param EmailFlag: 是否已验证邮箱。0-未验证  1-验证
        # @type EmailFlag: Integer
        # @param UserType: 用户类型。1-全局协作者 2-项目协作者 3-消息接收者
        # @type UserType: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param IsReceiverOwner: 是否为主消息接收人。0-否 1-是
        # @type IsReceiverOwner: Integer

        attr_accessor :Uid, :Uin, :Name, :PhoneNum, :CountryCode, :PhoneFlag, :Email, :EmailFlag, :UserType, :CreateTime, :IsReceiverOwner

        def initialize(uid=nil, uin=nil, name=nil, phonenum=nil, countrycode=nil, phoneflag=nil, email=nil, emailflag=nil, usertype=nil, createtime=nil, isreceiverowner=nil)
          @Uid = uid
          @Uin = uin
          @Name = name
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @PhoneFlag = phoneflag
          @Email = email
          @EmailFlag = emailflag
          @UserType = usertype
          @CreateTime = createtime
          @IsReceiverOwner = isreceiverowner
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Uin = params['Uin']
          @Name = params['Name']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @PhoneFlag = params['PhoneFlag']
          @Email = params['Email']
          @EmailFlag = params['EmailFlag']
          @UserType = params['UserType']
          @CreateTime = params['CreateTime']
          @IsReceiverOwner = params['IsReceiverOwner']
        end
      end

      # ListAccessKeys请求参数结构体
      class ListAccessKeysRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 指定用户Uin，不填默认列出当前用户访问密钥
        # @type TargetUin: Integer

        attr_accessor :TargetUin

        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # ListAccessKeys返回参数结构体
      class ListAccessKeysResponse < TencentCloud::Common::AbstractModel
        # @param AccessKeys: 访问密钥列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessKeys, :RequestId

        def initialize(accesskeys=nil, requestid=nil)
          @AccessKeys = accesskeys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessKeys'].nil?
            @AccessKeys = []
            params['AccessKeys'].each do |i|
              accesskey_tmp = AccessKey.new
              accesskey_tmp.deserialize(i)
              @AccessKeys << accesskey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedGroupPolicies请求参数结构体
      class ListAttachedGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 用户组ID
        # @type TargetGroupId: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer
        # @param Keyword: 搜索关键字
        # @type Keyword: String

        attr_accessor :TargetGroupId, :Page, :Rp, :Keyword

        def initialize(targetgroupid=nil, page=nil, rp=nil, keyword=nil)
          @TargetGroupId = targetgroupid
          @Page = page
          @Rp = rp
          @Keyword = keyword
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Page = params['Page']
          @Rp = params['Rp']
          @Keyword = params['Keyword']
        end
      end

      # ListAttachedGroupPolicies返回参数结构体
      class ListAttachedGroupPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数。取值范围大于等于0。
        # @type TotalNum: Integer
        # @param List: 策略列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              attachpolicyinfo_tmp = AttachPolicyInfo.new
              attachpolicyinfo_tmp.deserialize(i)
              @List << attachpolicyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedRolePolicies请求参数结构体
      class ListAttachedRolePoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页行数，不能大于200
        # @type Rp: Integer
        # @param RoleId: 角色 ID。用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名。用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String
        # @param PolicyType: 按策略类型过滤，User表示仅查询自定义策略，QCS表示仅查询预设策略
        # @type PolicyType: String
        # @param Keyword: 搜索关键字
        # @type Keyword: String

        attr_accessor :Page, :Rp, :RoleId, :RoleName, :PolicyType, :Keyword

        def initialize(page=nil, rp=nil, roleid=nil, rolename=nil, policytype=nil, keyword=nil)
          @Page = page
          @Rp = rp
          @RoleId = roleid
          @RoleName = rolename
          @PolicyType = policytype
          @Keyword = keyword
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @PolicyType = params['PolicyType']
          @Keyword = params['Keyword']
        end
      end

      # ListAttachedRolePolicies返回参数结构体
      class ListAttachedRolePoliciesResponse < TencentCloud::Common::AbstractModel
        # @param List: 角色关联的策略列表
        # @type List: Array
        # @param TotalNum: 角色关联的策略总数
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalNum, :RequestId

        def initialize(list=nil, totalnum=nil, requestid=nil)
          @List = list
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              attachedpolicyofrole_tmp = AttachedPolicyOfRole.new
              attachedpolicyofrole_tmp.deserialize(i)
              @List << attachedpolicyofrole_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedUserAllPolicies请求参数结构体
      class ListAttachedUserAllPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 目标用户ID
        # @type TargetUin: Integer
        # @param Rp: 每页数量，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码，从 1开始，不能大于 200
        # @type Page: Integer
        # @param AttachType: 0:返回直接关联和随组关联策略，1:只返回直接关联策略，2:只返回随组关联策略
        # @type AttachType: Integer
        # @param StrategyType: 策略类型
        # @type StrategyType: Integer
        # @param Keyword: 搜索关键字
        # @type Keyword: String

        attr_accessor :TargetUin, :Rp, :Page, :AttachType, :StrategyType, :Keyword

        def initialize(targetuin=nil, rp=nil, page=nil, attachtype=nil, strategytype=nil, keyword=nil)
          @TargetUin = targetuin
          @Rp = rp
          @Page = page
          @AttachType = attachtype
          @StrategyType = strategytype
          @Keyword = keyword
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
          @Rp = params['Rp']
          @Page = params['Page']
          @AttachType = params['AttachType']
          @StrategyType = params['StrategyType']
          @Keyword = params['Keyword']
        end
      end

      # ListAttachedUserAllPolicies返回参数结构体
      class ListAttachedUserAllPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param PolicyList: 策略列表数据
        # @type PolicyList: Array
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyList, :TotalNum, :RequestId

        def initialize(policylist=nil, totalnum=nil, requestid=nil)
          @PolicyList = policylist
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              attacheduserpolicy_tmp = AttachedUserPolicy.new
              attacheduserpolicy_tmp.deserialize(i)
              @PolicyList << attacheduserpolicy_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedUserPolicies请求参数结构体
      class ListAttachedUserPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号 uin
        # @type TargetUin: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer

        attr_accessor :TargetUin, :Page, :Rp

        def initialize(targetuin=nil, page=nil, rp=nil)
          @TargetUin = targetuin
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # ListAttachedUserPolicies返回参数结构体
      class ListAttachedUserPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              attachpolicyinfo_tmp = AttachPolicyInfo.new
              attachpolicyinfo_tmp.deserialize(i)
              @List << attachpolicyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCollaborators请求参数结构体
      class ListCollaboratorsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页条数，缺省为20
        # @type Limit: Integer
        # @param Offset: 分页起始值，缺省为0
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

      # ListCollaborators返回参数结构体
      class ListCollaboratorsResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 总数
        # @type TotalNum: Integer
        # @param Data: 协作者信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :Data, :RequestId

        def initialize(totalnum=nil, data=nil, requestid=nil)
          @TotalNum = totalnum
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              subaccountinfo_tmp = SubAccountInfo.new
              subaccountinfo_tmp.deserialize(i)
              @Data << subaccountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEntitiesForPolicy请求参数结构体
      class ListEntitiesForPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer
        # @param EntityFilter: 可取值 'All'、'User'、'Group' 和 'Role'，'All' 表示获取所有实体类型，'User' 表示只获取子账号，'Group' 表示只获取用户组，'Role' 表示只获取角色，默认取 'All'
        # @type EntityFilter: String

        attr_accessor :PolicyId, :Page, :Rp, :EntityFilter

        def initialize(policyid=nil, page=nil, rp=nil, entityfilter=nil)
          @PolicyId = policyid
          @Page = page
          @Rp = rp
          @EntityFilter = entityfilter
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Page = params['Page']
          @Rp = params['Rp']
          @EntityFilter = params['EntityFilter']
        end
      end

      # ListEntitiesForPolicy返回参数结构体
      class ListEntitiesForPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 实体总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: Integer
        # @param List: 实体列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              attachentityofpolicy_tmp = AttachEntityOfPolicy.new
              attachentityofpolicy_tmp.deserialize(i)
              @List << attachentityofpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListGrantServiceAccessAction节点
      class ListGrantServiceAccessActionNode < TencentCloud::Common::AbstractModel
        # @param Name: 接口名
        # @type Name: String
        # @param Description: 接口描述
        # @type Description: String

        attr_accessor :Name, :Description

        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # 用于ListPoliciesGrantingServiceAccess接口的List节点
      class ListGrantServiceAccessNode < TencentCloud::Common::AbstractModel
        # @param Service: 服务
        # @type Service: :class:`Tencentcloud::Cam.v20190116.models.ListGrantServiceAccessService`
        # @param Action: 接口信息
        # @type Action: Array
        # @param Policy: 授权的策略
        # @type Policy: Array

        attr_accessor :Service, :Action, :Policy

        def initialize(service=nil, action=nil, policy=nil)
          @Service = service
          @Action = action
          @Policy = policy
        end

        def deserialize(params)
          unless params['Service'].nil?
            @Service = ListGrantServiceAccessService.new
            @Service.deserialize(params['Service'])
          end
          unless params['Action'].nil?
            @Action = []
            params['Action'].each do |i|
              listgrantserviceaccessactionnode_tmp = ListGrantServiceAccessActionNode.new
              listgrantserviceaccessactionnode_tmp.deserialize(i)
              @Action << listgrantserviceaccessactionnode_tmp
            end
          end
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              listgrantserviceaccesspolicy_tmp = ListGrantServiceAccessPolicy.new
              listgrantserviceaccesspolicy_tmp.deserialize(i)
              @Policy << listgrantserviceaccesspolicy_tmp
            end
          end
        end
      end

      # 用于ListPoliciesGrantingServiceAccess接口的Policy节点
      class ListGrantServiceAccessPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param PolicyName: 策略名
        # @type PolicyName: String
        # @param PolicyType: 策略类型: Custom自定义策略，Presetting预设策略
        # @type PolicyType: String
        # @param PolicyDescription: 策略描述
        # @type PolicyDescription: String

        attr_accessor :PolicyId, :PolicyName, :PolicyType, :PolicyDescription

        def initialize(policyid=nil, policyname=nil, policytype=nil, policydescription=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @PolicyType = policytype
          @PolicyDescription = policydescription
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @PolicyType = params['PolicyType']
          @PolicyDescription = params['PolicyDescription']
        end
      end

      # 用于ListPoliciesGrantingServiceAccess接口的Service节点
      class ListGrantServiceAccessService < TencentCloud::Common::AbstractModel
        # @param ServiceType: 服务
        # @type ServiceType: String
        # @param ServiceName: 服务名
        # @type ServiceName: String

        attr_accessor :ServiceType, :ServiceName

        def initialize(servicetype=nil, servicename=nil)
          @ServiceType = servicetype
          @ServiceName = servicename
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ServiceName = params['ServiceName']
        end
      end

      # ListGroupsForUser请求参数结构体
      class ListGroupsForUserRequest < TencentCloud::Common::AbstractModel
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param SubUin: 子账号UIN
        # @type SubUin: Integer

        attr_accessor :Uid, :Rp, :Page, :SubUin

        def initialize(uid=nil, rp=nil, page=nil, subuin=nil)
          @Uid = uid
          @Rp = rp
          @Page = page
          @SubUin = subuin
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Rp = params['Rp']
          @Page = params['Page']
          @SubUin = params['SubUin']
        end
      end

      # ListGroupsForUser返回参数结构体
      class ListGroupsForUserResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 子用户加入的用户组总数
        # @type TotalNum: Integer
        # @param GroupInfo: 用户组信息
        # @type GroupInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :GroupInfo, :RequestId

        def initialize(totalnum=nil, groupinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['GroupInfo'].nil?
            @GroupInfo = []
            params['GroupInfo'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupInfo << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListGroups请求参数结构体
      class ListGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer
        # @param Keyword: 按用户组名称匹配。
        # @type Keyword: String

        attr_accessor :Page, :Rp, :Keyword

        def initialize(page=nil, rp=nil, keyword=nil)
          @Page = page
          @Rp = rp
          @Keyword = keyword
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
          @Keyword = params['Keyword']
        end
      end

      # ListGroups返回参数结构体
      class ListGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 用户组总数。
        # @type TotalNum: Integer
        # @param GroupInfo: 用户组数组信息。
        # @type GroupInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :GroupInfo, :RequestId

        def initialize(totalnum=nil, groupinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['GroupInfo'].nil?
            @GroupInfo = []
            params['GroupInfo'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupInfo << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPoliciesGrantingServiceAccess请求参数结构体
      class ListPoliciesGrantingServiceAccessRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号uin，与RoleId、GroupId三选一必传
        # @type TargetUin: Integer
        # @param RoleId: 角色ID，与TargetUin、GroupId三选一必传
        # @type RoleId: Integer
        # @param GroupId: 用户组ID，与TargetUin、RoleId三选一必传
        # @type GroupId: Integer
        # @param ServiceType: 服务名，查看服务授权接口详情时需传该字段
        # @type ServiceType: String

        attr_accessor :TargetUin, :RoleId, :GroupId, :ServiceType

        def initialize(targetuin=nil, roleid=nil, groupid=nil, servicetype=nil)
          @TargetUin = targetuin
          @RoleId = roleid
          @GroupId = groupid
          @ServiceType = servicetype
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
          @RoleId = params['RoleId']
          @GroupId = params['GroupId']
          @ServiceType = params['ServiceType']
        end
      end

      # ListPoliciesGrantingServiceAccess返回参数结构体
      class ListPoliciesGrantingServiceAccessResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              listgrantserviceaccessnode_tmp = ListGrantServiceAccessNode.new
              listgrantserviceaccessnode_tmp.deserialize(i)
              @List << listgrantserviceaccessnode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPolicies请求参数结构体
      class ListPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Rp: 每页数量，默认值是 20，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码，默认值是 1，从 1开始，不能大于 200
        # @type Page: Integer
        # @param Scope: 可取值 'All'、'QCS' 和 'Local'，'All' 获取所有策略，'QCS' 只获取预设策略，'Local' 只获取自定义策略，默认取 'All'
        # @type Scope: String
        # @param Keyword: 按策略名匹配
        # @type Keyword: String

        attr_accessor :Rp, :Page, :Scope, :Keyword

        def initialize(rp=nil, page=nil, scope=nil, keyword=nil)
          @Rp = rp
          @Page = page
          @Scope = scope
          @Keyword = keyword
        end

        def deserialize(params)
          @Rp = params['Rp']
          @Page = params['Page']
          @Scope = params['Scope']
          @Keyword = params['Keyword']
        end
      end

      # ListPolicies返回参数结构体
      class ListPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略数组，数组每个成员包括 policyId、policyName、addTime、type、description、 createMode 字段。其中：
        # policyId：策略 id
        # policyName：策略名
        # addTime：策略创建时间
        # type：1 表示自定义策略，2 表示预设策略
        # description：策略描述
        # createMode：1 表示按业务权限创建的策略，其他值表示可以查看策略语法和通过策略语法更新策略
        # Attachments: 关联的用户数
        # ServiceType: 策略关联的产品
        # IsAttached: 当需要查询标记实体是否已经关联策略时不为null。0表示未关联策略，1表示已关联策略
        # @type List: Array
        # @param ServiceTypeList: 保留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :ServiceTypeList, :RequestId

        def initialize(totalnum=nil, list=nil, servicetypelist=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @ServiceTypeList = servicetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              strategyinfo_tmp = StrategyInfo.new
              strategyinfo_tmp.deserialize(i)
              @List << strategyinfo_tmp
            end
          end
          @ServiceTypeList = params['ServiceTypeList']
          @RequestId = params['RequestId']
        end
      end

      # ListPolicyVersions请求参数结构体
      class ListPolicyVersionsRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # ListPolicyVersions返回参数结构体
      class ListPolicyVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Versions: 策略版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Versions, :RequestId

        def initialize(versions=nil, requestid=nil)
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              policyversionitem_tmp = PolicyVersionItem.new
              policyversionitem_tmp.deserialize(i)
              @Versions << policyversionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListSAMLProviders请求参数结构体
      class ListSAMLProvidersRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListSAMLProviders返回参数结构体
      class ListSAMLProvidersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: SAML身份提供商总数
        # @type TotalCount: Integer
        # @param SAMLProviderSet: SAML身份提供商列表
        # @type SAMLProviderSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SAMLProviderSet, :RequestId

        def initialize(totalcount=nil, samlproviderset=nil, requestid=nil)
          @TotalCount = totalcount
          @SAMLProviderSet = samlproviderset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SAMLProviderSet'].nil?
            @SAMLProviderSet = []
            params['SAMLProviderSet'].each do |i|
              samlproviderinfo_tmp = SAMLProviderInfo.new
              samlproviderinfo_tmp.deserialize(i)
              @SAMLProviderSet << samlproviderinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUsersForGroup请求参数结构体
      class ListUsersForGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID。
        # @type GroupId: Integer
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer

        attr_accessor :GroupId, :Page, :Rp

        def initialize(groupid=nil, page=nil, rp=nil)
          @GroupId = groupid
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # ListUsersForGroup返回参数结构体
      class ListUsersForGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 用户组关联的用户总数。
        # @type TotalNum: Integer
        # @param UserInfo: 子用户信息。
        # @type UserInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :UserInfo, :RequestId

        def initialize(totalnum=nil, userinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['UserInfo'].nil?
            @UserInfo = []
            params['UserInfo'].each do |i|
              groupmemberinfo_tmp = GroupMemberInfo.new
              groupmemberinfo_tmp.deserialize(i)
              @UserInfo << groupmemberinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUsers请求参数结构体
      class ListUsersRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListUsers返回参数结构体
      class ListUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 子用户信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              subaccountinfo_tmp = SubAccountInfo.new
              subaccountinfo_tmp.deserialize(i)
              @Data << subaccountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWeChatWorkSubAccounts请求参数结构体
      class ListWeChatWorkSubAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :Offset, :Limit

        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListWeChatWorkSubAccounts返回参数结构体
      class ListWeChatWorkSubAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 企业微信子用户列表。
        # @type Data: Array
        # @param TotalCount: 总数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              wechatworksubaccount_tmp = WeChatWorkSubAccount.new
              wechatworksubaccount_tmp.deserialize(i)
              @Data << wechatworksubaccount_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 登录和敏感操作flag
      class LoginActionFlag < TencentCloud::Common::AbstractModel
        # @param Phone: 手机
        # @type Phone: Integer
        # @param Token: 硬token
        # @type Token: Integer
        # @param Stoken: 软token
        # @type Stoken: Integer
        # @param Wechat: 微信
        # @type Wechat: Integer
        # @param Custom: 自定义
        # @type Custom: Integer

        attr_accessor :Phone, :Token, :Stoken, :Wechat, :Custom

        def initialize(phone=nil, token=nil, stoken=nil, wechat=nil, custom=nil)
          @Phone = phone
          @Token = token
          @Stoken = stoken
          @Wechat = wechat
          @Custom = custom
        end

        def deserialize(params)
          @Phone = params['Phone']
          @Token = params['Token']
          @Stoken = params['Stoken']
          @Wechat = params['Wechat']
          @Custom = params['Custom']
        end
      end

      # 登录和敏感操作flag
      class LoginActionFlagIntl < TencentCloud::Common::AbstractModel
        # @param Phone: 手机
        # @type Phone: Integer
        # @param Token: 硬token
        # @type Token: Integer
        # @param Stoken: 软token
        # @type Stoken: Integer
        # @param Wechat: 微信
        # @type Wechat: Integer
        # @param Custom: 自定义
        # @type Custom: Integer
        # @param Mail: 邮件
        # @type Mail: Integer

        attr_accessor :Phone, :Token, :Stoken, :Wechat, :Custom, :Mail

        def initialize(phone=nil, token=nil, stoken=nil, wechat=nil, custom=nil, mail=nil)
          @Phone = phone
          @Token = token
          @Stoken = stoken
          @Wechat = wechat
          @Custom = custom
          @Mail = mail
        end

        def deserialize(params)
          @Phone = params['Phone']
          @Token = params['Token']
          @Stoken = params['Stoken']
          @Wechat = params['Wechat']
          @Custom = params['Custom']
          @Mail = params['Mail']
        end
      end

      # 登录和敏感操作flag
      class LoginActionMfaFlag < TencentCloud::Common::AbstractModel
        # @param Phone: 手机
        # @type Phone: Integer
        # @param Stoken: 软token
        # @type Stoken: Integer
        # @param Wechat: 微信
        # @type Wechat: Integer

        attr_accessor :Phone, :Stoken, :Wechat

        def initialize(phone=nil, stoken=nil, wechat=nil)
          @Phone = phone
          @Stoken = stoken
          @Wechat = wechat
        end

        def deserialize(params)
          @Phone = params['Phone']
          @Stoken = params['Stoken']
          @Wechat = params['Wechat']
        end
      end

      # 异地登录设置
      class OffsiteFlag < TencentCloud::Common::AbstractModel
        # @param VerifyFlag: 验证标识
        # @type VerifyFlag: Integer
        # @param NotifyPhone: 手机通知
        # @type NotifyPhone: Integer
        # @param NotifyEmail: 邮箱通知
        # @type NotifyEmail: Integer
        # @param NotifyWechat: 微信通知
        # @type NotifyWechat: Integer
        # @param Tips: 提示
        # @type Tips: Integer

        attr_accessor :VerifyFlag, :NotifyPhone, :NotifyEmail, :NotifyWechat, :Tips

        def initialize(verifyflag=nil, notifyphone=nil, notifyemail=nil, notifywechat=nil, tips=nil)
          @VerifyFlag = verifyflag
          @NotifyPhone = notifyphone
          @NotifyEmail = notifyemail
          @NotifyWechat = notifywechat
          @Tips = tips
        end

        def deserialize(params)
          @VerifyFlag = params['VerifyFlag']
          @NotifyPhone = params['NotifyPhone']
          @NotifyEmail = params['NotifyEmail']
          @NotifyWechat = params['NotifyWechat']
          @Tips = params['Tips']
        end
      end

      # 策略版本详情
      class PolicyVersionDetail < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param CreateDate: 策略版本创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param IsDefaultVersion: 是否是正在生效的版本。0表示不是，1表示是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultVersion: Integer
        # @param Document: 策略语法文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Document: String

        attr_accessor :VersionId, :CreateDate, :IsDefaultVersion, :Document

        def initialize(versionid=nil, createdate=nil, isdefaultversion=nil, document=nil)
          @VersionId = versionid
          @CreateDate = createdate
          @IsDefaultVersion = isdefaultversion
          @Document = document
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CreateDate = params['CreateDate']
          @IsDefaultVersion = params['IsDefaultVersion']
          @Document = params['Document']
        end
      end

      # 策略版本列表元素结构
      class PolicyVersionItem < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param CreateDate: 策略版本创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param IsDefaultVersion: 是否是正在生效的版本。0表示不是，1表示是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultVersion: Integer

        attr_accessor :VersionId, :CreateDate, :IsDefaultVersion

        def initialize(versionid=nil, createdate=nil, isdefaultversion=nil)
          @VersionId = versionid
          @CreateDate = createdate
          @IsDefaultVersion = isdefaultversion
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CreateDate = params['CreateDate']
          @IsDefaultVersion = params['IsDefaultVersion']
        end
      end

      # PutRolePermissionsBoundary请求参数结构体
      class PutRolePermissionsBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param RoleId: 角色ID（与角色名至少填一个）
        # @type RoleId: String
        # @param RoleName: 角色名（与角色ID至少填一个）
        # @type RoleName: String

        attr_accessor :PolicyId, :RoleId, :RoleName

        def initialize(policyid=nil, roleid=nil, rolename=nil)
          @PolicyId = policyid
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # PutRolePermissionsBoundary返回参数结构体
      class PutRolePermissionsBoundaryResponse < TencentCloud::Common::AbstractModel
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

      # PutUserPermissionsBoundary请求参数结构体
      class PutUserPermissionsBoundaryRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号Uin
        # @type TargetUin: Integer
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer

        attr_accessor :TargetUin, :PolicyId

        def initialize(targetuin=nil, policyid=nil)
          @TargetUin = targetuin
          @PolicyId = policyid
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
          @PolicyId = params['PolicyId']
        end
      end

      # PutUserPermissionsBoundary返回参数结构体
      class PutUserPermissionsBoundaryResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUserFromGroup请求参数结构体
      class RemoveUserFromGroupRequest < TencentCloud::Common::AbstractModel
        # @param Info: 要删除的用户 UIN/UID和用户组 ID对应数组
        # @type Info: Array

        attr_accessor :Info

        def initialize(info=nil)
          @Info = info
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              groupidofuidinfo_tmp = GroupIdOfUidInfo.new
              groupidofuidinfo_tmp.deserialize(i)
              @Info << groupidofuidinfo_tmp
            end
          end
        end
      end

      # RemoveUserFromGroup返回参数结构体
      class RemoveUserFromGroupResponse < TencentCloud::Common::AbstractModel
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

      # 角色详细信息
      class RoleInfo < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param PolicyDocument: 角色的策略文档
        # @type PolicyDocument: String
        # @param Description: 角色描述
        # @type Description: String
        # @param AddTime: 角色的创建时间
        # @type AddTime: String
        # @param UpdateTime: 角色的最近一次时间
        # @type UpdateTime: String
        # @param ConsoleLogin: 角色是否允许登录
        # @type ConsoleLogin: Integer
        # @param RoleType: 角色类型，取user、system或service_linked
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleType: String
        # @param SessionDuration: 有效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionDuration: Integer
        # @param DeletionTaskId: 服务相关角色删除TaskId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionTaskId: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :RoleId, :RoleName, :PolicyDocument, :Description, :AddTime, :UpdateTime, :ConsoleLogin, :RoleType, :SessionDuration, :DeletionTaskId, :Tags

        def initialize(roleid=nil, rolename=nil, policydocument=nil, description=nil, addtime=nil, updatetime=nil, consolelogin=nil, roletype=nil, sessionduration=nil, deletiontaskid=nil, tags=nil)
          @RoleId = roleid
          @RoleName = rolename
          @PolicyDocument = policydocument
          @Description = description
          @AddTime = addtime
          @UpdateTime = updatetime
          @ConsoleLogin = consolelogin
          @RoleType = roletype
          @SessionDuration = sessionduration
          @DeletionTaskId = deletiontaskid
          @Tags = tags
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @UpdateTime = params['UpdateTime']
          @ConsoleLogin = params['ConsoleLogin']
          @RoleType = params['RoleType']
          @SessionDuration = params['SessionDuration']
          @DeletionTaskId = params['DeletionTaskId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              roletags_tmp = RoleTags.new
              roletags_tmp.deserialize(i)
              @Tags << roletags_tmp
            end
          end
        end
      end

      # 角色标签类型
      class RoleTags < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
        # @type Value: String

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

      # SAML身份提供商
      class SAMLProviderInfo < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param CreateTime: SAML身份提供商创建时间
        # @type CreateTime: String
        # @param ModifyTime: SAML身份提供商上次修改时间
        # @type ModifyTime: String

        attr_accessor :Name, :Description, :CreateTime, :ModifyTime

        def initialize(name=nil, description=nil, createtime=nil, modifytime=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 密钥最后使用时间
      class SecretIdLastUsed < TencentCloud::Common::AbstractModel
        # @param SecretId: 密钥ID
        # @type SecretId: String
        # @param LastUsedDate: 最后访问日期(有1天延迟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUsedDate: String
        # @param LastSecretUsedDate: 最后密钥访问日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastSecretUsedDate: Integer

        attr_accessor :SecretId, :LastUsedDate, :LastSecretUsedDate

        def initialize(secretid=nil, lastuseddate=nil, lastsecretuseddate=nil)
          @SecretId = secretid
          @LastUsedDate = lastuseddate
          @LastSecretUsedDate = lastsecretuseddate
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @LastUsedDate = params['LastUsedDate']
          @LastSecretUsedDate = params['LastSecretUsedDate']
        end
      end

      # SetDefaultPolicyVersion请求参数结构体
      class SetDefaultPolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号，可由ListPolicyVersions获取
        # @type VersionId: Integer

        attr_accessor :PolicyId, :VersionId

        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # SetDefaultPolicyVersion返回参数结构体
      class SetDefaultPolicyVersionResponse < TencentCloud::Common::AbstractModel
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

      # SetMfaFlag请求参数结构体
      class SetMfaFlagRequest < TencentCloud::Common::AbstractModel
        # @param OpUin: 设置用户的uin
        # @type OpUin: Integer
        # @param LoginFlag: 登录保护设置
        # @type LoginFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionMfaFlag`
        # @param ActionFlag: 操作保护设置
        # @type ActionFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionMfaFlag`

        attr_accessor :OpUin, :LoginFlag, :ActionFlag

        def initialize(opuin=nil, loginflag=nil, actionflag=nil)
          @OpUin = opuin
          @LoginFlag = loginflag
          @ActionFlag = actionflag
        end

        def deserialize(params)
          @OpUin = params['OpUin']
          unless params['LoginFlag'].nil?
            @LoginFlag = LoginActionMfaFlag.new
            @LoginFlag.deserialize(params['LoginFlag'])
          end
          unless params['ActionFlag'].nil?
            @ActionFlag = LoginActionMfaFlag.new
            @ActionFlag.deserialize(params['ActionFlag'])
          end
        end
      end

      # SetMfaFlag返回参数结构体
      class SetMfaFlagResponse < TencentCloud::Common::AbstractModel
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

      # 策略信息
      class StrategyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称。
        # @type PolicyName: String
        # @param AddTime: 策略创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param Type: 策略类型。1 表示自定义策略，2 表示预设策略。
        # @type Type: Integer
        # @param Description: 策略描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateMode: 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        # @type CreateMode: Integer
        # @param Attachments: 关联的用户数
        # @type Attachments: Integer
        # @param ServiceType: 策略关联的产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param IsAttached: 当需要查询标记实体是否已经关联策略时不为null。0表示未关联策略，1表示已关联策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAttached: Integer
        # @param Deactived: 是否已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array
        # @param IsServiceLinkedPolicy: 是否是服务相关角色策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsServiceLinkedPolicy: Integer
        # @param AttachEntityCount: 关联策略实体数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachEntityCount: Integer
        # @param AttachEntityBoundaryCount: 关联权限边界实体数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachEntityBoundaryCount: Integer
        # @param UpdateTime: 最后编辑时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :PolicyId, :PolicyName, :AddTime, :Type, :Description, :CreateMode, :Attachments, :ServiceType, :IsAttached, :Deactived, :DeactivedDetail, :IsServiceLinkedPolicy, :AttachEntityCount, :AttachEntityBoundaryCount, :UpdateTime

        def initialize(policyid=nil, policyname=nil, addtime=nil, type=nil, description=nil, createmode=nil, attachments=nil, servicetype=nil, isattached=nil, deactived=nil, deactiveddetail=nil, isservicelinkedpolicy=nil, attachentitycount=nil, attachentityboundarycount=nil, updatetime=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @Type = type
          @Description = description
          @CreateMode = createmode
          @Attachments = attachments
          @ServiceType = servicetype
          @IsAttached = isattached
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
          @IsServiceLinkedPolicy = isservicelinkedpolicy
          @AttachEntityCount = attachentitycount
          @AttachEntityBoundaryCount = attachentityboundarycount
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @Type = params['Type']
          @Description = params['Description']
          @CreateMode = params['CreateMode']
          @Attachments = params['Attachments']
          @ServiceType = params['ServiceType']
          @IsAttached = params['IsAttached']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
          @IsServiceLinkedPolicy = params['IsServiceLinkedPolicy']
          @AttachEntityCount = params['AttachEntityCount']
          @AttachEntityBoundaryCount = params['AttachEntityBoundaryCount']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 子用户信息
      class SubAccountInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 ID
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户能否登录控制台
        # @type ConsoleLogin: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param NickName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :ConsoleLogin, :PhoneNum, :CountryCode, :Email, :CreateTime, :NickName

        def initialize(uin=nil, name=nil, uid=nil, remark=nil, consolelogin=nil, phonenum=nil, countrycode=nil, email=nil, createtime=nil, nickname=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @ConsoleLogin = consolelogin
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
          @CreateTime = createtime
          @NickName = nickname
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
          @CreateTime = params['CreateTime']
          @NickName = params['NickName']
        end
      end

      # 子用户信息
      class SubAccountUser < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 ID
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID，UID是用户作为消息接收人时的唯一标识，和 UIN 一样可以唯一标识一个用户，可通过接口https://cloud.tencent.com/document/api/598/53486 获取
        # @type Uid: Integer
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UserType: 用户类型(2:子用户;3:企业微信子用户;4:协作者;5:消息接收人)
        # @type UserType: Integer
        # @param LastLoginIp: 最近登录IP
        # @type LastLoginIp: String
        # @param LastLoginTime: 最近登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLoginTime: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :CreateTime, :UserType, :LastLoginIp, :LastLoginTime

        def initialize(uin=nil, name=nil, uid=nil, remark=nil, createtime=nil, usertype=nil, lastloginip=nil, lastlogintime=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @CreateTime = createtime
          @UserType = usertype
          @LastLoginIp = lastloginip
          @LastLoginTime = lastlogintime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UserType = params['UserType']
          @LastLoginIp = params['LastLoginIp']
          @LastLoginTime = params['LastLoginTime']
        end
      end

      # TagRole请求参数结构体
      class TagRoleRequest < TencentCloud::Common::AbstractModel
        # @param Tags: 标签
        # @type Tags: Array
        # @param RoleName: 角色名，与角色ID至少输入一个
        # @type RoleName: String
        # @param RoleId: 角色ID，与角色名至少输入一个
        # @type RoleId: String

        attr_accessor :Tags, :RoleName, :RoleId

        def initialize(tags=nil, rolename=nil, roleid=nil)
          @Tags = tags
          @RoleName = rolename
          @RoleId = roleid
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              roletags_tmp = RoleTags.new
              roletags_tmp.deserialize(i)
              @Tags << roletags_tmp
            end
          end
          @RoleName = params['RoleName']
          @RoleId = params['RoleId']
        end
      end

      # TagRole返回参数结构体
      class TagRoleResponse < TencentCloud::Common::AbstractModel
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

      # UntagRole请求参数结构体
      class UntagRoleRequest < TencentCloud::Common::AbstractModel
        # @param TagKeys: 标签键
        # @type TagKeys: Array
        # @param RoleName: 角色名，与角色ID至少输入一个
        # @type RoleName: String
        # @param RoleId: 角色ID，与角色名至少输入一个
        # @type RoleId: String

        attr_accessor :TagKeys, :RoleName, :RoleId

        def initialize(tagkeys=nil, rolename=nil, roleid=nil)
          @TagKeys = tagkeys
          @RoleName = rolename
          @RoleId = roleid
        end

        def deserialize(params)
          @TagKeys = params['TagKeys']
          @RoleName = params['RoleName']
          @RoleId = params['RoleId']
        end
      end

      # UntagRole返回参数结构体
      class UntagRoleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAccessKey请求参数结构体
      class UpdateAccessKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 指定需要更新的AccessKeyId
        # @type AccessKeyId: String
        # @param Status: 密钥状态，激活（Active）或未激活（Inactive）
        # @type Status: String
        # @param TargetUin: 指定用户Uin，不填默认为当前用户更新访问密钥
        # @type TargetUin: Integer

        attr_accessor :AccessKeyId, :Status, :TargetUin

        def initialize(accesskeyid=nil, status=nil, targetuin=nil)
          @AccessKeyId = accesskeyid
          @Status = status
          @TargetUin = targetuin
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @Status = params['Status']
          @TargetUin = params['TargetUin']
        end
      end

      # UpdateAccessKey返回参数结构体
      class UpdateAccessKeyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAssumeRolePolicy请求参数结构体
      class UpdateAssumeRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :PolicyDocument, :RoleId, :RoleName

        def initialize(policydocument=nil, roleid=nil, rolename=nil)
          @PolicyDocument = policydocument
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @PolicyDocument = params['PolicyDocument']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateAssumeRolePolicy返回参数结构体
      class UpdateAssumeRolePolicyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGroup请求参数结构体
      class UpdateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param GroupName: 用户组名
        # @type GroupName: String
        # @param Remark: 用户组描述
        # @type Remark: String

        attr_accessor :GroupId, :GroupName, :Remark

        def initialize(groupid=nil, groupname=nil, remark=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # UpdateGroup返回参数结构体
      class UpdateGroupResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOIDCConfig请求参数结构体
      class UpdateOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥，需要base64
        # @type IdentityKey: String
        # @param ClientId: 客户端ID
        # @type ClientId: Array
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :IdentityUrl, :IdentityKey, :ClientId, :Name, :Description

        def initialize(identityurl=nil, identitykey=nil, clientid=nil, name=nil, description=nil)
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # UpdateOIDCConfig返回参数结构体
      class UpdateOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePolicy请求参数结构体
      class UpdatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，与PolicyName二选一必填
        # @type PolicyId: Integer
        # @param PolicyName: 策略名，与PolicyId二选一必填
        # @type PolicyName: String
        # @param Description: 策略描述
        # @type Description: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Alias: 预设策略备注
        # @type Alias: String

        attr_accessor :PolicyId, :PolicyName, :Description, :PolicyDocument, :Alias

        def initialize(policyid=nil, policyname=nil, description=nil, policydocument=nil, _alias=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Description = description
          @PolicyDocument = policydocument
          @Alias = _alias
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @PolicyDocument = params['PolicyDocument']
          @Alias = params['Alias']
        end
      end

      # UpdatePolicy返回参数结构体
      class UpdatePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id，入参是PolicyName时，才会返回
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

      # UpdateRoleConsoleLogin请求参数结构体
      class UpdateRoleConsoleLoginRequest < TencentCloud::Common::AbstractModel
        # @param ConsoleLogin: 是否可登录，可登录：1，不可登录：0
        # @type ConsoleLogin: Integer
        # @param RoleId: 角色ID，入参 RoleId 与 RoleName 二选一
        # @type RoleId: Integer
        # @param RoleName: 角色名，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :ConsoleLogin, :RoleId, :RoleName

        def initialize(consolelogin=nil, roleid=nil, rolename=nil)
          @ConsoleLogin = consolelogin
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @ConsoleLogin = params['ConsoleLogin']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateRoleConsoleLogin返回参数结构体
      class UpdateRoleConsoleLoginResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRoleDescription请求参数结构体
      class UpdateRoleDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param Description: 角色描述
        # @type Description: String
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :Description, :RoleId, :RoleName

        def initialize(description=nil, roleid=nil, rolename=nil)
          @Description = description
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @Description = params['Description']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateRoleDescription返回参数结构体
      class UpdateRoleDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # UpdateSAMLProvider请求参数结构体
      class UpdateSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param SAMLMetadataDocument: SAML身份提供商Base64编码的元数据文档
        # @type SAMLMetadataDocument: String

        attr_accessor :Name, :Description, :SAMLMetadataDocument

        def initialize(name=nil, description=nil, samlmetadatadocument=nil)
          @Name = name
          @Description = description
          @SAMLMetadataDocument = samlmetadatadocument
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
        end
      end

      # UpdateSAMLProvider返回参数结构体
      class UpdateSAMLProviderResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUserOIDCConfig请求参数结构体
      class UpdateUserOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL。OpenID Connect身份提供商标识。
        # 对应企业IdP提供的Openid-configuration中"issuer"字段的值，该URL必须以https开头，符合标准URL格式，不允许带有query参数（以?标识）、fragment片段（以#标识）和登录信息（以@标识）。
        # @type IdentityUrl: String
        # @param IdentityKey: RSA签名公钥，JWKS格式，需要进行base64_encode。验证OpenID Connect身份提供商ID Token签名的公钥。为了您的账号安全，建议您定期轮换签名公钥。
        # @type IdentityKey: String
        # @param ClientId: 客户端ID，在OpenID Connect身份提供商注册的客户端ID，允许英文字母、数字、特殊字符.-_:/，不能以特殊字符.-_:/开头，单个客户端ID最大64个字符。
        # @type ClientId: String
        # @param AuthorizationEndpoint: 授权请求Endpoint，OpenID Connect身份提供商授权地址。对应企业IdP提供的Openid-configuration中"authorization_endpoint"字段的值，该URL必须以https开头，符合标准URL格式，不允许带有query参数（以?标识）、fragment片段（以#标识）和登录信息（以@标识）。
        # @type AuthorizationEndpoint: String
        # @param ResponseType: 授权请求Response type，有code，id_token，固定值id_token。
        # @type ResponseType: String
        # @param ResponseMode: 授权请求Response mode。授权请求返回模式，有form_post和fragment两种可选模式，推荐选择form_post模式。
        # @type ResponseMode: String
        # @param MappingFiled: 映射字段名称。IdP的id_token中哪一个字段映射到子用户的用户名，通常是sub或者name字段,仅支持英文字母、数宇、汉字、符号@、＆_[]-的组合，1-255个中文或英文字符
        # @type MappingFiled: String
        # @param Scope: 授权请求Scope。有openid; email;profile三种。代表授权请求信息范围openid表示请求访问用户的身份信息，email表示请求访问用户的电子邮件地址，profile表示请求访问用户的基本信息。默认必选openid。
        # @type Scope: Array
        # @param Description: 描述，长度为1~255个英文或中文字符，默认值为空。
        # @type Description: String

        attr_accessor :IdentityUrl, :IdentityKey, :ClientId, :AuthorizationEndpoint, :ResponseType, :ResponseMode, :MappingFiled, :Scope, :Description

        def initialize(identityurl=nil, identitykey=nil, clientid=nil, authorizationendpoint=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, scope=nil, description=nil)
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @AuthorizationEndpoint = authorizationendpoint
          @ResponseType = responsetype
          @ResponseMode = responsemode
          @MappingFiled = mappingfiled
          @Scope = scope
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @IdentityKey = params['IdentityKey']
          @ClientId = params['ClientId']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @Scope = params['Scope']
          @Description = params['Description']
        end
      end

      # UpdateUserOIDCConfig返回参数结构体
      class UpdateUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUser请求参数结构体
      class UpdateUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户是否可以登录控制台。传0子用户无法登录控制台，传1子用户可以登录控制台。
        # @type ConsoleLogin: Integer
        # @param Password: 子用户控制台登录密码，若未进行密码规则设置则默认密码规则为8位以上同时包含大小写字母、数字和特殊字符。只有可以登录控制台时才有效，如果传空并且上面指定允许登录控制台，则自动生成随机密码，随机密码规则为32位包含大小写字母、数字和特殊字符。
        # @type Password: String
        # @param NeedResetPassword: 子用户是否要在下次登录时重置密码。传0子用户下次登录控制台不需重置密码，传1子用户下次登录控制台需要重置密码。
        # @type NeedResetPassword: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Name, :Remark, :ConsoleLogin, :Password, :NeedResetPassword, :PhoneNum, :CountryCode, :Email

        def initialize(name=nil, remark=nil, consolelogin=nil, password=nil, needresetpassword=nil, phonenum=nil, countrycode=nil, email=nil)
          @Name = name
          @Remark = remark
          @ConsoleLogin = consolelogin
          @Password = password
          @NeedResetPassword = needresetpassword
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @Password = params['Password']
          @NeedResetPassword = params['NeedResetPassword']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
        end
      end

      # UpdateUser返回参数结构体
      class UpdateUserResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUserSAMLConfig请求参数结构体
      class UpdateUserSAMLConfigRequest < TencentCloud::Common::AbstractModel
        # @param Operate: 修改的操作类型:enable:启用,disable:禁用,updateSAML:修改元数据文档
        # @type Operate: String
        # @param SAMLMetadataDocument: 元数据文档，需要base64 encode，仅当Operate为updateSAML时需要此参数
        # @type SAMLMetadataDocument: String
        # @param AuxiliaryDomain: 辅助域名
        # @type AuxiliaryDomain: String

        attr_accessor :Operate, :SAMLMetadataDocument, :AuxiliaryDomain

        def initialize(operate=nil, samlmetadatadocument=nil, auxiliarydomain=nil)
          @Operate = operate
          @SAMLMetadataDocument = samlmetadatadocument
          @AuxiliaryDomain = auxiliarydomain
        end

        def deserialize(params)
          @Operate = params['Operate']
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
          @AuxiliaryDomain = params['AuxiliaryDomain']
        end
      end

      # UpdateUserSAMLConfig返回参数结构体
      class UpdateUserSAMLConfigResponse < TencentCloud::Common::AbstractModel
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

      # 企业微信子用户
      class WeChatWorkSubAccount < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 ID
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户能否登录控制台
        # @type ConsoleLogin: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String
        # @param WeChatWorkUserId: 企业微信UserId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeChatWorkUserId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :ConsoleLogin, :PhoneNum, :CountryCode, :Email, :WeChatWorkUserId, :CreateTime

        def initialize(uin=nil, name=nil, uid=nil, remark=nil, consolelogin=nil, phonenum=nil, countrycode=nil, email=nil, wechatworkuserid=nil, createtime=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @ConsoleLogin = consolelogin
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
          @WeChatWorkUserId = wechatworkuserid
          @CreateTime = createtime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
          @WeChatWorkUserId = params['WeChatWorkUserId']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

