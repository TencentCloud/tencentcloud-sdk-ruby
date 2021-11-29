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

require 'json'

module TencentCloud
  module Kms
    module V20190118
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-18'
            api_endpoint = 'kms.tencentcloudapi.com'
            sdk_version = 'KMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 对密钥进行归档，被归档的密钥只能用于解密，不能加密

        # @param request: Request instance for ArchiveKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::ArchiveKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ArchiveKeyResponse`
        def ArchiveKey(request)
          body = send_request('ArchiveKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ArchiveKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用指定的RSA非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。

        # @param request: Request instance for AsymmetricRsaDecrypt.
        # @type request: :class:`Tencentcloud::kms::V20190118::AsymmetricRsaDecryptRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::AsymmetricRsaDecryptResponse`
        def AsymmetricRsaDecrypt(request)
          body = send_request('AsymmetricRsaDecrypt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AsymmetricRsaDecryptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用指定的SM2非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。传入的密文的长度不能超过256字节。

        # @param request: Request instance for AsymmetricSm2Decrypt.
        # @type request: :class:`Tencentcloud::kms::V20190118::AsymmetricSm2DecryptRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::AsymmetricSm2DecryptResponse`
        def AsymmetricSm2Decrypt(request)
          body = send_request('AsymmetricSm2Decrypt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AsymmetricSm2DecryptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 记录当前key被哪个云产品的那个资源所使用。如果当前key设置了自动过期，则取消该设置，确保当前key不会自动失效。如果当前关联关系已经创建，也返回成功。

        # @param request: Request instance for BindCloudResource.
        # @type request: :class:`Tencentcloud::kms::V20190118::BindCloudResourceRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::BindCloudResourceResponse`
        def BindCloudResource(request)
          body = send_request('BindCloudResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindCloudResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消密钥归档，取消后密钥的状态变为Enabled。

        # @param request: Request instance for CancelKeyArchive.
        # @type request: :class:`Tencentcloud::kms::V20190118::CancelKeyArchiveRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::CancelKeyArchiveResponse`
        def CancelKeyArchive(request)
          body = send_request('CancelKeyArchive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelKeyArchiveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消CMK的计划删除操作

        # @param request: Request instance for CancelKeyDeletion.
        # @type request: :class:`Tencentcloud::kms::V20190118::CancelKeyDeletionRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::CancelKeyDeletionResponse`
        def CancelKeyDeletion(request)
          body = send_request('CancelKeyDeletion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelKeyDeletionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户管理数据密钥的主密钥CMK（Custom Master Key）。

        # @param request: Request instance for CreateKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::CreateKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::CreateKeyResponse`
        def CreateKey(request)
          body = send_request('CreateKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建白盒密钥。 密钥个数的上限为 50。

        # @param request: Request instance for CreateWhiteBoxKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::CreateWhiteBoxKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::CreateWhiteBoxKeyResponse`
        def CreateWhiteBoxKey(request)
          body = send_request('CreateWhiteBoxKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWhiteBoxKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于解密密文，得到明文数据。

        # @param request: Request instance for Decrypt.
        # @type request: :class:`Tencentcloud::kms::V20190118::DecryptRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DecryptResponse`
        def Decrypt(request)
          body = send_request('Decrypt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DecryptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除导入的密钥材料，仅对EXTERNAL类型的CMK有效，该接口将CMK设置为PendingImport 状态，并不会删除CMK，在重新进行密钥导入后可继续使用。彻底删除CMK请使用 ScheduleKeyDeletion 接口。

        # @param request: Request instance for DeleteImportedKeyMaterial.
        # @type request: :class:`Tencentcloud::kms::V20190118::DeleteImportedKeyMaterialRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DeleteImportedKeyMaterialResponse`
        def DeleteImportedKeyMaterial(request)
          body = send_request('DeleteImportedKeyMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImportedKeyMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除白盒密钥, 注意：必须先禁用后，才可以删除。

        # @param request: Request instance for DeleteWhiteBoxKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DeleteWhiteBoxKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DeleteWhiteBoxKeyResponse`
        def DeleteWhiteBoxKey(request)
          body = send_request('DeleteWhiteBoxKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWhiteBoxKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取指定KeyId的主密钥属性详情信息。

        # @param request: Request instance for DescribeKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeKeyResponse`
        def DescribeKey(request)
          body = send_request('DescribeKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于批量获取主密钥属性信息。

        # @param request: Request instance for DescribeKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeKeysResponse`
        def DescribeKeys(request)
          body = send_request('DescribeKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取白盒解密密钥

        # @param request: Request instance for DescribeWhiteBoxDecryptKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxDecryptKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxDecryptKeyResponse`
        def DescribeWhiteBoxDecryptKey(request)
          body = send_request('DescribeWhiteBoxDecryptKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoxDecryptKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定密钥的设备指纹列表

        # @param request: Request instance for DescribeWhiteBoxDeviceFingerprints.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxDeviceFingerprintsRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxDeviceFingerprintsResponse`
        def DescribeWhiteBoxDeviceFingerprints(request)
          body = send_request('DescribeWhiteBoxDeviceFingerprints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoxDeviceFingerprintsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示白盒密钥的信息

        # @param request: Request instance for DescribeWhiteBoxKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxKeyResponse`
        def DescribeWhiteBoxKey(request)
          body = send_request('DescribeWhiteBoxKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoxKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取白盒密钥列表

        # @param request: Request instance for DescribeWhiteBoxKeyDetails.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxKeyDetailsRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxKeyDetailsResponse`
        def DescribeWhiteBoxKeyDetails(request)
          body = send_request('DescribeWhiteBoxKeyDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoxKeyDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取白盒密钥服务状态

        # @param request: Request instance for DescribeWhiteBoxServiceStatus.
        # @type request: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DescribeWhiteBoxServiceStatusResponse`
        def DescribeWhiteBoxServiceStatus(request)
          body = send_request('DescribeWhiteBoxServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoxServiceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于禁用一个主密钥，处于禁用状态的Key无法用于加密、解密操作。

        # @param request: Request instance for DisableKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DisableKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DisableKeyResponse`
        def DisableKey(request)
          body = send_request('DisableKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对指定的CMK禁止密钥轮换功能。

        # @param request: Request instance for DisableKeyRotation.
        # @type request: :class:`Tencentcloud::kms::V20190118::DisableKeyRotationRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DisableKeyRotationResponse`
        def DisableKeyRotation(request)
          body = send_request('DisableKeyRotation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableKeyRotationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于批量禁止CMK的使用。

        # @param request: Request instance for DisableKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::DisableKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DisableKeysResponse`
        def DisableKeys(request)
          body = send_request('DisableKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用白盒密钥

        # @param request: Request instance for DisableWhiteBoxKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::DisableWhiteBoxKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DisableWhiteBoxKeyResponse`
        def DisableWhiteBoxKey(request)
          body = send_request('DisableWhiteBoxKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableWhiteBoxKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量禁用白盒密钥

        # @param request: Request instance for DisableWhiteBoxKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::DisableWhiteBoxKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::DisableWhiteBoxKeysResponse`
        def DisableWhiteBoxKeys(request)
          body = send_request('DisableWhiteBoxKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableWhiteBoxKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用一个指定的CMK。

        # @param request: Request instance for EnableKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::EnableKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EnableKeyResponse`
        def EnableKey(request)
          body = send_request('EnableKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对指定的CMK开启密钥轮换功能。

        # @param request: Request instance for EnableKeyRotation.
        # @type request: :class:`Tencentcloud::kms::V20190118::EnableKeyRotationRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EnableKeyRotationResponse`
        def EnableKeyRotation(request)
          body = send_request('EnableKeyRotation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableKeyRotationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于批量启用CMK。

        # @param request: Request instance for EnableKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::EnableKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EnableKeysResponse`
        def EnableKeys(request)
          body = send_request('EnableKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用白盒密钥

        # @param request: Request instance for EnableWhiteBoxKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::EnableWhiteBoxKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EnableWhiteBoxKeyResponse`
        def EnableWhiteBoxKey(request)
          body = send_request('EnableWhiteBoxKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableWhiteBoxKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量启用白盒密钥

        # @param request: Request instance for EnableWhiteBoxKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::EnableWhiteBoxKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EnableWhiteBoxKeysResponse`
        def EnableWhiteBoxKeys(request)
          body = send_request('EnableWhiteBoxKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableWhiteBoxKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于加密最多为4KB任意数据，可用于加密数据库密码，RSA Key，或其它较小的敏感信息。对于应用的数据加密，使用GenerateDataKey生成的DataKey进行本地数据的加解密操作

        # @param request: Request instance for Encrypt.
        # @type request: :class:`Tencentcloud::kms::V20190118::EncryptRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EncryptResponse`
        def Encrypt(request)
          body = send_request('Encrypt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EncryptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用白盒密钥进行加密

        # @param request: Request instance for EncryptByWhiteBox.
        # @type request: :class:`Tencentcloud::kms::V20190118::EncryptByWhiteBoxRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::EncryptByWhiteBoxResponse`
        def EncryptByWhiteBox(request)
          body = send_request('EncryptByWhiteBox', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EncryptByWhiteBoxResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口生成一个数据密钥，您可以用这个密钥进行本地数据的加密。

        # @param request: Request instance for GenerateDataKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::GenerateDataKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GenerateDataKeyResponse`
        def GenerateDataKey(request)
          body = send_request('GenerateDataKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateDataKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 随机数生成接口。

        # @param request: Request instance for GenerateRandom.
        # @type request: :class:`Tencentcloud::kms::V20190118::GenerateRandomRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GenerateRandomResponse`
        def GenerateRandom(request)
          body = send_request('GenerateRandom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateRandomResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定的CMK是否开启了密钥轮换功能。

        # @param request: Request instance for GetKeyRotationStatus.
        # @type request: :class:`Tencentcloud::kms::V20190118::GetKeyRotationStatusRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GetKeyRotationStatusResponse`
        def GetKeyRotationStatus(request)
          body = send_request('GetKeyRotationStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetKeyRotationStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取导入主密钥（CMK）材料的参数，返回的Token作为执行ImportKeyMaterial的参数之一，返回的PublicKey用于对自主导入密钥材料进行加密。返回的Token和PublicKey 24小时后失效，失效后如需重新导入，需要再次调用该接口获取新的Token和PublicKey。

        # @param request: Request instance for GetParametersForImport.
        # @type request: :class:`Tencentcloud::kms::V20190118::GetParametersForImportRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GetParametersForImportResponse`
        def GetParametersForImport(request)
          body = send_request('GetParametersForImport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetParametersForImportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于获取非对称密钥的公钥信息，可用于本地数据加密或验签。只有处于Enabled状态的非对称密钥才可能获取公钥。

        # @param request: Request instance for GetPublicKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::GetPublicKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GetPublicKeyResponse`
        def GetPublicKey(request)
          body = send_request('GetPublicKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPublicKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取支持的地域列表

        # @param request: Request instance for GetRegions.
        # @type request: :class:`Tencentcloud::kms::V20190118::GetRegionsRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GetRegionsResponse`
        def GetRegions(request)
          body = send_request('GetRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询该用户是否已开通KMS服务

        # @param request: Request instance for GetServiceStatus.
        # @type request: :class:`Tencentcloud::kms::V20190118::GetServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::GetServiceStatusResponse`
        def GetServiceStatus(request)
          body = send_request('GetServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetServiceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于导入密钥材料。只有类型为EXTERNAL 的CMK 才可以导入，导入的密钥材料使用 GetParametersForImport 获取的密钥进行加密。可以为指定的 CMK 重新导入密钥材料，并重新指定过期时间，但必须导入相同的密钥材料。CMK 密钥材料导入后不可以更换密钥材料。导入的密钥材料过期或者被删除后，指定的CMK将无法使用，需要再次导入相同的密钥材料才能正常使用。CMK是独立的，同样的密钥材料可导入不同的 CMK 中，但使用其中一个 CMK 加密的数据无法使用另一个 CMK解密。
        # 只有Enabled 和 PendingImport状态的CMK可以导入密钥材料。

        # @param request: Request instance for ImportKeyMaterial.
        # @type request: :class:`Tencentcloud::kms::V20190118::ImportKeyMaterialRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ImportKeyMaterialResponse`
        def ImportKeyMaterial(request)
          body = send_request('ImportKeyMaterial', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportKeyMaterialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出当前Region支持的加密方式

        # @param request: Request instance for ListAlgorithms.
        # @type request: :class:`Tencentcloud::kms::V20190118::ListAlgorithmsRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ListAlgorithmsResponse`
        def ListAlgorithms(request)
          body = send_request('ListAlgorithms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAlgorithmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据指定Offset和Limit获取主密钥列表详情。

        # @param request: Request instance for ListKeyDetail.
        # @type request: :class:`Tencentcloud::kms::V20190118::ListKeyDetailRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ListKeyDetailResponse`
        def ListKeyDetail(request)
          body = send_request('ListKeyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListKeyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列出账号下面状态为Enabled， Disabled 和 PendingImport 的CMK KeyId 列表

        # @param request: Request instance for ListKeys.
        # @type request: :class:`Tencentcloud::kms::V20190118::ListKeysRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ListKeysResponse`
        def ListKeys(request)
          body = send_request('ListKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListKeysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 覆盖指定密钥的设备指纹信息

        # @param request: Request instance for OverwriteWhiteBoxDeviceFingerprints.
        # @type request: :class:`Tencentcloud::kms::V20190118::OverwriteWhiteBoxDeviceFingerprintsRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::OverwriteWhiteBoxDeviceFingerprintsResponse`
        def OverwriteWhiteBoxDeviceFingerprints(request)
          body = send_request('OverwriteWhiteBoxDeviceFingerprints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OverwriteWhiteBoxDeviceFingerprintsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用指定CMK对密文重新加密。

        # @param request: Request instance for ReEncrypt.
        # @type request: :class:`Tencentcloud::kms::V20190118::ReEncryptRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ReEncryptResponse`
        def ReEncrypt(request)
          body = send_request('ReEncrypt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReEncryptResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CMK计划删除接口，用于指定CMK删除的时间，可选时间区间为[7,30]天

        # @param request: Request instance for ScheduleKeyDeletion.
        # @type request: :class:`Tencentcloud::kms::V20190118::ScheduleKeyDeletionRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::ScheduleKeyDeletionResponse`
        def ScheduleKeyDeletion(request)
          body = send_request('ScheduleKeyDeletion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScheduleKeyDeletionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 非对称密钥签名。
        # 注意：只有 KeyUsage 为 ASYMMETRIC_SIGN_VERIFY_SM2、ASYMMETRIC_SIGN_VERIFY_ECC 或其他支持的 ASYMMETRIC_SIGN_VERIFY_${ALGORITHM} 的密钥才可以使用签名功能。

        # @param request: Request instance for SignByAsymmetricKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::SignByAsymmetricKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::SignByAsymmetricKeyResponse`
        def SignByAsymmetricKey(request)
          body = send_request('SignByAsymmetricKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignByAsymmetricKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定（key, 资源，云产品）的记录，以表明：指定的云产品的资源已不再使用当前的key。

        # @param request: Request instance for UnbindCloudResource.
        # @type request: :class:`Tencentcloud::kms::V20190118::UnbindCloudResourceRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::UnbindCloudResourceResponse`
        def UnbindCloudResource(request)
          body = send_request('UnbindCloudResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindCloudResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改CMK的别名。对于处于PendingDelete状态的CMK禁止修改。

        # @param request: Request instance for UpdateAlias.
        # @type request: :class:`Tencentcloud::kms::V20190118::UpdateAliasRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::UpdateAliasResponse`
        def UpdateAlias(request)
          body = send_request('UpdateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于对指定的cmk修改描述信息。对于处于PendingDelete状态的CMK禁止修改。

        # @param request: Request instance for UpdateKeyDescription.
        # @type request: :class:`Tencentcloud::kms::V20190118::UpdateKeyDescriptionRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::UpdateKeyDescriptionResponse`
        def UpdateKeyDescription(request)
          body = send_request('UpdateKeyDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateKeyDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用非对称密钥验签

        # @param request: Request instance for VerifyByAsymmetricKey.
        # @type request: :class:`Tencentcloud::kms::V20190118::VerifyByAsymmetricKeyRequest`
        # @rtype: :class:`Tencentcloud::kms::V20190118::VerifyByAsymmetricKeyResponse`
        def VerifyByAsymmetricKey(request)
          body = send_request('VerifyByAsymmetricKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyByAsymmetricKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end