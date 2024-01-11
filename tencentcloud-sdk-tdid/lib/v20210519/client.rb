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
  module Tdid
    module V20210519
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-19'
            api_endpoint = 'tdid.tencentcloudapi.com'
            sdk_version = 'TDID_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检查用户套餐购买状态

        # @param request: Request instance for CheckNewPurchase.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CheckNewPurchaseRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CheckNewPurchaseResponse`
        def CheckNewPurchase(request)
          body = send_request('CheckNewPurchase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckNewPurchaseResponse.new
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

        # 自动生成公私钥对托管在DID平台，并注册DID标识

        # @param request: Request instance for CreateTDidByHost.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidByHostRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidByHostResponse`
        def CreateTDidByHost(request)
          body = send_request('CreateTDidByHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidByHostResponse.new
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

        # 使用导入的公钥文件注册DID标识

        # @param request: Request instance for CreateTDidByPubKey.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPubKeyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPubKeyResponse`
        def CreateTDidByPubKey(request)
          body = send_request('CreateTDidByPubKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidByPubKeyResponse.new
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

        # 更新DID标识的禁用状态

        # @param request: Request instance for DeactivateTDid.
        # @type request: :class:`Tencentcloud::tdid::V20210519::DeactivateTDidRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::DeactivateTDidResponse`
        def DeactivateTDid(request)
          body = send_request('DeactivateTDid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeactivateTDidResponse.new
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

        # 获取凭证链上状态信息

        # @param request: Request instance for GetCredentialState.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCredentialStateRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCredentialStateResponse`
        def GetCredentialState(request)
          body = send_request('GetCredentialState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCredentialStateResponse.new
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

        # 获取DID标识的文档

        # @param request: Request instance for GetTDidDocument.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetTDidDocumentRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetTDidDocumentResponse`
        def GetTDidDocument(request)
          body = send_request('GetTDidDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTDidDocumentResponse.new
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

        # 颁发可验证凭证

        # @param request: Request instance for IssueCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::IssueCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::IssueCredentialResponse`
        def IssueCredential(request)
          body = send_request('IssueCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IssueCredentialResponse.new
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

        # 更新凭证的链上状态

        # @param request: Request instance for UpdateCredentialState.
        # @type request: :class:`Tencentcloud::tdid::V20210519::UpdateCredentialStateRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::UpdateCredentialStateResponse`
        def UpdateCredentialState(request)
          body = send_request('UpdateCredentialState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCredentialStateResponse.new
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

        # 验证已签名的可验证凭证

        # @param request: Request instance for VerifyCredentials.
        # @type request: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialsRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialsResponse`
        def VerifyCredentials(request)
          body = send_request('VerifyCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyCredentialsResponse.new
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