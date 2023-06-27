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


        # 下线已有内测接口，待上线正式版本的接口

        # DID添加标签

        # @param request: Request instance for AddLabel.
        # @type request: :class:`Tencentcloud::tdid::V20210519::AddLabelRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::AddLabelResponse`
        def AddLabel(request)
          body = send_request('AddLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLabelResponse.new
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

        # 该接口不再使用

        # 检查区块链信息

        # @param request: Request instance for CheckChain.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CheckChainRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CheckChainResponse`
        def CheckChain(request)
          body = send_request('CheckChain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckChainResponse.new
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

        # 该接口不再使用

        # 创建凭证

        # @param request: Request instance for CreateCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateCredentialResponse`
        def CreateCredential(request)
          body = send_request('CreateCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCredentialResponse.new
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

        # 该接口不再使用

        # 创建选择性批露凭证

        # @param request: Request instance for CreateSelectiveCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateSelectiveCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateSelectiveCredentialResponse`
        def CreateSelectiveCredential(request)
          body = send_request('CreateSelectiveCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSelectiveCredentialResponse.new
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

        # 该接口不再使用

        # 创建机构DID

        # @param request: Request instance for CreateTDid.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidResponse`
        def CreateTDid(request)
          body = send_request('CreateTDid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidResponse.new
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

        # 该接口不再使用

        # 新建DID根据私钥生成Tdid

        # @param request: Request instance for CreateTDidByPrivateKey.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPrivateKeyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPrivateKeyResponse`
        def CreateTDidByPrivateKey(request)
          body = send_request('CreateTDidByPrivateKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidByPrivateKeyResponse.new
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

        # 该接口不再使用

        #  新建DID根据公钥生成Tdid

        # @param request: Request instance for CreateTDidByPublicKey.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPublicKeyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidByPublicKeyResponse`
        def CreateTDidByPublicKey(request)
          body = send_request('CreateTDidByPublicKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidByPublicKeyResponse.new
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

        # 该接口已废弃

        # 本机构DID详情

        # @param request: Request instance for GetAgencyTDid.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetAgencyTDidRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetAgencyTDidResponse`
        def GetAgencyTDid(request)
          body = send_request('GetAgencyTDid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAgencyTDidResponse.new
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

        # 该接口不再使用

        # 获取权威机构信息

        # @param request: Request instance for GetAuthorityIssuer.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetAuthorityIssuerRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetAuthorityIssuerResponse`
        def GetAuthorityIssuer(request)
          body = send_request('GetAuthorityIssuer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAuthorityIssuerResponse.new
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

        # 下线已有内测接口，待上线正式版本的接口

        # 获取联盟bcos网络列表

        # @param request: Request instance for GetConsortiumClusterList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetConsortiumClusterListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetConsortiumClusterListResponse`
        def GetConsortiumClusterList(request)
          body = send_request('GetConsortiumClusterList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetConsortiumClusterListResponse.new
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

        # 下线已有内测接口，待上线正式版本的接口

        # 获取联盟列表

        # @param request: Request instance for GetConsortiumList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetConsortiumListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetConsortiumListResponse`
        def GetConsortiumList(request)
          body = send_request('GetConsortiumList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetConsortiumListResponse.new
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

        # 该接口不再使用

        # 凭证模版详情

        # @param request: Request instance for GetCptInfo.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCptInfoRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCptInfoResponse`
        def GetCptInfo(request)
          body = send_request('GetCptInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCptInfoResponse.new
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

        # 下线已有内测接口，待上线正式版本的接口

        # 凭证颁发按机构排行

        # @param request: Request instance for GetCredentialCptRank.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCredentialCptRankRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCredentialCptRankResponse`
        def GetCredentialCptRank(request)
          body = send_request('GetCredentialCptRank', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCredentialCptRankResponse.new
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

        # 该接口不再使用

        # 获取凭证链上状态信息

        # @param request: Request instance for GetCredentialStatus.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCredentialStatusRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCredentialStatusResponse`
        def GetCredentialStatus(request)
          body = send_request('GetCredentialStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCredentialStatusResponse.new
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

        # 该接口不再使用

        # 查看DID文档

        # @param request: Request instance for GetDidDocument.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidDocumentRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidDocumentResponse`
        def GetDidDocument(request)
          body = send_request('GetDidDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidDocumentResponse.new
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

        # 该接口不再使用

        # 凭证模版新建

        # @param request: Request instance for RegisterCpt.
        # @type request: :class:`Tencentcloud::tdid::V20210519::RegisterCptRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::RegisterCptResponse`
        def RegisterCpt(request)
          body = send_request('RegisterCpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterCptResponse.new
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

        # 该接口不再使用

        # 设置凭证链上状态

        # @param request: Request instance for SetCredentialStatus.
        # @type request: :class:`Tencentcloud::tdid::V20210519::SetCredentialStatusRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::SetCredentialStatusResponse`
        def SetCredentialStatus(request)
          body = send_request('SetCredentialStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetCredentialStatusResponse.new
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

        # 该接口不再使用

        # 验证凭证

        # @param request: Request instance for VerifyCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialResponse`
        def VerifyCredential(request)
          body = send_request('VerifyCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyCredentialResponse.new
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