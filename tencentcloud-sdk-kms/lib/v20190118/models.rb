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
  module Kms
    module V20190118
      # 算法的名称 和 标识
      class AlgorithmInfo < TencentCloud::Common::AbstractModel
        # @param KeyUsage: 算法的标识
        # @type KeyUsage: String
        # @param Algorithm: 算法的名称
        # @type Algorithm: String

        attr_accessor :KeyUsage, :Algorithm

        def initialize(keyusage=nil, algorithm=nil)
          @KeyUsage = keyusage
          @Algorithm = algorithm
        end

        def deserialize(params)
          @KeyUsage = params['KeyUsage']
          @Algorithm = params['Algorithm']
        end
      end

      # ArchiveKey请求参数结构体
      class ArchiveKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # ArchiveKey返回参数结构体
      class ArchiveKeyResponse < TencentCloud::Common::AbstractModel
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

      # AsymmetricRsaDecrypt请求参数结构体
      class AsymmetricRsaDecryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Ciphertext: 使用PublicKey加密的密文，Base64编码
        # @type Ciphertext: String
        # @param Algorithm: 在使用公钥加密时对应的算法：当前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        # @type Algorithm: String

        attr_accessor :KeyId, :Ciphertext, :Algorithm

        def initialize(keyid=nil, ciphertext=nil, algorithm=nil)
          @KeyId = keyid
          @Ciphertext = ciphertext
          @Algorithm = algorithm
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Ciphertext = params['Ciphertext']
          @Algorithm = params['Algorithm']
        end
      end

      # AsymmetricRsaDecrypt返回参数结构体
      class AsymmetricRsaDecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Plaintext: 解密后的明文，base64编码
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId

        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # AsymmetricSm2Decrypt请求参数结构体
      class AsymmetricSm2DecryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Ciphertext: 使用PublicKey加密的密文，Base64编码，原始密文格式需要为C1C3C2_ASN1。原始密文长度不能超过256字节。
        # @type Ciphertext: String

        attr_accessor :KeyId, :Ciphertext

        def initialize(keyid=nil, ciphertext=nil)
          @KeyId = keyid
          @Ciphertext = ciphertext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Ciphertext = params['Ciphertext']
        end
      end

      # AsymmetricSm2Decrypt返回参数结构体
      class AsymmetricSm2DecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Plaintext: 解密后的明文，base64编码
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId

        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # BindCloudResource请求参数结构体
      class BindCloudResourceRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: cmk的ID
        # @type KeyId: String
        # @param ProductId: 云产品的唯一性标识符
        # @type ProductId: String
        # @param ResourceId: 资源/实例ID，由调用方根据自己的云产品特征来定义，以字符串形式做存储。
        # @type ResourceId: String

        attr_accessor :KeyId, :ProductId, :ResourceId

        def initialize(keyid=nil, productid=nil, resourceid=nil)
          @KeyId = keyid
          @ProductId = productid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @ProductId = params['ProductId']
          @ResourceId = params['ResourceId']
        end
      end

      # BindCloudResource返回参数结构体
      class BindCloudResourceResponse < TencentCloud::Common::AbstractModel
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

      # CancelDataKeyDeletion请求参数结构体
      class CancelDataKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # CancelDataKeyDeletion返回参数结构体
      class CancelDataKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 唯一标志被计划删除的数据密钥
        # @type DataKeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKeyId, :RequestId

        def initialize(datakeyid=nil, requestid=nil)
          @DataKeyId = datakeyid
          @RequestId = requestid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @RequestId = params['RequestId']
        end
      end

      # CancelKeyArchive请求参数结构体
      class CancelKeyArchiveRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # CancelKeyArchive返回参数结构体
      class CancelKeyArchiveResponse < TencentCloud::Common::AbstractModel
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

      # CancelKeyDeletion请求参数结构体
      class CancelKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 需要被取消删除的CMK的唯一标志
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # CancelKeyDeletion返回参数结构体
      class CancelKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: 唯一标志被取消删除的CMK。
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :RequestId

        def initialize(keyid=nil, requestid=nil)
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateKey请求参数结构体
      class CreateKeyRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字。以 kms- 作为前缀的用于云产品使用，Alias 不可重复。
        # @type Alias: String
        # @param Description: CMK 的描述，最大1024字节
        # @type Description: String
        # @param KeyUsage: 指定key的用途，默认为  "ENCRYPT_DECRYPT" 表示创建对称加解密密钥，其它支持用途 “ASYMMETRIC_DECRYPT_RSA_2048” 表示创建用于加解密的RSA2048非对称密钥，“ASYMMETRIC_DECRYPT_SM2” 表示创建用于加解密的SM2非对称密钥，“ASYMMETRIC_SIGN_VERIFY_SM2” 表示创建用于签名验签的SM2非对称密钥，“ASYMMETRIC_SIGN_VERIFY_ECC” 表示创建用于签名验签的ECC非对称密钥，“ASYMMETRIC_SIGN_VERIFY_RSA_2048” 表示创建用于签名验签的RSA_2048非对称密钥，“ASYMMETRIC_SIGN_VERIFY_ECDSA384”表示创建用于签名验签的 ECDSA384 非对称秘钥。完整的秘钥用途与算法支持列表可通过 ListAlgorithms 接口获取。
        # @type KeyUsage: String
        # @param Type: 指定key类型，默认为1，1表示默认类型，由KMS创建CMK密钥，2 表示EXTERNAL 类型，该类型需要用户导入密钥材料，参考 GetParametersForImport 和 ImportKeyMaterial 接口
        # @type Type: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param HsmClusterId: KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        # @type HsmClusterId: String

        attr_accessor :Alias, :Description, :KeyUsage, :Type, :Tags, :HsmClusterId

        def initialize(_alias=nil, description=nil, keyusage=nil, type=nil, tags=nil, hsmclusterid=nil)
          @Alias = _alias
          @Description = description
          @KeyUsage = keyusage
          @Type = type
          @Tags = tags
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Description = params['Description']
          @KeyUsage = params['KeyUsage']
          @Type = params['Type']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # CreateKey返回参数结构体
      class CreateKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识符
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param CreateTime: 密钥创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param Description: CMK的描述
        # @type Description: String
        # @param KeyState: CMK的状态
        # @type KeyState: String
        # @param KeyUsage: CMK的用途
        # @type KeyUsage: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息
        # @type TagMsg: String
        # @param HsmClusterId: HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        # @type HsmClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Alias, :CreateTime, :Description, :KeyState, :KeyUsage, :TagCode, :TagMsg, :HsmClusterId, :RequestId

        def initialize(keyid=nil, _alias=nil, createtime=nil, description=nil, keystate=nil, keyusage=nil, tagcode=nil, tagmsg=nil, hsmclusterid=nil, requestid=nil)
          @KeyId = keyid
          @Alias = _alias
          @CreateTime = createtime
          @Description = description
          @KeyState = keystate
          @KeyUsage = keyusage
          @TagCode = tagcode
          @TagMsg = tagmsg
          @HsmClusterId = hsmclusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @KeyState = params['KeyState']
          @KeyUsage = params['KeyUsage']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @HsmClusterId = params['HsmClusterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWhiteBoxKey请求参数结构体
      class CreateWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字。Alias不可重复。
        # @type Alias: String
        # @param Algorithm: 创建密钥所有的算法类型，支持的取值：AES_256,SM4
        # @type Algorithm: String
        # @param Description: 密钥的描述，最大1024字节
        # @type Description: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :Alias, :Algorithm, :Description, :Tags

        def initialize(_alias=nil, algorithm=nil, description=nil, tags=nil)
          @Alias = _alias
          @Algorithm = algorithm
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Algorithm = params['Algorithm']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateWhiteBoxKey返回参数结构体
      class CreateWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param EncryptKey: 用于加密的密钥，base64编码
        # @type EncryptKey: String
        # @param DecryptKey: 用于解密的密钥，base64编码
        # @type DecryptKey: String
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息
        # @type TagMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptKey, :DecryptKey, :KeyId, :TagCode, :TagMsg, :RequestId

        def initialize(encryptkey=nil, decryptkey=nil, keyid=nil, tagcode=nil, tagmsg=nil, requestid=nil)
          @EncryptKey = encryptkey
          @DecryptKey = decryptkey
          @KeyId = keyid
          @TagCode = tagcode
          @TagMsg = tagmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @EncryptKey = params['EncryptKey']
          @DecryptKey = params['DecryptKey']
          @KeyId = params['KeyId']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @RequestId = params['RequestId']
        end
      end

      # 数据密钥属性
      class DataKey < TencentCloud::Common::AbstractModel
        # @param DataKeyId: DataKey的全局唯一标识。
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # 数据密钥属性信息
      class DataKeyMetadata < TencentCloud::Common::AbstractModel
        # @param DataKeyId: DataKey的全局唯一标识
        # @type DataKeyId: String
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param DataKeyName: 作为密钥更容易辨识，更容易被人看懂的数据密钥名称
        # @type DataKeyName: String
        # @param NumberOfBytes: 数据密钥的长度,单位字节
        # @type NumberOfBytes: Integer
        # @param CreateTime: 密钥创建时间
        # @type CreateTime: Integer
        # @param Description: DataKey的描述
        # @type Description: String
        # @param KeyState: DataKey的状态， 取值为：Enabled | Disabled | PendingDelete
        # @type KeyState: String
        # @param CreatorUin: 创建者
        # @type CreatorUin: Integer
        # @param Owner: 数据密钥的创建者，用户创建的为 user，授权各云产品自动创建的为对应的产品名
        # @type Owner: String
        # @param DeletionDate: 计划删除的时间
        # @type DeletionDate: Integer
        # @param Origin: DataKey 密钥材料类型，由KMS创建的为： TENCENT_KMS， 由用户导入的类型为：EXTERNAL
        # @type Origin: String
        # @param HsmClusterId: HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        # @type HsmClusterId: String
        # @param ResourceId: 资源ID，格式：creatorUin/$creatorUin/$dataKeyId
        # @type ResourceId: String

        attr_accessor :DataKeyId, :KeyId, :DataKeyName, :NumberOfBytes, :CreateTime, :Description, :KeyState, :CreatorUin, :Owner, :DeletionDate, :Origin, :HsmClusterId, :ResourceId

        def initialize(datakeyid=nil, keyid=nil, datakeyname=nil, numberofbytes=nil, createtime=nil, description=nil, keystate=nil, creatoruin=nil, owner=nil, deletiondate=nil, origin=nil, hsmclusterid=nil, resourceid=nil)
          @DataKeyId = datakeyid
          @KeyId = keyid
          @DataKeyName = datakeyname
          @NumberOfBytes = numberofbytes
          @CreateTime = createtime
          @Description = description
          @KeyState = keystate
          @CreatorUin = creatoruin
          @Owner = owner
          @DeletionDate = deletiondate
          @Origin = origin
          @HsmClusterId = hsmclusterid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @KeyId = params['KeyId']
          @DataKeyName = params['DataKeyName']
          @NumberOfBytes = params['NumberOfBytes']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @KeyState = params['KeyState']
          @CreatorUin = params['CreatorUin']
          @Owner = params['Owner']
          @DeletionDate = params['DeletionDate']
          @Origin = params['Origin']
          @HsmClusterId = params['HsmClusterId']
          @ResourceId = params['ResourceId']
        end
      end

      # Decrypt请求参数结构体
      class DecryptRequest < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 待解密的密文数据
        # @type CiphertextBlob: String
        # @param EncryptionContext: key/value对的json字符串，如果Encrypt指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024字符
        # @type EncryptionContext: String
        # @param EncryptionPublicKey: PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        # @type EncryptionPublicKey: String
        # @param EncryptionAlgorithm: 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        # @type EncryptionAlgorithm: String

        attr_accessor :CiphertextBlob, :EncryptionContext, :EncryptionPublicKey, :EncryptionAlgorithm

        def initialize(ciphertextblob=nil, encryptioncontext=nil, encryptionpublickey=nil, encryptionalgorithm=nil)
          @CiphertextBlob = ciphertextblob
          @EncryptionContext = encryptioncontext
          @EncryptionPublicKey = encryptionpublickey
          @EncryptionAlgorithm = encryptionalgorithm
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptionContext = params['EncryptionContext']
          @EncryptionPublicKey = params['EncryptionPublicKey']
          @EncryptionAlgorithm = params['EncryptionAlgorithm']
        end
      end

      # Decrypt返回参数结构体
      class DecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Plaintext: 若调用时未提供 EncryptionPublicKey，该字段值为 Base64 编码的明文，需进行 Base64 解码以获取明文。
        # 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取明文。
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId

        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # DeleteImportedKeyMaterial请求参数结构体
      class DeleteImportedKeyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 指定需要删除密钥材料的EXTERNAL CMK。
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DeleteImportedKeyMaterial返回参数结构体
      class DeleteImportedKeyMaterialResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWhiteBoxKey请求参数结构体
      class DeleteWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DeleteWhiteBoxKey返回参数结构体
      class DeleteWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDataKey请求参数结构体
      class DescribeDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥全局唯一标识符
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # DescribeDataKey返回参数结构体
      class DescribeDataKeyResponse < TencentCloud::Common::AbstractModel
        # @param DataKeyMetadata: 数据密钥属性信息
        # @type DataKeyMetadata: :class:`Tencentcloud::Kms.v20190118.models.DataKeyMetadata`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKeyMetadata, :RequestId

        def initialize(datakeymetadata=nil, requestid=nil)
          @DataKeyMetadata = datakeymetadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataKeyMetadata'].nil?
            @DataKeyMetadata = DataKeyMetadata.new
            @DataKeyMetadata.deserialize(params['DataKeyMetadata'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataKeys请求参数结构体
      class DescribeDataKeysRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyIds: 查询DataKey的ID列表，批量查询一次最多支持100个DataKeyId
        # @type DataKeyIds: Array

        attr_accessor :DataKeyIds

        def initialize(datakeyids=nil)
          @DataKeyIds = datakeyids
        end

        def deserialize(params)
          @DataKeyIds = params['DataKeyIds']
        end
      end

      # DescribeDataKeys返回参数结构体
      class DescribeDataKeysResponse < TencentCloud::Common::AbstractModel
        # @param DataKeyMetadatas: 返回数据密钥属性信息列表
        # @type DataKeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKeyMetadatas, :RequestId

        def initialize(datakeymetadatas=nil, requestid=nil)
          @DataKeyMetadatas = datakeymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataKeyMetadatas'].nil?
            @DataKeyMetadatas = []
            params['DataKeyMetadatas'].each do |i|
              datakeymetadata_tmp = DataKeyMetadata.new
              datakeymetadata_tmp.deserialize(i)
              @DataKeyMetadatas << datakeymetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKey请求参数结构体
      class DescribeKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeKey返回参数结构体
      class DescribeKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyMetadata: 密钥属性信息
        # @type KeyMetadata: :class:`Tencentcloud::Kms.v20190118.models.KeyMetadata`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyMetadata, :RequestId

        def initialize(keymetadata=nil, requestid=nil)
          @KeyMetadata = keymetadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyMetadata'].nil?
            @KeyMetadata = KeyMetadata.new
            @KeyMetadata.deserialize(params['KeyMetadata'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeys请求参数结构体
      class DescribeKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 查询CMK的ID列表，批量查询一次最多支持100个KeyId
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DescribeKeys返回参数结构体
      class DescribeKeysResponse < TencentCloud::Common::AbstractModel
        # @param KeyMetadatas: 返回的属性信息列表
        # @type KeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyMetadatas, :RequestId

        def initialize(keymetadatas=nil, requestid=nil)
          @KeyMetadatas = keymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyMetadatas'].nil?
            @KeyMetadatas = []
            params['KeyMetadatas'].each do |i|
              keymetadata_tmp = KeyMetadata.new
              keymetadata_tmp.deserialize(i)
              @KeyMetadatas << keymetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxDecryptKey请求参数结构体
      class DescribeWhiteBoxDecryptKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxDecryptKey返回参数结构体
      class DescribeWhiteBoxDecryptKeyResponse < TencentCloud::Common::AbstractModel
        # @param DecryptKey: 白盒解密密钥，base64编码
        # @type DecryptKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DecryptKey, :RequestId

        def initialize(decryptkey=nil, requestid=nil)
          @DecryptKey = decryptkey
          @RequestId = requestid
        end

        def deserialize(params)
          @DecryptKey = params['DecryptKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxDeviceFingerprints请求参数结构体
      class DescribeWhiteBoxDeviceFingerprintsRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥ID
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxDeviceFingerprints返回参数结构体
      class DescribeWhiteBoxDeviceFingerprintsResponse < TencentCloud::Common::AbstractModel
        # @param DeviceFingerprints: 设备指纹列表
        # @type DeviceFingerprints: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceFingerprints, :RequestId

        def initialize(devicefingerprints=nil, requestid=nil)
          @DeviceFingerprints = devicefingerprints
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceFingerprints'].nil?
            @DeviceFingerprints = []
            params['DeviceFingerprints'].each do |i|
              devicefingerprint_tmp = DeviceFingerprint.new
              devicefingerprint_tmp.deserialize(i)
              @DeviceFingerprints << devicefingerprint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxKeyDetails请求参数结构体
      class DescribeWhiteBoxKeyDetailsRequest < TencentCloud::Common::AbstractModel
        # @param KeyStatus: 过滤条件：密钥的状态，0：disabled，1：enabled
        # @type KeyStatus: Integer
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为0, 表示不分页
        # @type Limit: Integer
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array

        attr_accessor :KeyStatus, :Offset, :Limit, :TagFilters

        def initialize(keystatus=nil, offset=nil, limit=nil, tagfilters=nil)
          @KeyStatus = keystatus
          @Offset = offset
          @Limit = limit
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @KeyStatus = params['KeyStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeWhiteBoxKeyDetails返回参数结构体
      class DescribeWhiteBoxKeyDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KeyInfos: 白盒密钥信息列表。
        # @type KeyInfos: Array
        # @param TotalCount: 白盒密钥总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyInfos, :TotalCount, :RequestId

        def initialize(keyinfos=nil, totalcount=nil, requestid=nil)
          @KeyInfos = keyinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyInfos'].nil?
            @KeyInfos = []
            params['KeyInfos'].each do |i|
              whiteboxkeyinfo_tmp = WhiteboxKeyInfo.new
              whiteboxkeyinfo_tmp.deserialize(i)
              @KeyInfos << whiteboxkeyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxKey请求参数结构体
      class DescribeWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxKey返回参数结构体
      class DescribeWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyInfo: 白盒密钥信息
        # @type KeyInfo: :class:`Tencentcloud::Kms.v20190118.models.WhiteboxKeyInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyInfo, :RequestId

        def initialize(keyinfo=nil, requestid=nil)
          @KeyInfo = keyinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyInfo'].nil?
            @KeyInfo = WhiteboxKeyInfo.new
            @KeyInfo.deserialize(params['KeyInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxServiceStatus请求参数结构体
      class DescribeWhiteBoxServiceStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWhiteBoxServiceStatus返回参数结构体
      class DescribeWhiteBoxServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: 用户的白盒密钥服务是否可用
        # @type ServiceEnabled: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :RequestId

        def initialize(serviceenabled=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @RequestId = params['RequestId']
        end
      end

      # 设备指纹
      class DeviceFingerprint < TencentCloud::Common::AbstractModel
        # @param Identity: 指纹信息，由设备指纹采集工具采集获得，格式满足正则表达式：^[0-9a-f]{8}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{16}$
        # @type Identity: String
        # @param Description: 描述信息，如：IP，设备名称等，最大1024字节
        # @type Description: String

        attr_accessor :Identity, :Description

        def initialize(identity=nil, description=nil)
          @Identity = identity
          @Description = description
        end

        def deserialize(params)
          @Identity = params['Identity']
          @Description = params['Description']
        end
      end

      # DisableDataKey请求参数结构体
      class DisableDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥唯一标识符
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # DisableDataKey返回参数结构体
      class DisableDataKeyResponse < TencentCloud::Common::AbstractModel
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

      # DisableDataKeys请求参数结构体
      class DisableDataKeysRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyIds: 需要批量禁用的DataKey Id 列表，数据密钥数量最大支持100
        # @type DataKeyIds: Array

        attr_accessor :DataKeyIds

        def initialize(datakeyids=nil)
          @DataKeyIds = datakeyids
        end

        def deserialize(params)
          @DataKeyIds = params['DataKeyIds']
        end
      end

      # DisableDataKeys返回参数结构体
      class DisableDataKeysResponse < TencentCloud::Common::AbstractModel
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

      # DisableKey请求参数结构体
      class DisableKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableKey返回参数结构体
      class DisableKeyResponse < TencentCloud::Common::AbstractModel
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

      # DisableKeyRotation请求参数结构体
      class DisableKeyRotationRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableKeyRotation返回参数结构体
      class DisableKeyRotationResponse < TencentCloud::Common::AbstractModel
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

      # DisableKeys请求参数结构体
      class DisableKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 需要批量禁用的CMK Id 列表，CMK数量最大支持100
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DisableKeys返回参数结构体
      class DisableKeysResponse < TencentCloud::Common::AbstractModel
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

      # DisableWhiteBoxKey请求参数结构体
      class DisableWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableWhiteBoxKey返回参数结构体
      class DisableWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
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

      # DisableWhiteBoxKeys请求参数结构体
      class DisableWhiteBoxKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 白盒密钥的全局唯一标识符列表。注意：要确保所有提供的KeyId是格式有效的，没有重复，个数不超过50个，并且都是有效存在的。
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DisableWhiteBoxKeys返回参数结构体
      class DisableWhiteBoxKeysResponse < TencentCloud::Common::AbstractModel
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

      # EnableDataKey请求参数结构体
      class EnableDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥唯一标识符
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # EnableDataKey返回参数结构体
      class EnableDataKeyResponse < TencentCloud::Common::AbstractModel
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

      # EnableDataKeys请求参数结构体
      class EnableDataKeysRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyIds: 需要批量启用的DataKey Id 列表， 数据密钥数量最大支持100
        # @type DataKeyIds: Array

        attr_accessor :DataKeyIds

        def initialize(datakeyids=nil)
          @DataKeyIds = datakeyids
        end

        def deserialize(params)
          @DataKeyIds = params['DataKeyIds']
        end
      end

      # EnableDataKeys返回参数结构体
      class EnableDataKeysResponse < TencentCloud::Common::AbstractModel
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

      # EnableKey请求参数结构体
      class EnableKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # EnableKey返回参数结构体
      class EnableKeyResponse < TencentCloud::Common::AbstractModel
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

      # EnableKeyRotation请求参数结构体
      class EnableKeyRotationRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String
        # @param RotateDays: 密钥轮转周期，单位天，允许范围 7 ~ 365，默认值 365。
        # @type RotateDays: Integer

        attr_accessor :KeyId, :RotateDays

        def initialize(keyid=nil, rotatedays=nil)
          @KeyId = keyid
          @RotateDays = rotatedays
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @RotateDays = params['RotateDays']
        end
      end

      # EnableKeyRotation返回参数结构体
      class EnableKeyRotationResponse < TencentCloud::Common::AbstractModel
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

      # EnableKeys请求参数结构体
      class EnableKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 需要批量启用的CMK Id 列表， CMK数量最大支持100
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # EnableKeys返回参数结构体
      class EnableKeysResponse < TencentCloud::Common::AbstractModel
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

      # EnableWhiteBoxKey请求参数结构体
      class EnableWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # EnableWhiteBoxKey返回参数结构体
      class EnableWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
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

      # EnableWhiteBoxKeys请求参数结构体
      class EnableWhiteBoxKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 白盒密钥的全局唯一标识符列表。注意：要确保所有提供的KeyId是格式有效的，没有重复，个数不超过50个，并且都是有效存在的。
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # EnableWhiteBoxKeys返回参数结构体
      class EnableWhiteBoxKeysResponse < TencentCloud::Common::AbstractModel
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

      # EncryptByWhiteBox请求参数结构体
      class EncryptByWhiteBoxRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param PlainText: 待加密的文本， base64编码，文本的原始长度最大不超过4KB
        # @type PlainText: String
        # @param InitializationVector: 初始化向量，大小为 16 Bytes，加密算法会使用到, base64编码；如果不传，则由后端服务随机生成。用户需要自行保存该值，作为解密的参数。
        # @type InitializationVector: String

        attr_accessor :KeyId, :PlainText, :InitializationVector

        def initialize(keyid=nil, plaintext=nil, initializationvector=nil)
          @KeyId = keyid
          @PlainText = plaintext
          @InitializationVector = initializationvector
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PlainText = params['PlainText']
          @InitializationVector = params['InitializationVector']
        end
      end

      # EncryptByWhiteBox返回参数结构体
      class EncryptByWhiteBoxResponse < TencentCloud::Common::AbstractModel
        # @param InitializationVector: 初始化向量，加密算法会使用到, base64编码。如果由调用方在入参中传入，则原样返回。如果调用方没有传入，则后端服务随机生成，并返回
        # @type InitializationVector: String
        # @param CipherText: 加密后的密文，base64编码
        # @type CipherText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InitializationVector, :CipherText, :RequestId

        def initialize(initializationvector=nil, ciphertext=nil, requestid=nil)
          @InitializationVector = initializationvector
          @CipherText = ciphertext
          @RequestId = requestid
        end

        def deserialize(params)
          @InitializationVector = params['InitializationVector']
          @CipherText = params['CipherText']
          @RequestId = params['RequestId']
        end
      end

      # Encrypt请求参数结构体
      class EncryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 调用CreateKey生成的CMK全局唯一标识符
        # @type KeyId: String
        # @param Plaintext: 被加密的明文数据，该字段必须使用base64编码，原文最大长度支持4K
        # @type Plaintext: String
        # @param EncryptionContext: key/value对的json字符串，如果指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024个字符
        # @type EncryptionContext: String

        attr_accessor :KeyId, :Plaintext, :EncryptionContext

        def initialize(keyid=nil, plaintext=nil, encryptioncontext=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @EncryptionContext = encryptioncontext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @EncryptionContext = params['EncryptionContext']
        end
      end

      # Encrypt返回参数结构体
      class EncryptResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 加密后的密文，base64编码。注意：本字段中打包了密文和密钥的相关信息，不是对明文的直接加密结果，只有将该字段作为Decrypt接口的输入参数，才可以解密出原文。
        # @type CiphertextBlob: String
        # @param KeyId: 加密使用的CMK的全局唯一标识
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :KeyId, :RequestId

        def initialize(ciphertextblob=nil, keyid=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # 独享版集群
      class ExclusiveHSM < TencentCloud::Common::AbstractModel
        # @param HsmClusterId: 独享集群Id
        # @type HsmClusterId: String
        # @param HsmClusterName: 独享集群名称
        # @type HsmClusterName: String

        attr_accessor :HsmClusterId, :HsmClusterName

        def initialize(hsmclusterid=nil, hsmclustername=nil)
          @HsmClusterId = hsmclusterid
          @HsmClusterName = hsmclustername
        end

        def deserialize(params)
          @HsmClusterId = params['HsmClusterId']
          @HsmClusterName = params['HsmClusterName']
        end
      end

      # GenerateDataKey请求参数结构体
      class GenerateDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK全局唯一标识符
        # @type KeyId: String
        # @param KeySpec: 指定生成Datakey的加密算法以及Datakey大小，AES_128或者AES_256。KeySpec 和 NumberOfBytes 必须指定一个
        # @type KeySpec: String
        # @param NumberOfBytes: 生成的DataKey的长度，同时指定NumberOfBytes和KeySpec时，以NumberOfBytes为准。最小值为1， 最大值为1024。KeySpec 和 NumberOfBytes 必须指定一个
        # @type NumberOfBytes: Integer
        # @param EncryptionContext: key/value对的json字符串，如果使用该字段，则返回的DataKey在解密时需要填入相同的字符串
        # @type EncryptionContext: String
        # @param EncryptionPublicKey: PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        # @type EncryptionPublicKey: String
        # @param EncryptionAlgorithm: 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        # @type EncryptionAlgorithm: String
        # @param IsHostedByKms: 表示生成的数据密钥是否被KMS托管。1:表示被KMS托管保存,0:表示KMS不托管。
        # @type IsHostedByKms: Integer
        # @param DataKeyName: 数据密钥的名称，当IsHostedByKms为1时,必须填写。当IsHostedByKms为0时,可以不填，KMS不托管。
        # @type DataKeyName: String
        # @param Description: 数据密钥 的描述，最大100字节
        # @type Description: String
        # @param HsmClusterId: KMS 独享版对应的 HSM 集群 ID。如果指定HsmClusterId，表明根密钥在此集群里，会校验KeyId是否和HsmClusterId对应。
        # @type HsmClusterId: String

        attr_accessor :KeyId, :KeySpec, :NumberOfBytes, :EncryptionContext, :EncryptionPublicKey, :EncryptionAlgorithm, :IsHostedByKms, :DataKeyName, :Description, :HsmClusterId

        def initialize(keyid=nil, keyspec=nil, numberofbytes=nil, encryptioncontext=nil, encryptionpublickey=nil, encryptionalgorithm=nil, ishostedbykms=nil, datakeyname=nil, description=nil, hsmclusterid=nil)
          @KeyId = keyid
          @KeySpec = keyspec
          @NumberOfBytes = numberofbytes
          @EncryptionContext = encryptioncontext
          @EncryptionPublicKey = encryptionpublickey
          @EncryptionAlgorithm = encryptionalgorithm
          @IsHostedByKms = ishostedbykms
          @DataKeyName = datakeyname
          @Description = description
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeySpec = params['KeySpec']
          @NumberOfBytes = params['NumberOfBytes']
          @EncryptionContext = params['EncryptionContext']
          @EncryptionPublicKey = params['EncryptionPublicKey']
          @EncryptionAlgorithm = params['EncryptionAlgorithm']
          @IsHostedByKms = params['IsHostedByKms']
          @DataKeyName = params['DataKeyName']
          @Description = params['Description']
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # GenerateDataKey返回参数结构体
      class GenerateDataKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Plaintext: 若调用时未提供 EncryptionPublicKey，该字段值为生成的数据密钥 DataKey 的 Base64 编码的明文，需进行 Base64 解码以获取 DataKey 明文。
        # 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取 DataKey 明文。
        # @type Plaintext: String
        # @param CiphertextBlob: 数据密钥DataKey加密后的密文，用户需要自行保存该密文，KMS不托管用户的数据密钥。可以通过Decrypt接口从CiphertextBlob中获取数据密钥DataKey明文
        # @type CiphertextBlob: String
        # @param DataKeyId: DataKey的全局唯一标识,当KMS托管数据密钥时返回。
        # @type DataKeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :CiphertextBlob, :DataKeyId, :RequestId

        def initialize(keyid=nil, plaintext=nil, ciphertextblob=nil, datakeyid=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @CiphertextBlob = ciphertextblob
          @DataKeyId = datakeyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @CiphertextBlob = params['CiphertextBlob']
          @DataKeyId = params['DataKeyId']
          @RequestId = params['RequestId']
        end
      end

      # GenerateRandom请求参数结构体
      class GenerateRandomRequest < TencentCloud::Common::AbstractModel
        # @param NumberOfBytes: 生成的随机数的长度。最小值为1， 最大值为1024。
        # @type NumberOfBytes: Integer

        attr_accessor :NumberOfBytes

        def initialize(numberofbytes=nil)
          @NumberOfBytes = numberofbytes
        end

        def deserialize(params)
          @NumberOfBytes = params['NumberOfBytes']
        end
      end

      # GenerateRandom返回参数结构体
      class GenerateRandomResponse < TencentCloud::Common::AbstractModel
        # @param Plaintext: 生成的随机数的明文，该明文使用base64编码，用户需要使用base64解码得到明文。
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plaintext, :RequestId

        def initialize(plaintext=nil, requestid=nil)
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # GetDataKeyCiphertextBlob请求参数结构体
      class GetDataKeyCiphertextBlobRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String

        attr_accessor :DataKeyId

        def initialize(datakeyid=nil)
          @DataKeyId = datakeyid
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
        end
      end

      # GetDataKeyCiphertextBlob返回参数结构体
      class GetDataKeyCiphertextBlobResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 数据密钥的密文
        # @type CiphertextBlob: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :RequestId

        def initialize(ciphertextblob=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @RequestId = params['RequestId']
        end
      end

      # GetDataKeyPlaintext请求参数结构体
      class GetDataKeyPlaintextRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String
        # @param EncryptionPublicKey: PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        # @type EncryptionPublicKey: String
        # @param EncryptionAlgorithm: 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        # @type EncryptionAlgorithm: String

        attr_accessor :DataKeyId, :EncryptionPublicKey, :EncryptionAlgorithm

        def initialize(datakeyid=nil, encryptionpublickey=nil, encryptionalgorithm=nil)
          @DataKeyId = datakeyid
          @EncryptionPublicKey = encryptionpublickey
          @EncryptionAlgorithm = encryptionalgorithm
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @EncryptionPublicKey = params['EncryptionPublicKey']
          @EncryptionAlgorithm = params['EncryptionAlgorithm']
        end
      end

      # GetDataKeyPlaintext返回参数结构体
      class GetDataKeyPlaintextResponse < TencentCloud::Common::AbstractModel
        # @param Plaintext: 若调用时未提供 EncryptionPublicKey，该字段值为 Base64 编码的明文，需进行 Base64 解码以获取明文。 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取明文。
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plaintext, :RequestId

        def initialize(plaintext=nil, requestid=nil)
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # GetKeyRotationStatus请求参数结构体
      class GetKeyRotationStatusRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # GetKeyRotationStatus返回参数结构体
      class GetKeyRotationStatusResponse < TencentCloud::Common::AbstractModel
        # @param KeyRotationEnabled: 密钥轮换是否开启
        # @type KeyRotationEnabled: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyRotationEnabled, :RequestId

        def initialize(keyrotationenabled=nil, requestid=nil)
          @KeyRotationEnabled = keyrotationenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyRotationEnabled = params['KeyRotationEnabled']
          @RequestId = params['RequestId']
        end
      end

      # GetParametersForImport请求参数结构体
      class GetParametersForImportRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识，获取密钥参数的CMK必须是EXTERNAL类型，即在CreateKey时指定Type=2 类型的CMK。
        # @type KeyId: String
        # @param WrappingAlgorithm: 指定加密密钥材料的算法，目前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        # @type WrappingAlgorithm: String
        # @param WrappingKeySpec: 指定加密密钥材料的类型，目前只支持RSA_2048
        # @type WrappingKeySpec: String

        attr_accessor :KeyId, :WrappingAlgorithm, :WrappingKeySpec

        def initialize(keyid=nil, wrappingalgorithm=nil, wrappingkeyspec=nil)
          @KeyId = keyid
          @WrappingAlgorithm = wrappingalgorithm
          @WrappingKeySpec = wrappingkeyspec
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @WrappingAlgorithm = params['WrappingAlgorithm']
          @WrappingKeySpec = params['WrappingKeySpec']
        end
      end

      # GetParametersForImport返回参数结构体
      class GetParametersForImportResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识，用于指定目标导入密钥材料的CMK。
        # @type KeyId: String
        # @param ImportToken: 导入密钥材料需要的token，用于作为 ImportKeyMaterial 的参数。
        # @type ImportToken: String
        # @param PublicKey: 用于加密密钥材料的RSA公钥，base64编码。使用PublicKey base64解码后的公钥将导入密钥进行加密后作为 ImportKeyMaterial 的参数。
        # @type PublicKey: String
        # @param ParametersValidTo: 该导出token和公钥的有效期，超过该时间后无法导入，需要重新调用GetParametersForImport获取。
        # @type ParametersValidTo: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :ImportToken, :PublicKey, :ParametersValidTo, :RequestId

        def initialize(keyid=nil, importtoken=nil, publickey=nil, parametersvalidto=nil, requestid=nil)
          @KeyId = keyid
          @ImportToken = importtoken
          @PublicKey = publickey
          @ParametersValidTo = parametersvalidto
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @ImportToken = params['ImportToken']
          @PublicKey = params['PublicKey']
          @ParametersValidTo = params['ParametersValidTo']
          @RequestId = params['RequestId']
        end
      end

      # GetPublicKey请求参数结构体
      class GetPublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识。
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # GetPublicKey返回参数结构体
      class GetPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识。
        # @type KeyId: String
        # @param PublicKey: 经过base64编码的公钥内容。
        # @type PublicKey: String
        # @param PublicKeyPem: PEM格式的公钥内容。
        # @type PublicKeyPem: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :PublicKey, :PublicKeyPem, :RequestId

        def initialize(keyid=nil, publickey=nil, publickeypem=nil, requestid=nil)
          @KeyId = keyid
          @PublicKey = publickey
          @PublicKeyPem = publickeypem
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PublicKey = params['PublicKey']
          @PublicKeyPem = params['PublicKeyPem']
          @RequestId = params['RequestId']
        end
      end

      # GetRegions请求参数结构体
      class GetRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetRegions返回参数结构体
      class GetRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Regions: 可用region列表
        # @type Regions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Regions, :RequestId

        def initialize(regions=nil, requestid=nil)
          @Regions = regions
          @RequestId = requestid
        end

        def deserialize(params)
          @Regions = params['Regions']
          @RequestId = params['RequestId']
        end
      end

      # GetServiceStatus请求参数结构体
      class GetServiceStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetServiceStatus返回参数结构体
      class GetServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: KMS服务是否开通， true 表示已开通
        # @type ServiceEnabled: Boolean
        # @param InvalidType: 服务不可用类型： 0-未购买，1-正常， 2-欠费停服， 3-资源释放
        # @type InvalidType: Integer
        # @param UserLevel: 0-普通版，1-旗舰版
        # @type UserLevel: Integer
        # @param ProExpireTime: 旗舰版到期时间（Epoch Unix Timestamp）。
        # @type ProExpireTime: Integer
        # @param ProRenewFlag: 旗舰版是否自动续费：0-不自动续费，1-自动续费
        # @type ProRenewFlag: Integer
        # @param ProResourceId: 旗舰版购买记录的唯一性标识。如果未开通旗舰版，则返回值为空
        # @type ProResourceId: String
        # @param ExclusiveVSMEnabled: 是否开通 KMS 托管版
        # @type ExclusiveVSMEnabled: Boolean
        # @param ExclusiveHSMEnabled: 是否开通 KMS 独享版
        # @type ExclusiveHSMEnabled: Boolean
        # @param SubscriptionInfo: KMS 订阅信息。
        # @type SubscriptionInfo: String
        # @param CmkUserCount: 返回KMS用户密钥使用数量
        # @type CmkUserCount: Integer
        # @param CmkLimit: 返回KMS用户密钥规格数量
        # @type CmkLimit: Integer
        # @param ExclusiveHSMList: 返回独享集群组
        # @type ExclusiveHSMList: Array
        # @param IsAllowedDataKeyHosted: 是否支持数据密钥托管。1:支持，0:不支持。
        # @type IsAllowedDataKeyHosted: Boolean
        # @param DataKeyLimit: IsAllowedDataKeyHosted为1时有效，数据密钥的购买额度
        # @type DataKeyLimit: Integer
        # @param FreeDataKeyLimit: IsAllowedDataKeyHosted为1时有效，数据密钥免费额度。
        # @type FreeDataKeyLimit: Integer
        # @param DataKeyUsedCount: IsAllowedDataKeyHosted为1时有效，已使用的数据密钥数量。
        # @type DataKeyUsedCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :InvalidType, :UserLevel, :ProExpireTime, :ProRenewFlag, :ProResourceId, :ExclusiveVSMEnabled, :ExclusiveHSMEnabled, :SubscriptionInfo, :CmkUserCount, :CmkLimit, :ExclusiveHSMList, :IsAllowedDataKeyHosted, :DataKeyLimit, :FreeDataKeyLimit, :DataKeyUsedCount, :RequestId

        def initialize(serviceenabled=nil, invalidtype=nil, userlevel=nil, proexpiretime=nil, prorenewflag=nil, proresourceid=nil, exclusivevsmenabled=nil, exclusivehsmenabled=nil, subscriptioninfo=nil, cmkusercount=nil, cmklimit=nil, exclusivehsmlist=nil, isalloweddatakeyhosted=nil, datakeylimit=nil, freedatakeylimit=nil, datakeyusedcount=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @InvalidType = invalidtype
          @UserLevel = userlevel
          @ProExpireTime = proexpiretime
          @ProRenewFlag = prorenewflag
          @ProResourceId = proresourceid
          @ExclusiveVSMEnabled = exclusivevsmenabled
          @ExclusiveHSMEnabled = exclusivehsmenabled
          @SubscriptionInfo = subscriptioninfo
          @CmkUserCount = cmkusercount
          @CmkLimit = cmklimit
          @ExclusiveHSMList = exclusivehsmlist
          @IsAllowedDataKeyHosted = isalloweddatakeyhosted
          @DataKeyLimit = datakeylimit
          @FreeDataKeyLimit = freedatakeylimit
          @DataKeyUsedCount = datakeyusedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @InvalidType = params['InvalidType']
          @UserLevel = params['UserLevel']
          @ProExpireTime = params['ProExpireTime']
          @ProRenewFlag = params['ProRenewFlag']
          @ProResourceId = params['ProResourceId']
          @ExclusiveVSMEnabled = params['ExclusiveVSMEnabled']
          @ExclusiveHSMEnabled = params['ExclusiveHSMEnabled']
          @SubscriptionInfo = params['SubscriptionInfo']
          @CmkUserCount = params['CmkUserCount']
          @CmkLimit = params['CmkLimit']
          unless params['ExclusiveHSMList'].nil?
            @ExclusiveHSMList = []
            params['ExclusiveHSMList'].each do |i|
              exclusivehsm_tmp = ExclusiveHSM.new
              exclusivehsm_tmp.deserialize(i)
              @ExclusiveHSMList << exclusivehsm_tmp
            end
          end
          @IsAllowedDataKeyHosted = params['IsAllowedDataKeyHosted']
          @DataKeyLimit = params['DataKeyLimit']
          @FreeDataKeyLimit = params['FreeDataKeyLimit']
          @DataKeyUsedCount = params['DataKeyUsedCount']
          @RequestId = params['RequestId']
        end
      end

      # ImportDataKey请求参数结构体
      class ImportDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyName: 数据密钥的名称
        # @type DataKeyName: String
        # @param ImportKeyMaterial: 如果导入的是明文数据密钥，则是base64 转换后的明文数据密钥，  如果导入的是密文数据密钥，则是由KMS GenerateDataKey接口生成的密文数据密钥。
        # @type ImportKeyMaterial: String
        # @param ImportType: 1:密文导入(由KMS接口生成的密文数据密钥)，2:明文导入。
        # @type ImportType: Integer
        # @param Description: 数据密钥 的描述，最大100字节
        # @type Description: String
        # @param KeyId: 当导入密文数据密钥时，无需传入根密钥,如果传入会校验此KeyId是否和密文中一致。
        # 当导入明文数据密钥，KeyId 不能为空，会根据指定的根密钥加密数据密钥。
        # @type KeyId: String
        # @param HsmClusterId: KMS 独享版对应的 HSM 集群 ID。如果指定HsmClusterId，表明根密钥在此集群里，会校验KeyId是否和HsmClusterId对应。
        # @type HsmClusterId: String

        attr_accessor :DataKeyName, :ImportKeyMaterial, :ImportType, :Description, :KeyId, :HsmClusterId

        def initialize(datakeyname=nil, importkeymaterial=nil, importtype=nil, description=nil, keyid=nil, hsmclusterid=nil)
          @DataKeyName = datakeyname
          @ImportKeyMaterial = importkeymaterial
          @ImportType = importtype
          @Description = description
          @KeyId = keyid
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @DataKeyName = params['DataKeyName']
          @ImportKeyMaterial = params['ImportKeyMaterial']
          @ImportType = params['ImportType']
          @Description = params['Description']
          @KeyId = params['KeyId']
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # ImportDataKey返回参数结构体
      class ImportDataKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param DataKeyId: DataKey的全局唯一标识  否  官网/国内&国际站展示
        # @type DataKeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :DataKeyId, :RequestId

        def initialize(keyid=nil, datakeyid=nil, requestid=nil)
          @KeyId = keyid
          @DataKeyId = datakeyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @DataKeyId = params['DataKeyId']
          @RequestId = params['RequestId']
        end
      end

      # ImportKeyMaterial请求参数结构体
      class ImportKeyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param EncryptedKeyMaterial: 使用GetParametersForImport 返回的PublicKey加密后的密钥材料base64编码。对于国密版本region的KMS，导入的密钥材料长度要求为 128 bit，FIPS版本region的KMS， 导入的密钥材料长度要求为 256 bit。
        # @type EncryptedKeyMaterial: String
        # @param ImportToken: 通过调用GetParametersForImport获得的导入令牌。
        # @type ImportToken: String
        # @param KeyId: 指定导入密钥材料的CMK，需要和GetParametersForImport 指定的CMK相同。
        # @type KeyId: String
        # @param ValidTo: 密钥材料过期时间 unix 时间戳，不指定或者 0 表示密钥材料不会过期，若指定过期时间，需要大于当前时间点，最大支持 2147443200。
        # @type ValidTo: Integer

        attr_accessor :EncryptedKeyMaterial, :ImportToken, :KeyId, :ValidTo

        def initialize(encryptedkeymaterial=nil, importtoken=nil, keyid=nil, validto=nil)
          @EncryptedKeyMaterial = encryptedkeymaterial
          @ImportToken = importtoken
          @KeyId = keyid
          @ValidTo = validto
        end

        def deserialize(params)
          @EncryptedKeyMaterial = params['EncryptedKeyMaterial']
          @ImportToken = params['ImportToken']
          @KeyId = params['KeyId']
          @ValidTo = params['ValidTo']
        end
      end

      # ImportKeyMaterial返回参数结构体
      class ImportKeyMaterialResponse < TencentCloud::Common::AbstractModel
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

      # 返回CMK列表信息
      class Key < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识。
        # @type KeyId: String

        attr_accessor :KeyId

        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # CMK属性信息
      class KeyMetadata < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param CreateTime: 密钥创建时间
        # @type CreateTime: Integer
        # @param Description: CMK的描述
        # @type Description: String
        # @param KeyState: CMK的状态， 取值为：Enabled | Disabled | PendingDelete | PendingImport | Archived
        # @type KeyState: String
        # @param KeyUsage: CMK用途，取值为: ENCRYPT_DECRYPT | ASYMMETRIC_DECRYPT_RSA_2048 | ASYMMETRIC_DECRYPT_SM2 | ASYMMETRIC_SIGN_VERIFY_SM2 | ASYMMETRIC_SIGN_VERIFY_RSA_2048 | ASYMMETRIC_SIGN_VERIFY_ECC
        # @type KeyUsage: String
        # @param Type: CMK类型，2 表示符合FIPS标准，4表示符合国密标准
        # @type Type: Integer
        # @param CreatorUin: 创建者
        # @type CreatorUin: Integer
        # @param KeyRotationEnabled: 是否开启了密钥轮换功能
        # @type KeyRotationEnabled: Boolean
        # @param Owner: CMK的创建者，用户创建的为 user，授权各云产品自动创建的为对应的产品名
        # @type Owner: String
        # @param NextRotateTime: 在密钥轮换开启状态下，下次轮换的时间
        # @type NextRotateTime: Integer
        # @param DeletionDate: 计划删除的时间
        # @type DeletionDate: Integer
        # @param Origin: CMK 密钥材料类型，由KMS创建的为： TENCENT_KMS， 由用户导入的类型为：EXTERNAL
        # @type Origin: String
        # @param ValidTo: 在Origin为  EXTERNAL 时有效，表示密钥材料的有效日期， 0 表示不过期
        # @type ValidTo: Integer
        # @param ResourceId: 资源ID，格式：creatorUin/$creatorUin/$keyId
        # @type ResourceId: String
        # @param HsmClusterId: HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        # @type HsmClusterId: String
        # @param RotateDays: 密钥轮转周期（天）
        # @type RotateDays: Integer
        # @param LastRotateTime: 上次乱转时间（Unix timestamp）
        # @type LastRotateTime: Integer

        attr_accessor :KeyId, :Alias, :CreateTime, :Description, :KeyState, :KeyUsage, :Type, :CreatorUin, :KeyRotationEnabled, :Owner, :NextRotateTime, :DeletionDate, :Origin, :ValidTo, :ResourceId, :HsmClusterId, :RotateDays, :LastRotateTime

        def initialize(keyid=nil, _alias=nil, createtime=nil, description=nil, keystate=nil, keyusage=nil, type=nil, creatoruin=nil, keyrotationenabled=nil, owner=nil, nextrotatetime=nil, deletiondate=nil, origin=nil, validto=nil, resourceid=nil, hsmclusterid=nil, rotatedays=nil, lastrotatetime=nil)
          @KeyId = keyid
          @Alias = _alias
          @CreateTime = createtime
          @Description = description
          @KeyState = keystate
          @KeyUsage = keyusage
          @Type = type
          @CreatorUin = creatoruin
          @KeyRotationEnabled = keyrotationenabled
          @Owner = owner
          @NextRotateTime = nextrotatetime
          @DeletionDate = deletiondate
          @Origin = origin
          @ValidTo = validto
          @ResourceId = resourceid
          @HsmClusterId = hsmclusterid
          @RotateDays = rotatedays
          @LastRotateTime = lastrotatetime
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @KeyState = params['KeyState']
          @KeyUsage = params['KeyUsage']
          @Type = params['Type']
          @CreatorUin = params['CreatorUin']
          @KeyRotationEnabled = params['KeyRotationEnabled']
          @Owner = params['Owner']
          @NextRotateTime = params['NextRotateTime']
          @DeletionDate = params['DeletionDate']
          @Origin = params['Origin']
          @ValidTo = params['ValidTo']
          @ResourceId = params['ResourceId']
          @HsmClusterId = params['HsmClusterId']
          @RotateDays = params['RotateDays']
          @LastRotateTime = params['LastRotateTime']
        end
      end

      # ListAlgorithms请求参数结构体
      class ListAlgorithmsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAlgorithms返回参数结构体
      class ListAlgorithmsResponse < TencentCloud::Common::AbstractModel
        # @param SymmetricAlgorithms: 本地区支持的对称加密算法
        # @type SymmetricAlgorithms: Array
        # @param AsymmetricAlgorithms: 本地区支持的非对称加密算法
        # @type AsymmetricAlgorithms: Array
        # @param AsymmetricSignVerifyAlgorithms: 本地区支持的非对称签名验签算法
        # @type AsymmetricSignVerifyAlgorithms: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SymmetricAlgorithms, :AsymmetricAlgorithms, :AsymmetricSignVerifyAlgorithms, :RequestId

        def initialize(symmetricalgorithms=nil, asymmetricalgorithms=nil, asymmetricsignverifyalgorithms=nil, requestid=nil)
          @SymmetricAlgorithms = symmetricalgorithms
          @AsymmetricAlgorithms = asymmetricalgorithms
          @AsymmetricSignVerifyAlgorithms = asymmetricsignverifyalgorithms
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SymmetricAlgorithms'].nil?
            @SymmetricAlgorithms = []
            params['SymmetricAlgorithms'].each do |i|
              algorithminfo_tmp = AlgorithmInfo.new
              algorithminfo_tmp.deserialize(i)
              @SymmetricAlgorithms << algorithminfo_tmp
            end
          end
          unless params['AsymmetricAlgorithms'].nil?
            @AsymmetricAlgorithms = []
            params['AsymmetricAlgorithms'].each do |i|
              algorithminfo_tmp = AlgorithmInfo.new
              algorithminfo_tmp.deserialize(i)
              @AsymmetricAlgorithms << algorithminfo_tmp
            end
          end
          unless params['AsymmetricSignVerifyAlgorithms'].nil?
            @AsymmetricSignVerifyAlgorithms = []
            params['AsymmetricSignVerifyAlgorithms'].each do |i|
              algorithminfo_tmp = AlgorithmInfo.new
              algorithminfo_tmp.deserialize(i)
              @AsymmetricSignVerifyAlgorithms << algorithminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDataKeyDetail请求参数结构体
      class ListDataKeyDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的数据密钥， 1 表示授权其它云产品自动创建的数据密钥
        # @type Role: Integer
        # @param OrderType: 根据DataKey创建时间排序， 0 表示按照降序排序，1表示按照升序排序
        # @type OrderType: Integer
        # @param KeyState: 根据DataKey状态筛选， 0表示全部DataKey， 1 表示仅查询Enabled DataKey， 2 表示仅查询Disabled DataKey，3 表示查询PendingDelete 状态的DataKey(处于计划删除状态的Key)。
        # @type KeyState: Integer
        # @param SearchKeyAlias: 根据DataKeyId或者DataKeyName进行模糊匹配查询
        # @type SearchKeyAlias: String
        # @param Origin: 根据DateKey类型筛选， "TENCENT_KMS" 表示筛选密钥材料由KMS创建的数据密钥， "EXTERNAL" 表示筛选密钥材料需要用户导入的 EXTERNAL类型数据密钥，"ALL" 或者不设置表示两种类型都查询，大小写敏感。
        # @type Origin: String
        # @param HsmClusterId: KMS 高级版对应的 HSM 集群 ID。
        # @type HsmClusterId: String
        # @param KeyId: 根密钥全局唯一标识符
        # @type KeyId: String
        # @param DataKeyLen: 数据密钥的长度
        # @type DataKeyLen: Integer

        attr_accessor :Offset, :Limit, :Role, :OrderType, :KeyState, :SearchKeyAlias, :Origin, :HsmClusterId, :KeyId, :DataKeyLen

        def initialize(offset=nil, limit=nil, role=nil, ordertype=nil, keystate=nil, searchkeyalias=nil, origin=nil, hsmclusterid=nil, keyid=nil, datakeylen=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
          @OrderType = ordertype
          @KeyState = keystate
          @SearchKeyAlias = searchkeyalias
          @Origin = origin
          @HsmClusterId = hsmclusterid
          @KeyId = keyid
          @DataKeyLen = datakeylen
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
          @OrderType = params['OrderType']
          @KeyState = params['KeyState']
          @SearchKeyAlias = params['SearchKeyAlias']
          @Origin = params['Origin']
          @HsmClusterId = params['HsmClusterId']
          @KeyId = params['KeyId']
          @DataKeyLen = params['DataKeyLen']
        end
      end

      # ListDataKeyDetail返回参数结构体
      class ListDataKeyDetailResponse < TencentCloud::Common::AbstractModel
        # @param DataKeyMetadatas: 返回的属性信息列表。
        # @type DataKeyMetadatas: Array
        # @param TotalCount: DataKey的总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKeyMetadatas, :TotalCount, :RequestId

        def initialize(datakeymetadatas=nil, totalcount=nil, requestid=nil)
          @DataKeyMetadatas = datakeymetadatas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataKeyMetadatas'].nil?
            @DataKeyMetadatas = []
            params['DataKeyMetadatas'].each do |i|
              datakeymetadata_tmp = DataKeyMetadata.new
              datakeymetadata_tmp.deserialize(i)
              @DataKeyMetadatas << datakeymetadata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListDataKeys请求参数结构体
      class ListDataKeysRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的数据密钥， 1 表示授权其它云产品自动创建的数据密钥
        # @type Role: Integer
        # @param HsmClusterId: KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        # @type HsmClusterId: String

        attr_accessor :Offset, :Limit, :Role, :HsmClusterId

        def initialize(offset=nil, limit=nil, role=nil, hsmclusterid=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # ListDataKeys返回参数结构体
      class ListDataKeysResponse < TencentCloud::Common::AbstractModel
        # @param DataKeys: 数据密钥Id列表数组
        # @type DataKeys: Array
        # @param TotalCount: 数据密钥的总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKeys, :TotalCount, :RequestId

        def initialize(datakeys=nil, totalcount=nil, requestid=nil)
          @DataKeys = datakeys
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataKeys'].nil?
            @DataKeys = []
            params['DataKeys'].each do |i|
              datakey_tmp = DataKey.new
              datakey_tmp.deserialize(i)
              @DataKeys << datakey_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListKeyDetail请求参数结构体
      class ListKeyDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        # @type Role: Integer
        # @param OrderType: 根据CMK创建时间排序， 0 表示按照降序排序，1表示按照升序排序
        # @type OrderType: Integer
        # @param KeyState: 根据CMK状态筛选， 0表示全部CMK， 1 表示仅查询Enabled CMK， 2 表示仅查询Disabled CMK，3 表示查询PendingDelete 状态的CMK(处于计划删除状态的Key)，4 表示查询 PendingImport 状态的CMK，5 表示查询 Archived 状态的 CMK
        # @type KeyState: Integer
        # @param SearchKeyAlias: 根据KeyId或者Alias进行模糊匹配查询
        # @type SearchKeyAlias: String
        # @param Origin: 根据CMK类型筛选， "TENCENT_KMS" 表示筛选密钥材料由KMS创建的CMK， "EXTERNAL" 表示筛选密钥材料需要用户导入的 EXTERNAL类型CMK，"ALL" 或者不设置表示两种类型都查询，大小写敏感。
        # @type Origin: String
        # @param KeyUsage: 根据CMK的KeyUsage筛选，ALL表示筛选全部，可使用的参数为：ALL 或 ENCRYPT_DECRYPT 或 ASYMMETRIC_DECRYPT_RSA_2048 或 ASYMMETRIC_DECRYPT_SM2 或 ASYMMETRIC_SIGN_VERIFY_SM2 或 ASYMMETRIC_SIGN_VERIFY_RSA_2048 或 ASYMMETRIC_SIGN_VERIFY_ECC，为空则默认筛选ENCRYPT_DECRYPT类型
        # @type KeyUsage: String
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array
        # @param HsmClusterId: KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        # @type HsmClusterId: String

        attr_accessor :Offset, :Limit, :Role, :OrderType, :KeyState, :SearchKeyAlias, :Origin, :KeyUsage, :TagFilters, :HsmClusterId

        def initialize(offset=nil, limit=nil, role=nil, ordertype=nil, keystate=nil, searchkeyalias=nil, origin=nil, keyusage=nil, tagfilters=nil, hsmclusterid=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
          @OrderType = ordertype
          @KeyState = keystate
          @SearchKeyAlias = searchkeyalias
          @Origin = origin
          @KeyUsage = keyusage
          @TagFilters = tagfilters
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
          @OrderType = params['OrderType']
          @KeyState = params['KeyState']
          @SearchKeyAlias = params['SearchKeyAlias']
          @Origin = params['Origin']
          @KeyUsage = params['KeyUsage']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # ListKeyDetail返回参数结构体
      class ListKeyDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param KeyMetadatas: 返回的属性信息列表。
        # @type KeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KeyMetadatas, :RequestId

        def initialize(totalcount=nil, keymetadatas=nil, requestid=nil)
          @TotalCount = totalcount
          @KeyMetadatas = keymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KeyMetadatas'].nil?
            @KeyMetadatas = []
            params['KeyMetadatas'].each do |i|
              keymetadata_tmp = KeyMetadata.new
              keymetadata_tmp.deserialize(i)
              @KeyMetadatas << keymetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListKeys请求参数结构体
      class ListKeysRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次获最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        # @type Role: Integer
        # @param HsmClusterId: KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        # @type HsmClusterId: String

        attr_accessor :Offset, :Limit, :Role, :HsmClusterId

        def initialize(offset=nil, limit=nil, role=nil, hsmclusterid=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
          @HsmClusterId = hsmclusterid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
          @HsmClusterId = params['HsmClusterId']
        end
      end

      # ListKeys返回参数结构体
      class ListKeysResponse < TencentCloud::Common::AbstractModel
        # @param Keys: CMK列表数组
        # @type Keys: Array
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keys, :TotalCount, :RequestId

        def initialize(keys=nil, totalcount=nil, requestid=nil)
          @Keys = keys
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              key_tmp = Key.new
              key_tmp.deserialize(i)
              @Keys << key_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # OverwriteWhiteBoxDeviceFingerprints请求参数结构体
      class OverwriteWhiteBoxDeviceFingerprintsRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥ID
        # @type KeyId: String
        # @param DeviceFingerprints: 设备指纹列表，如果列表为空，则表示删除该密钥对应的所有指纹信息。列表最大长度不超过200。
        # @type DeviceFingerprints: Array

        attr_accessor :KeyId, :DeviceFingerprints

        def initialize(keyid=nil, devicefingerprints=nil)
          @KeyId = keyid
          @DeviceFingerprints = devicefingerprints
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          unless params['DeviceFingerprints'].nil?
            @DeviceFingerprints = []
            params['DeviceFingerprints'].each do |i|
              devicefingerprint_tmp = DeviceFingerprint.new
              devicefingerprint_tmp.deserialize(i)
              @DeviceFingerprints << devicefingerprint_tmp
            end
          end
        end
      end

      # OverwriteWhiteBoxDeviceFingerprints返回参数结构体
      class OverwriteWhiteBoxDeviceFingerprintsResponse < TencentCloud::Common::AbstractModel
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

      # PostQuantumCryptoDecrypt请求参数结构体
      class PostQuantumCryptoDecryptRequest < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 待解密的密文数据
        # @type CiphertextBlob: String
        # @param EncryptionPublicKey: PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        # @type EncryptionPublicKey: String
        # @param EncryptionAlgorithm: 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        # @type EncryptionAlgorithm: String

        attr_accessor :CiphertextBlob, :EncryptionPublicKey, :EncryptionAlgorithm

        def initialize(ciphertextblob=nil, encryptionpublickey=nil, encryptionalgorithm=nil)
          @CiphertextBlob = ciphertextblob
          @EncryptionPublicKey = encryptionpublickey
          @EncryptionAlgorithm = encryptionalgorithm
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptionPublicKey = params['EncryptionPublicKey']
          @EncryptionAlgorithm = params['EncryptionAlgorithm']
        end
      end

      # PostQuantumCryptoDecrypt返回参数结构体
      class PostQuantumCryptoDecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param PlainText: 若调用时未提供 EncryptionPublicKey，该字段值为 Base64 编码的明文，需进行 Base64 解码以获取明文。
        # 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取明文。
        # @type PlainText: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :PlainText, :RequestId

        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @PlainText = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PlainText = params['PlainText']
          @RequestId = params['RequestId']
        end
      end

      # PostQuantumCryptoEncrypt请求参数结构体
      class PostQuantumCryptoEncryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 调用CreateKey生成的CMK全局唯一标识符
        # @type KeyId: String
        # @param PlainText: 被加密的明文数据，该字段必须使用base64编码，原文最大长度支持4K
        # @type PlainText: String

        attr_accessor :KeyId, :PlainText

        def initialize(keyid=nil, plaintext=nil)
          @KeyId = keyid
          @PlainText = plaintext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PlainText = params['PlainText']
        end
      end

      # PostQuantumCryptoEncrypt返回参数结构体
      class PostQuantumCryptoEncryptResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 加密后的密文，base64编码。注意：本字段中打包了密文和密钥的相关信息，不是对明文的直接加密结果，只有将该字段作为PostQuantumCryptoDecrypt接口的输入参数，才可以解密出原文。
        # @type CiphertextBlob: String
        # @param KeyId: 加密使用的CMK的全局唯一标识
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :KeyId, :RequestId

        def initialize(ciphertextblob=nil, keyid=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # PostQuantumCryptoSign请求参数结构体
      class PostQuantumCryptoSignRequest < TencentCloud::Common::AbstractModel
        # @param Message: Base64 编码的消息原文。消息原文的长度（Base64编码前的长度）不超过4096字节。
        # @type Message: String
        # @param KeyId: 密钥的唯一标识
        # @type KeyId: String

        attr_accessor :Message, :KeyId

        def initialize(message=nil, keyid=nil)
          @Message = message
          @KeyId = keyid
        end

        def deserialize(params)
          @Message = params['Message']
          @KeyId = params['KeyId']
        end
      end

      # PostQuantumCryptoSign返回参数结构体
      class PostQuantumCryptoSignResponse < TencentCloud::Common::AbstractModel
        # @param Signature: 签名值，Base64编码。可使用 PostQuantumCryptoVerify接口对签名值进行验证。
        # @type Signature: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Signature, :RequestId

        def initialize(signature=nil, requestid=nil)
          @Signature = signature
          @RequestId = requestid
        end

        def deserialize(params)
          @Signature = params['Signature']
          @RequestId = params['RequestId']
        end
      end

      # PostQuantumCryptoVerify请求参数结构体
      class PostQuantumCryptoVerifyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥的唯一标识
        # @type KeyId: String
        # @param SignatureValue: 签名值，通过调用KMS PostQuantumCryptoSign签名接口生成
        # @type SignatureValue: String
        # @param Message: Base64 编码的消息原文，消息原文的长度（Base64编码前的长度）不超过4096字节。
        # @type Message: String

        attr_accessor :KeyId, :SignatureValue, :Message

        def initialize(keyid=nil, signaturevalue=nil, message=nil)
          @KeyId = keyid
          @SignatureValue = signaturevalue
          @Message = message
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @SignatureValue = params['SignatureValue']
          @Message = params['Message']
        end
      end

      # PostQuantumCryptoVerify返回参数结构体
      class PostQuantumCryptoVerifyResponse < TencentCloud::Common::AbstractModel
        # @param SignatureValid: 签名是否有效。true：签名有效，false：签名无效。
        # @type SignatureValid: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignatureValid, :RequestId

        def initialize(signaturevalid=nil, requestid=nil)
          @SignatureValid = signaturevalid
          @RequestId = requestid
        end

        def deserialize(params)
          @SignatureValid = params['SignatureValid']
          @RequestId = params['RequestId']
        end
      end

      # ReEncrypt请求参数结构体
      class ReEncryptRequest < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 需要重新加密的密文
        # @type CiphertextBlob: String
        # @param DestinationKeyId: 重新加密使用的CMK，如果为空，则使用密文原有的CMK重新加密（若密钥没有轮换则密文不会刷新）
        # @type DestinationKeyId: String
        # @param SourceEncryptionContext: CiphertextBlob 密文加密时使用的key/value对的json字符串。如果加密时未使用，则为空
        # @type SourceEncryptionContext: String
        # @param DestinationEncryptionContext: 重新加密使用的key/value对的json字符串，如果使用该字段，则返回的新密文在解密时需要填入相同的字符串
        # @type DestinationEncryptionContext: String

        attr_accessor :CiphertextBlob, :DestinationKeyId, :SourceEncryptionContext, :DestinationEncryptionContext

        def initialize(ciphertextblob=nil, destinationkeyid=nil, sourceencryptioncontext=nil, destinationencryptioncontext=nil)
          @CiphertextBlob = ciphertextblob
          @DestinationKeyId = destinationkeyid
          @SourceEncryptionContext = sourceencryptioncontext
          @DestinationEncryptionContext = destinationencryptioncontext
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @DestinationKeyId = params['DestinationKeyId']
          @SourceEncryptionContext = params['SourceEncryptionContext']
          @DestinationEncryptionContext = params['DestinationEncryptionContext']
        end
      end

      # ReEncrypt返回参数结构体
      class ReEncryptResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 重新加密后的密文
        # @type CiphertextBlob: String
        # @param KeyId: 重新加密使用的CMK
        # @type KeyId: String
        # @param SourceKeyId: 重新加密前密文使用的CMK
        # @type SourceKeyId: String
        # @param ReEncrypted: true表示密文已经重新加密。同一个CMK进行重加密，在密钥没有发生轮换的情况下不会进行实际重新加密操作，返回原密文
        # @type ReEncrypted: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :KeyId, :SourceKeyId, :ReEncrypted, :RequestId

        def initialize(ciphertextblob=nil, keyid=nil, sourcekeyid=nil, reencrypted=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @KeyId = keyid
          @SourceKeyId = sourcekeyid
          @ReEncrypted = reencrypted
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @KeyId = params['KeyId']
          @SourceKeyId = params['SourceKeyId']
          @ReEncrypted = params['ReEncrypted']
          @RequestId = params['RequestId']
        end
      end

      # ScheduleDataKeyDeletion请求参数结构体
      class ScheduleDataKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String
        # @param PendingWindowInDays: 计划删除时间区间[7,30]
        # @type PendingWindowInDays: Integer

        attr_accessor :DataKeyId, :PendingWindowInDays

        def initialize(datakeyid=nil, pendingwindowindays=nil)
          @DataKeyId = datakeyid
          @PendingWindowInDays = pendingwindowindays
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @PendingWindowInDays = params['PendingWindowInDays']
        end
      end

      # ScheduleDataKeyDeletion返回参数结构体
      class ScheduleDataKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param DeletionDate: 计划删除执行时间
        # @type DeletionDate: Integer
        # @param DataKeyId: 唯一标志被计划删除的数据密钥
        # @type DataKeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeletionDate, :DataKeyId, :RequestId

        def initialize(deletiondate=nil, datakeyid=nil, requestid=nil)
          @DeletionDate = deletiondate
          @DataKeyId = datakeyid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeletionDate = params['DeletionDate']
          @DataKeyId = params['DataKeyId']
          @RequestId = params['RequestId']
        end
      end

      # ScheduleKeyDeletion请求参数结构体
      class ScheduleKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标志
        # @type KeyId: String
        # @param PendingWindowInDays: 计划删除时间区间[7,30]
        # @type PendingWindowInDays: Integer

        attr_accessor :KeyId, :PendingWindowInDays

        def initialize(keyid=nil, pendingwindowindays=nil)
          @KeyId = keyid
          @PendingWindowInDays = pendingwindowindays
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PendingWindowInDays = params['PendingWindowInDays']
        end
      end

      # ScheduleKeyDeletion返回参数结构体
      class ScheduleKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param DeletionDate: 计划删除执行时间
        # @type DeletionDate: Integer
        # @param KeyId: 唯一标志被计划删除的CMK
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeletionDate, :KeyId, :RequestId

        def initialize(deletiondate=nil, keyid=nil, requestid=nil)
          @DeletionDate = deletiondate
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeletionDate = params['DeletionDate']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # SignByAsymmetricKey请求参数结构体
      class SignByAsymmetricKeyRequest < TencentCloud::Common::AbstractModel
        # @param Algorithm: 签名算法，支持的算法：SM2DSA，ECC_P256_R1，RSA_PSS_SHA_256，RSA_PKCS1_SHA_256 等。更多支持的算法可通过 ListAlgorithms 接口进行查询。
        # @type Algorithm: String
        # @param Message: 消息原文或消息摘要。如果提供的是消息原文，则消息原文的长度（Base64编码前的长度）不超过4096字节。如果提供的是消息摘要，消息摘要长度（Base64编码前的长度）必须等于32字节
        # @type Message: String
        # @param KeyId: 密钥的唯一标识
        # @type KeyId: String
        # @param MessageType: 消息类型：RAW，DIGEST，如果不传，默认为RAW，表示消息原文。
        # @type MessageType: String

        attr_accessor :Algorithm, :Message, :KeyId, :MessageType

        def initialize(algorithm=nil, message=nil, keyid=nil, messagetype=nil)
          @Algorithm = algorithm
          @Message = message
          @KeyId = keyid
          @MessageType = messagetype
        end

        def deserialize(params)
          @Algorithm = params['Algorithm']
          @Message = params['Message']
          @KeyId = params['KeyId']
          @MessageType = params['MessageType']
        end
      end

      # SignByAsymmetricKey返回参数结构体
      class SignByAsymmetricKeyResponse < TencentCloud::Common::AbstractModel
        # @param Signature: 签名，Base64编码
        # @type Signature: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Signature, :RequestId

        def initialize(signature=nil, requestid=nil)
          @Signature = signature
          @RequestId = requestid
        end

        def deserialize(params)
          @Signature = params['Signature']
          @RequestId = params['RequestId']
        end
      end

      # 标签键和标签值
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签过滤器
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UnbindCloudResource请求参数结构体
      class UnbindCloudResourceRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: cmk的ID
        # @type KeyId: String
        # @param ProductId: 云产品的唯一性标识符
        # @type ProductId: String
        # @param ResourceId: 资源/实例ID，由调用方根据自己的云产品特征来定义，以字符串形式做存储。
        # @type ResourceId: String

        attr_accessor :KeyId, :ProductId, :ResourceId

        def initialize(keyid=nil, productid=nil, resourceid=nil)
          @KeyId = keyid
          @ProductId = productid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @ProductId = params['ProductId']
          @ResourceId = params['ResourceId']
        end
      end

      # UnbindCloudResource返回参数结构体
      class UnbindCloudResourceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAlias请求参数结构体
      class UpdateAliasRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 新的别名，1-60个字符或数字的组合
        # @type Alias: String
        # @param KeyId: CMK的全局唯一标识符
        # @type KeyId: String

        attr_accessor :Alias, :KeyId

        def initialize(_alias=nil, keyid=nil)
          @Alias = _alias
          @KeyId = keyid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @KeyId = params['KeyId']
        end
      end

      # UpdateAlias返回参数结构体
      class UpdateAliasResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDataKeyDescription请求参数结构体
      class UpdateDataKeyDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String
        # @param Description: 数据密钥 的描述，最大100字节
        # @type Description: String

        attr_accessor :DataKeyId, :Description

        def initialize(datakeyid=nil, description=nil)
          @DataKeyId = datakeyid
          @Description = description
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @Description = params['Description']
        end
      end

      # UpdateDataKeyDescription返回参数结构体
      class UpdateDataKeyDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDataKeyName请求参数结构体
      class UpdateDataKeyNameRequest < TencentCloud::Common::AbstractModel
        # @param DataKeyId: 数据密钥的唯一标志符
        # @type DataKeyId: String
        # @param DataKeyName: 数据密钥的名称
        # @type DataKeyName: String

        attr_accessor :DataKeyId, :DataKeyName

        def initialize(datakeyid=nil, datakeyname=nil)
          @DataKeyId = datakeyid
          @DataKeyName = datakeyname
        end

        def deserialize(params)
          @DataKeyId = params['DataKeyId']
          @DataKeyName = params['DataKeyName']
        end
      end

      # UpdateDataKeyName返回参数结构体
      class UpdateDataKeyNameResponse < TencentCloud::Common::AbstractModel
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

      # UpdateKeyDescription请求参数结构体
      class UpdateKeyDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param Description: 新的描述信息，最大支持1024字节
        # @type Description: String
        # @param KeyId: 需要修改描述信息的CMK ID
        # @type KeyId: String

        attr_accessor :Description, :KeyId

        def initialize(description=nil, keyid=nil)
          @Description = description
          @KeyId = keyid
        end

        def deserialize(params)
          @Description = params['Description']
          @KeyId = params['KeyId']
        end
      end

      # UpdateKeyDescription返回参数结构体
      class UpdateKeyDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # VerifyByAsymmetricKey请求参数结构体
      class VerifyByAsymmetricKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥的唯一标识
        # @type KeyId: String
        # @param SignatureValue: 签名值，通过调用KMS签名接口生成
        # @type SignatureValue: String
        # @param Message: 消息原文或消息摘要。如果提供的是消息原文，则消息原文的长度（Base64编码前的长度）不超过4096字节。如果提供的是消息摘要，则消息摘要长度（Base64编码前的长度）必须等于32字节
        # @type Message: String
        # @param Algorithm: 签名算法，支持的算法：SM2DSA，ECC_P256_R1，RSA_PSS_SHA_256，RSA_PKCS1_SHA_256 等。更多支持的算法可通过 ListAlgorithms 接口进行查询。
        # @type Algorithm: String
        # @param MessageType: 消息类型：RAW，DIGEST，如果不传，默认为RAW，表示消息原文。
        # @type MessageType: String

        attr_accessor :KeyId, :SignatureValue, :Message, :Algorithm, :MessageType

        def initialize(keyid=nil, signaturevalue=nil, message=nil, algorithm=nil, messagetype=nil)
          @KeyId = keyid
          @SignatureValue = signaturevalue
          @Message = message
          @Algorithm = algorithm
          @MessageType = messagetype
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @SignatureValue = params['SignatureValue']
          @Message = params['Message']
          @Algorithm = params['Algorithm']
          @MessageType = params['MessageType']
        end
      end

      # VerifyByAsymmetricKey返回参数结构体
      class VerifyByAsymmetricKeyResponse < TencentCloud::Common::AbstractModel
        # @param SignatureValid: 签名是否有效。true：签名有效，false：签名无效。
        # @type SignatureValid: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignatureValid, :RequestId

        def initialize(signaturevalid=nil, requestid=nil)
          @SignatureValid = signaturevalid
          @RequestId = requestid
        end

        def deserialize(params)
          @SignatureValid = params['SignatureValid']
          @RequestId = params['RequestId']
        end
      end

      # 白盒密钥信息
      class WhiteboxKeyInfo < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字. 不可重复
        # @type Alias: String
        # @param CreatorUin: 创建者
        # @type CreatorUin: Integer
        # @param Description: 密钥的描述信息
        # @type Description: String
        # @param CreateTime: 密钥创建时间，Unix时间戳
        # @type CreateTime: Integer
        # @param Status: 白盒密钥的状态， 取值为：Enabled | Disabled
        # @type Status: String
        # @param OwnerUin: 创建者
        # @type OwnerUin: Integer
        # @param Algorithm: 密钥所用的算法类型
        # @type Algorithm: String
        # @param EncryptKey: 白盒加密密钥，base64编码
        # @type EncryptKey: String
        # @param DecryptKey: 白盒解密密钥，base64编码
        # @type DecryptKey: String
        # @param ResourceId: 资源ID，格式：creatorUin/$creatorUin/$keyId
        # @type ResourceId: String
        # @param DeviceFingerprintBind: 是否有设备指纹与当前密钥绑定
        # @type DeviceFingerprintBind: Boolean

        attr_accessor :KeyId, :Alias, :CreatorUin, :Description, :CreateTime, :Status, :OwnerUin, :Algorithm, :EncryptKey, :DecryptKey, :ResourceId, :DeviceFingerprintBind

        def initialize(keyid=nil, _alias=nil, creatoruin=nil, description=nil, createtime=nil, status=nil, owneruin=nil, algorithm=nil, encryptkey=nil, decryptkey=nil, resourceid=nil, devicefingerprintbind=nil)
          @KeyId = keyid
          @Alias = _alias
          @CreatorUin = creatoruin
          @Description = description
          @CreateTime = createtime
          @Status = status
          @OwnerUin = owneruin
          @Algorithm = algorithm
          @EncryptKey = encryptkey
          @DecryptKey = decryptkey
          @ResourceId = resourceid
          @DeviceFingerprintBind = devicefingerprintbind
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreatorUin = params['CreatorUin']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @OwnerUin = params['OwnerUin']
          @Algorithm = params['Algorithm']
          @EncryptKey = params['EncryptKey']
          @DecryptKey = params['DecryptKey']
          @ResourceId = params['ResourceId']
          @DeviceFingerprintBind = params['DeviceFingerprintBind']
        end
      end

    end
  end
end

