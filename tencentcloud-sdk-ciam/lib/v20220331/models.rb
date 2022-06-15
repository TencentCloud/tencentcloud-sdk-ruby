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
  module Ciam
    module V20220331
      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param PhoneNumber: 手机号码
        # @type PhoneNumber: String
        # @param Email: 邮箱
        # @type Email: String
        # @param Password: 密码
        # @type Password: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param Address: 地址
        # @type Address: String
        # @param UserGroup: 用户组ID
        # @type UserGroup: Array
        # @param Birthdate: 生日
        # @type Birthdate: Integer
        # @param CustomizationAttributes: 自定义属性
        # @type CustomizationAttributes: Array

        attr_accessor :UserStoreId, :PhoneNumber, :Email, :Password, :UserName, :Nickname, :Address, :UserGroup, :Birthdate, :CustomizationAttributes
        
        def initialize(userstoreid=nil, phonenumber=nil, email=nil, password=nil, username=nil, nickname=nil, address=nil, usergroup=nil, birthdate=nil, customizationattributes=nil)
          @UserStoreId = userstoreid
          @PhoneNumber = phonenumber
          @Email = email
          @Password = password
          @UserName = username
          @Nickname = nickname
          @Address = address
          @UserGroup = usergroup
          @Birthdate = birthdate
          @CustomizationAttributes = customizationattributes
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @PhoneNumber = params['PhoneNumber']
          @Email = params['Email']
          @Password = params['Password']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          @Address = params['Address']
          @UserGroup = params['UserGroup']
          @Birthdate = params['Birthdate']
          unless params['CustomizationAttributes'].nil?
            @CustomizationAttributes = []
            params['CustomizationAttributes'].each do |i|
              membermap_tmp = MemberMap.new
              membermap_tmp.deserialize(i)
              @CustomizationAttributes << membermap_tmp
            end
          end
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param User: 创建的用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: :class:`Tencentcloud::Ciam.v20220331.models.User`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId
        
        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteUsers请求参数结构体
      class DeleteUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param UserIds: 用户ID数组
        # @type UserIds: Array

        attr_accessor :UserStoreId, :UserIds
        
        def initialize(userstoreid=nil, userids=nil)
          @UserStoreId = userstoreid
          @UserIds = userids
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @UserIds = params['UserIds']
        end
      end

      # DeleteUsers返回参数结构体
      class DeleteUsersResponse < TencentCloud::Common::AbstractModel
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

      # DescribeUserById请求参数结构体
      class DescribeUserByIdRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserStoreId, :UserId
        
        def initialize(userstoreid=nil, userid=nil)
          @UserStoreId = userstoreid
          @UserId = userid
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @UserId = params['UserId']
        end
      end

      # DescribeUserById返回参数结构体
      class DescribeUserByIdResponse < TencentCloud::Common::AbstractModel
        # @param User: 用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: :class:`Tencentcloud::Ciam.v20220331.models.User`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId
        
        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Key: key值
        # @type Key: String
        # @param Values: value值
        # @type Values: Array
        # @param Logic: 逻辑值
        # @type Logic: Boolean

        attr_accessor :Key, :Values, :Logic
        
        def initialize(key=nil, values=nil, logic=nil)
          @Key = key
          @Values = values
          @Logic = logic
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
          @Logic = params['Logic']
        end
      end

      # LinkAccount请求参数结构体
      class LinkAccountRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param PrimaryUserId: 主用户ID
        # @type PrimaryUserId: String
        # @param SecondaryUserId: 从用户ID
        # @type SecondaryUserId: String
        # @param UserLinkedOnAttribute: 融合属性(PHONENUMBER,EMAIL)
        # @type UserLinkedOnAttribute: String

        attr_accessor :UserStoreId, :PrimaryUserId, :SecondaryUserId, :UserLinkedOnAttribute
        
        def initialize(userstoreid=nil, primaryuserid=nil, secondaryuserid=nil, userlinkedonattribute=nil)
          @UserStoreId = userstoreid
          @PrimaryUserId = primaryuserid
          @SecondaryUserId = secondaryuserid
          @UserLinkedOnAttribute = userlinkedonattribute
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @PrimaryUserId = params['PrimaryUserId']
          @SecondaryUserId = params['SecondaryUserId']
          @UserLinkedOnAttribute = params['UserLinkedOnAttribute']
        end
      end

      # LinkAccount返回参数结构体
      class LinkAccountResponse < TencentCloud::Common::AbstractModel
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

      # ListUserByProperty请求参数结构体
      class ListUserByPropertyRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param PropertyCode: 查询的属性（支持phoneNumber，email）
        # @type PropertyCode: String
        # @param PropertyValue: 属性值
        # @type PropertyValue: String

        attr_accessor :UserStoreId, :PropertyCode, :PropertyValue
        
        def initialize(userstoreid=nil, propertycode=nil, propertyvalue=nil)
          @UserStoreId = userstoreid
          @PropertyCode = propertycode
          @PropertyValue = propertyvalue
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @PropertyCode = params['PropertyCode']
          @PropertyValue = params['PropertyValue']
        end
      end

      # ListUserByProperty返回参数结构体
      class ListUserByPropertyResponse < TencentCloud::Common::AbstractModel
        # @param Users: 用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId
        
        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUser请求参数结构体
      class ListUserRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param Pageable: 分页数据
        # @type Pageable: :class:`Tencentcloud::Ciam.v20220331.models.Pageable`
        # @param Filters: Key可选值为condition、userGroupId

        # <li> **condition** </li>	Values = 查询条件，用户ID，用户名称，手机或邮箱
        # <li> **userGroupId** </li>	Values = 用户组ID
        # @type Filters: Array

        attr_accessor :UserStoreId, :Pageable, :Filters
        
        def initialize(userstoreid=nil, pageable=nil, filters=nil)
          @UserStoreId = userstoreid
          @Pageable = pageable
          @Filters = filters
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          unless params['Pageable'].nil?
            @Pageable = Pageable.new
            @Pageable.deserialize(params['Pageable'])
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # ListUser返回参数结构体
      class ListUserResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Pageable: 分页对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pageable: :class:`Tencentcloud::Ciam.v20220331.models.Pageable`
        # @param Content: 用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Pageable, :Content, :RequestId
        
        def initialize(total=nil, pageable=nil, content=nil, requestid=nil)
          @Total = total
          @Pageable = pageable
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Pageable'].nil?
            @Pageable = Pageable.new
            @Pageable.deserialize(params['Pageable'])
          end
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Content << user_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # Map数据类型
      class MemberMap < TencentCloud::Common::AbstractModel
        # @param Name: 健
        # @type Name: String
        # @param Value: 值
        # @type Value: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Name, :Value, :Type
        
        def initialize(name=nil, value=nil, type=nil)
          @Name = name
          @Value = value
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Type = params['Type']
        end
      end

      # 分页对象
      class Pageable < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer

        attr_accessor :PageSize, :PageNumber
        
        def initialize(pagesize=nil, pagenumber=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ResetPassword请求参数结构体
      class ResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String

        attr_accessor :UserId, :UserStoreId
        
        def initialize(userid=nil, userstoreid=nil)
          @UserId = userid
          @UserStoreId = userstoreid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserStoreId = params['UserStoreId']
        end
      end

      # ResetPassword返回参数结构体
      class ResetPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Password: 重置后的用户密码
        # @type Password: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Password, :RequestId
        
        def initialize(password=nil, requestid=nil)
          @Password = password
          @RequestId = requestid
        end

        def deserialize(params)
          @Password = params['Password']
          @RequestId = params['RequestId']
        end
      end

      # SetPassword请求参数结构体
      class SetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :UserStoreId, :UserId, :Password
        
        def initialize(userstoreid=nil, userid=nil, password=nil)
          @UserStoreId = userstoreid
          @UserId = userid
          @Password = password
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @UserId = params['UserId']
          @Password = params['Password']
        end
      end

      # SetPassword返回参数结构体
      class SetPasswordResponse < TencentCloud::Common::AbstractModel
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
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param PhoneNumber: 手机号码
        # @type PhoneNumber: String
        # @param Email: 邮箱
        # @type Email: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param Address: 地址
        # @type Address: String
        # @param UserGroup: 用户组
        # @type UserGroup: Array
        # @param Birthdate: 生日
        # @type Birthdate: Integer
        # @param CustomizationAttributes: 自定义属性
        # @type CustomizationAttributes: Array

        attr_accessor :UserId, :UserStoreId, :UserName, :PhoneNumber, :Email, :Nickname, :Address, :UserGroup, :Birthdate, :CustomizationAttributes
        
        def initialize(userid=nil, userstoreid=nil, username=nil, phonenumber=nil, email=nil, nickname=nil, address=nil, usergroup=nil, birthdate=nil, customizationattributes=nil)
          @UserId = userid
          @UserStoreId = userstoreid
          @UserName = username
          @PhoneNumber = phonenumber
          @Email = email
          @Nickname = nickname
          @Address = address
          @UserGroup = usergroup
          @Birthdate = birthdate
          @CustomizationAttributes = customizationattributes
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserStoreId = params['UserStoreId']
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @Email = params['Email']
          @Nickname = params['Nickname']
          @Address = params['Address']
          @UserGroup = params['UserGroup']
          @Birthdate = params['Birthdate']
          unless params['CustomizationAttributes'].nil?
            @CustomizationAttributes = []
            params['CustomizationAttributes'].each do |i|
              membermap_tmp = MemberMap.new
              membermap_tmp.deserialize(i)
              @CustomizationAttributes << membermap_tmp
            end
          end
        end
      end

      # UpdateUser返回参数结构体
      class UpdateUserResponse < TencentCloud::Common::AbstractModel
        # @param User: 更新之后的用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: :class:`Tencentcloud::Ciam.v20220331.models.User`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId
        
        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateUserStatus请求参数结构体
      class UpdateUserStatusRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Status: NORMAL（正常）,LOCK（锁定）,FREEZE（冻结）,请传英文大写字母
        # @type Status: String

        attr_accessor :UserStoreId, :UserId, :Status
        
        def initialize(userstoreid=nil, userid=nil, status=nil)
          @UserStoreId = userstoreid
          @UserId = userid
          @Status = status
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @UserId = params['UserId']
          @Status = params['Status']
        end
      end

      # UpdateUserStatus返回参数结构体
      class UpdateUserStatusResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param PhoneNumber: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param LastSignOn: 上次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastSignOn: Integer
        # @param CreatedDate: 创建时间
        # @type CreatedDate: Integer
        # @param Status: 状态
        # @type Status: String
        # @param UserDataSourceEnum: 用户来源
        # @type UserDataSourceEnum: String
        # @param Nickname: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nickname: String
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Birthdate: 生日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birthdate: Integer
        # @param UserGroups: 用户组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroups: Array
        # @param LastModifiedDate: 上次修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedDate: Integer
        # @param CustomAttributes: 自定义属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomAttributes: Array
        # @param ResidentIdentityCard: 身份证号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResidentIdentityCard: String
        # @param QqOpenId: QQ的OpenId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QqOpenId: String
        # @param QqUnionId: QQ的UnionId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QqUnionId: String
        # @param WechatOpenId: 微信的WechatOpenId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatOpenId: String
        # @param WechatUnionId: 微信的WechatUnionId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatUnionId: String
        # @param AlipayUserId: 支付宝的AlipayUserId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlipayUserId: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Name: 姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Locale: 坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locale: String
        # @param Gender: 性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gender: String
        # @param IdentityVerificationMethod: 实名核验方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityVerificationMethod: String
        # @param IdentityVerified: 是否已经实名核验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityVerified: Boolean
        # @param Job: 工作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: String
        # @param Nationality: 国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nationality: String
        # @param Primary: 是否主账号（进行过账号融合后，主账号为true，从账号为false）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Primary: Boolean
        # @param Zone: 时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param AlreadyFirstLogin: 是否已经首次登录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlreadyFirstLogin: Boolean
        # @param TenantId: 租户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param UserStoreId: 用户目录id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserStoreId: String
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: Integer
        # @param LockType: 锁定类型（分为管理员锁定，和登录策略锁定）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockType: String
        # @param LockTime: 锁定时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockTime: Integer

        attr_accessor :UserId, :UserName, :PhoneNumber, :Email, :LastSignOn, :CreatedDate, :Status, :UserDataSourceEnum, :Nickname, :Address, :Birthdate, :UserGroups, :LastModifiedDate, :CustomAttributes, :ResidentIdentityCard, :QqOpenId, :QqUnionId, :WechatOpenId, :WechatUnionId, :AlipayUserId, :Description, :Name, :Locale, :Gender, :IdentityVerificationMethod, :IdentityVerified, :Job, :Nationality, :Primary, :Zone, :AlreadyFirstLogin, :TenantId, :UserStoreId, :Version, :LockType, :LockTime
        
        def initialize(userid=nil, username=nil, phonenumber=nil, email=nil, lastsignon=nil, createddate=nil, status=nil, userdatasourceenum=nil, nickname=nil, address=nil, birthdate=nil, usergroups=nil, lastmodifieddate=nil, customattributes=nil, residentidentitycard=nil, qqopenid=nil, qqunionid=nil, wechatopenid=nil, wechatunionid=nil, alipayuserid=nil, description=nil, name=nil, locale=nil, gender=nil, identityverificationmethod=nil, identityverified=nil, job=nil, nationality=nil, primary=nil, zone=nil, alreadyfirstlogin=nil, tenantid=nil, userstoreid=nil, version=nil, locktype=nil, locktime=nil)
          @UserId = userid
          @UserName = username
          @PhoneNumber = phonenumber
          @Email = email
          @LastSignOn = lastsignon
          @CreatedDate = createddate
          @Status = status
          @UserDataSourceEnum = userdatasourceenum
          @Nickname = nickname
          @Address = address
          @Birthdate = birthdate
          @UserGroups = usergroups
          @LastModifiedDate = lastmodifieddate
          @CustomAttributes = customattributes
          @ResidentIdentityCard = residentidentitycard
          @QqOpenId = qqopenid
          @QqUnionId = qqunionid
          @WechatOpenId = wechatopenid
          @WechatUnionId = wechatunionid
          @AlipayUserId = alipayuserid
          @Description = description
          @Name = name
          @Locale = locale
          @Gender = gender
          @IdentityVerificationMethod = identityverificationmethod
          @IdentityVerified = identityverified
          @Job = job
          @Nationality = nationality
          @Primary = primary
          @Zone = zone
          @AlreadyFirstLogin = alreadyfirstlogin
          @TenantId = tenantid
          @UserStoreId = userstoreid
          @Version = version
          @LockType = locktype
          @LockTime = locktime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @Email = params['Email']
          @LastSignOn = params['LastSignOn']
          @CreatedDate = params['CreatedDate']
          @Status = params['Status']
          @UserDataSourceEnum = params['UserDataSourceEnum']
          @Nickname = params['Nickname']
          @Address = params['Address']
          @Birthdate = params['Birthdate']
          @UserGroups = params['UserGroups']
          @LastModifiedDate = params['LastModifiedDate']
          unless params['CustomAttributes'].nil?
            @CustomAttributes = []
            params['CustomAttributes'].each do |i|
              membermap_tmp = MemberMap.new
              membermap_tmp.deserialize(i)
              @CustomAttributes << membermap_tmp
            end
          end
          @ResidentIdentityCard = params['ResidentIdentityCard']
          @QqOpenId = params['QqOpenId']
          @QqUnionId = params['QqUnionId']
          @WechatOpenId = params['WechatOpenId']
          @WechatUnionId = params['WechatUnionId']
          @AlipayUserId = params['AlipayUserId']
          @Description = params['Description']
          @Name = params['Name']
          @Locale = params['Locale']
          @Gender = params['Gender']
          @IdentityVerificationMethod = params['IdentityVerificationMethod']
          @IdentityVerified = params['IdentityVerified']
          @Job = params['Job']
          @Nationality = params['Nationality']
          @Primary = params['Primary']
          @Zone = params['Zone']
          @AlreadyFirstLogin = params['AlreadyFirstLogin']
          @TenantId = params['TenantId']
          @UserStoreId = params['UserStoreId']
          @Version = params['Version']
          @LockType = params['LockType']
          @LockTime = params['LockTime']
        end
      end

    end
  end
end

