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
      # 颁发凭证的数据参数
      class CRDLArg < TencentCloud::Common::AbstractModel
        # @param CPTId: CPT ID
        # @type CPTId: Integer
        # @param Issuer: 签发者 did
        # @type Issuer: String
        # @param ExpirationDate: 过期时间
        # @type ExpirationDate: String
        # @param ClaimJson: 声明
        # @type ClaimJson: String
        # @param Type: 凭证类型
        # @type Type: Array
        # @param Parties: 多方签名的用户did
        # @type Parties: Array

        attr_accessor :CPTId, :Issuer, :ExpirationDate, :ClaimJson, :Type, :Parties

        def initialize(cptid=nil, issuer=nil, expirationdate=nil, claimjson=nil, type=nil, parties=nil)
          @CPTId = cptid
          @Issuer = issuer
          @ExpirationDate = expirationdate
          @ClaimJson = claimjson
          @Type = type
          @Parties = parties
        end

        def deserialize(params)
          @CPTId = params['CPTId']
          @Issuer = params['Issuer']
          @ExpirationDate = params['ExpirationDate']
          @ClaimJson = params['ClaimJson']
          @Type = params['Type']
          @Parties = params['Parties']
        end
      end

      # 链上交易信息
      class ChainTransaction < TencentCloud::Common::AbstractModel
        # @param TransactionHash: 交易哈希
        # @type TransactionHash: String

        attr_accessor :TransactionHash

        def initialize(transactionhash=nil)
          @TransactionHash = transactionhash
        end

        def deserialize(params)
          @TransactionHash = params['TransactionHash']
        end
      end

      # CheckNewPurchase请求参数结构体
      class CheckNewPurchaseRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CheckNewPurchase返回参数结构体
      class CheckNewPurchaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateTDidByHost请求参数结构体
      class CreateTDidByHostRequest < TencentCloud::Common::AbstractModel
        # @param DAPId: DID应用ID
        # @type DAPId: Integer
        # @param CustomAttribute: 自定义DID文档json属性
        # @type CustomAttribute: String

        attr_accessor :DAPId, :CustomAttribute

        def initialize(dapid=nil, customattribute=nil)
          @DAPId = dapid
          @CustomAttribute = customattribute
        end

        def deserialize(params)
          @DAPId = params['DAPId']
          @CustomAttribute = params['CustomAttribute']
        end
      end

      # CreateTDidByHost返回参数结构体
      class CreateTDidByHostResponse < TencentCloud::Common::AbstractModel
        # @param Did: DID标识
        # @type Did: String
        # @param Transaction: 链上交易信息
        # @type Transaction: :class:`Tencentcloud::Tdid.v20210519.models.ChainTransaction`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :Transaction, :RequestId

        def initialize(did=nil, transaction=nil, requestid=nil)
          @Did = did
          @Transaction = transaction
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          unless params['Transaction'].nil?
            @Transaction = ChainTransaction.new
            @Transaction.deserialize(params['Transaction'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTDidByPubKey请求参数结构体
      class CreateTDidByPubKeyRequest < TencentCloud::Common::AbstractModel
        # @param DAPId: DID应用id
        # @type DAPId: Integer
        # @param PublicKey: pem格式的认证公钥
        # @type PublicKey: String
        # @param CustomAttribute: 自定义DID初始化属性json字符串
        # @type CustomAttribute: String
        # @param IgnoreExisted: 0:did存在返回错误，1:did存在返回该did，默认:0
        # @type IgnoreExisted: Integer

        attr_accessor :DAPId, :PublicKey, :CustomAttribute, :IgnoreExisted

        def initialize(dapid=nil, publickey=nil, customattribute=nil, ignoreexisted=nil)
          @DAPId = dapid
          @PublicKey = publickey
          @CustomAttribute = customattribute
          @IgnoreExisted = ignoreexisted
        end

        def deserialize(params)
          @DAPId = params['DAPId']
          @PublicKey = params['PublicKey']
          @CustomAttribute = params['CustomAttribute']
          @IgnoreExisted = params['IgnoreExisted']
        end
      end

      # CreateTDidByPubKey返回参数结构体
      class CreateTDidByPubKeyResponse < TencentCloud::Common::AbstractModel
        # @param Did: did标识
        # @type Did: String
        # @param Transaction: 链上交易信息
        # @type Transaction: :class:`Tencentcloud::Tdid.v20210519.models.ChainTransaction`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :Transaction, :RequestId

        def initialize(did=nil, transaction=nil, requestid=nil)
          @Did = did
          @Transaction = transaction
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          unless params['Transaction'].nil?
            @Transaction = ChainTransaction.new
            @Transaction.deserialize(params['Transaction'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 凭证链上状态信息
      class CredentialState < TencentCloud::Common::AbstractModel
        # @param Id: 凭证唯一id
        # @type Id: String
        # @param Status: 凭证状态（0：吊销；1：有效）
        # @type Status: Integer
        # @param Issuer: 凭证颁发者Did
        # @type Issuer: String
        # @param VCDigest: VC摘要，对应凭证Proof的vcDigest字段
        # @type VCDigest: String
        # @param TXDigest: 交易摘要，对应凭证Proof的txDigest字段
        # @type TXDigest: String
        # @param IssueTime: 颁布凭证的UTC时间戳
        # @type IssueTime: Integer
        # @param ExpireTime: 凭证过期的UTC时间戳
        # @type ExpireTime: Integer
        # @param CPTId: 凭证模板id
        # @type CPTId: Integer
        # @param Signature: 凭证签名
        # @type Signature: String
        # @param MetaDigest: 元数据摘要
        # @type MetaDigest: String

        attr_accessor :Id, :Status, :Issuer, :VCDigest, :TXDigest, :IssueTime, :ExpireTime, :CPTId, :Signature, :MetaDigest

        def initialize(id=nil, status=nil, issuer=nil, vcdigest=nil, txdigest=nil, issuetime=nil, expiretime=nil, cptid=nil, signature=nil, metadigest=nil)
          @Id = id
          @Status = status
          @Issuer = issuer
          @VCDigest = vcdigest
          @TXDigest = txdigest
          @IssueTime = issuetime
          @ExpireTime = expiretime
          @CPTId = cptid
          @Signature = signature
          @MetaDigest = metadigest
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @Issuer = params['Issuer']
          @VCDigest = params['VCDigest']
          @TXDigest = params['TXDigest']
          @IssueTime = params['IssueTime']
          @ExpireTime = params['ExpireTime']
          @CPTId = params['CPTId']
          @Signature = params['Signature']
          @MetaDigest = params['MetaDigest']
        end
      end

      # DeactivateTDid请求参数结构体
      class DeactivateTDidRequest < TencentCloud::Common::AbstractModel
        # @param Did: DID标识符
        # @type Did: String
        # @param OperateCredential: 设置DID禁用状态的临时凭证内容，通过创建凭证接口(CreateCredential)生成并签名，凭证类型为：OperateCredential, 为安全起见凭证过期时间不适合太长，建议设置为1分钟内
        # @type OperateCredential: String
        # @param DAPId: DID应用Id
        # @type DAPId: Integer
        # @param Deactivated: 是否禁用
        # @type Deactivated: String

        attr_accessor :Did, :OperateCredential, :DAPId, :Deactivated

        def initialize(did=nil, operatecredential=nil, dapid=nil, deactivated=nil)
          @Did = did
          @OperateCredential = operatecredential
          @DAPId = dapid
          @Deactivated = deactivated
        end

        def deserialize(params)
          @Did = params['Did']
          @OperateCredential = params['OperateCredential']
          @DAPId = params['DAPId']
          @Deactivated = params['Deactivated']
        end
      end

      # DeactivateTDid返回参数结构体
      class DeactivateTDidResponse < TencentCloud::Common::AbstractModel
        # @param Transaction: 上链交易信息
        # @type Transaction: :class:`Tencentcloud::Tdid.v20210519.models.ChainTransaction`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Transaction, :RequestId

        def initialize(transaction=nil, requestid=nil)
          @Transaction = transaction
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Transaction'].nil?
            @Transaction = ChainTransaction.new
            @Transaction.deserialize(params['Transaction'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCredentialState请求参数结构体
      class GetCredentialStateRequest < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证唯一Id
        # @type CredentialId: String
        # @param DAPId: 用户应用Id
        # @type DAPId: Integer

        attr_accessor :CredentialId, :DAPId

        def initialize(credentialid=nil, dapid=nil)
          @CredentialId = credentialid
          @DAPId = dapid
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @DAPId = params['DAPId']
        end
      end

      # GetCredentialState返回参数结构体
      class GetCredentialStateResponse < TencentCloud::Common::AbstractModel
        # @param CredentialState: 凭证状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CredentialState: :class:`Tencentcloud::Tdid.v20210519.models.CredentialState`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialState, :RequestId

        def initialize(credentialstate=nil, requestid=nil)
          @CredentialState = credentialstate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CredentialState'].nil?
            @CredentialState = CredentialState.new
            @CredentialState.deserialize(params['CredentialState'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTDidDocument请求参数结构体
      class GetTDidDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Did: DID标识
        # @type Did: String
        # @param DAPId: DID应用ID
        # @type DAPId: Integer

        attr_accessor :Did, :DAPId

        def initialize(did=nil, dapid=nil)
          @Did = did
          @DAPId = dapid
        end

        def deserialize(params)
          @Did = params['Did']
          @DAPId = params['DAPId']
        end
      end

      # GetTDidDocument返回参数结构体
      class GetTDidDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Document: DID文档内容
        # @type Document: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Document, :RequestId

        def initialize(document=nil, requestid=nil)
          @Document = document
          @RequestId = requestid
        end

        def deserialize(params)
          @Document = params['Document']
          @RequestId = params['RequestId']
        end
      end

      # IssueCredential请求参数结构体
      class IssueCredentialRequest < TencentCloud::Common::AbstractModel
        # @param CRDLArg: 参数集合，详见示例
        # @type CRDLArg: :class:`Tencentcloud::Tdid.v20210519.models.CRDLArg`
        # @param UnSigned: 是否未签名
        # @type UnSigned: Boolean
        # @param DAPId: DID应用id
        # @type DAPId: Integer

        attr_accessor :CRDLArg, :UnSigned, :DAPId

        def initialize(crdlarg=nil, unsigned=nil, dapid=nil)
          @CRDLArg = crdlarg
          @UnSigned = unsigned
          @DAPId = dapid
        end

        def deserialize(params)
          unless params['CRDLArg'].nil?
            @CRDLArg = CRDLArg.new
            @CRDLArg.deserialize(params['CRDLArg'])
          end
          @UnSigned = params['UnSigned']
          @DAPId = params['DAPId']
        end
      end

      # IssueCredential返回参数结构体
      class IssueCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialData: 可验证凭证内容
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

      # UpdateCredentialState请求参数结构体
      class UpdateCredentialStateRequest < TencentCloud::Common::AbstractModel
        # @param DAPId: DID应用Id
        # @type DAPId: Integer
        # @param OperateCredential: 更新VC状态的临时凭证内容，通过创建凭证接口(CreateCredential)生成并签名，凭证类型为：OperateCredential, 为安全起见凭证过期时间不适合太长，建议设置为1分钟内
        # @type OperateCredential: String

        attr_accessor :DAPId, :OperateCredential

        def initialize(dapid=nil, operatecredential=nil)
          @DAPId = dapid
          @OperateCredential = operatecredential
        end

        def deserialize(params)
          @DAPId = params['DAPId']
          @OperateCredential = params['OperateCredential']
        end
      end

      # UpdateCredentialState返回参数结构体
      class UpdateCredentialStateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # VerifyCredentials请求参数结构体
      class VerifyCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param VerifyType: 0:仅验证签名，1:验证签名和链上状态，2, 仅验证链上状态，默认为0, 3.验证DID和凭证状态以及签名，4. 验证历史凭证有效性
        # @type VerifyType: Integer
        # @param CredentialData: 凭证内容
        # @type CredentialData: String
        # @param DAPId: DID应用id
        # @type DAPId: Integer

        attr_accessor :VerifyType, :CredentialData, :DAPId

        def initialize(verifytype=nil, credentialdata=nil, dapid=nil)
          @VerifyType = verifytype
          @CredentialData = credentialdata
          @DAPId = dapid
        end

        def deserialize(params)
          @VerifyType = params['VerifyType']
          @CredentialData = params['CredentialData']
          @DAPId = params['DAPId']
        end
      end

      # VerifyCredentials返回参数结构体
      class VerifyCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否验证成功
        # @type Result: Boolean
        # @param VerifyCode: 验证返回码
        # @type VerifyCode: Integer
        # @param VerifyMessage: 验证结果信息
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

    end
  end
end

