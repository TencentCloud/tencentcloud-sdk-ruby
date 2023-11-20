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


        # 批量申请长安链用户签名证书

        # @param request: Request instance for ApplyChainMakerBatchUserCert.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::ApplyChainMakerBatchUserCertRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::ApplyChainMakerBatchUserCertResponse`
        def ApplyChainMakerBatchUserCert(request)
          body = send_request('ApplyChainMakerBatchUserCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyChainMakerBatchUserCertResponse.new
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

        # 获取Fabric某区块的详细信息

        # @param request: Request instance for DescribeFabricBlock.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::DescribeFabricBlockRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::DescribeFabricBlockResponse`
        def DescribeFabricBlock(request)
          body = send_request('DescribeFabricBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFabricBlockResponse.new
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

        # 获取Fabric交易的详细信息

        # @param request: Request instance for DescribeFabricTransaction.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::DescribeFabricTransactionRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::DescribeFabricTransactionResponse`
        def DescribeFabricTransaction(request)
          body = send_request('DescribeFabricTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFabricTransactionResponse.new
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

        # 获取最新交易列表（已废弃）

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

        # 获取fabric最新交易列表

        # @param request: Request instance for GetLatestTransactionList.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::GetLatestTransactionListRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::GetLatestTransactionListResponse`
        def GetLatestTransactionList(request)
          body = send_request('GetLatestTransactionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLatestTransactionListResponse.new
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

        # 调用长安链合约执行交易

        # @param request: Request instance for InvokeChainMakerContract.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InvokeChainMakerContractRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InvokeChainMakerContractResponse`
        def InvokeChainMakerContract(request)
          body = send_request('InvokeChainMakerContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeChainMakerContractResponse.new
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

        # 调用长安链体验网络合约执行交易

        # @param request: Request instance for InvokeChainMakerDemoContract.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InvokeChainMakerDemoContractRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InvokeChainMakerDemoContractResponse`
        def InvokeChainMakerDemoContract(request)
          body = send_request('InvokeChainMakerDemoContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeChainMakerDemoContractResponse.new
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

        # 调用Fabric用户合约执行交易

        # @param request: Request instance for InvokeFabricChaincode.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::InvokeFabricChaincodeRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::InvokeFabricChaincodeResponse`
        def InvokeFabricChaincode(request)
          body = send_request('InvokeFabricChaincode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeFabricChaincodeResponse.new
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

        # 查询长安链指定高度区块的交易

        # @param request: Request instance for QueryChainMakerBlockTransaction.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerBlockTransactionRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerBlockTransactionResponse`
        def QueryChainMakerBlockTransaction(request)
          body = send_request('QueryChainMakerBlockTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerBlockTransactionResponse.new
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

        # 调用长安链合约查询

        # @param request: Request instance for QueryChainMakerContract.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerContractRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerContractResponse`
        def QueryChainMakerContract(request)
          body = send_request('QueryChainMakerContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerContractResponse.new
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

        # 查询长安链体验网络指定高度区块的交易

        # @param request: Request instance for QueryChainMakerDemoBlockTransaction.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoBlockTransactionRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoBlockTransactionResponse`
        def QueryChainMakerDemoBlockTransaction(request)
          body = send_request('QueryChainMakerDemoBlockTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerDemoBlockTransactionResponse.new
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

        # 调用长安链体验网络合约查询

        # @param request: Request instance for QueryChainMakerDemoContract.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoContractRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoContractResponse`
        def QueryChainMakerDemoContract(request)
          body = send_request('QueryChainMakerDemoContract', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerDemoContractResponse.new
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

        # 通过交易ID查询长安链体验网络交易

        # @param request: Request instance for QueryChainMakerDemoTransaction.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoTransactionRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerDemoTransactionResponse`
        def QueryChainMakerDemoTransaction(request)
          body = send_request('QueryChainMakerDemoTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerDemoTransactionResponse.new
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

        # 通过交易ID查询长安链交易

        # @param request: Request instance for QueryChainMakerTransaction.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerTransactionRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryChainMakerTransactionResponse`
        def QueryChainMakerTransaction(request)
          body = send_request('QueryChainMakerTransaction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChainMakerTransactionResponse.new
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

        # 调用Fabric用户合约查询

        # @param request: Request instance for QueryFabricChaincode.
        # @type request: :class:`Tencentcloud::tbaas::V20180416::QueryFabricChaincodeRequest`
        # @rtype: :class:`Tencentcloud::tbaas::V20180416::QueryFabricChaincodeResponse`
        def QueryFabricChaincode(request)
          body = send_request('QueryFabricChaincode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFabricChaincodeResponse.new
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


      end
    end
  end
end