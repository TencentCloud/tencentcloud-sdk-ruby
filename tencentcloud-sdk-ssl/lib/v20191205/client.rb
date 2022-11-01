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
  module Ssl
    module V20191205
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-12-05'
            api_endpoint = 'ssl.tencentcloudapi.com'
            sdk_version = 'SSL_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（ApplyCertificate）用于免费证书申请。

        # @param request: Request instance for ApplyCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ApplyCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ApplyCertificateResponse`
        def ApplyCertificate(request)
          body = send_request('ApplyCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消证书订单。

        # @param request: Request instance for CancelCertificateOrder.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CancelCertificateOrderRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CancelCertificateOrderResponse`
        def CancelCertificateOrder(request)
          body = send_request('CancelCertificateOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelCertificateOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CheckCertificateChain）用于检查证书链是否完整。

        # @param request: Request instance for CheckCertificateChain.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CheckCertificateChainRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CheckCertificateChainResponse`
        def CheckCertificateChain(request)
          body = send_request('CheckCertificateChain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCertificateChainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交证书订单。

        # @param request: Request instance for CommitCertificateInformation.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CommitCertificateInformationRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CommitCertificateInformationResponse`
        def CommitCertificateInformation(request)
          body = send_request('CommitCertificateInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitCertificateInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CompleteCertificate）用于主动触发证书验证。仅非DNSPod和Wotrus品牌证书支持使用此接口。

        # @param request: Request instance for CompleteCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CompleteCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CompleteCertificateResponse`
        def CompleteCertificate(request)
          body = send_request('CompleteCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompleteCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateCertificate）用于创建付费证书。

        # @param request: Request instance for CreateCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CreateCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CreateCertificateResponse`
        def CreateCertificate(request)
          body = send_request('CreateCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCertificate）用于删除证书。

        # @param request: Request instance for DeleteCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeleteCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeleteCertificateResponse`
        def DeleteCertificate(request)
          body = send_request('DeleteCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除管理人

        # @param request: Request instance for DeleteManager.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeleteManagerRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeleteManagerResponse`
        def DeleteManager(request)
          body = send_request('DeleteManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificate）用于获取证书信息。

        # @param request: Request instance for DescribeCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateResponse`
        def DescribeCertificate(request)
          body = send_request('DescribeCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取证书详情。

        # @param request: Request instance for DescribeCertificateDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateDetailResponse`
        def DescribeCertificateDetail(request)
          body = send_request('DescribeCertificateDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户账号下有关证书的操作日志。

        # @param request: Request instance for DescribeCertificateOperateLogs.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateOperateLogsRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateOperateLogsResponse`
        def DescribeCertificateOperateLogs(request)
          body = send_request('DescribeCertificateOperateLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateOperateLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificates）用于获取证书列表。

        # @param request: Request instance for DescribeCertificates.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificatesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificatesResponse`
        def DescribeCertificates(request)
          body = send_request('DescribeCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 证书查询关联资源

        # @param request: Request instance for DescribeDeployedResources.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeDeployedResourcesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeDeployedResourcesResponse`
        def DescribeDeployedResources(request)
          body = send_request('DescribeDeployedResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployedResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询管理人详情

        # @param request: Request instance for DescribeManagerDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeManagerDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeManagerDetailResponse`
        def DescribeManagerDetail(request)
          body = send_request('DescribeManagerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeManagerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询管理人列表

        # @param request: Request instance for DescribeManagers.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeManagersRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeManagersResponse`
        def DescribeManagers(request)
          body = send_request('DescribeManagers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeManagersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获得权益包列表

        # @param request: Request instance for DescribePackages.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribePackagesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribePackagesResponse`
        def DescribePackages(request)
          body = send_request('DescribePackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DownloadCertificate）用于下载证书。

        # @param request: Request instance for DownloadCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DownloadCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DownloadCertificateResponse`
        def DownloadCertificate(request)
          body = send_request('DownloadCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源托管

        # @param request: Request instance for HostCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::HostCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::HostCertificateResponse`
        def HostCertificate(request)
          body = send_request('HostCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HostCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户传入证书id和备注来修改证书备注。

        # @param request: Request instance for ModifyCertificateAlias.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateAliasRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateAliasResponse`
        def ModifyCertificateAlias(request)
          body = send_request('ModifyCertificateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改证书所属项目。

        # @param request: Request instance for ModifyCertificateProject.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateProjectRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateProjectResponse`
        def ModifyCertificateProject(request)
          body = send_request('ModifyCertificateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改忽略证书到期通知。打开或关闭证书到期通知。

        # @param request: Request instance for ModifyCertificatesExpiringNotificationSwitch.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificatesExpiringNotificationSwitchRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificatesExpiringNotificationSwitchResponse`
        def ModifyCertificatesExpiringNotificationSwitch(request)
          body = send_request('ModifyCertificatesExpiringNotificationSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificatesExpiringNotificationSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。

        # @param request: Request instance for ReplaceCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ReplaceCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ReplaceCertificateResponse`
        def ReplaceCertificate(request)
          body = send_request('ReplaceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RevokeCertificate）用于吊销证书。

        # @param request: Request instance for RevokeCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::RevokeCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::RevokeCertificateResponse`
        def RevokeCertificate(request)
          body = send_request('RevokeCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新提交审核管理人

        # @param request: Request instance for SubmitAuditManager.
        # @type request: :class:`Tencentcloud::ssl::V20191205::SubmitAuditManagerRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::SubmitAuditManagerResponse`
        def SubmitAuditManager(request)
          body = send_request('SubmitAuditManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitAuditManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交证书资料。输入参数信息可以分多次提交，但提交的证书资料应最低限度保持完整。

        # @param request: Request instance for SubmitCertificateInformation.
        # @type request: :class:`Tencentcloud::ssl::V20191205::SubmitCertificateInformationRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::SubmitCertificateInformationResponse`
        def SubmitCertificateInformation(request)
          body = send_request('SubmitCertificateInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitCertificateInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UploadCertificate）用于上传证书。

        # @param request: Request instance for UploadCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadCertificateResponse`
        def UploadCertificate(request)
          body = send_request('UploadCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UploadConfirmLetter）用于上传证书确认函。

        # @param request: Request instance for UploadConfirmLetter.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadConfirmLetterRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadConfirmLetterResponse`
        def UploadConfirmLetter(request)
          body = send_request('UploadConfirmLetter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadConfirmLetterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UploadRevokeLetter）用于上传证书吊销确认函。

        # @param request: Request instance for UploadRevokeLetter.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadRevokeLetterRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadRevokeLetterResponse`
        def UploadRevokeLetter(request)
          body = send_request('UploadRevokeLetter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadRevokeLetterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新核验管理人

        # @param request: Request instance for VerifyManager.
        # @type request: :class:`Tencentcloud::ssl::V20191205::VerifyManagerRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::VerifyManagerResponse`
        def VerifyManager(request)
          body = send_request('VerifyManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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