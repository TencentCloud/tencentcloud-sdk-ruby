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
  module Tbaas
    module V20180416
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-16'
            api_endpoint = 'tbaas.tencentcloudapi.com'
            sdk_version = 'TBAAS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请用户证书

        # @param request: Request instance for ApplyUserCert.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::ApplyUserCertRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::ApplyUserCertResponse`
        def ApplyUserCert(request)
          body = send_request('ApplyUserCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyUserCertResponse.new
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

        # 版本升级

        # Bcos根据块高查询区块信息

        # @param request: Request instance for BlockByNumberHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::BlockByNumberHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::BlockByNumberHandlerResponse`
        def BlockByNumberHandler(request)
          body = send_request('BlockByNumberHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BlockByNumberHandlerResponse.new
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

        # 创建并安装合约

        # @param request: Request instance for CreateChaincodeAndInstallForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::CreateChaincodeAndInstallForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::CreateChaincodeAndInstallForUserResponse`
        def CreateChaincodeAndInstallForUser(request)
          body = send_request('CreateChaincodeAndInstallForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChaincodeAndInstallForUserResponse.new
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

        # 动态部署并发布Bcos合约

        # @param request: Request instance for DeployDynamicBcosContract.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::DeployDynamicBcosContractRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::DeployDynamicBcosContractResponse`
        def DeployDynamicBcosContract(request)
          body = send_request('DeployDynamicBcosContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployDynamicBcosContractResponse.new
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

        # 版本升级

        # 动态部署合约

        # @param request: Request instance for DeployDynamicContractHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::DeployDynamicContractHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::DeployDynamicContractHandlerResponse`
        def DeployDynamicContractHandler(request)
          body = send_request('DeployDynamicContractHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployDynamicContractHandlerResponse.new
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

        # 下载用户证书

        # @param request: Request instance for DownloadUserCert.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::DownloadUserCertRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::DownloadUserCertResponse`
        def DownloadUserCert(request)
          body = send_request('DownloadUserCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadUserCertResponse.new
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

        # 使用块高查询Bcos区块信息

        # @param request: Request instance for GetBcosBlockByNumber.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBcosBlockByNumberRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBcosBlockByNumberResponse`
        def GetBcosBlockByNumber(request)
          body = send_request('GetBcosBlockByNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBcosBlockByNumberResponse.new
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

        # Bcos分页查询当前群组下的区块列表

        # @param request: Request instance for GetBcosBlockList.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBcosBlockListRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBcosBlockListResponse`
        def GetBcosBlockList(request)
          body = send_request('GetBcosBlockList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBcosBlockListResponse.new
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

        # Bcos根据交易哈希查看交易详细信息

        # @param request: Request instance for GetBcosTransByHash.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBcosTransByHashRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBcosTransByHashResponse`
        def GetBcosTransByHash(request)
          body = send_request('GetBcosTransByHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBcosTransByHashResponse.new
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

        # Bcos分页查询当前群组的交易信息列表

        # @param request: Request instance for GetBcosTransList.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBcosTransListRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBcosTransListResponse`
        def GetBcosTransList(request)
          body = send_request('GetBcosTransList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBcosTransListResponse.new
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

        # 查看当前网络下的所有区块列表，分页展示

        # @param request: Request instance for GetBlockList.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBlockListRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBlockListResponse`
        def GetBlockList(request)
          body = send_request('GetBlockList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBlockListResponse.new
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

        # 版本升级

        # Bcos分页查询当前群组下的区块列表

        # @param request: Request instance for GetBlockListHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBlockListHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBlockListHandlerResponse`
        def GetBlockListHandler(request)
          body = send_request('GetBlockListHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBlockListHandlerResponse.new
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

        # 获取区块内的交易列表

        # @param request: Request instance for GetBlockTransactionListForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetBlockTransactionListForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetBlockTransactionListForUserResponse`
        def GetBlockTransactionListForUser(request)
          body = send_request('GetBlockTransactionListForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetBlockTransactionListForUserResponse.new
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

        # 获取合约编译日志

        # @param request: Request instance for GetChaincodeCompileLogForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeCompileLogForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeCompileLogForUserResponse`
        def GetChaincodeCompileLogForUser(request)
          body = send_request('GetChaincodeCompileLogForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetChaincodeCompileLogForUserResponse.new
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

        # 实例化结果查询

        # @param request: Request instance for GetChaincodeInitializeResultForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeInitializeResultForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeInitializeResultForUserResponse`
        def GetChaincodeInitializeResultForUser(request)
          body = send_request('GetChaincodeInitializeResultForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetChaincodeInitializeResultForUserResponse.new
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

        # 获取合约容器日志

        # @param request: Request instance for GetChaincodeLogForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeLogForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetChaincodeLogForUserResponse`
        def GetChaincodeLogForUser(request)
          body = send_request('GetChaincodeLogForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetChaincodeLogForUserResponse.new
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

        # 获取通道列表

        # @param request: Request instance for GetChannelListForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetChannelListForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetChannelListForUserResponse`
        def GetChannelListForUser(request)
          body = send_request('GetChannelListForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetChannelListForUserResponse.new
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

        # 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。

        # @param request: Request instance for GetClusterListForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetClusterListForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetClusterListForUserResponse`
        def GetClusterListForUser(request)
          body = send_request('GetClusterListForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetClusterListForUserResponse.new
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

        # 获取区块链网络概要

        # @param request: Request instance for GetClusterSummary.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetClusterSummaryRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetClusterSummaryResponse`
        def GetClusterSummary(request)
          body = send_request('GetClusterSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetClusterSummaryResponse.new
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

        # Invoke异步调用结果查询

        # @param request: Request instance for GetInvokeTx.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetInvokeTxRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetInvokeTxResponse`
        def GetInvokeTx(request)
          body = send_request('GetInvokeTx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetInvokeTxResponse.new
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

        # 获取最新交易列表

        # @param request: Request instance for GetLatesdTransactionList.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetLatesdTransactionListRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetLatesdTransactionListResponse`
        def GetLatesdTransactionList(request)
          body = send_request('GetLatesdTransactionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLatesdTransactionListResponse.new
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

        # 获取节点日志

        # @param request: Request instance for GetPeerLogForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetPeerLogForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetPeerLogForUserResponse`
        def GetPeerLogForUser(request)
          body = send_request('GetPeerLogForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPeerLogForUserResponse.new
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

        # 版本升级

        # Bcos根据交易哈希查看交易详细信息

        # @param request: Request instance for GetTransByHashHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetTransByHashHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetTransByHashHandlerResponse`
        def GetTransByHashHandler(request)
          body = send_request('GetTransByHashHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTransByHashHandlerResponse.new
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

        # 版本升级

        # Bcos分页查询当前群组的交易信息列表

        # @param request: Request instance for GetTransListHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetTransListHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetTransListHandlerResponse`
        def GetTransListHandler(request)
          body = send_request('GetTransListHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTransListHandlerResponse.new
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

        # 获取交易详情

        # @param request: Request instance for GetTransactionDetailForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetTransactionDetailForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetTransactionDetailForUserResponse`
        def GetTransactionDetailForUser(request)
          body = send_request('GetTransactionDetailForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTransactionDetailForUserResponse.new
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

        # 实例化合约

        # @param request: Request instance for InitializeChaincodeForUser.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InitializeChaincodeForUserRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InitializeChaincodeForUserResponse`
        def InitializeChaincodeForUser(request)
          body = send_request('InitializeChaincodeForUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitializeChaincodeForUserResponse.new
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

        # 新增交易

        # @param request: Request instance for Invoke.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InvokeRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InvokeResponse`
        def Invoke(request)
          body = send_request('Invoke', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeResponse.new
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

        # 执行Bcos交易，支持动态部署的合约

        # @param request: Request instance for InvokeBcosTrans.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InvokeBcosTransRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InvokeBcosTransResponse`
        def InvokeBcosTrans(request)
          body = send_request('InvokeBcosTrans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeBcosTransResponse.new
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

        # 查询交易

        # @param request: Request instance for Query.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryResponse`
        def Query(request)
          body = send_request('Query', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryResponse.new
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

        # 版本升级

        # Bcos发送交易

        # @param request: Request instance for SendTransactionHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::SendTransactionHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::SendTransactionHandlerResponse`
        def SendTransactionHandler(request)
          body = send_request('SendTransactionHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendTransactionHandlerResponse.new
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

        # trustsql服务统一接口

        # @param request: Request instance for SrvInvoke.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::SrvInvokeRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::SrvInvokeResponse`
        def SrvInvoke(request)
          body = send_request('SrvInvoke', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SrvInvokeResponse.new
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

        # 版本升级

        # 根据动态部署的合约发送交易

        # @param request: Request instance for TransByDynamicContractHandler.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::TransByDynamicContractHandlerRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::TransByDynamicContractHandlerResponse`
        def TransByDynamicContractHandler(request)
          body = send_request('TransByDynamicContractHandler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransByDynamicContractHandlerResponse.new
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