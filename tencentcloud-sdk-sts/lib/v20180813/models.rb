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
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        # @type DurationSeconds: Integer
        # @param Policy: 策略描述
        # 注意：
        # 1、policy 需要做 urlencode（如果通过 GET 方法请求云 API，发送请求前，所有参数都需要按照[云 API 规范](https://cloud.tencent.com/document/api/598/33159#1.-.E6.8B.BC.E6.8E.A5.E8.A7.84.E8.8C.83.E8.AF.B7.E6.B1.82.E4.B8.B2)再 urlencode 一次）。
        # 2、策略语法参照[ CAM 策略语法](https://cloud.tencent.com/document/product/598/10603)。
        # 3、策略中不能包含 principal 元素。
        # @type Policy: String
        # @param ExternalId: 角色外部ID，可在[访问管理](https://console.cloud.tencent.com/cam/role)，点击角色名获取。
        # 长度在2到128之间，可包含大小写字符，数字以及特殊字符：=,.@:/-。 正则为：[\w+=,.@:\/-]*
        # @type ExternalId: String

        attr_accessor :RoleArn, :RoleSessionName, :DurationSeconds, :Policy, :ExternalId
        
        def initialize(rolearn=nil, rolesessionname=nil, durationseconds=nil, policy=nil, externalid=nil)
          @RoleArn = rolearn
          @RoleSessionName = rolesessionname
          @DurationSeconds = durationseconds
          @Policy = policy
          @ExternalId = externalid
        end

        def deserialize(params)
          @RoleArn = params['RoleArn']
          @RoleSessionName = params['RoleSessionName']
          @DurationSeconds = params['DurationSeconds']
          @Policy = params['Policy']
          @ExternalId = params['ExternalId']
        end
      end

      # AssumeRole返回参数结构体
      class AssumeRoleResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时安全证书
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 证书无效的时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 证书无效的时间，以 iso8601 格式的 UTC 时间表示
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @Credentials = Credentials.new.deserialize(params[Credentials])
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
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
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
        # @param ExpiredTime: 证书无效的时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 证书无效的时间，以 ISO8601 格式的 UTC 时间表示
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @Credentials = Credentials.new.deserialize(params[Credentials])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
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

      # GetFederationToken请求参数结构体
      class GetFederationTokenRequest < TencentCloud::Common::AbstractModel
        # @param Name: 您可以自定义调用方英文名称，由字母组成。
        # @type Name: String
        # @param Policy: 授予该临时证书权限的CAM策略
        # 注意：
        # 1、策略语法参照[ CAM 策略语法](https://cloud.tencent.com/document/product/598/10603)。
        # 2、策略中不能包含 principal 元素。
        # 3、该参数需要做urlencode。
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
        # @param Credentials: 临时证书
        # @type Credentials: :class:`Tencentcloud::Sts.v20180813.models.Credentials`
        # @param ExpiredTime: 临时证书有效的时间，返回 Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param Expiration: 证书有效的时间，以 iso8601 格式的 UTC 时间表示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expiration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @Credentials = Credentials.new.deserialize(params[Credentials])
          end
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          @RequestId = params['RequestId']
        end
      end

      # QueryApiKey请求参数结构体
      class QueryApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 待查询的账号(不填默认查当前账号)
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
        # @param IdKeys: 密钥ID列表
        # @type IdKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdKeys, :RequestId
        
        def initialize(idkeys=nil, requestid=nil)
          @IdKeys = idkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @IdKeys = params['IdKeys']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

