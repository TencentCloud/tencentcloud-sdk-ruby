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
  module Iap
    module V20240713
      # CreateIAPUserOIDCConfig请求参数结构体
      class CreateIAPUserOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL。OpenID Connect身份提供商标识。对应企业IdP提供的Openid-configuration中"issuer"字段的值。
        # @type IdentityUrl: String
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
        # @param IdentityKey: 签名公钥，需要base64_encode。验证OpenID Connect身份提供商ID Token签名的公钥。为了您的账号安全，建议您定期轮换签名公钥。
        # @type IdentityKey: String
        # @param Scope: 授权请求Scope。openid; email;profile。授权请求信息范围。默认必选openid。
        # @type Scope: Array
        # @param Description: 描述
        # @type Description: String

        attr_accessor :IdentityUrl, :ClientId, :AuthorizationEndpoint, :ResponseType, :ResponseMode, :MappingFiled, :IdentityKey, :Scope, :Description

        def initialize(identityurl=nil, clientid=nil, authorizationendpoint=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, identitykey=nil, scope=nil, description=nil)
          @IdentityUrl = identityurl
          @ClientId = clientid
          @AuthorizationEndpoint = authorizationendpoint
          @ResponseType = responsetype
          @ResponseMode = responsemode
          @MappingFiled = mappingfiled
          @IdentityKey = identitykey
          @Scope = scope
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @ClientId = params['ClientId']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @IdentityKey = params['IdentityKey']
          @Scope = params['Scope']
          @Description = params['Description']
        end
      end

      # CreateIAPUserOIDCConfig返回参数结构体
      class CreateIAPUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeIAPLoginSessionDuration请求参数结构体
      class DescribeIAPLoginSessionDurationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIAPLoginSessionDuration返回参数结构体
      class DescribeIAPLoginSessionDurationResponse < TencentCloud::Common::AbstractModel
        # @param Duration: 登录会话时长
        # @type Duration: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Duration, :RequestId

        def initialize(duration=nil, requestid=nil)
          @Duration = duration
          @RequestId = requestid
        end

        def deserialize(params)
          @Duration = params['Duration']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIAPUserOIDCConfig请求参数结构体
      class DescribeIAPUserOIDCConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIAPUserOIDCConfig返回参数结构体
      class DescribeIAPUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
        # @param ProviderType: 身份提供商类型。 13：IAP用户OIDC身份提供商
        # @type ProviderType: Integer
        # @param IdentityUrl: 身份提供商URL
        # @type IdentityUrl: String
        # @param IdentityKey: 签名公钥
        # @type IdentityKey: String
        # @param ClientId: 客户端id
        # @type ClientId: String
        # @param Status: 状态：0:未设置，11:已开启，2:已禁用
        # @type Status: Integer
        # @param Fingerprints: HTTPS CA证书的验证指纹，允许英文字母和数字，每个指纹长度为40个字符，最多5个指纹。
        # @type Fingerprints: Array
        # @param EnableAutoPublicKey: 是否需要开启自动使用OIDC签名公钥，1:需要，2:不需要，默认不需要
        # @type EnableAutoPublicKey: Integer
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProviderType, :IdentityUrl, :IdentityKey, :ClientId, :Status, :Fingerprints, :EnableAutoPublicKey, :AuthorizationEndpoint, :Scope, :ResponseType, :ResponseMode, :MappingFiled, :Description, :RequestId

        def initialize(providertype=nil, identityurl=nil, identitykey=nil, clientid=nil, status=nil, fingerprints=nil, enableautopublickey=nil, authorizationendpoint=nil, scope=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, description=nil, requestid=nil)
          @ProviderType = providertype
          @IdentityUrl = identityurl
          @IdentityKey = identitykey
          @ClientId = clientid
          @Status = status
          @Fingerprints = fingerprints
          @EnableAutoPublicKey = enableautopublickey
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
          @Fingerprints = params['Fingerprints']
          @EnableAutoPublicKey = params['EnableAutoPublicKey']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @Scope = params['Scope']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DisableIAPUserSSO请求参数结构体
      class DisableIAPUserSSORequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DisableIAPUserSSO返回参数结构体
      class DisableIAPUserSSOResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIAPLoginSessionDuration请求参数结构体
      class ModifyIAPLoginSessionDurationRequest < TencentCloud::Common::AbstractModel
        # @param Duration: 登录会话时长
        # @type Duration: Integer

        attr_accessor :Duration

        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # ModifyIAPLoginSessionDuration返回参数结构体
      class ModifyIAPLoginSessionDurationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateIAPUserOIDCConfig请求参数结构体
      class UpdateIAPUserOIDCConfigRequest < TencentCloud::Common::AbstractModel
        # @param IdentityUrl: 身份提供商URL。OpenID Connect身份提供商标识。对应企业IdP提供的Openid-configuration中"issuer"字段的值。
        # @type IdentityUrl: String
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
        # @param IdentityKey: RSA签名公钥，JWKS格式，需要进行base64_encode。验证OpenID Connect身份提供商ID Token签名的公钥。为了您的账号安全，建议您定期轮换签名公钥。
        # @type IdentityKey: String
        # @param Scope: 授权请求Scope。openid; email;profile。授权请求信息范围。默认必选openid。
        # @type Scope: Array
        # @param Description: 描述，长度为1~255个英文或中文字符，默认值为空。
        # @type Description: String

        attr_accessor :IdentityUrl, :ClientId, :AuthorizationEndpoint, :ResponseType, :ResponseMode, :MappingFiled, :IdentityKey, :Scope, :Description

        def initialize(identityurl=nil, clientid=nil, authorizationendpoint=nil, responsetype=nil, responsemode=nil, mappingfiled=nil, identitykey=nil, scope=nil, description=nil)
          @IdentityUrl = identityurl
          @ClientId = clientid
          @AuthorizationEndpoint = authorizationendpoint
          @ResponseType = responsetype
          @ResponseMode = responsemode
          @MappingFiled = mappingfiled
          @IdentityKey = identitykey
          @Scope = scope
          @Description = description
        end

        def deserialize(params)
          @IdentityUrl = params['IdentityUrl']
          @ClientId = params['ClientId']
          @AuthorizationEndpoint = params['AuthorizationEndpoint']
          @ResponseType = params['ResponseType']
          @ResponseMode = params['ResponseMode']
          @MappingFiled = params['MappingFiled']
          @IdentityKey = params['IdentityKey']
          @Scope = params['Scope']
          @Description = params['Description']
        end
      end

      # UpdateIAPUserOIDCConfig返回参数结构体
      class UpdateIAPUserOIDCConfigResponse < TencentCloud::Common::AbstractModel
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

