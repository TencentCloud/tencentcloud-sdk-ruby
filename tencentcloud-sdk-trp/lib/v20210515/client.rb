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
  module Trp
    module V20210515
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-15'
            api_endpoint = 'trp.tencentcloudapi.com'
            sdk_version = 'TRP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接收客户侧的用户已授权的号码。

        # @param request: Request instance for AuthorizedTransfer.
        # @type request: :class:`Tencentcloud::trp::V20210515::AuthorizedTransferRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::AuthorizedTransferResponse`
        def AuthorizedTransfer(request)
          body = send_request('AuthorizedTransfer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuthorizedTransferResponse.new
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

        # 新增批次

        # @param request: Request instance for CreateCodeBatch.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateCodeBatchRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateCodeBatchResponse`
        def CreateCodeBatch(request)
          body = send_request('CreateCodeBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCodeBatchResponse.new
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

        # 生成普通码包

        # @param request: Request instance for CreateCodePack.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateCodePackRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateCodePackResponse`
        def CreateCodePack(request)
          body = send_request('CreateCodePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCodePackResponse.new
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

        # 以订单方式新建企业信息/配额信息

        # @param request: Request instance for CreateCorporationOrder.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateCorporationOrderRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateCorporationOrderResponse`
        def CreateCorporationOrder(request)
          body = send_request('CreateCorporationOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCorporationOrderResponse.new
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

        # 生成自定义码包

        # @param request: Request instance for CreateCustomPack.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateCustomPackRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateCustomPackResponse`
        def CreateCustomPack(request)
          body = send_request('CreateCustomPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomPackResponse.new
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

        # 新建自定义码规则

        # @param request: Request instance for CreateCustomRule.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateCustomRuleResponse`
        def CreateCustomRule(request)
          body = send_request('CreateCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomRuleResponse.new
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

        # 新建商户

        # @param request: Request instance for CreateMerchant.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateMerchantRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateMerchantResponse`
        def CreateMerchant(request)
          body = send_request('CreateMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMerchantResponse.new
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

        # 新建商品

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateProductResponse`
        def CreateProduct(request)
          body = send_request('CreateProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProductResponse.new
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

        # 上链溯源信息

        # @param request: Request instance for CreateTraceChain.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateTraceChainRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateTraceChainResponse`
        def CreateTraceChain(request)
          body = send_request('CreateTraceChain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceChainResponse.new
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

        # 批量绑定指定批次并激活二维码，只支持平台发的码，且只会激活没有使用过的码

        # @param request: Request instance for CreateTraceCodes.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateTraceCodesRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateTraceCodesResponse`
        def CreateTraceCodes(request)
          body = send_request('CreateTraceCodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceCodesResponse.new
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

        # 异步导入激活码包，如果是第三方码包，需要域名跟配置的匹配

        # @param request: Request instance for CreateTraceCodesAsync.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateTraceCodesAsyncRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateTraceCodesAsyncResponse`
        def CreateTraceCodesAsync(request)
          body = send_request('CreateTraceCodesAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceCodesAsyncResponse.new
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

        # 新增溯源信息

        # @param request: Request instance for CreateTraceData.
        # @type request: :class:`Tencentcloud::trp::V20210515::CreateTraceDataRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::CreateTraceDataResponse`
        def CreateTraceData(request)
          body = send_request('CreateTraceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceDataResponse.new
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

        # 删除批次

        # @param request: Request instance for DeleteCodeBatch.
        # @type request: :class:`Tencentcloud::trp::V20210515::DeleteCodeBatchRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DeleteCodeBatchResponse`
        def DeleteCodeBatch(request)
          body = send_request('DeleteCodeBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCodeBatchResponse.new
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

        # 删除商户

        # @param request: Request instance for DeleteMerchant.
        # @type request: :class:`Tencentcloud::trp::V20210515::DeleteMerchantRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DeleteMerchantResponse`
        def DeleteMerchant(request)
          body = send_request('DeleteMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMerchantResponse.new
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

        # 删除商品，如果商品被使用，则不可删除

        # @param request: Request instance for DeleteProduct.
        # @type request: :class:`Tencentcloud::trp::V20210515::DeleteProductRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DeleteProductResponse`
        def DeleteProduct(request)
          body = send_request('DeleteProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProductResponse.new
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

        # 删除溯源信息，如果已经上链则不可删除

        # @param request: Request instance for DeleteTraceData.
        # @type request: :class:`Tencentcloud::trp::V20210515::DeleteTraceDataRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DeleteTraceDataResponse`
        def DeleteTraceData(request)
          body = send_request('DeleteTraceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTraceDataResponse.new
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

        # 查询渠道企业列表

        # @param request: Request instance for DescribeAgentCorps.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeAgentCorpsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeAgentCorpsResponse`
        def DescribeAgentCorps(request)
          body = send_request('DescribeAgentCorps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentCorpsResponse.new
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

        # 查询批次信息

        # @param request: Request instance for DescribeCodeBatchById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchByIdResponse`
        def DescribeCodeBatchById(request)
          body = send_request('DescribeCodeBatchById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodeBatchByIdResponse.new
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

        # 查询批次列表

        # @param request: Request instance for DescribeCodeBatches.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchesRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchesResponse`
        def DescribeCodeBatches(request)
          body = send_request('DescribeCodeBatches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodeBatchesResponse.new
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

        # 查询批次列表

        # 旧版接口已经弃用，新业务请使用用新版的接口 DescribeCodeBatches

        # @param request: Request instance for DescribeCodeBatchs.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodeBatchsResponse`
        def DescribeCodeBatchs(request)
          body = send_request('DescribeCodeBatchs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodeBatchsResponse.new
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

        # 查询码包状态

        # @param request: Request instance for DescribeCodePackStatus.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodePackStatusRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodePackStatusResponse`
        def DescribeCodePackStatus(request)
          body = send_request('DescribeCodePackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodePackStatusResponse.new
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

        # 查询码包地址

        # @param request: Request instance for DescribeCodePackUrl.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodePackUrlRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodePackUrlResponse`
        def DescribeCodePackUrl(request)
          body = send_request('DescribeCodePackUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodePackUrlResponse.new
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

        # 查询码包列表

        # @param request: Request instance for DescribeCodePacks.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodePacksRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodePacksResponse`
        def DescribeCodePacks(request)
          body = send_request('DescribeCodePacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodePacksResponse.new
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

        # 查询码包的二维码列表，上限 3 万

        # @param request: Request instance for DescribeCodesByPack.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCodesByPackRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCodesByPackResponse`
        def DescribeCodesByPack(request)
          body = send_request('DescribeCodesByPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCodesByPackResponse.new
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

        # 查询渠道商下属企业额度使用情况

        # @param request: Request instance for DescribeCorpQuotas.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCorpQuotasRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCorpQuotasResponse`
        def DescribeCorpQuotas(request)
          body = send_request('DescribeCorpQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCorpQuotasResponse.new
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

        # 查自定义码规则

        # @param request: Request instance for DescribeCustomRuleById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCustomRuleByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCustomRuleByIdResponse`
        def DescribeCustomRuleById(request)
          body = send_request('DescribeCustomRuleById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRuleByIdResponse.new
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

        # 查自定义码规则列表

        # @param request: Request instance for DescribeCustomRules.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeCustomRulesRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeCustomRulesResponse`
        def DescribeCustomRules(request)
          body = send_request('DescribeCustomRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRulesResponse.new
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

        # 获取异步任务的输出地址

        # @param request: Request instance for DescribeJobFileUrl.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeJobFileUrlRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeJobFileUrlResponse`
        def DescribeJobFileUrl(request)
          body = send_request('DescribeJobFileUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobFileUrlResponse.new
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

        # 查询商户信息

        # @param request: Request instance for DescribeMerchantById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeMerchantByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeMerchantByIdResponse`
        def DescribeMerchantById(request)
          body = send_request('DescribeMerchantById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMerchantByIdResponse.new
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

        # 查询商户列表

        # @param request: Request instance for DescribeMerchants.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeMerchantsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeMerchantsResponse`
        def DescribeMerchants(request)
          body = send_request('DescribeMerchants', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMerchantsResponse.new
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

        # 查询商品信息

        # @param request: Request instance for DescribeProductById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeProductByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeProductByIdResponse`
        def DescribeProductById(request)
          body = send_request('DescribeProductById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductByIdResponse.new
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

        # 查询商品列表

        # @param request: Request instance for DescribeProducts.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeProductsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeProductsResponse`
        def DescribeProducts(request)
          body = send_request('DescribeProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductsResponse.new
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

        # 支持增量查询扫码日志，通常提供给数据同步使用，调用时需要指定从哪一行开始查询数据

        # @param request: Request instance for DescribeRawScanLogs.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeRawScanLogsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeRawScanLogsResponse`
        def DescribeRawScanLogs(request)
          body = send_request('DescribeRawScanLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRawScanLogsResponse.new
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

        # 查询扫码日志明细

        # @param request: Request instance for DescribeScanLogs.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeScanLogsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeScanLogsResponse`
        def DescribeScanLogs(request)
          body = send_request('DescribeScanLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanLogsResponse.new
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

        # 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
        # 没有被扫过的不会返回

        # @param request: Request instance for DescribeScanStats.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeScanStatsRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeScanStatsResponse`
        def DescribeScanStats(request)
          body = send_request('DescribeScanStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanStatsResponse.new
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

        # 查询临时Token，主要用于上传接口

        # @param request: Request instance for DescribeTmpToken.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeTmpTokenRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeTmpTokenResponse`
        def DescribeTmpToken(request)
          body = send_request('DescribeTmpToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTmpTokenResponse.new
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

        # 查询二维码信息

        # @param request: Request instance for DescribeTraceCodeById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeTraceCodeByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeTraceCodeByIdResponse`
        def DescribeTraceCodeById(request)
          body = send_request('DescribeTraceCodeById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceCodeByIdResponse.new
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

        # 查询二维码列表

        # @param request: Request instance for DescribeTraceCodes.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeTraceCodesRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeTraceCodesResponse`
        def DescribeTraceCodes(request)
          body = send_request('DescribeTraceCodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceCodesResponse.new
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

        # 查询溯源ID查溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的

        # @param request: Request instance for DescribeTraceDataById.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeTraceDataByIdRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeTraceDataByIdResponse`
        def DescribeTraceDataById(request)
          body = send_request('DescribeTraceDataById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceDataByIdResponse.new
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

        # 查询溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的

        # @param request: Request instance for DescribeTraceDataList.
        # @type request: :class:`Tencentcloud::trp::V20210515::DescribeTraceDataListRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::DescribeTraceDataListResponse`
        def DescribeTraceDataList(request)
          body = send_request('DescribeTraceDataList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTraceDataListResponse.new
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

        # 接收客户反馈的各环节数据

        # @param request: Request instance for EffectFeedback.
        # @type request: :class:`Tencentcloud::trp::V20210515::EffectFeedbackRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::EffectFeedbackResponse`
        def EffectFeedback(request)
          body = send_request('EffectFeedback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EffectFeedbackResponse.new
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

        # 修改批次

        # @param request: Request instance for ModifyCodeBatch.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyCodeBatchRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyCodeBatchResponse`
        def ModifyCodeBatch(request)
          body = send_request('ModifyCodeBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCodeBatchResponse.new
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

        # 修改自定义码规则

        # @param request: Request instance for ModifyCustomRule.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyCustomRuleResponse`
        def ModifyCustomRule(request)
          body = send_request('ModifyCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomRuleResponse.new
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

        # 更新自定义码规则状态

        # @param request: Request instance for ModifyCustomRuleStatus.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyCustomRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyCustomRuleStatusResponse`
        def ModifyCustomRuleStatus(request)
          body = send_request('ModifyCustomRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomRuleStatusResponse.new
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

        # 编辑商户

        # @param request: Request instance for ModifyMerchant.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyMerchantRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyMerchantResponse`
        def ModifyMerchant(request)
          body = send_request('ModifyMerchant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMerchantResponse.new
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

        # 编辑商品

        # @param request: Request instance for ModifyProduct.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyProductRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyProductResponse`
        def ModifyProduct(request)
          body = send_request('ModifyProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProductResponse.new
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

        # 冻结或者激活二维码，所属的批次的冻结状态优先级大于单个二维码的状态，即如果批次是冻结的，那么该批次下二维码的状态都是冻结的

        # @param request: Request instance for ModifyTraceCode.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyTraceCodeRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyTraceCodeResponse`
        def ModifyTraceCode(request)
          body = send_request('ModifyTraceCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTraceCodeResponse.new
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

        # 解绑溯源码和批次的关系，让溯源码重置为未关联的状态，以便关联其他批次
        # 注意：溯源码必须属于指定的批次才会解绑

        # @param request: Request instance for ModifyTraceCodeUnlink.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyTraceCodeUnlinkRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyTraceCodeUnlinkResponse`
        def ModifyTraceCodeUnlink(request)
          body = send_request('ModifyTraceCodeUnlink', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTraceCodeUnlinkResponse.new
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

        # 修改溯源信息

        # @param request: Request instance for ModifyTraceData.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyTraceDataRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyTraceDataResponse`
        def ModifyTraceData(request)
          body = send_request('ModifyTraceData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTraceDataResponse.new
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

        # 修改溯源信息的排序

        # @param request: Request instance for ModifyTraceDataRanks.
        # @type request: :class:`Tencentcloud::trp::V20210515::ModifyTraceDataRanksRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ModifyTraceDataRanksResponse`
        def ModifyTraceDataRanks(request)
          body = send_request('ModifyTraceDataRanks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTraceDataRanksResponse.new
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

        # 接收离线筛选包回执，用于效果统计和分析。

        # @param request: Request instance for ReportBatchCallbackStatus.
        # @type request: :class:`Tencentcloud::trp::V20210515::ReportBatchCallbackStatusRequest`
        # @rtype: :class:`Tencentcloud::trp::V20210515::ReportBatchCallbackStatusResponse`
        def ReportBatchCallbackStatus(request)
          body = send_request('ReportBatchCallbackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportBatchCallbackStatusResponse.new
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