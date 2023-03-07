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
  module Intlpartnersmgt
    module V20220928
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-09-28'
            api_endpoint = 'intlpartnersmgt.tencentcloudapi.com'
            sdk_version = 'INTLPARTNERSMGT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 合作伙伴可以为关联客户设置信用额度，包括调高额度、降低额度、设置额度为0
        # 1、信用额度长期有效，不会定期清0；
        # 2、可用信用额度为0，会触发客户停服，请谨慎操作；
        # 3、如需限制客户新购，但不影响已购产品使用，可与渠道经理申请客户欠费不停服特权后，设置可用信用额度为0；
        # 4、设置的额度，为当前可用信用额度的增量，最大不能超过合作伙伴可分配的剩余额度，设置负数代表回收额度，可用信用额度最低设置为0。

        # @param request: Request instance for AllocateCustomerCredit.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::AllocateCustomerCreditRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::AllocateCustomerCreditResponse`
        def AllocateCustomerCredit(request)
          body = send_request('AllocateCustomerCredit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateCustomerCreditResponse.new
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

        # 在合作伙伴平台，创建腾讯云账号，子客户注册完成后，自动与合作伙伴账号绑定。

        # 注意事项：<br>
        # 1、创建腾讯云账号，输入的邮箱、手机号，需要合作伙伴做有效性验证。<br>
        # 2、客户首次登录需要补充个人信息

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::CreateAccountResponse`
        def CreateAccount(request)
          body = send_request('CreateAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountResponse.new
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

        # 获取国家和地区的代码

        # @param request: Request instance for GetCountryCodes.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::GetCountryCodesRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::GetCountryCodesResponse`
        def GetCountryCodes(request)
          body = send_request('GetCountryCodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCountryCodesResponse.new
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

        # 查询单个客户的全部历史分配记录

        # @param request: Request instance for QueryCreditAllocationHistory.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCreditAllocationHistoryRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCreditAllocationHistoryResponse`
        def QueryCreditAllocationHistory(request)
          body = send_request('QueryCreditAllocationHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCreditAllocationHistoryResponse.new
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

        # 查询用户列表信用

        # @param request: Request instance for QueryCreditByUinList.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCreditByUinListRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCreditByUinListResponse`
        def QueryCreditByUinList(request)
          body = send_request('QueryCreditByUinList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCreditByUinListResponse.new
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

        # 合作伙伴可以查询关联客户的信用额度，以及客户的基础信息

        # @param request: Request instance for QueryCustomersCredit.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCustomersCreditRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryCustomersCreditResponse`
        def QueryCustomersCredit(request)
          body = send_request('QueryCustomersCredit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCustomersCreditResponse.new
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

        # 查询直接子客信用

        # @param request: Request instance for QueryDirectCustomersCredit.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryDirectCustomersCreditRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryDirectCustomersCreditResponse`
        def QueryDirectCustomersCredit(request)
          body = send_request('QueryDirectCustomersCredit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDirectCustomersCreditResponse.new
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

        # 查询合作伙伴自己的总信用额度、可用信用额度、已使用信用额度，单位为美元

        # @param request: Request instance for QueryPartnerCredit.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryPartnerCreditRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryPartnerCreditResponse`
        def QueryPartnerCredit(request)
          body = send_request('QueryPartnerCredit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryPartnerCreditResponse.new
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

        # 根据客户uin查询代金券额度

        # @param request: Request instance for QueryVoucherAmountByUin.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherAmountByUinRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherAmountByUinResponse`
        def QueryVoucherAmountByUin(request)
          body = send_request('QueryVoucherAmountByUin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryVoucherAmountByUinResponse.new
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

        # 根据客户uin查询代金券列表

        # @param request: Request instance for QueryVoucherListByUin.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherListByUinRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherListByUinResponse`
        def QueryVoucherListByUin(request)
          body = send_request('QueryVoucherListByUin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryVoucherListByUinResponse.new
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

        # 查询代金券额度池

        # @param request: Request instance for QueryVoucherPool.
        # @type request: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherPoolRequest`
        # @rtype: :class:`Tencentcloud::intlpartnersmgt::V20220928::QueryVoucherPoolResponse`
        def QueryVoucherPool(request)
          body = send_request('QueryVoucherPool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryVoucherPoolResponse.new
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