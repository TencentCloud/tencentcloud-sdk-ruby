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


        # 根据披露策略创建选择性披露凭证

        # @param request: Request instance for CreateDisclosedCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateDisclosedCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateDisclosedCredentialResponse`
        def CreateDisclosedCredential(request)
          body = send_request('CreateDisclosedCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisclosedCredentialResponse.new
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

        # 创建凭证持有人的可验证表达

        # @param request: Request instance for CreatePresentation.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreatePresentationRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreatePresentationResponse`
        def CreatePresentation(request)
          body = send_request('CreatePresentation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePresentationResponse.new
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

        # 获取某个应用关键指标统计数据

        # @param request: Request instance for GetAppSummary.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetAppSummaryRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetAppSummaryResponse`
        def GetAppSummary(request)
          body = send_request('GetAppSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAppSummaryResponse.new
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

        # 获取某个应用关键指标统计数据

        # @param request: Request instance for GetOverSummary.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetOverSummaryRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetOverSummaryResponse`
        def GetOverSummary(request)
          body = send_request('GetOverSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOverSummaryResponse.new
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

        # 通过业务层绑定的对象ID获取DID标识

        # @param request: Request instance for GetTDidByObjectId.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetTDidByObjectIdRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetTDidByObjectIdResponse`
        def GetTDidByObjectId(request)
          body = send_request('GetTDidByObjectId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTDidByObjectIdResponse.new
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

        # 查询DID标识的认证公钥

        # @param request: Request instance for GetTDidPubKey.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetTDidPubKeyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetTDidPubKeyResponse`
        def GetTDidPubKey(request)
          body = send_request('GetTDidPubKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTDidPubKeyResponse.new
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

        # 查询权威机构信息

        # @param request: Request instance for QueryAuthorityInfo.
        # @type request: :class:`Tencentcloud::tdid::V20210519::QueryAuthorityInfoRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::QueryAuthorityInfoResponse`
        def QueryAuthorityInfo(request)
          body = send_request('QueryAuthorityInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAuthorityInfoResponse.new
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

        # 查询凭证模板内容

        # @param request: Request instance for QueryCPT.
        # @type request: :class:`Tencentcloud::tdid::V20210519::QueryCPTRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::QueryCPTResponse`
        def QueryCPT(request)
          body = send_request('QueryCPT', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCPTResponse.new
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

        # 设置DID文档的自定义属性

        # @param request: Request instance for SetTDidAttribute.
        # @type request: :class:`Tencentcloud::tdid::V20210519::SetTDidAttributeRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::SetTDidAttributeResponse`
        def SetTDidAttribute(request)
          body = send_request('SetTDidAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTDidAttributeResponse.new
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

        # 1. 首次更新凭证状态基于不同场景参数有所差异，分以下两种场景：
        # (1)  颁发凭证的DID是本腾讯云账号创建
        # (2) 颁发凭证的DID是非本腾讯云账号创建(此调用方式也适用于场景1)
        # 2. 首次更新过凭证状态后，凭证状态已绑定该账号的链上用户，后续更新凭证状态只需参数CredentialStatus即可, OperateCredential和OriginCredential参数均不需要

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

        # 验证可验证表达的内容

        # @param request: Request instance for VerifyPresentation.
        # @type request: :class:`Tencentcloud::tdid::V20210519::VerifyPresentationRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::VerifyPresentationResponse`
        def VerifyPresentation(request)
          body = send_request('VerifyPresentation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyPresentationResponse.new
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