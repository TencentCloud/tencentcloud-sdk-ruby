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

        # 撤消权威机构认证

        # @param request: Request instance for CancelAuthorityIssuer.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CancelAuthorityIssuerRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CancelAuthorityIssuerResponse`
        def CancelAuthorityIssuer(request)
          body = send_request('CancelAuthorityIssuer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelAuthorityIssuerResponse.new
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

        # 检查部署情况

        # @param request: Request instance for CheckDidDeploy.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CheckDidDeployRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CheckDidDeployResponse`
        def CheckDidDeploy(request)
          body = send_request('CheckDidDeploy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDidDeployResponse.new
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

        # 创建DID服务

        # @param request: Request instance for CreateDidService.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateDidServiceRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateDidServiceResponse`
        def CreateDidService(request)
          body = send_request('CreateDidService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDidServiceResponse.new
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

        # 新建标签

        # @param request: Request instance for CreateLabel.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateLabelRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateLabelResponse`
        def CreateLabel(request)
          body = send_request('CreateLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLabelResponse.new
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

        # 通过Name部署TDID合约

        # @param request: Request instance for DeployByName.
        # @type request: :class:`Tencentcloud::tdid::V20210519::DeployByNameRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::DeployByNameResponse`
        def DeployByName(request)
          body = send_request('DeployByName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployByNameResponse.new
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

        # 凭证模版下载

        # @param request: Request instance for DownCpt.
        # @type request: :class:`Tencentcloud::tdid::V20210519::DownCptRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::DownCptResponse`
        def DownCpt(request)
          body = send_request('DownCpt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownCptResponse.new
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

        # 启用合约

        # @param request: Request instance for EnableHash.
        # @type request: :class:`Tencentcloud::tdid::V20210519::EnableHashRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::EnableHashResponse`
        def EnableHash(request)
          body = send_request('EnableHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableHashResponse.new
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

        # 权威机构列表

        # @param request: Request instance for GetAuthoritiesList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetAuthoritiesListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetAuthoritiesListResponse`
        def GetAuthoritiesList(request)
          body = send_request('GetAuthoritiesList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAuthoritiesListResponse.new
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

        # 凭证模版列表

        # @param request: Request instance for GetCptList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCptListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCptListResponse`
        def GetCptList(request)
          body = send_request('GetCptList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCptListResponse.new
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

        # 凭证颁发按机构排行

        # @param request: Request instance for GetCredentialIssueRank.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCredentialIssueRankRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCredentialIssueRankResponse`
        def GetCredentialIssueRank(request)
          body = send_request('GetCredentialIssueRank', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCredentialIssueRankResponse.new
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

        # 凭证颁发趋势

        # @param request: Request instance for GetCredentialIssueTrend.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetCredentialIssueTrendRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetCredentialIssueTrendResponse`
        def GetCredentialIssueTrend(request)
          body = send_request('GetCredentialIssueTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCredentialIssueTrendResponse.new
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

        # 概览

        # @param request: Request instance for GetDataPanel.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDataPanelRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDataPanelResponse`
        def GetDataPanel(request)
          body = send_request('GetDataPanel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDataPanelResponse.new
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

        # 合约部署详情

        # @param request: Request instance for GetDeployInfo.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDeployInfoRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDeployInfoResponse`
        def GetDeployInfo(request)
          body = send_request('GetDeployInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeployInfoResponse.new
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

        # 合约部署列表

        # @param request: Request instance for GetDeployList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDeployListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDeployListResponse`
        def GetDeployList(request)
          body = send_request('GetDeployList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDeployListResponse.new
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

        # 获取DID区块链网络详情

        # @param request: Request instance for GetDidClusterDetail.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidClusterDetailResponse`
        def GetDidClusterDetail(request)
          body = send_request('GetDidClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidClusterDetailResponse.new
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

        # 获取用户的DID网络列表

        # @param request: Request instance for GetDidClusterList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidClusterListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidClusterListResponse`
        def GetDidClusterList(request)
          body = send_request('GetDidClusterList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidClusterListResponse.new
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

        # DID详情

        # @param request: Request instance for GetDidDetail.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidDetailRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidDetailResponse`
        def GetDidDetail(request)
          body = send_request('GetDidDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidDetailResponse.new
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

        # DID列表

        # @param request: Request instance for GetDidList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidListResponse`
        def GetDidList(request)
          body = send_request('GetDidList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidListResponse.new
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

        # DID注册趋势

        # @param request: Request instance for GetDidRegisterTrend.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidRegisterTrendRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidRegisterTrendResponse`
        def GetDidRegisterTrend(request)
          body = send_request('GetDidRegisterTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidRegisterTrendResponse.new
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

        # 获取DID服务详情

        # @param request: Request instance for GetDidServiceDetail.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidServiceDetailRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidServiceDetailResponse`
        def GetDidServiceDetail(request)
          body = send_request('GetDidServiceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidServiceDetailResponse.new
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

        # 获取DID服务列表

        # @param request: Request instance for GetDidServiceList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetDidServiceListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetDidServiceListResponse`
        def GetDidServiceList(request)
          body = send_request('GetDidServiceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDidServiceListResponse.new
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

        # 主群组配置列表

        # @param request: Request instance for GetGroupList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetGroupListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetGroupListResponse`
        def GetGroupList(request)
          body = send_request('GetGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupListResponse.new
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

        # 标签列表

        # @param request: Request instance for GetLabelList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetLabelListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetLabelListResponse`
        def GetLabelList(request)
          body = send_request('GetLabelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLabelListResponse.new
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

        # 披露策略Policy管理列表

        # @param request: Request instance for GetPolicyList.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetPolicyListRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetPolicyListResponse`
        def GetPolicyList(request)
          body = send_request('GetPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPolicyListResponse.new
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

        # 查看公钥

        # @param request: Request instance for GetPublicKey.
        # @type request: :class:`Tencentcloud::tdid::V20210519::GetPublicKeyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::GetPublicKeyResponse`
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

        # 披露策略Policy查看

        # @param request: Request instance for QueryPolicy.
        # @type request: :class:`Tencentcloud::tdid::V20210519::QueryPolicyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::QueryPolicyResponse`
        def QueryPolicy(request)
          body = send_request('QueryPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryPolicyResponse.new
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

        # 认证权威机构

        # @param request: Request instance for RecognizeAuthorityIssuer.
        # @type request: :class:`Tencentcloud::tdid::V20210519::RecognizeAuthorityIssuerRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::RecognizeAuthorityIssuerResponse`
        def RecognizeAuthorityIssuer(request)
          body = send_request('RecognizeAuthorityIssuer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeAuthorityIssuerResponse.new
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

        # 披露策略Policy注册

        # @param request: Request instance for RegisterClaimPolicy.
        # @type request: :class:`Tencentcloud::tdid::V20210519::RegisterClaimPolicyRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::RegisterClaimPolicyResponse`
        def RegisterClaimPolicy(request)
          body = send_request('RegisterClaimPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterClaimPolicyResponse.new
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

        # 注册为权威机构

        # @param request: Request instance for RegisterIssuer.
        # @type request: :class:`Tencentcloud::tdid::V20210519::RegisterIssuerRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::RegisterIssuerResponse`
        def RegisterIssuer(request)
          body = send_request('RegisterIssuer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterIssuerResponse.new
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

        # 删除合约

        # @param request: Request instance for RemoveHash.
        # @type request: :class:`Tencentcloud::tdid::V20210519::RemoveHashRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::RemoveHashResponse`
        def RemoveHash(request)
          body = send_request('RemoveHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveHashResponse.new
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

        # 验证购买

        # @param request: Request instance for VerifyPurchase.
        # @type request: :class:`Tencentcloud::tdid::V20210519::VerifyPurchaseRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::VerifyPurchaseResponse`
        def VerifyPurchase(request)
          body = send_request('VerifyPurchase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyPurchaseResponse.new
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