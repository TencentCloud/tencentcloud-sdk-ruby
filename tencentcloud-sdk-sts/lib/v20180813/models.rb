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
  module Sts
    module V20180813
      # API密钥数据列表
      class ApiKey < TencentCloud::Common::AbstractModel
        # @param SecretId: 密钥ID
        # @type SecretId: String
        # @param CreateTime: 创建时间(时间戳)
        # @type CreateTime: Integer
        # @param Status: 状态(2:有效, 3:禁用, 4:已删除)
        # @type Status: Integer

        attr_accessor :SecretId, :CreateTime, :Status

        def initialize(secretid=nil, createtime=nil, status=nil)
          @SecretId = secretid
          @CreateTime = createtime
          @Status = status
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
        end
      end

      # AssumeRole请求参数结构体
      class AssumeRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleArn: 角色的资源描述，可在[访问管理](https://console.cloud.tencent.com/cam/role)，点击角色名获取。
        # 普通角色：
        # qcs::cam::uin/12345678:role/4611686018427397919、qcs::cam::uin/12345678:roleName/testRoleName
        # 服务角色：
        # qcs::cam::uin/12345678:role/tencentcloudServiceRole/4611686018427397920、qcs::cam::uin/12345678:role/tencentcloudServiceRoleName/testServiceRoleName
        # @type RoleArn: String
        # @param RoleSessionName: 临时会话名称，由用户自定义名称。
        # 长度在2到128之间，可包含大小写字符，数字以及特殊字符：=,.@_-。 正则为：[\w+=,.@_-]*
        # @type RoleSessionName: String
        # @param DurationSeconds: 指定临时访问凭证的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        # @type DurationSeconds: Integer
        # @param Policy: 策略描述
        # 注意：
        # 1、该参数需要做urlencode，服务端会对该字段做urldecode， 并按处理后Policy授予临时访问凭证权限，请按规范传入参数。（如果通过 GET 方法请求云 API，发送请求前，所有参数都需要按照[云 API 规范](https://cloud.tencent.com/document/api/598/33159#1.-.E6.8B.BC.E6.8E.A5.E8.A7.84.E8.8C.83.E8.AF.B7.E6.B1.82.E4.B8.B2)再 urlencode 一次）。
        # 2、策略语法参照[ CAM 策略语法](https://cloud.tencent.com/document/product/598/10603)。
        # 3、策略中不能包含 principal 元素。
        # @type Policy: String
        # @param ExternalId: 角色外部ID，可在[访问管理](https://console.cloud.tencent.com/cam/role)，点击角色名获取。
        # 长度在2到128之间，可包含大小写字符，数字以及特殊字符：=,.@:/-。 正则为：[\w+=,.@:\/-]*
        # @type ExternalId: String
        # @param Tags: 会话标签列表。最多可以传递 50 个会话标签，不支持包含相同标签键。
        # @type Tags: Array
        # @param SourceIdentity: 调用者身份uin
        # @type SourceIdentity: String
        # @param SerialNumber: MFA序列号，与进行调用的CAM用户关联的MFA设备的标识号。格式qcs::cam:uin/${ownerUin}::mfa/${mfaType}。mfaType支持softToken（软token）
        # @type SerialNumber: String
        # @param TokenCode: mfa身份验证码。
        # @type TokenCode: String

        attr_accessor :RoleArn, :RoleSessionName, :DurationSeconds, :Policy, :ExternalId, :Tags, :SourceIdentity, :SerialNumber, :TokenCode

        def initialize(rolearn=nil, rolesessionname=nil, durationseconds=nil, policy=nil, externalid=nil, tags=nil, sourceidentity=nil, serialnumber=nil, tokencode=nil)
          @RoleArn = rolearn
          @RoleSessionName = rolesessionname
          @DurationSeconds = durationseconds
          @Policy = policy
          @ExternalId = externalid
          @Tags = tags
          @SourceIdentity = sourceidentity
          @SerialNumber = serialnumber
          @TokenCode = tokencode
        end

        def deserialize(params)
          @RoleArn = params['RoleArn']
          @RoleSessionName = params['RoleSessionName']
          @DurationSeconds = params['DurationSeconds']
          @Policy = params['Policy']
          @ExternalId = params['ExternalId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @SourceIdentity = params['SourceIdentity']
          @SerialNumber = params['SerialNumber']
          @TokenCode = params['TokenCode']
        end
      end

      # AssumeRole返回参数结构体
      class AssumeRoleResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时访问凭证
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 临时访问凭证的过期时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 临时访问凭证的过期时间，以 iso8601 格式的 UTC 时间表示
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :Expiration, :RequestId

        def initialize(credentials=nil, expiredtime=nil, expiration=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # AssumeRoleWithSAML请求参数结构体
      class AssumeRoleWithSAMLRequest < TencentCloud::Common::AbstractModel
        # @param SAMLAssertion: base64 编码的 SAML 断言信息
        # @type SAMLAssertion: String
        # @param PrincipalArn: 扮演者访问描述名
        # @type PrincipalArn: String
        # @param RoleArn: 角色访问描述名
        # @type RoleArn: String
        # @param RoleSessionName: 会话名称
        # @type RoleSessionName: String
        # @param DurationSeconds: 指定临时访问凭证的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        # @type DurationSeconds: Integer

        attr_accessor :SAMLAssertion, :PrincipalArn, :RoleArn, :RoleSessionName, :DurationSeconds

        def initialize(samlassertion=nil, principalarn=nil, rolearn=nil, rolesessionname=nil, durationseconds=nil)
          @SAMLAssertion = samlassertion
          @PrincipalArn = principalarn
          @RoleArn = rolearn
          @RoleSessionName = rolesessionname
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @SAMLAssertion = params['SAMLAssertion']
          @PrincipalArn = params['PrincipalArn']
          @RoleArn = params['RoleArn']
          @RoleSessionName = params['RoleSessionName']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # AssumeRoleWithSAML返回参数结构体
      class AssumeRoleWithSAMLResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 对象里面包含 Token，TmpSecretId，TmpSecretKey 三元组
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 临时访问凭证的过期时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 临时访问凭证的过期时间，以 ISO8601 格式的 UTC 时间表示
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :Expiration, :RequestId

        def initialize(credentials=nil, expiredtime=nil, expiration=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # AssumeRoleWithWebIdentity请求参数结构体
      class AssumeRoleWithWebIdentityRequest < TencentCloud::Common::AbstractModel
        # @param ProviderId: 身份提供商名称
        # @type ProviderId: String
        # @param WebIdentityToken: IdP签发的OIDC令牌
        # @type WebIdentityToken: String
        # @param RoleArn: 角色访问描述名
        # @type RoleArn: String
        # @param RoleSessionName: 会话名称
        # @type RoleSessionName: String
        # @param DurationSeconds: 指定临时访问凭证的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        # @type DurationSeconds: Integer

        attr_accessor :ProviderId, :WebIdentityToken, :RoleArn, :RoleSessionName, :DurationSeconds

        def initialize(providerid=nil, webidentitytoken=nil, rolearn=nil, rolesessionname=nil, durationseconds=nil)
          @ProviderId = providerid
          @WebIdentityToken = webidentitytoken
          @RoleArn = rolearn
          @RoleSessionName = rolesessionname
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @ProviderId = params['ProviderId']
          @WebIdentityToken = params['WebIdentityToken']
          @RoleArn = params['RoleArn']
          @RoleSessionName = params['RoleSessionName']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # AssumeRoleWithWebIdentity返回参数结构体
      class AssumeRoleWithWebIdentityResponse < TencentCloud::Common::AbstractModel
        # @param ExpiredTime: 临时访问凭证过期时间(时间戳)
        # @type ExpiredTime: Integer
        # @param Expiration: 临时访问凭证过期时间
        # @type Expiration: String
        # @param Credentials: 临时访问凭证
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExpiredTime, :Expiration, :Credentials, :RequestId

        def initialize(expiredtime=nil, expiration=nil, credentials=nil, requestid=nil)
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 临时证书
      class Credentials < TencentCloud::Common::AbstractModel
        # @param Token: token。token长度和绑定的策略有关，最长不超过4096字节。
        # @type Token: String
        # @param TmpSecretId: 临时证书密钥ID。最长不超过1024字节。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时证书密钥Key。最长不超过1024字节。
        # @type TmpSecretKey: String

        attr_accessor :Token, :TmpSecretId, :TmpSecretKey

        def initialize(token=nil, tmpsecretid=nil, tmpsecretkey=nil)
          @Token = token
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
        end

        def deserialize(params)
          @Token = params['Token']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
        end
      end

      # GetCallerIdentity请求参数结构体
      class GetCallerIdentityRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetCallerIdentity返回参数结构体
      class GetCallerIdentityResponse < TencentCloud::Common::AbstractModel
        # @param Arn: 当前调用者ARN。
        # @type Arn: String
        # @param AccountId: 当前调用者所属主账号Uin。
        # @type AccountId: String
        # @param UserId: 身份标识。
        # 1. 调用者是云账号时，返回的是当前账号Uin
        # 2. 调用者是角色时，返回的是roleId:roleSessionName
        # 3. 调用者是联合身份时，返回的是uin:federatedUserName
        # @type UserId: String
        # @param PrincipalId: 密钥所属账号Uin。
        # 1. 调用者是云账号，返回的当前账号Uin
        # 2, 调用者是角色，返回的申请角色密钥的账号Uin
        # @type PrincipalId: String
        # @param Type: 身份类型。
        # @type Type: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Arn, :AccountId, :UserId, :PrincipalId, :Type, :RequestId

        def initialize(arn=nil, accountid=nil, userid=nil, principalid=nil, type=nil, requestid=nil)
          @Arn = arn
          @AccountId = accountid
          @UserId = userid
          @PrincipalId = principalid
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @Arn = params['Arn']
          @AccountId = params['AccountId']
          @UserId = params['UserId']
          @PrincipalId = params['PrincipalId']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # GetFederationToken请求参数结构体
      class GetFederationTokenRequest < TencentCloud::Common::AbstractModel
        # @param Name: 您可以自定义调用方英文名称，由字母组成。
        # @type Name: String
        # @param Policy: 注意：
        # 1、策略语法参照[ CAM 策略语法](https://cloud.tencent.com/document/product/598/10603)。
        # 2、策略中不能包含 principal 元素。
        # 3、该参数需要做urlencode，服务端会对该字段做urldecode， 并按处理后Policy授予临时访问凭证权限，请按规范传入参数。
        # @type Policy: String
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒，默认1800秒，主账号最长可设定有效期为7200秒，子账号最长可设定有效期为129600秒。
        # @type DurationSeconds: Integer

        attr_accessor :Name, :Policy, :DurationSeconds

        def initialize(name=nil, policy=nil, durationseconds=nil)
          @Name = name
          @Policy = policy
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @Name = params['Name']
          @Policy = params['Policy']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # GetFederationToken返回参数结构体
      class GetFederationTokenResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时访问凭证
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 临时访问凭证有效的时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 临时访问凭证有效的时间，以 iso8601 格式的 UTC 时间表示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :Expiration, :RequestId

        def initialize(credentials=nil, expiredtime=nil, expiration=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # GetSessionToken请求参数结构体
      class GetSessionTokenRequest < TencentCloud::Common::AbstractModel
        # @param SerialNumber: MFA序列号，与进行调用的CAM用户关联的MFA设备的标识号。格式qcs::cam:uin/${ownerUin}::mfa/${mfaType}。mfaType支持softToken（软token）
        # @type SerialNumber: String
        # @param TokenCode: mfa身份验证码。
        # @type TokenCode: String
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒，默认1800秒，主账号最长可设定有效期为7200秒，子账号最长可设定有效期为129600秒。
        # @type DurationSeconds: Integer

        attr_accessor :SerialNumber, :TokenCode, :DurationSeconds

        def initialize(serialnumber=nil, tokencode=nil, durationseconds=nil)
          @SerialNumber = serialnumber
          @TokenCode = tokencode
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @SerialNumber = params['SerialNumber']
          @TokenCode = params['TokenCode']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # GetSessionToken返回参数结构体
      class GetSessionTokenResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时访问凭证
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 证书无效的时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 临时访问凭证的过期时间，以 iso8601 格式的 UTC 时间表示
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :ExpiredTime, :Expiration, :RequestId

        def initialize(credentials=nil, expiredtime=nil, expiration=nil, requestid=nil)
          @Credentials = credentials
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # QueryApiKey请求参数结构体
      class QueryApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 待查询的账号uin(不填默认查当前账号uin)
        # @type TargetUin: Integer

        attr_accessor :TargetUin

        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # QueryApiKey返回参数结构体
      class QueryApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param IdKeys: 密钥ID列表。
        # @type IdKeys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdKeys, :RequestId

        def initialize(idkeys=nil, requestid=nil)
          @IdKeys = idkeys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdKeys'].nil?
            @IdKeys = []
            params['IdKeys'].each do |i|
              apikey_tmp = ApiKey.new
              apikey_tmp.deserialize(i)
              @IdKeys << apikey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键，最长128个字符，区分大小写。
        # @type Key: String
        # @param Value: 标签值，最长256个字符，区分大小写。
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

    end
  end
end

