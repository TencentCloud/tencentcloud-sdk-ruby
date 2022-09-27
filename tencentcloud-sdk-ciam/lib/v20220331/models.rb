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
      # CreateApiImportUserJob请求参数结构体
      class CreateApiImportUserJobRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param DataFlowUserCreateList: 导入的用户数据
        # @type DataFlowUserCreateList: Array

        attr_accessor :UserStoreId, :DataFlowUserCreateList
        
        def initialize(userstoreid=nil, dataflowusercreatelist=nil)
          @UserStoreId = userstoreid
          @DataFlowUserCreateList = dataflowusercreatelist
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          unless params['DataFlowUserCreateList'].nil?
            @DataFlowUserCreateList = []
            params['DataFlowUserCreateList'].each do |i|
              importuser_tmp = ImportUser.new
              importuser_tmp.deserialize(i)
              @DataFlowUserCreateList << importuser_tmp
            end
          end
        end
      end

      # CreateApiImportUserJob返回参数结构体
      class CreateApiImportUserJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 数据流任务
        # @type Job: :class:`Tencentcloud::Ciam.v20220331.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFileExportUserJob请求参数结构体
      class CreateFileExportUserJobRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param Format: 导出的数据类型

        # <li> **NDJSON** </li>  New-line Delimited JSON
        # <li> **CSV** </li>  Comma-Separated Values
        # @type Format: String
        # @param Filters: Key可选值为condition、userGroupId

        # <li> **condition** </li>	Values = 查询条件，用户ID，用户名称，手机或邮箱
        # <li> **userGroupId** </li>	Values = 用户组ID
        # @type Filters: Array
        # @param ExportPropertyMaps: 导出用户包含的属性和映射名称，为空时包含所有的属性
        # @type ExportPropertyMaps: Array

        attr_accessor :UserStoreId, :Format, :Filters, :ExportPropertyMaps
        
        def initialize(userstoreid=nil, format=nil, filters=nil, exportpropertymaps=nil)
          @UserStoreId = userstoreid
          @Format = format
          @Filters = filters
          @ExportPropertyMaps = exportpropertymaps
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @Format = params['Format']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['ExportPropertyMaps'].nil?
            @ExportPropertyMaps = []
            params['ExportPropertyMaps'].each do |i|
              exportpropertymap_tmp = ExportPropertyMap.new
              exportpropertymap_tmp.deserialize(i)
              @ExportPropertyMaps << exportpropertymap_tmp
            end
          end
        end
      end

      # CreateFileExportUserJob返回参数结构体
      class CreateFileExportUserJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: 数据流任务
        # @type Job: :class:`Tencentcloud::Ciam.v20220331.models.Job`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId
        
        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
          @RequestId = params['RequestId']
        end
      end

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
        # @param IndexedAttribute1: 索引字段1
        # @type IndexedAttribute1: String
        # @param IndexedAttribute2: 索引字段2
        # @type IndexedAttribute2: String
        # @param IndexedAttribute3: 索引字段3
        # @type IndexedAttribute3: String
        # @param IndexedAttribute4: 索引字段4
        # @type IndexedAttribute4: String
        # @param IndexedAttribute5: 索引字段5
        # @type IndexedAttribute5: String

        attr_accessor :UserStoreId, :PhoneNumber, :Email, :Password, :UserName, :Nickname, :Address, :UserGroup, :Birthdate, :CustomizationAttributes, :IndexedAttribute1, :IndexedAttribute2, :IndexedAttribute3, :IndexedAttribute4, :IndexedAttribute5
        
        def initialize(userstoreid=nil, phonenumber=nil, email=nil, password=nil, username=nil, nickname=nil, address=nil, usergroup=nil, birthdate=nil, customizationattributes=nil, indexedattribute1=nil, indexedattribute2=nil, indexedattribute3=nil, indexedattribute4=nil, indexedattribute5=nil)
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
          @IndexedAttribute1 = indexedattribute1
          @IndexedAttribute2 = indexedattribute2
          @IndexedAttribute3 = indexedattribute3
          @IndexedAttribute4 = indexedattribute4
          @IndexedAttribute5 = indexedattribute5
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
          @IndexedAttribute1 = params['IndexedAttribute1']
          @IndexedAttribute2 = params['IndexedAttribute2']
          @IndexedAttribute3 = params['IndexedAttribute3']
          @IndexedAttribute4 = params['IndexedAttribute4']
          @IndexedAttribute5 = params['IndexedAttribute5']
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
        # @param Original: 返回信息是否为原文

        # <li> **false** </li>	默认，返回信息为脱敏信息
        # <li> **true** </li>	返回用户信息原文
        # @type Original: Boolean

        attr_accessor :UserStoreId, :UserId, :Original
        
        def initialize(userstoreid=nil, userid=nil, original=nil)
          @UserStoreId = userstoreid
          @UserId = userid
          @Original = original
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @UserId = params['UserId']
          @Original = params['Original']
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

      # DescribeUser请求参数结构体
      class DescribeUserRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param Pageable: 分页数据
        # @type Pageable: :class:`Tencentcloud::Ciam.v20220331.models.Pageable`
        # @param Filters: 查询条件，根据propertycode和propertykey
        # @type Filters: Array
        # @param Original: 是否返回明文
        # @type Original: Boolean
        # @param Sort: 排序设置
        # @type Sort: :class:`Tencentcloud::Ciam.v20220331.models.Sort`

        attr_accessor :UserStoreId, :Pageable, :Filters, :Original, :Sort
        
        def initialize(userstoreid=nil, pageable=nil, filters=nil, original=nil, sort=nil)
          @UserStoreId = userstoreid
          @Pageable = pageable
          @Filters = filters
          @Original = original
          @Sort = sort
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
              queryuserfilter_tmp = QueryUserFilter.new
              queryuserfilter_tmp.deserialize(i)
              @Filters << queryuserfilter_tmp
            end
          end
          @Original = params['Original']
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
        end
      end

      # DescribeUser返回参数结构体
      class DescribeUserResponse < TencentCloud::Common::AbstractModel
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

      # 失败详情
      class ErrorDetails < TencentCloud::Common::AbstractModel
        # @param UserId: 用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Error: 失败原因
        # @type Error: String

        attr_accessor :UserId, :Error
        
        def initialize(userid=nil, error=nil)
          @UserId = userid
          @Error = error
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Error = params['Error']
        end
      end

      # 导出属性映射
      class ExportPropertyMap < TencentCloud::Common::AbstractModel
        # @param UserPropertyCode: 用户属性code
        # @type UserPropertyCode: String
        # @param ColumnName: 用户属性映射名称
        # @type ColumnName: String

        attr_accessor :UserPropertyCode, :ColumnName
        
        def initialize(userpropertycode=nil, columnname=nil)
          @UserPropertyCode = userpropertycode
          @ColumnName = columnname
        end

        def deserialize(params)
          @UserPropertyCode = params['UserPropertyCode']
          @ColumnName = params['ColumnName']
        end
      end

      # 失败的用户
      class FailedUsers < TencentCloud::Common::AbstractModel
        # @param FailedUserIdentification: 失败用户标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedUserIdentification: String
        # @param FailedReason: 导入的用户失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReason: String

        attr_accessor :FailedUserIdentification, :FailedReason
        
        def initialize(faileduseridentification=nil, failedreason=nil)
          @FailedUserIdentification = faileduseridentification
          @FailedReason = failedreason
        end

        def deserialize(params)
          @FailedUserIdentification = params['FailedUserIdentification']
          @FailedReason = params['FailedReason']
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

      # 导入用户信息
      # 1、UserName，PhoneNumber ，Email ，WechatOpenId ，WechatUnionId ，AlipayUserId ，QqOpenId ，QqUnionId 八个属性中，导入时必须包含其中一个属性并遵守初始化自定义属性的正则表达式规则。UserName，PhoneNumber，Email的正则表达式在控制台的自定义属性中可以查询到。
      # 2、对于密码的导入，导入的密码支持明文导入，MD5密文导入，SHA1密文导入，BCRYPT密文导入 ，这个需要在PasswordEncryptTypeEnum 字段中指定。
      # 3、IdentityVerified，IdentityVerificationMethod 支持导入，
      # IdentityVerified 为true，IdentityVerificationMethod必传；
      # IdentityVerificationMethod 为nameAndIdCard，Name,ResidentIdentityCard必传
      # IdentityVerificationMethod 为nameIdCardAndPhone，Name,PhoneNumber,ResidentIdentityCard必传;
      class ImportUser < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param PhoneNumber: 手机号
        # @type PhoneNumber: String
        # @param Email: 邮箱
        # @type Email: String
        # @param ResidentIdentityCard: 身份证号
        # @type ResidentIdentityCard: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param Address: 地址
        # @type Address: String
        # @param UserGroup: 用户组ID
        # @type UserGroup: Array
        # @param QqOpenId: QQ qqOpenId
        # @type QqOpenId: String
        # @param QqUnionId: QQ qqUnionId
        # @type QqUnionId: String
        # @param WechatOpenId: 微信wechatOpenId
        # @type WechatOpenId: String
        # @param WechatUnionId: 微信wechatUnionId
        # @type WechatUnionId: String
        # @param AlipayUserId: 支付宝alipayUserId
        # @type AlipayUserId: String
        # @param Description: 描述
        # @type Description: String
        # @param Birthdate: 生日
        # @type Birthdate: String
        # @param Name: 姓名
        # @type Name: String
        # @param Locale: 坐标
        # @type Locale: String
        # @param Gender: 性别（MALE;FEMALE;UNKNOWN）
        # @type Gender: String
        # @param IdentityVerificationMethod: 实名核验方式
        # @type IdentityVerificationMethod: String
        # @param IdentityVerified: 是否已实名核验
        # @type IdentityVerified: Boolean
        # @param Job: 工作
        # @type Job: String
        # @param Nationality: 国家
        # @type Nationality: String
        # @param Zone: 时区
        # @type Zone: String
        # @param Password: 密码密文
        # @type Password: String
        # @param CustomizationAttributes: 自定义属性
        # @type CustomizationAttributes: Array
        # @param Salt: 密码盐
        # @type Salt: :class:`Tencentcloud::Ciam.v20220331.models.Salt`
        # @param PasswordEncryptTypeEnum: 密码加密方式（SHA1;BCRYPT）
        # @type PasswordEncryptTypeEnum: String
        # @param IndexedAttribute1: 索引字段1
        # @type IndexedAttribute1: String
        # @param IndexedAttribute2: 索引字段2
        # @type IndexedAttribute2: String
        # @param IndexedAttribute3: 索引字段3
        # @type IndexedAttribute3: String
        # @param IndexedAttribute4: 索引字段4
        # @type IndexedAttribute4: String
        # @param IndexedAttribute5: 索引字段5
        # @type IndexedAttribute5: String

        attr_accessor :UserName, :PhoneNumber, :Email, :ResidentIdentityCard, :Nickname, :Address, :UserGroup, :QqOpenId, :QqUnionId, :WechatOpenId, :WechatUnionId, :AlipayUserId, :Description, :Birthdate, :Name, :Locale, :Gender, :IdentityVerificationMethod, :IdentityVerified, :Job, :Nationality, :Zone, :Password, :CustomizationAttributes, :Salt, :PasswordEncryptTypeEnum, :IndexedAttribute1, :IndexedAttribute2, :IndexedAttribute3, :IndexedAttribute4, :IndexedAttribute5
        
        def initialize(username=nil, phonenumber=nil, email=nil, residentidentitycard=nil, nickname=nil, address=nil, usergroup=nil, qqopenid=nil, qqunionid=nil, wechatopenid=nil, wechatunionid=nil, alipayuserid=nil, description=nil, birthdate=nil, name=nil, locale=nil, gender=nil, identityverificationmethod=nil, identityverified=nil, job=nil, nationality=nil, zone=nil, password=nil, customizationattributes=nil, salt=nil, passwordencrypttypeenum=nil, indexedattribute1=nil, indexedattribute2=nil, indexedattribute3=nil, indexedattribute4=nil, indexedattribute5=nil)
          @UserName = username
          @PhoneNumber = phonenumber
          @Email = email
          @ResidentIdentityCard = residentidentitycard
          @Nickname = nickname
          @Address = address
          @UserGroup = usergroup
          @QqOpenId = qqopenid
          @QqUnionId = qqunionid
          @WechatOpenId = wechatopenid
          @WechatUnionId = wechatunionid
          @AlipayUserId = alipayuserid
          @Description = description
          @Birthdate = birthdate
          @Name = name
          @Locale = locale
          @Gender = gender
          @IdentityVerificationMethod = identityverificationmethod
          @IdentityVerified = identityverified
          @Job = job
          @Nationality = nationality
          @Zone = zone
          @Password = password
          @CustomizationAttributes = customizationattributes
          @Salt = salt
          @PasswordEncryptTypeEnum = passwordencrypttypeenum
          @IndexedAttribute1 = indexedattribute1
          @IndexedAttribute2 = indexedattribute2
          @IndexedAttribute3 = indexedattribute3
          @IndexedAttribute4 = indexedattribute4
          @IndexedAttribute5 = indexedattribute5
        end

        def deserialize(params)
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @Email = params['Email']
          @ResidentIdentityCard = params['ResidentIdentityCard']
          @Nickname = params['Nickname']
          @Address = params['Address']
          @UserGroup = params['UserGroup']
          @QqOpenId = params['QqOpenId']
          @QqUnionId = params['QqUnionId']
          @WechatOpenId = params['WechatOpenId']
          @WechatUnionId = params['WechatUnionId']
          @AlipayUserId = params['AlipayUserId']
          @Description = params['Description']
          @Birthdate = params['Birthdate']
          @Name = params['Name']
          @Locale = params['Locale']
          @Gender = params['Gender']
          @IdentityVerificationMethod = params['IdentityVerificationMethod']
          @IdentityVerified = params['IdentityVerified']
          @Job = params['Job']
          @Nationality = params['Nationality']
          @Zone = params['Zone']
          @Password = params['Password']
          unless params['CustomizationAttributes'].nil?
            @CustomizationAttributes = []
            params['CustomizationAttributes'].each do |i|
              membermap_tmp = MemberMap.new
              membermap_tmp.deserialize(i)
              @CustomizationAttributes << membermap_tmp
            end
          end
          unless params['Salt'].nil?
            @Salt = Salt.new
            @Salt.deserialize(params['Salt'])
          end
          @PasswordEncryptTypeEnum = params['PasswordEncryptTypeEnum']
          @IndexedAttribute1 = params['IndexedAttribute1']
          @IndexedAttribute2 = params['IndexedAttribute2']
          @IndexedAttribute3 = params['IndexedAttribute3']
          @IndexedAttribute4 = params['IndexedAttribute4']
          @IndexedAttribute5 = params['IndexedAttribute5']
        end
      end

      # 任务详情
      class Job < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: String
        # @param Status: 任务状态

        # <li> **PENDING** </li>  待执行
        # <li> **PROCESSING** </li>  执行中
        # <li> **COMPLETED** </li>  完成
        # <li> **FAILED** </li>  失败
        # @type Status: String
        # @param Type: 任务类型

        # <li> **IMPORT_USER** </li>  用户导入
        # <li> **EXPORT_USER** </li>  用户导出
        # @type Type: String
        # @param CreatedDate: 任务创建时间
        # @type CreatedDate: Integer
        # @param Format: 任务的数据类型

        # <li> **NDJSON** </li>  New-line Delimited JSON
        # <li> **CSV** </li>  Comma-Separated Values
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Format: String
        # @param Location: 任务结果下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param ErrorDetails: 失败详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDetails: Array
        # @param FailedUsers: 失败的用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedUsers: Array

        attr_accessor :Id, :Status, :Type, :CreatedDate, :Format, :Location, :ErrorDetails, :FailedUsers
        
        def initialize(id=nil, status=nil, type=nil, createddate=nil, format=nil, location=nil, errordetails=nil, failedusers=nil)
          @Id = id
          @Status = status
          @Type = type
          @CreatedDate = createddate
          @Format = format
          @Location = location
          @ErrorDetails = errordetails
          @FailedUsers = failedusers
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @Type = params['Type']
          @CreatedDate = params['CreatedDate']
          @Format = params['Format']
          @Location = params['Location']
          unless params['ErrorDetails'].nil?
            @ErrorDetails = []
            params['ErrorDetails'].each do |i|
              errordetails_tmp = ErrorDetails.new
              errordetails_tmp.deserialize(i)
              @ErrorDetails << errordetails_tmp
            end
          end
          unless params['FailedUsers'].nil?
            @FailedUsers = []
            params['FailedUsers'].each do |i|
              failedusers_tmp = FailedUsers.new
              failedusers_tmp.deserialize(i)
              @FailedUsers << failedusers_tmp
            end
          end
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
        # @param UserLinkedOnAttribute: 融合属性

        # <li> **PHONENUMBER** </li>	  手机号码
        # <li> **EMAIL** </li>  邮箱
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

      # ListJobs请求参数结构体
      class ListJobsRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param JobIds: 任务ID列表，为空时返回全部任务
        # @type JobIds: Array

        attr_accessor :UserStoreId, :JobIds
        
        def initialize(userstoreid=nil, jobids=nil)
          @UserStoreId = userstoreid
          @JobIds = jobids
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @JobIds = params['JobIds']
        end
      end

      # ListJobs返回参数结构体
      class ListJobsResponse < TencentCloud::Common::AbstractModel
        # @param JobSet: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobSet, :RequestId
        
        def initialize(jobset=nil, requestid=nil)
          @JobSet = jobset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              job_tmp = Job.new
              job_tmp.deserialize(i)
              @JobSet << job_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListLogMessageByCondition请求参数结构体
      class ListLogMessageByConditionRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户池ID
        # @type UserStoreId: String
        # @param Pageable: 分页数据
        # @type Pageable: :class:`Tencentcloud::Ciam.v20220331.models.Pageable`
        # @param StartTime: 开始时间，时间戳精确到毫秒
        # @type StartTime: Integer
        # @param Filters: Key可选值为events

        # <li> **events** </li>	Values为["SIGNUP", "USER_UPDATE", "USER_DELETE", "USER_CREATE", "ACCOUNT_LINKING"] 中的一个或多个
        # @type Filters: Array

        attr_accessor :UserStoreId, :Pageable, :StartTime, :Filters
        
        def initialize(userstoreid=nil, pageable=nil, starttime=nil, filters=nil)
          @UserStoreId = userstoreid
          @Pageable = pageable
          @StartTime = starttime
          @Filters = filters
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          unless params['Pageable'].nil?
            @Pageable = Pageable.new
            @Pageable.deserialize(params['Pageable'])
          end
          @StartTime = params['StartTime']
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

      # ListLogMessageByCondition返回参数结构体
      class ListLogMessageByConditionResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Pageable: 分页对象
        # @type Pageable: :class:`Tencentcloud::Ciam.v20220331.models.Pageable`
        # @param Content: 日志列表
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
              logmessage_tmp = LogMessage.new
              logmessage_tmp.deserialize(i)
              @Content << logmessage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListUserByProperty请求参数结构体
      class ListUserByPropertyRequest < TencentCloud::Common::AbstractModel
        # @param UserStoreId: 用户目录ID
        # @type UserStoreId: String
        # @param PropertyCode: 查询的属性

        # <li> **phoneNumber** </li>	  手机号码
        # <li> **email** </li>  邮箱
        # @type PropertyCode: String
        # @param PropertyValue: 属性值
        # @type PropertyValue: String
        # @param Original: 返回信息是否为原文
        # @type Original: Boolean

        attr_accessor :UserStoreId, :PropertyCode, :PropertyValue, :Original
        
        def initialize(userstoreid=nil, propertycode=nil, propertyvalue=nil, original=nil)
          @UserStoreId = userstoreid
          @PropertyCode = propertycode
          @PropertyValue = propertyvalue
          @Original = original
        end

        def deserialize(params)
          @UserStoreId = params['UserStoreId']
          @PropertyCode = params['PropertyCode']
          @PropertyValue = params['PropertyValue']
          @Original = params['Original']
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
        # @param Original: 返回信息是否为原文
        # @type Original: Boolean

        attr_accessor :UserStoreId, :Pageable, :Filters, :Original
        
        def initialize(userstoreid=nil, pageable=nil, filters=nil, original=nil)
          @UserStoreId = userstoreid
          @Pageable = pageable
          @Filters = filters
          @Original = original
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
          @Original = params['Original']
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

      # 日志详情
      class LogMessage < TencentCloud::Common::AbstractModel
        # @param LogId: 日志标识
        # @type LogId: String
        # @param TenantId: 租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param UserStoreId: 用户池ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserStoreId: String
        # @param EventCode: 事件编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCode: String
        # @param EventDate: 事件发生时间戳，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventDate: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Participant: 事件参与者

        # <li> **TENANT** </li>  租户
        # <li> **USER** </li>  用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Participant: String
        # @param ApplicationClientId: 应用clientId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationClientId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param AuthSourceId: 认证源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthSourceId: String
        # @param AuthSourceName: 认证源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthSourceName: String
        # @param AuthSourceType: 认证源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthSourceType: String
        # @param AuthSourceCategory: 认证源类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthSourceCategory: String
        # @param Ip: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param UserAgent: 用户代理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAgent: String
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Detail: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String

        attr_accessor :LogId, :TenantId, :UserStoreId, :EventCode, :EventDate, :Description, :Participant, :ApplicationClientId, :ApplicationName, :AuthSourceId, :AuthSourceName, :AuthSourceType, :AuthSourceCategory, :Ip, :UserAgent, :UserId, :Detail
        
        def initialize(logid=nil, tenantid=nil, userstoreid=nil, eventcode=nil, eventdate=nil, description=nil, participant=nil, applicationclientid=nil, applicationname=nil, authsourceid=nil, authsourcename=nil, authsourcetype=nil, authsourcecategory=nil, ip=nil, useragent=nil, userid=nil, detail=nil)
          @LogId = logid
          @TenantId = tenantid
          @UserStoreId = userstoreid
          @EventCode = eventcode
          @EventDate = eventdate
          @Description = description
          @Participant = participant
          @ApplicationClientId = applicationclientid
          @ApplicationName = applicationname
          @AuthSourceId = authsourceid
          @AuthSourceName = authsourcename
          @AuthSourceType = authsourcetype
          @AuthSourceCategory = authsourcecategory
          @Ip = ip
          @UserAgent = useragent
          @UserId = userid
          @Detail = detail
        end

        def deserialize(params)
          @LogId = params['LogId']
          @TenantId = params['TenantId']
          @UserStoreId = params['UserStoreId']
          @EventCode = params['EventCode']
          @EventDate = params['EventDate']
          @Description = params['Description']
          @Participant = params['Participant']
          @ApplicationClientId = params['ApplicationClientId']
          @ApplicationName = params['ApplicationName']
          @AuthSourceId = params['AuthSourceId']
          @AuthSourceName = params['AuthSourceName']
          @AuthSourceType = params['AuthSourceType']
          @AuthSourceCategory = params['AuthSourceCategory']
          @Ip = params['Ip']
          @UserAgent = params['UserAgent']
          @UserId = params['UserId']
          @Detail = params['Detail']
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

      # 查询用户信息条件
      class QueryUserFilter < TencentCloud::Common::AbstractModel
        # @param PropertyKey: 属性key
        # @type PropertyKey: String
        # @param PropertyValue: 属性value
        # @type PropertyValue: String
        # @param Logic: 逻辑值，等于true，不等于false
        # @type Logic: Boolean
        # @param OperateLogic: 操作逻辑符（支持> < = >= <=  != between）
        # @type OperateLogic: String

        attr_accessor :PropertyKey, :PropertyValue, :Logic, :OperateLogic
        
        def initialize(propertykey=nil, propertyvalue=nil, logic=nil, operatelogic=nil)
          @PropertyKey = propertykey
          @PropertyValue = propertyvalue
          @Logic = logic
          @OperateLogic = operatelogic
        end

        def deserialize(params)
          @PropertyKey = params['PropertyKey']
          @PropertyValue = params['PropertyValue']
          @Logic = params['Logic']
          @OperateLogic = params['OperateLogic']
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

      # 密码盐
      class Salt < TencentCloud::Common::AbstractModel
        # @param SaltValue: 盐值
        # @type SaltValue: String
        # @param SaltLocation: 盐值位置
        # @type SaltLocation: :class:`Tencentcloud::Ciam.v20220331.models.SaltLocation`

        attr_accessor :SaltValue, :SaltLocation
        
        def initialize(saltvalue=nil, saltlocation=nil)
          @SaltValue = saltvalue
          @SaltLocation = saltlocation
        end

        def deserialize(params)
          @SaltValue = params['SaltValue']
          unless params['SaltLocation'].nil?
            @SaltLocation = SaltLocation.new
            @SaltLocation.deserialize(params['SaltLocation'])
          end
        end
      end

      # 盐位
      class SaltLocation < TencentCloud::Common::AbstractModel
        # @param SaltLocationTypeEnum: 密码加盐的类型（HEAD，TAIL，OTHER）
        # @type SaltLocationTypeEnum: String
        # @param SaltLocationRule: 加盐规则
        # @type SaltLocationRule: :class:`Tencentcloud::Ciam.v20220331.models.SaltLocationRule`

        attr_accessor :SaltLocationTypeEnum, :SaltLocationRule
        
        def initialize(saltlocationtypeenum=nil, saltlocationrule=nil)
          @SaltLocationTypeEnum = saltlocationtypeenum
          @SaltLocationRule = saltlocationrule
        end

        def deserialize(params)
          @SaltLocationTypeEnum = params['SaltLocationTypeEnum']
          unless params['SaltLocationRule'].nil?
            @SaltLocationRule = SaltLocationRule.new
            @SaltLocationRule.deserialize(params['SaltLocationRule'])
          end
        end
      end

      # 盐位规则
      class SaltLocationRule < TencentCloud::Common::AbstractModel
        # @param Regex: 表达式
        # @type Regex: String

        attr_accessor :Regex
        
        def initialize(regex=nil)
          @Regex = regex
        end

        def deserialize(params)
          @Regex = params['Regex']
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

      # 查询用户排序
      class Sort < TencentCloud::Common::AbstractModel
        # @param PropertyKey: 排序字段的key，参考自定义属性
        # @type PropertyKey: String
        # @param Order: 升序或者降序，ASC/DESC
        # @type Order: String

        attr_accessor :PropertyKey, :Order
        
        def initialize(propertykey=nil, order=nil)
          @PropertyKey = propertykey
          @Order = order
        end

        def deserialize(params)
          @PropertyKey = params['PropertyKey']
          @Order = params['Order']
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
        # @param IndexedAttribute1: 索引字段1
        # @type IndexedAttribute1: String
        # @param IndexedAttribute2: 索引字段2
        # @type IndexedAttribute2: String
        # @param IndexedAttribute3: 索引字段3
        # @type IndexedAttribute3: String
        # @param IndexedAttribute4: 索引字段4
        # @type IndexedAttribute4: String
        # @param IndexedAttribute5: 索引字段5
        # @type IndexedAttribute5: String

        attr_accessor :UserId, :UserStoreId, :UserName, :PhoneNumber, :Email, :Nickname, :Address, :UserGroup, :Birthdate, :CustomizationAttributes, :IndexedAttribute1, :IndexedAttribute2, :IndexedAttribute3, :IndexedAttribute4, :IndexedAttribute5
        
        def initialize(userid=nil, userstoreid=nil, username=nil, phonenumber=nil, email=nil, nickname=nil, address=nil, usergroup=nil, birthdate=nil, customizationattributes=nil, indexedattribute1=nil, indexedattribute2=nil, indexedattribute3=nil, indexedattribute4=nil, indexedattribute5=nil)
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
          @IndexedAttribute1 = indexedattribute1
          @IndexedAttribute2 = indexedattribute2
          @IndexedAttribute3 = indexedattribute3
          @IndexedAttribute4 = indexedattribute4
          @IndexedAttribute5 = indexedattribute5
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
          @IndexedAttribute1 = params['IndexedAttribute1']
          @IndexedAttribute2 = params['IndexedAttribute2']
          @IndexedAttribute3 = params['IndexedAttribute3']
          @IndexedAttribute4 = params['IndexedAttribute4']
          @IndexedAttribute5 = params['IndexedAttribute5']
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
        # @param Status: 用户状态

        # <li> **NORMAL** </li>	  正常
        # <li> **LOCK** </li>  锁定
        # <li> **FREEZE** </li>	  冻结
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
        # @param IndexedAttribute1: 索引字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexedAttribute1: String
        # @param IndexedAttribute2: 索引字段2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexedAttribute2: String
        # @param IndexedAttribute3: 索引字段3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexedAttribute3: String
        # @param IndexedAttribute4: 索引字段4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexedAttribute4: String
        # @param IndexedAttribute5: 索引字段5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexedAttribute5: String

        attr_accessor :UserId, :UserName, :PhoneNumber, :Email, :LastSignOn, :CreatedDate, :Status, :UserDataSourceEnum, :Nickname, :Address, :Birthdate, :UserGroups, :LastModifiedDate, :CustomAttributes, :ResidentIdentityCard, :QqOpenId, :QqUnionId, :WechatOpenId, :WechatUnionId, :AlipayUserId, :Description, :Name, :Locale, :Gender, :IdentityVerificationMethod, :IdentityVerified, :Job, :Nationality, :Primary, :Zone, :AlreadyFirstLogin, :TenantId, :UserStoreId, :Version, :LockType, :LockTime, :IndexedAttribute1, :IndexedAttribute2, :IndexedAttribute3, :IndexedAttribute4, :IndexedAttribute5
        
        def initialize(userid=nil, username=nil, phonenumber=nil, email=nil, lastsignon=nil, createddate=nil, status=nil, userdatasourceenum=nil, nickname=nil, address=nil, birthdate=nil, usergroups=nil, lastmodifieddate=nil, customattributes=nil, residentidentitycard=nil, qqopenid=nil, qqunionid=nil, wechatopenid=nil, wechatunionid=nil, alipayuserid=nil, description=nil, name=nil, locale=nil, gender=nil, identityverificationmethod=nil, identityverified=nil, job=nil, nationality=nil, primary=nil, zone=nil, alreadyfirstlogin=nil, tenantid=nil, userstoreid=nil, version=nil, locktype=nil, locktime=nil, indexedattribute1=nil, indexedattribute2=nil, indexedattribute3=nil, indexedattribute4=nil, indexedattribute5=nil)
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
          @IndexedAttribute1 = indexedattribute1
          @IndexedAttribute2 = indexedattribute2
          @IndexedAttribute3 = indexedattribute3
          @IndexedAttribute4 = indexedattribute4
          @IndexedAttribute5 = indexedattribute5
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
          @IndexedAttribute1 = params['IndexedAttribute1']
          @IndexedAttribute2 = params['IndexedAttribute2']
          @IndexedAttribute3 = params['IndexedAttribute3']
          @IndexedAttribute4 = params['IndexedAttribute4']
          @IndexedAttribute5 = params['IndexedAttribute5']
        end
      end

    end
  end
end

