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
  module Tdid
    module V20210519
      # CreateCredential请求参数结构体
      class CreateCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合，详见示例
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.FunctionArg`
        # @param TransactionArg: 参数集合，详见示例
        # @type TransactionArg: :class:`Tencentcloud::Tdid.v20210519.models.TransactionArg`
        # @param VersionCredential: 版本
        # @type VersionCredential: String
        # @param UnSigned: 是否未签名
        # @type UnSigned: Boolean

        attr_accessor :FunctionArg, :TransactionArg, :VersionCredential, :UnSigned
        
        def initialize(functionarg=nil, transactionarg=nil, versioncredential=nil, unsigned=nil)
          @FunctionArg = functionarg
          @TransactionArg = transactionarg
          @VersionCredential = versioncredential
          @UnSigned = unsigned
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = FunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
          unless params['TransactionArg'].nil?
            @TransactionArg = TransactionArg.new
            @TransactionArg.deserialize(params['TransactionArg'])
          end
          @VersionCredential = params['VersionCredential']
          @UnSigned = params['UnSigned']
        end
      end

      # CreateCredential返回参数结构体
      class CreateCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialData: Credential的具体信息
        # @type CredentialData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialData, :RequestId
        
        def initialize(credentialdata=nil, requestid=nil)
          @CredentialData = credentialdata
          @RequestId = requestid
        end

        def deserialize(params)
          @CredentialData = params['CredentialData']
          @RequestId = params['RequestId']
        end
      end

      # CreateSelectiveCredential请求参数结构体
      class CreateSelectiveCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.VerifyFunctionArg`
        # @param PolicyId: 批露策略id
        # @type PolicyId: Integer

        attr_accessor :FunctionArg, :PolicyId
        
        def initialize(functionarg=nil, policyid=nil)
          @FunctionArg = functionarg
          @PolicyId = policyid
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = VerifyFunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
          @PolicyId = params['PolicyId']
        end
      end

      # CreateSelectiveCredential返回参数结构体
      class CreateSelectiveCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialData: 凭证字符串
        # @type CredentialData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialData, :RequestId
        
        def initialize(credentialdata=nil, requestid=nil)
          @CredentialData = credentialdata
          @RequestId = requestid
        end

        def deserialize(params)
          @CredentialData = params['CredentialData']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDidByPublicKey请求参数结构体
      class CreateTDidByPublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param PublicKey: 身份公钥
        # @type PublicKey: String
        # @param EncryptPubKey: 加密公钥
        # @type EncryptPubKey: String

        attr_accessor :ClusterId, :GroupId, :PublicKey, :EncryptPubKey
        
        def initialize(clusterid=nil, groupid=nil, publickey=nil, encryptpubkey=nil)
          @ClusterId = clusterid
          @GroupId = groupid
          @PublicKey = publickey
          @EncryptPubKey = encryptpubkey
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @PublicKey = params['PublicKey']
          @EncryptPubKey = params['EncryptPubKey']
        end
      end

      # CreateTDidByPublicKey返回参数结构体
      class CreateTDidByPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param Did: did具体信息
        # @type Did: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :RequestId
        
        def initialize(did=nil, requestid=nil)
          @Did = did
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDid请求参数结构体
      class CreateTDidRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param Relegation: 部署机构为1，否则为0
        # @type Relegation: Integer

        attr_accessor :GroupId, :ClusterId, :Relegation
        
        def initialize(groupid=nil, clusterid=nil, relegation=nil)
          @GroupId = groupid
          @ClusterId = clusterid
          @Relegation = relegation
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ClusterId = params['ClusterId']
          @Relegation = params['Relegation']
        end
      end

      # CreateTDid返回参数结构体
      class CreateTDidResponse < TencentCloud::Common::AbstractModel
        # @param Did: TDID
        # @type Did: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :RequestId
        
        def initialize(did=nil, requestid=nil)
          @Did = did
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @RequestId = params['RequestId']
        end
      end

      # 凭证链上状态信息
      class CredentialStatus < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证唯一id
        # @type CredentialId: String
        # @param Status: 凭证状态（0：吊销；1：有效）
        # @type Status: Integer
        # @param Issuer: 凭证颁发者Did
        # @type Issuer: String
        # @param Digest: 凭证摘要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Digest: String
        # @param Signature: 凭证签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Signature: String
        # @param TimeStamp: 更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStamp: Integer

        attr_accessor :CredentialId, :Status, :Issuer, :Digest, :Signature, :TimeStamp
        
        def initialize(credentialid=nil, status=nil, issuer=nil, digest=nil, signature=nil, timestamp=nil)
          @CredentialId = credentialid
          @Status = status
          @Issuer = issuer
          @Digest = digest
          @Signature = signature
          @TimeStamp = timestamp
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @Status = params['Status']
          @Issuer = params['Issuer']
          @Digest = params['Digest']
          @Signature = params['Signature']
          @TimeStamp = params['TimeStamp']
        end
      end

      # 创建凭证入参的FunctionArg
      class FunctionArg < TencentCloud::Common::AbstractModel
        # @param CptId: CPT ID
        # @type CptId: Integer
        # @param Issuer: 签发者 did
        # @type Issuer: String
        # @param ExpirationDate: 过期时间
        # @type ExpirationDate: String
        # @param ClaimJson: 声明
        # @type ClaimJson: String

        attr_accessor :CptId, :Issuer, :ExpirationDate, :ClaimJson
        
        def initialize(cptid=nil, issuer=nil, expirationdate=nil, claimjson=nil)
          @CptId = cptid
          @Issuer = issuer
          @ExpirationDate = expirationdate
          @ClaimJson = claimjson
        end

        def deserialize(params)
          @CptId = params['CptId']
          @Issuer = params['Issuer']
          @ExpirationDate = params['ExpirationDate']
          @ClaimJson = params['ClaimJson']
        end
      end

      # GetAuthorityIssuer请求参数结构体
      class GetAuthorityIssuerRequest < TencentCloud::Common::AbstractModel
        # @param Did: tdid
        # @type Did: String

        attr_accessor :Did
        
        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetAuthorityIssuer返回参数结构体
      class GetAuthorityIssuerResponse < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param ClusterId: 区块链网络id
        # @type ClusterId: String
        # @param GroupId: 区块链群组id
        # @type GroupId: Integer
        # @param Did: 权威机构did
        # @type Did: String
        # @param Remark: 机构备注信息
        # @type Remark: String
        # @param RegisterTime: 注册时间
        # @type RegisterTime: String
        # @param RecognizeTime: 认证时间
        # @type RecognizeTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :ClusterId, :GroupId, :Did, :Remark, :RegisterTime, :RecognizeTime, :RequestId
        
        def initialize(name=nil, clusterid=nil, groupid=nil, did=nil, remark=nil, registertime=nil, recognizetime=nil, requestid=nil)
          @Name = name
          @ClusterId = clusterid
          @GroupId = groupid
          @Did = did
          @Remark = remark
          @RegisterTime = registertime
          @RecognizeTime = recognizetime
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @Did = params['Did']
          @Remark = params['Remark']
          @RegisterTime = params['RegisterTime']
          @RecognizeTime = params['RecognizeTime']
          @RequestId = params['RequestId']
        end
      end

      # GetDidDocument请求参数结构体
      class GetDidDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Did: tdid
        # @type Did: String

        attr_accessor :Did
        
        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetDidDocument返回参数结构体
      class GetDidDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Document: DID文档
        # @type Document: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Document, :RequestId
        
        def initialize(name=nil, document=nil, requestid=nil)
          @Name = name
          @Document = document
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Document = params['Document']
          @RequestId = params['RequestId']
        end
      end

      # 验证凭证签名
      class Proof < TencentCloud::Common::AbstractModel
        # @param Created: 创建时间
        # @type Created: Integer
        # @param Creator: 创建着did
        # @type Creator: String
        # @param SaltJson: salt值
        # @type SaltJson: String
        # @param SignatureValue: 签名
        # @type SignatureValue: String
        # @param Type: type类型
        # @type Type: String

        attr_accessor :Created, :Creator, :SaltJson, :SignatureValue, :Type
        
        def initialize(created=nil, creator=nil, saltjson=nil, signaturevalue=nil, type=nil)
          @Created = created
          @Creator = creator
          @SaltJson = saltjson
          @SignatureValue = signaturevalue
          @Type = type
        end

        def deserialize(params)
          @Created = params['Created']
          @Creator = params['Creator']
          @SaltJson = params['SaltJson']
          @SignatureValue = params['SignatureValue']
          @Type = params['Type']
        end
      end

      # SetCredentialStatus请求参数结构体
      class SetCredentialStatusRequest < TencentCloud::Common::AbstractModel
        # @param CredentialStatus: 凭证状态
        # @type CredentialStatus: :class:`Tencentcloud::Tdid.v20210519.models.CredentialStatus`

        attr_accessor :CredentialStatus
        
        def initialize(credentialstatus=nil)
          @CredentialStatus = credentialstatus
        end

        def deserialize(params)
          unless params['CredentialStatus'].nil?
            @CredentialStatus = CredentialStatus.new
            @CredentialStatus.deserialize(params['CredentialStatus'])
          end
        end
      end

      # SetCredentialStatus返回参数结构体
      class SetCredentialStatusResponse < TencentCloud::Common::AbstractModel
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

      # 创建凭证第二个
      class TransactionArg < TencentCloud::Common::AbstractModel
        # @param InvokerTDid: 凭证did
        # @type InvokerTDid: String

        attr_accessor :InvokerTDid
        
        def initialize(invokertdid=nil)
          @InvokerTDid = invokertdid
        end

        def deserialize(params)
          @InvokerTDid = params['InvokerTDid']
        end
      end

      # VerifyCredential请求参数结构体
      class VerifyCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.VerifyFunctionArg`

        attr_accessor :FunctionArg
        
        def initialize(functionarg=nil)
          @FunctionArg = functionarg
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = VerifyFunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
        end
      end

      # VerifyCredential返回参数结构体
      class VerifyCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否验证成功
        # @type Result: Boolean
        # @param VerifyCode: 验证返回码
        # @type VerifyCode: Integer
        # @param VerifyMessage: 验证消息
        # @type VerifyMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :VerifyCode, :VerifyMessage, :RequestId
        
        def initialize(result=nil, verifycode=nil, verifymessage=nil, requestid=nil)
          @Result = result
          @VerifyCode = verifycode
          @VerifyMessage = verifymessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @VerifyCode = params['VerifyCode']
          @VerifyMessage = params['VerifyMessage']
          @RequestId = params['RequestId']
        end
      end

      # 验证凭证参数值
      class VerifyFunctionArg < TencentCloud::Common::AbstractModel
        # @param CptId: CPT ID
        # @type CptId: Integer
        # @param Issuer: issuer did
        # @type Issuer: String
        # @param ExpirationDate: 过期时间
        # @type ExpirationDate: Integer
        # @param ClaimJson: 声明
        # @type ClaimJson: String
        # @param IssuanceDate: 颁发时间
        # @type IssuanceDate: Integer
        # @param Context: context值
        # @type Context: String
        # @param Id: id值
        # @type Id: String
        # @param Proof: 签名值
        # @type Proof: :class:`Tencentcloud::Tdid.v20210519.models.Proof`
        # @param Type: type值
        # @type Type: Array

        attr_accessor :CptId, :Issuer, :ExpirationDate, :ClaimJson, :IssuanceDate, :Context, :Id, :Proof, :Type
        
        def initialize(cptid=nil, issuer=nil, expirationdate=nil, claimjson=nil, issuancedate=nil, context=nil, id=nil, proof=nil, type=nil)
          @CptId = cptid
          @Issuer = issuer
          @ExpirationDate = expirationdate
          @ClaimJson = claimjson
          @IssuanceDate = issuancedate
          @Context = context
          @Id = id
          @Proof = proof
          @Type = type
        end

        def deserialize(params)
          @CptId = params['CptId']
          @Issuer = params['Issuer']
          @ExpirationDate = params['ExpirationDate']
          @ClaimJson = params['ClaimJson']
          @IssuanceDate = params['IssuanceDate']
          @Context = params['Context']
          @Id = params['Id']
          unless params['Proof'].nil?
            @Proof = Proof.new
            @Proof.deserialize(params['Proof'])
          end
          @Type = params['Type']
        end
      end

    end
  end
end

