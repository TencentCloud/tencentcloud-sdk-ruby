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
  module Drm
    module V20181115
      # AddFairPlayPem请求参数结构体
      class AddFairPlayPemRequest < TencentCloud::Common::AbstractModel
        # @param Pem: 加密后的fairplay方案申请时使用的私钥。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对私钥文件中的字段进行加密，并对加密结果进行base64编码。
        # @type Pem: String
        # @param Ask: 加密后的fairplay方案申请返回的ask数据。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对Ask字符串进行加密，并对加密结果进行base64编码。
        # @type Ask: String
        # @param PemDecryptKey: 私钥的解密密钥。
        # openssl在生成rsa时，可能会需要设置加密密钥，请记住设置的密钥。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        # @type PemDecryptKey: String
        # @param BailorId: 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        # @type BailorId: Integer
        # @param Priority: 私钥的优先级，优先级数值越高，优先级越高。
        # 该值可以不传，后台将自动分配一个优先级。
        # @type Priority: Integer

        attr_accessor :Pem, :Ask, :PemDecryptKey, :BailorId, :Priority

        def initialize(pem=nil, ask=nil, pemdecryptkey=nil, bailorid=nil, priority=nil)
          @Pem = pem
          @Ask = ask
          @PemDecryptKey = pemdecryptkey
          @BailorId = bailorid
          @Priority = priority
        end

        def deserialize(params)
          @Pem = params['Pem']
          @Ask = params['Ask']
          @PemDecryptKey = params['PemDecryptKey']
          @BailorId = params['BailorId']
          @Priority = params['Priority']
        end
      end

      # AddFairPlayPem返回参数结构体
      class AddFairPlayPemResponse < TencentCloud::Common::AbstractModel
        # @param FairPlayPemId: 设置私钥后，后台返回的pem id，用来唯一标识一个私钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FairPlayPemId: Integer
        # @param Priority: 私钥的优先级，优先级数值越高，优先级越高。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FairPlayPemId, :Priority, :RequestId

        def initialize(fairplaypemid=nil, priority=nil, requestid=nil)
          @FairPlayPemId = fairplaypemid
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @FairPlayPemId = params['FairPlayPemId']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

      # CreateEncryptKeys请求参数结构体
      class CreateEncryptKeysRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: 使用的DRM方案类型，接口取值WIDEVINE、FAIRPLAY、NORMALAES。
        # @type DrmType: String
        # @param Keys: 设置的加密密钥列表。
        # @type Keys: Array
        # @param ContentId: 一个加密内容的唯一标识。
        # @type ContentId: String
        # @param ContentType: 内容类型。接口取值VodVideo,LiveVideo。
        # @type ContentType: String

        attr_accessor :DrmType, :Keys, :ContentId, :ContentType

        def initialize(drmtype=nil, keys=nil, contentid=nil, contenttype=nil)
          @DrmType = drmtype
          @Keys = keys
          @ContentId = contentid
          @ContentType = contenttype
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              keyparam_tmp = KeyParam.new
              keyparam_tmp.deserialize(i)
              @Keys << keyparam_tmp
            end
          end
          @ContentId = params['ContentId']
          @ContentType = params['ContentType']
        end
      end

      # CreateEncryptKeys返回参数结构体
      class CreateEncryptKeysResponse < TencentCloud::Common::AbstractModel
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

      # CreateLicense请求参数结构体
      class CreateLicenseRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: DRM方案类型，接口取值：WIDEVINE，FAIRPLAY。
        # @type DrmType: String
        # @param LicenseRequest: Base64编码的终端设备License Request数据。
        # @type LicenseRequest: String
        # @param ContentType: 内容类型，接口取值：VodVideo,LiveVideo。
        # @type ContentType: String
        # @param Tracks: 授权播放的Track列表。
        # 该值为空时，默认授权所有track播放。
        # @type Tracks: Array
        # @param PlaybackPolicy: 播放策略参数。
        # @type PlaybackPolicy: :class:`Tencentcloud::Drm.v20181115.models.PlaybackPolicy`

        attr_accessor :DrmType, :LicenseRequest, :ContentType, :Tracks, :PlaybackPolicy

        def initialize(drmtype=nil, licenserequest=nil, contenttype=nil, tracks=nil, playbackpolicy=nil)
          @DrmType = drmtype
          @LicenseRequest = licenserequest
          @ContentType = contenttype
          @Tracks = tracks
          @PlaybackPolicy = playbackpolicy
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          @LicenseRequest = params['LicenseRequest']
          @ContentType = params['ContentType']
          @Tracks = params['Tracks']
          unless params['PlaybackPolicy'].nil?
            @PlaybackPolicy = PlaybackPolicy.new
            @PlaybackPolicy.deserialize(params['PlaybackPolicy'])
          end
        end
      end

      # CreateLicense返回参数结构体
      class CreateLicenseResponse < TencentCloud::Common::AbstractModel
        # @param License: Base64 编码的许可证二进制数据。
        # @type License: String
        # @param ContentId: 加密内容的内容ID
        # @type ContentId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :License, :ContentId, :RequestId

        def initialize(license=nil, contentid=nil, requestid=nil)
          @License = license
          @ContentId = contentid
          @RequestId = requestid
        end

        def deserialize(params)
          @License = params['License']
          @ContentId = params['ContentId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFairPlayPem请求参数结构体
      class DeleteFairPlayPemRequest < TencentCloud::Common::AbstractModel
        # @param BailorId: 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        # @type BailorId: Integer
        # @param FairPlayPemId: 要删除的pem id。
        # 当未传入该值时，将删除所有的私钥。
        # @type FairPlayPemId: Integer

        attr_accessor :BailorId, :FairPlayPemId

        def initialize(bailorid=nil, fairplaypemid=nil)
          @BailorId = bailorid
          @FairPlayPemId = fairplaypemid
        end

        def deserialize(params)
          @BailorId = params['BailorId']
          @FairPlayPemId = params['FairPlayPemId']
        end
      end

      # DeleteFairPlayPem返回参数结构体
      class DeleteFairPlayPemResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAllKeys请求参数结构体
      class DescribeAllKeysRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: 使用的DRM方案类型，接口取值WIDEVINE、FAIRPLAY、NORMALAES。
        # @type DrmType: String
        # @param RsaPublicKey: Base64编码的Rsa公钥，用来加密出参中的SessionKey。
        # 如果该参数为空，则出参中SessionKey为明文。
        # @type RsaPublicKey: String
        # @param ContentId: 一个加密内容的唯一标识。
        # @type ContentId: String
        # @param ContentType: 内容类型。接口取值VodVideo,LiveVideo。
        # @type ContentType: String

        attr_accessor :DrmType, :RsaPublicKey, :ContentId, :ContentType

        def initialize(drmtype=nil, rsapublickey=nil, contentid=nil, contenttype=nil)
          @DrmType = drmtype
          @RsaPublicKey = rsapublickey
          @ContentId = contentid
          @ContentType = contenttype
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          @RsaPublicKey = params['RsaPublicKey']
          @ContentId = params['ContentId']
          @ContentType = params['ContentType']
        end
      end

      # DescribeAllKeys返回参数结构体
      class DescribeAllKeysResponse < TencentCloud::Common::AbstractModel
        # @param Keys: 加密密钥列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param SessionKey: 用来加密密钥。
        # 如果入参中带有RsaPublicKey，则SessionKey为使用Rsa公钥加密后的二进制数据，Base64编码字符串。
        # 如果入参中没有RsaPublicKey，则SessionKey为原始数据的字符串形式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionKey: String
        # @param ContentId: 内容ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keys, :SessionKey, :ContentId, :RequestId

        def initialize(keys=nil, sessionkey=nil, contentid=nil, requestid=nil)
          @Keys = keys
          @SessionKey = sessionkey
          @ContentId = contentid
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
          @SessionKey = params['SessionKey']
          @ContentId = params['ContentId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDRMLicense请求参数结构体
      class DescribeDRMLicenseRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: 使用的DRM方案类型，接口取值 NORMALAES 。
        # @type DrmType: String
        # @param Tracks: 加密的track列表，接口取值 SD 。
        # @type Tracks: Array
        # @param ContentId: 一个加密内容的唯一标识。
        # @type ContentId: String
        # @param ContentType: 内容类型。接口取值 LiveVideo 。
        # @type ContentType: String

        attr_accessor :DrmType, :Tracks, :ContentId, :ContentType

        def initialize(drmtype=nil, tracks=nil, contentid=nil, contenttype=nil)
          @DrmType = drmtype
          @Tracks = tracks
          @ContentId = contentid
          @ContentType = contenttype
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          @Tracks = params['Tracks']
          @ContentId = params['ContentId']
          @ContentType = params['ContentType']
        end
      end

      # DescribeDRMLicense返回参数结构体
      class DescribeDRMLicenseResponse < TencentCloud::Common::AbstractModel
        # @param ContentId: 内容ID。
        # @type ContentId: String
        # @param TXEncryptionToken: 加密密钥。
        # @type TXEncryptionToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContentId, :TXEncryptionToken, :RequestId

        def initialize(contentid=nil, txencryptiontoken=nil, requestid=nil)
          @ContentId = contentid
          @TXEncryptionToken = txencryptiontoken
          @RequestId = requestid
        end

        def deserialize(params)
          @ContentId = params['ContentId']
          @TXEncryptionToken = params['TXEncryptionToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFairPlayPem请求参数结构体
      class DescribeFairPlayPemRequest < TencentCloud::Common::AbstractModel
        # @param BailorId: 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        # @type BailorId: Integer
        # @param FairPlayPemId: 需要查询的pem id。
        # 当该值未填入时，将返回所有的私钥信息。
        # @type FairPlayPemId: Integer

        attr_accessor :BailorId, :FairPlayPemId

        def initialize(bailorid=nil, fairplaypemid=nil)
          @BailorId = bailorid
          @FairPlayPemId = fairplaypemid
        end

        def deserialize(params)
          @BailorId = params['BailorId']
          @FairPlayPemId = params['FairPlayPemId']
        end
      end

      # DescribeFairPlayPem返回参数结构体
      class DescribeFairPlayPemResponse < TencentCloud::Common::AbstractModel
        # @param FairPlayPems: 该账户下，所有设置的FairPlay私钥摘要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FairPlayPems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FairPlayPems, :RequestId

        def initialize(fairplaypems=nil, requestid=nil)
          @FairPlayPems = fairplaypems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FairPlayPems'].nil?
            @FairPlayPems = []
            params['FairPlayPems'].each do |i|
              fairplaypemdigestinfo_tmp = FairPlayPemDigestInfo.new
              fairplaypemdigestinfo_tmp.deserialize(i)
              @FairPlayPems << fairplaypemdigestinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeys请求参数结构体
      class DescribeKeysRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: 使用的DRM方案类型，接口取值WIDEVINE、FAIRPLAY、NORMALAES。
        # @type DrmType: String
        # @param Tracks: 加密的track列表，接口取值VIDEO、AUDIO。
        # @type Tracks: Array
        # @param ContentType: 内容类型。接口取值VodVideo,LiveVideo
        # @type ContentType: String
        # @param RsaPublicKey: Base64编码的Rsa公钥，用来加密出参中的SessionKey。
        # 如果该参数为空，则出参中SessionKey为明文。
        # @type RsaPublicKey: String
        # @param ContentId: 一个加密内容的唯一标识。
        # 如果该参数为空，则后台自动生成
        # @type ContentId: String

        attr_accessor :DrmType, :Tracks, :ContentType, :RsaPublicKey, :ContentId

        def initialize(drmtype=nil, tracks=nil, contenttype=nil, rsapublickey=nil, contentid=nil)
          @DrmType = drmtype
          @Tracks = tracks
          @ContentType = contenttype
          @RsaPublicKey = rsapublickey
          @ContentId = contentid
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          @Tracks = params['Tracks']
          @ContentType = params['ContentType']
          @RsaPublicKey = params['RsaPublicKey']
          @ContentId = params['ContentId']
        end
      end

      # DescribeKeys返回参数结构体
      class DescribeKeysResponse < TencentCloud::Common::AbstractModel
        # @param Keys: 加密密钥列表
        # @type Keys: Array
        # @param SessionKey: 用来加密密钥。
        # 如果入参中带有RsaPublicKey，则SessionKey为使用Rsa公钥加密后的二进制数据，Base64编码字符串。
        # 如果入参中没有RsaPublicKey，则SessionKey为原始数据的字符串形式。
        # @type SessionKey: String
        # @param ContentId: 内容ID
        # @type ContentId: String
        # @param Pssh: Widevine方案的Pssh数据，Base64编码。
        # Fairplay方案无该值。
        # @type Pssh: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keys, :SessionKey, :ContentId, :Pssh, :RequestId

        def initialize(keys=nil, sessionkey=nil, contentid=nil, pssh=nil, requestid=nil)
          @Keys = keys
          @SessionKey = sessionkey
          @ContentId = contentid
          @Pssh = pssh
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
          @SessionKey = params['SessionKey']
          @ContentId = params['ContentId']
          @Pssh = params['Pssh']
          @RequestId = params['RequestId']
        end
      end

      # DRM加密后的输出对象
      class DrmOutputObject < TencentCloud::Common::AbstractModel
        # @param BucketName: 输出的桶名称。
        # @type BucketName: String
        # @param ObjectName: 输出的对象名称。
        # @type ObjectName: String
        # @param Para: 输出对象参数。
        # @type Para: :class:`Tencentcloud::Drm.v20181115.models.DrmOutputPara`

        attr_accessor :BucketName, :ObjectName, :Para

        def initialize(bucketname=nil, objectname=nil, para=nil)
          @BucketName = bucketname
          @ObjectName = objectname
          @Para = para
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @ObjectName = params['ObjectName']
          unless params['Para'].nil?
            @Para = DrmOutputPara.new
            @Para.deserialize(params['Para'])
          end
        end
      end

      # Drm加密对象输出参数
      class DrmOutputPara < TencentCloud::Common::AbstractModel
        # @param Type: 内容类型。例:video，audio，mpd，m3u8
        # @type Type: String
        # @param Language: 语言,例: en, zh-cn
        # @type Language: String

        attr_accessor :Type, :Language

        def initialize(type=nil, language=nil)
          @Type = type
          @Language = language
        end

        def deserialize(params)
          @Type = params['Type']
          @Language = params['Language']
        end
      end

      # 用于DRM加密的源对象
      class DrmSourceObject < TencentCloud::Common::AbstractModel
        # @param BucketName: 输入的桶名称。
        # @type BucketName: String
        # @param ObjectName: 输入对象名称。
        # @type ObjectName: String

        attr_accessor :BucketName, :ObjectName

        def initialize(bucketname=nil, objectname=nil)
          @BucketName = bucketname
          @ObjectName = objectname
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @ObjectName = params['ObjectName']
        end
      end

      # FairPlay 私钥摘要信息。
      class FairPlayPemDigestInfo < TencentCloud::Common::AbstractModel
        # @param FairPlayPemId: fairplay 私钥pem id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FairPlayPemId: Integer
        # @param Priority: 私钥的优先级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Md5Pem: 私钥的md5 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5Pem: String
        # @param Md5Ask: ASK的md5信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5Ask: String
        # @param Md5PemDecryptKey: 私钥解密密钥的md5值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5PemDecryptKey: String

        attr_accessor :FairPlayPemId, :Priority, :Md5Pem, :Md5Ask, :Md5PemDecryptKey

        def initialize(fairplaypemid=nil, priority=nil, md5pem=nil, md5ask=nil, md5pemdecryptkey=nil)
          @FairPlayPemId = fairplaypemid
          @Priority = priority
          @Md5Pem = md5pem
          @Md5Ask = md5ask
          @Md5PemDecryptKey = md5pemdecryptkey
        end

        def deserialize(params)
          @FairPlayPemId = params['FairPlayPemId']
          @Priority = params['Priority']
          @Md5Pem = params['Md5Pem']
          @Md5Ask = params['Md5Ask']
          @Md5PemDecryptKey = params['Md5PemDecryptKey']
        end
      end

      # GenerateTDRMKey请求参数结构体
      class GenerateTDRMKeyRequest < TencentCloud::Common::AbstractModel
        # @param DrmType: 使用的DRM方案类型，接口取值 NORMALAES 。
        # @type DrmType: String
        # @param Tracks: 加密的track列表，接口取值 SD 。
        # @type Tracks: Array
        # @param ContentId: 一个加密内容的唯一标识。
        # @type ContentId: String
        # @param ContentType: 内容类型。接口取值 LiveVideo 。
        # @type ContentType: String

        attr_accessor :DrmType, :Tracks, :ContentId, :ContentType

        def initialize(drmtype=nil, tracks=nil, contentid=nil, contenttype=nil)
          @DrmType = drmtype
          @Tracks = tracks
          @ContentId = contentid
          @ContentType = contenttype
        end

        def deserialize(params)
          @DrmType = params['DrmType']
          @Tracks = params['Tracks']
          @ContentId = params['ContentId']
          @ContentType = params['ContentType']
        end
      end

      # GenerateTDRMKey返回参数结构体
      class GenerateTDRMKeyResponse < TencentCloud::Common::AbstractModel
        # @param ContentId: 内容ID。
        # @type ContentId: String
        # @param TXEncryptionToken: 加密密钥。
        # @type TXEncryptionToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContentId, :TXEncryptionToken, :RequestId

        def initialize(contentid=nil, txencryptiontoken=nil, requestid=nil)
          @ContentId = contentid
          @TXEncryptionToken = txencryptiontoken
          @RequestId = requestid
        end

        def deserialize(params)
          @ContentId = params['ContentId']
          @TXEncryptionToken = params['TXEncryptionToken']
          @RequestId = params['RequestId']
        end
      end

      # DRM加密密钥
      class Key < TencentCloud::Common::AbstractModel
        # @param Track: 加密track类型。Widevine支持SD、HD、UHD1、UHD2、AUDIO。Fairplay只支持HD。
        # @type Track: String
        # @param KeyId: 密钥ID。
        # @type KeyId: String
        # @param Key: 原始Key使用AES-128 ECB模式和SessionKey加密的后的二进制数据，Base64编码的字符串。
        # @type Key: String
        # @param Iv: 原始IV使用AES-128 ECB模式和SessionKey加密的后的二进制数据，Base64编码的字符串。
        # @type Iv: String
        # @param InsertTimestamp: 该key生成时的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTimestamp: Integer

        attr_accessor :Track, :KeyId, :Key, :Iv, :InsertTimestamp

        def initialize(track=nil, keyid=nil, key=nil, iv=nil, inserttimestamp=nil)
          @Track = track
          @KeyId = keyid
          @Key = key
          @Iv = iv
          @InsertTimestamp = inserttimestamp
        end

        def deserialize(params)
          @Track = params['Track']
          @KeyId = params['KeyId']
          @Key = params['Key']
          @Iv = params['Iv']
          @InsertTimestamp = params['InsertTimestamp']
        end
      end

      # 设置加密密钥所需的参数
      class KeyParam < TencentCloud::Common::AbstractModel
        # @param Track: 加密track类型。取值范围：
        # SD、HD、UHD1、UHD2、AUDIO
        # @type Track: String
        # @param Key: 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        # @type Key: String
        # @param KeyId: 密钥ID。
        # @type KeyId: String
        # @param Iv: 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        # @type Iv: String

        attr_accessor :Track, :Key, :KeyId, :Iv

        def initialize(track=nil, key=nil, keyid=nil, iv=nil)
          @Track = track
          @Key = key
          @KeyId = keyid
          @Iv = iv
        end

        def deserialize(params)
          @Track = params['Track']
          @Key = params['Key']
          @KeyId = params['KeyId']
          @Iv = params['Iv']
        end
      end

      # ModifyFairPlayPem请求参数结构体
      class ModifyFairPlayPemRequest < TencentCloud::Common::AbstractModel
        # @param Pem: 加密后的fairplay方案申请时使用的私钥。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对私钥文件中的字段进行加密，并对加密结果进行base64编码。
        # @type Pem: String
        # @param Ask: 加密后的fairplay方案申请返回的ask数据。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对Ask字符串进行加密，并对加密结果进行base64编码。
        # @type Ask: String
        # @param FairPlayPemId: 要修改的私钥id
        # @type FairPlayPemId: Integer
        # @param PemDecryptKey: 私钥的解密密钥。
        # openssl在生成rsa时，可能会需要设置加密密钥，请记住设置的密钥。
        # 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        # @type PemDecryptKey: String
        # @param BailorId: 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        # @type BailorId: Integer
        # @param Priority: 私钥的优先级，优先级数值越高，优先级越高。
        # 该值可以不传，后台将自动分配一个优先级。
        # @type Priority: Integer

        attr_accessor :Pem, :Ask, :FairPlayPemId, :PemDecryptKey, :BailorId, :Priority

        def initialize(pem=nil, ask=nil, fairplaypemid=nil, pemdecryptkey=nil, bailorid=nil, priority=nil)
          @Pem = pem
          @Ask = ask
          @FairPlayPemId = fairplaypemid
          @PemDecryptKey = pemdecryptkey
          @BailorId = bailorid
          @Priority = priority
        end

        def deserialize(params)
          @Pem = params['Pem']
          @Ask = params['Ask']
          @FairPlayPemId = params['FairPlayPemId']
          @PemDecryptKey = params['PemDecryptKey']
          @BailorId = params['BailorId']
          @Priority = params['Priority']
        end
      end

      # ModifyFairPlayPem返回参数结构体
      class ModifyFairPlayPemResponse < TencentCloud::Common::AbstractModel
        # @param FairPlayPemId: 设置私钥后，后台返回的pem id，用来唯一标识一个私钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FairPlayPemId: Integer
        # @param Priority: 私钥的优先级，优先级数值越高，优先级越高。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FairPlayPemId, :Priority, :RequestId

        def initialize(fairplaypemid=nil, priority=nil, requestid=nil)
          @FairPlayPemId = fairplaypemid
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @FairPlayPemId = params['FairPlayPemId']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

      # 播放控制参数
      class PlaybackPolicy < TencentCloud::Common::AbstractModel
        # @param LicenseDurationSeconds: 播放许可证的有效期
        # @type LicenseDurationSeconds: Integer
        # @param PlaybackDurationSeconds: 开始播放后，允许最长播放时间
        # @type PlaybackDurationSeconds: Integer

        attr_accessor :LicenseDurationSeconds, :PlaybackDurationSeconds

        def initialize(licensedurationseconds=nil, playbackdurationseconds=nil)
          @LicenseDurationSeconds = licensedurationseconds
          @PlaybackDurationSeconds = playbackdurationseconds
        end

        def deserialize(params)
          @LicenseDurationSeconds = params['LicenseDurationSeconds']
          @PlaybackDurationSeconds = params['PlaybackDurationSeconds']
        end
      end

      # StartEncryption请求参数结构体
      class StartEncryptionRequest < TencentCloud::Common::AbstractModel
        # @param CosEndPoint: cos的end point。
        # @type CosEndPoint: String
        # @param CosSecretId: cos api密钥id。
        # @type CosSecretId: String
        # @param CosSecretKey: cos api密钥。
        # @type CosSecretKey: String
        # @param DrmType: 使用的DRM方案类型，接口取值WIDEVINE,FAIRPLAY
        # @type DrmType: String
        # @param SourceObject: 存储在COS上的原始内容信息
        # @type SourceObject: :class:`Tencentcloud::Drm.v20181115.models.DrmSourceObject`
        # @param OutputObjects: 加密后的内容存储到COS的对象
        # @type OutputObjects: Array

        attr_accessor :CosEndPoint, :CosSecretId, :CosSecretKey, :DrmType, :SourceObject, :OutputObjects

        def initialize(cosendpoint=nil, cossecretid=nil, cossecretkey=nil, drmtype=nil, sourceobject=nil, outputobjects=nil)
          @CosEndPoint = cosendpoint
          @CosSecretId = cossecretid
          @CosSecretKey = cossecretkey
          @DrmType = drmtype
          @SourceObject = sourceobject
          @OutputObjects = outputobjects
        end

        def deserialize(params)
          @CosEndPoint = params['CosEndPoint']
          @CosSecretId = params['CosSecretId']
          @CosSecretKey = params['CosSecretKey']
          @DrmType = params['DrmType']
          unless params['SourceObject'].nil?
            @SourceObject = DrmSourceObject.new
            @SourceObject.deserialize(params['SourceObject'])
          end
          unless params['OutputObjects'].nil?
            @OutputObjects = []
            params['OutputObjects'].each do |i|
              drmoutputobject_tmp = DrmOutputObject.new
              drmoutputobject_tmp.deserialize(i)
              @OutputObjects << drmoutputobject_tmp
            end
          end
        end
      end

      # StartEncryption返回参数结构体
      class StartEncryptionResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

