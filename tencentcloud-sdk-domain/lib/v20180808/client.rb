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
  module Domain
    module V20180808
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-08-08'
            api_endpoint = 'domain.tencentcloudapi.com'
            sdk_version = 'DOMAIN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 ( BatchModifyDomainInfo ) 用于批量域名信息修改 。

        # @param request: Request instance for BatchModifyDomainInfo.
        # @type request: :class:`Tencentcloud::domain::V20180808::BatchModifyDomainInfoRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::BatchModifyDomainInfoResponse`
        def BatchModifyDomainInfo(request)
          body = send_request('BatchModifyDomainInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyDomainInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( CheckBatchStatus ) 用于查询批量操作日志状态 。

        # @param request: Request instance for CheckBatchStatus.
        # @type request: :class:`Tencentcloud::domain::V20180808::CheckBatchStatusRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CheckBatchStatusResponse`
        def CheckBatchStatus(request)
          body = send_request('CheckBatchStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBatchStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查域名是否可以注册。

        # @param request: Request instance for CheckDomain.
        # @type request: :class:`Tencentcloud::domain::V20180808::CheckDomainRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CheckDomainResponse`
        def CheckDomain(request)
          body = send_request('CheckDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义DNS Host

        # @param request: Request instance for CreateCustomDnsHost.
        # @type request: :class:`Tencentcloud::domain::V20180808::CreateCustomDnsHostRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CreateCustomDnsHostResponse`
        def CreateCustomDnsHost(request)
          body = send_request('CreateCustomDnsHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomDnsHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( CreateDomainBatch ) 用于批量域名注册 。

        # @param request: Request instance for CreateDomainBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::CreateDomainBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CreateDomainBatchResponse`
        def CreateDomainBatch(request)
          body = send_request('CreateDomainBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建赎回订单。

        # @param request: Request instance for CreateDomainRedemption.
        # @type request: :class:`Tencentcloud::domain::V20180808::CreateDomainRedemptionRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CreateDomainRedemptionResponse`
        def CreateDomainRedemption(request)
          body = send_request('CreateDomainRedemption', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainRedemptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于创建有效的手机、邮箱

        # @param request: Request instance for CreatePhoneEmail.
        # @type request: :class:`Tencentcloud::domain::V20180808::CreatePhoneEmailRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CreatePhoneEmailResponse`
        def CreatePhoneEmail(request)
          body = send_request('CreatePhoneEmail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePhoneEmailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( CreateTemplate ) 用于添加域名信息模板 。

        # @param request: Request instance for CreateTemplate.
        # @type request: :class:`Tencentcloud::domain::V20180808::CreateTemplateRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::CreateTemplateResponse`
        def CreateTemplate(request)
          body = send_request('CreateTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义DNS Host

        # @param request: Request instance for DeleteCustomDnsHost.
        # @type request: :class:`Tencentcloud::domain::V20180808::DeleteCustomDnsHostRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DeleteCustomDnsHostResponse`
        def DeleteCustomDnsHost(request)
          body = send_request('DeleteCustomDnsHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomDnsHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于删除已验证的手机邮箱

        # @param request: Request instance for DeletePhoneEmail.
        # @type request: :class:`Tencentcloud::domain::V20180808::DeletePhoneEmailRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DeletePhoneEmailResponse`
        def DeletePhoneEmail(request)
          body = send_request('DeletePhoneEmail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePhoneEmailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( DeleteTemplate ) 用于删除信息模板。

        # @param request: Request instance for DeleteTemplate.
        # @type request: :class:`Tencentcloud::domain::V20180808::DeleteTemplateRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DeleteTemplateResponse`
        def DeleteTemplate(request)
          body = send_request('DeleteTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。

        # @param request: Request instance for DescribeBatchOperationLogDetails.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeBatchOperationLogDetailsRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeBatchOperationLogDetailsResponse`
        def DescribeBatchOperationLogDetails(request)
          body = send_request('DescribeBatchOperationLogDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchOperationLogDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。

        # @param request: Request instance for DescribeBatchOperationLogs.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeBatchOperationLogsRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeBatchOperationLogsResponse`
        def DescribeBatchOperationLogs(request)
          body = send_request('DescribeBatchOperationLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchOperationLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询自定义DNS Host

        # @param request: Request instance for DescribeCustomDnsHostSet.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeCustomDnsHostSetRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeCustomDnsHostSetResponse`
        def DescribeCustomDnsHostSet(request)
          body = send_request('DescribeCustomDnsHostSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomDnsHostSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (  DescribeDomainBaseInfo) 获取域名基本信息。

        # @param request: Request instance for DescribeDomainBaseInfo.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeDomainBaseInfoRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeDomainBaseInfoResponse`
        def DescribeDomainBaseInfo(request)
          body = send_request('DescribeDomainBaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainBaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (  DescribeDomainNameList ) 我的域名列表。

        # @param request: Request instance for DescribeDomainNameList.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeDomainNameListRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeDomainNameListResponse`
        def DescribeDomainNameList(request)
          body = send_request('DescribeDomainNameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainNameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按照域名后缀获取对应的价格列表

        # @param request: Request instance for DescribeDomainPriceList.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeDomainPriceListRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeDomainPriceListResponse`
        def DescribeDomainPriceList(request)
          body = send_request('DescribeDomainPriceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainPriceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名实名信息详情

        # @param request: Request instance for DescribeDomainSimpleInfo.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeDomainSimpleInfoRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeDomainSimpleInfoResponse`
        def DescribeDomainSimpleInfo(request)
          body = send_request('DescribeDomainSimpleInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainSimpleInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取已验证的手机邮箱列表

        # @param request: Request instance for DescribePhoneEmailList.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribePhoneEmailListRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribePhoneEmailListResponse`
        def DescribePhoneEmailList(request)
          body = send_request('DescribePhoneEmailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePhoneEmailListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeTemplate) 用于获取模板信息。

        # @param request: Request instance for DescribeTemplate.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeTemplateRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeTemplateResponse`
        def DescribeTemplate(request)
          body = send_request('DescribeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeTemplateList) 用于获取信息模板列表。

        # @param request: Request instance for DescribeTemplateList.
        # @type request: :class:`Tencentcloud::domain::V20180808::DescribeTemplateListRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::DescribeTemplateListResponse`
        def DescribeTemplateList(request)
          body = send_request('DescribeTemplateList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自定义DNS Host

        # @param request: Request instance for ModifyCustomDnsHost.
        # @type request: :class:`Tencentcloud::domain::V20180808::ModifyCustomDnsHostRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::ModifyCustomDnsHostResponse`
        def ModifyCustomDnsHost(request)
          body = send_request('ModifyCustomDnsHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomDnsHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( ModifyDomainDNSBatch) 用于批量域名 DNS 修改 。

        # @param request: Request instance for ModifyDomainDNSBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::ModifyDomainDNSBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::ModifyDomainDNSBatchResponse`
        def ModifyDomainDNSBatch(request)
          body = send_request('ModifyDomainDNSBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainDNSBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( ModifyDomainOwnerBatch) 用于域名批量账号间转移 。

        # @param request: Request instance for ModifyDomainOwnerBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::ModifyDomainOwnerBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::ModifyDomainOwnerBatchResponse`
        def ModifyDomainOwnerBatch(request)
          body = send_request('ModifyDomainOwnerBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainOwnerBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 国际站-修改DNS Host

        # @param request: Request instance for ModifyIntlCustomDnsHost.
        # @type request: :class:`Tencentcloud::domain::V20180808::ModifyIntlCustomDnsHostRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::ModifyIntlCustomDnsHostResponse`
        def ModifyIntlCustomDnsHost(request)
          body = send_request('ModifyIntlCustomDnsHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIntlCustomDnsHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( RenewDomainBatch ) 用于批量续费域名 。

        # @param request: Request instance for RenewDomainBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::RenewDomainBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::RenewDomainBatchResponse`
        def RenewDomainBatch(request)
          body = send_request('RenewDomainBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDomainBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于发送手机邮箱验证码。

        # @param request: Request instance for SendPhoneEmailCode.
        # @type request: :class:`Tencentcloud::domain::V20180808::SendPhoneEmailCodeRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::SendPhoneEmailCodeResponse`
        def SendPhoneEmailCode(request)
          body = send_request('SendPhoneEmailCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendPhoneEmailCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( SetDomainAutoRenew ) 用于设置域名自动续费。

        # @param request: Request instance for SetDomainAutoRenew.
        # @type request: :class:`Tencentcloud::domain::V20180808::SetDomainAutoRenewRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::SetDomainAutoRenewResponse`
        def SetDomainAutoRenew(request)
          body = send_request('SetDomainAutoRenew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetDomainAutoRenewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步自定义DNS Host

        # @param request: Request instance for SyncCustomDnsHost.
        # @type request: :class:`Tencentcloud::domain::V20180808::SyncCustomDnsHostRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::SyncCustomDnsHostResponse`
        def SyncCustomDnsHost(request)
          body = send_request('SyncCustomDnsHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncCustomDnsHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( TransferInDomainBatch ) 用于批量转入域名 。

        # @param request: Request instance for TransferInDomainBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::TransferInDomainBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::TransferInDomainBatchResponse`
        def TransferInDomainBatch(request)
          body = send_request('TransferInDomainBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransferInDomainBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( TransferProhibitionBatch ) 用于批量禁止域名转移 。

        # @param request: Request instance for TransferProhibitionBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::TransferProhibitionBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::TransferProhibitionBatchResponse`
        def TransferProhibitionBatch(request)
          body = send_request('TransferProhibitionBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransferProhibitionBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( UpdateProhibitionBatch ) 用于批量禁止更新锁。

        # @param request: Request instance for UpdateProhibitionBatch.
        # @type request: :class:`Tencentcloud::domain::V20180808::UpdateProhibitionBatchRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::UpdateProhibitionBatchResponse`
        def UpdateProhibitionBatch(request)
          body = send_request('UpdateProhibitionBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateProhibitionBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( UploadImage ) 用于证件图片上传 。

        # @param request: Request instance for UploadImage.
        # @type request: :class:`Tencentcloud::domain::V20180808::UploadImageRequest`
        # @rtype: :class:`Tencentcloud::domain::V20180808::UploadImageResponse`
        def UploadImage(request)
          body = send_request('UploadImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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