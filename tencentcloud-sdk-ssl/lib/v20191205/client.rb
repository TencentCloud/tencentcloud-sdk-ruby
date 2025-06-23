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

        # 取消证书审核

        # @param request: Request instance for CancelAuditCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CancelAuditCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CancelAuditCertificateResponse`
        def CancelAuditCertificate(request)
          body = send_request('CancelAuditCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelAuditCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 付费提交证书资料

        # @param request: Request instance for CertificateInfoSubmit.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CertificateInfoSubmitRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CertificateInfoSubmitResponse`
        def CertificateInfoSubmit(request)
          body = send_request('CertificateInfoSubmit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CertificateInfoSubmitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交付费证书订单

        # @param request: Request instance for CertificateOrderSubmit.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CertificateOrderSubmitRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CertificateOrderSubmitResponse`
        def CertificateOrderSubmit(request)
          body = send_request('CertificateOrderSubmit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CertificateOrderSubmitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 检查证书域名验证结果

        # @param request: Request instance for CheckCertificateDomainVerification.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CheckCertificateDomainVerificationRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CheckCertificateDomainVerificationResponse`
        def CheckCertificateDomainVerification(request)
          body = send_request('CheckCertificateDomainVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCertificateDomainVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据证书内容检测当前账号下是否存在一致的证书， 存在则返回证书ID， 不存在则返回空

        # @param request: Request instance for CheckCertificateExist.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CheckCertificateExistRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CheckCertificateExistResponse`
        def CheckCertificateExist(request)
          body = send_request('CheckCertificateExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCertificateExistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 付费证书提交订单； 本接口不维护新功能， 可使用新接口进行提交， [CertificateOrderSubmit](https://cloud.tencent.com/document/product/400/116032)

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

        # 本接口（CompleteCertificate）用于主动触发证书验证。DNSPod和Wotrus品牌的证书不支持使用此接口。

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

        # 创建证书绑定关联云资源异步任务， 该接口用于查询证书关联云资源。 若证书ID已存在查询云资源任务，则结果返回该任务ID。关联云资源类型，支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）、cos。查询关联云资源结果使用DescribeCertificateBindResourceTaskResult接口

        # @param request: Request instance for CreateCertificateBindResourceSyncTask.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CreateCertificateBindResourceSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CreateCertificateBindResourceSyncTaskResponse`
        def CreateCertificateBindResourceSyncTask(request)
          body = send_request('CreateCertificateBindResourceSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCertificateBindResourceSyncTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用权益点创建证书

        # @param request: Request instance for CreateCertificateByPackage.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CreateCertificateByPackageRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CreateCertificateByPackageResponse`
        def CreateCertificateByPackage(request)
          body = send_request('CreateCertificateByPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCertificateByPackageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 批量删除证书，删除证书前支持查询证书是否关联了腾讯云云资源 （需自定义配置参数，参数名称：IsSync）

        # @param request: Request instance for DeleteCertificates.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeleteCertificatesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeleteCertificatesResponse`
        def DeleteCertificates(request)
          body = send_request('DeleteCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 证书部署到云资源实例列表，本接口只会创建部署任务， 部署任务结果可通过DescribeHostDeployRecordDetail查询。本接口创建部署任务时，会校验证书和部署实例的匹配关系，存在不匹配的则会创建部署任务失败。以下为匹配关系校验规则：
        # - 若待部署的证书和传入实例域名的当前绑定的证书一致， 则不会创建成功
        # - 若待部署的证书和传入域名不匹配， 则不会创建成功
        # - 若部署clb实例时， 7层监听器下无规则，则不会创建成功
        # - 若部署clb实例时， 7层监听器未开启SNI，该监听器下存在任一域名和证书不匹配， 则不会创建成功
        # - 若部署clb实例时，监听器规则为正则表示式， 则不会创建成功

        # <dx-alert infotype="explain" title="">一个证书ID，相同的资源类型，只能创建一个部署任务，必须等部署任务执行完成，才能创建新的部署任务</dx-alert>

        # @param request: Request instance for DeployCertificateInstance.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeployCertificateInstanceRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeployCertificateInstanceResponse`
        def DeployCertificateInstance(request)
          body = send_request('DeployCertificateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployCertificateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源部署重试部署记录

        # @param request: Request instance for DeployCertificateRecordRetry.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeployCertificateRecordRetryRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeployCertificateRecordRetryResponse`
        def DeployCertificateRecordRetry(request)
          body = send_request('DeployCertificateRecordRetry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployCertificateRecordRetryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源部署成功记录回滚， 部署失败的记录不会回滚； 接口调用成功后， 会创建一个用于回滚的部署任务， 并返回该任务的ID

        # @param request: Request instance for DeployCertificateRecordRollback.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeployCertificateRecordRollbackRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeployCertificateRecordRollbackResponse`
        def DeployCertificateRecordRollback(request)
          body = send_request('DeployCertificateRecordRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployCertificateRecordRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询CreateCertificateBindResourceSyncTask任务结果， 返回证书关联云资源异步任务结果， 支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）、cos

        # @param request: Request instance for DescribeCertificateBindResourceTaskDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateBindResourceTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateBindResourceTaskDetailResponse`
        def DescribeCertificateBindResourceTaskDetail(request)
          body = send_request('DescribeCertificateBindResourceTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateBindResourceTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询CreateCertificateBindResourceSyncTask任务结果， 返回证书关联云资源异步任务结果， 支持以下云资源：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）、cos

        # @param request: Request instance for DescribeCertificateBindResourceTaskResult.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateBindResourceTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateBindResourceTaskResultResponse`
        def DescribeCertificateBindResourceTaskResult(request)
          body = send_request('DescribeCertificateBindResourceTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateBindResourceTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询公司列表

        # @param request: Request instance for DescribeCompanies.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCompaniesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCompaniesResponse`
        def DescribeCompanies(request)
          body = send_request('DescribeCompanies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompaniesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询批量删除任务结果

        # @param request: Request instance for DescribeDeleteCertificatesTaskResult.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeDeleteCertificatesTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeDeleteCertificatesTaskResultResponse`
        def DescribeDeleteCertificatesTaskResult(request)
          body = send_request('DescribeDeleteCertificatesTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeleteCertificatesTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 证书查询关联资源， 最新查询接口请使用CreateCertificateBindResourceSyncTask， 可以查询更多支持的云资源

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

        # 获取下载证书链接

        # @param request: Request instance for DescribeDownloadCertificateUrl.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeDownloadCertificateUrlRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeDownloadCertificateUrlResponse`
        def DescribeDownloadCertificateUrl(request)
          body = send_request('DescribeDownloadCertificateUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDownloadCertificateUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书apiGateway云资源部署实例列表

        # @param request: Request instance for DescribeHostApiGatewayInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostApiGatewayInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostApiGatewayInstanceListResponse`
        def DescribeHostApiGatewayInstanceList(request)
          body = send_request('DescribeHostApiGatewayInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostApiGatewayInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书cdn云资源部署实例列表

        # @param request: Request instance for DescribeHostCdnInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostCdnInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostCdnInstanceListResponse`
        def DescribeHostCdnInstanceList(request)
          body = send_request('DescribeHostCdnInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostCdnInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书clb云资源部署实例列表

        # @param request: Request instance for DescribeHostClbInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostClbInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostClbInstanceListResponse`
        def DescribeHostClbInstanceList(request)
          body = send_request('DescribeHostClbInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostClbInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书cos云资源部署实例列表

        # @param request: Request instance for DescribeHostCosInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostCosInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostCosInstanceListResponse`
        def DescribeHostCosInstanceList(request)
          body = send_request('DescribeHostCosInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostCosInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书ddos云资源部署实例列表

        # @param request: Request instance for DescribeHostDdosInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostDdosInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostDdosInstanceListResponse`
        def DescribeHostDdosInstanceList(request)
          body = send_request('DescribeHostDdosInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostDdosInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书云资源部署记录列表

        # @param request: Request instance for DescribeHostDeployRecord.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostDeployRecordRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostDeployRecordResponse`
        def DescribeHostDeployRecord(request)
          body = send_request('DescribeHostDeployRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostDeployRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书云资源部署记录详情列表

        # @param request: Request instance for DescribeHostDeployRecordDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostDeployRecordDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostDeployRecordDetailResponse`
        def DescribeHostDeployRecordDetail(request)
          body = send_request('DescribeHostDeployRecordDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostDeployRecordDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书Lighthouse云资源部署实例列表

        # @param request: Request instance for DescribeHostLighthouseInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostLighthouseInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostLighthouseInstanceListResponse`
        def DescribeHostLighthouseInstanceList(request)
          body = send_request('DescribeHostLighthouseInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostLighthouseInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书live云资源部署实例列表

        # @param request: Request instance for DescribeHostLiveInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostLiveInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostLiveInstanceListResponse`
        def DescribeHostLiveInstanceList(request)
          body = send_request('DescribeHostLiveInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostLiveInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书EdgeOne云资源部署实例列表

        # @param request: Request instance for DescribeHostTeoInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostTeoInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostTeoInstanceListResponse`
        def DescribeHostTeoInstanceList(request)
          body = send_request('DescribeHostTeoInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostTeoInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书tke云资源部署实例列表

        # @param request: Request instance for DescribeHostTkeInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostTkeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostTkeInstanceListResponse`
        def DescribeHostTkeInstanceList(request)
          body = send_request('DescribeHostTkeInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostTkeInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书云资源更新记录列表

        # @param request: Request instance for DescribeHostUpdateRecord.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostUpdateRecordRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostUpdateRecordResponse`
        def DescribeHostUpdateRecord(request)
          body = send_request('DescribeHostUpdateRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostUpdateRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书云资源更新记录详情

        # @param request: Request instance for DescribeHostUpdateRecordDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostUpdateRecordDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostUpdateRecordDetailResponse`
        def DescribeHostUpdateRecordDetail(request)
          body = send_request('DescribeHostUpdateRecordDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostUpdateRecordDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书云资源更新（证书ID不变）记录列表

        # @param request: Request instance for DescribeHostUploadUpdateRecord.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostUploadUpdateRecordRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostUploadUpdateRecordResponse`
        def DescribeHostUploadUpdateRecord(request)
          body = send_request('DescribeHostUploadUpdateRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostUploadUpdateRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书更新（证书ID不变）部署记录详情

        # @param request: Request instance for DescribeHostUploadUpdateRecordDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostUploadUpdateRecordDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostUploadUpdateRecordDetailResponse`
        def DescribeHostUploadUpdateRecordDetail(request)
          body = send_request('DescribeHostUploadUpdateRecordDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostUploadUpdateRecordDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书Vod云资源部署实例列表

        # @param request: Request instance for DescribeHostVodInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostVodInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostVodInstanceListResponse`
        def DescribeHostVodInstanceList(request)
          body = send_request('DescribeHostVodInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostVodInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询证书waf云资源部署实例列表

        # @param request: Request instance for DescribeHostWafInstanceList.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeHostWafInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeHostWafInstanceListResponse`
        def DescribeHostWafInstanceList(request)
          body = send_request('DescribeHostWafInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostWafInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 针对审核失败或审核取消的付费证书，重新发起审核

        # @param request: Request instance for ModifyCertificateResubmit.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateResubmitRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateResubmitResponse`
        def ModifyCertificateResubmit(request)
          body = send_request('ModifyCertificateResubmit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateResubmitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 付费证书提交资料； 本接口不维护新功能， 可使用新接口进行资料提交， [CertificateInfoSubmit](https://cloud.tencent.com/document/product/400/116033)

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

        # 一键更新旧证书资源，本接口为异步接口， 调用之后DeployRecordId为0表示任务进行中， 重复请求这个接口， 当返回DeployRecordId大于0则表示任务创建成功。 未创建成功则会抛出异常

        # @param request: Request instance for UpdateCertificateInstance.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateInstanceRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateInstanceResponse`
        def UpdateCertificateInstance(request)
          body = send_request('UpdateCertificateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCertificateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源更新重试部署记录

        # @param request: Request instance for UpdateCertificateRecordRetry.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateRecordRetryRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateRecordRetryResponse`
        def UpdateCertificateRecordRetry(request)
          body = send_request('UpdateCertificateRecordRetry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCertificateRecordRetryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源更新成功记录回滚， 只对更新已成功的记录回滚

        # @param request: Request instance for UpdateCertificateRecordRollback.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateRecordRollbackRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UpdateCertificateRecordRollbackResponse`
        def UpdateCertificateRecordRollback(request)
          body = send_request('UpdateCertificateRecordRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCertificateRecordRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（UploadConfirmLetter）上传证书确认函，不再维护其功能，请用户前往腾讯云证书控制台上传证书确认函

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

        # 本接口（UploadRevokeLetter）上传证书吊销确认函，不再维护其功能，请用户前往腾讯云证书控制台上传证书吊销确认函

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

        # 更新证书内容（证书ID不变）并更新关联的云资源，本接口为异步接口， 调用之后DeployRecordId为0表示任务进行中， 重复请求这个接口， 当返回DeployRecordId大于0则表示任务创建成功。 未创建成功则会抛出异常

        # @param request: Request instance for UploadUpdateCertificateInstance.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateInstanceRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateInstanceResponse`
        def UploadUpdateCertificateInstance(request)
          body = send_request('UploadUpdateCertificateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadUpdateCertificateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源更新（证书ID不变）重试部署记录

        # @param request: Request instance for UploadUpdateCertificateRecordRetry.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateRecordRetryRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateRecordRetryResponse`
        def UploadUpdateCertificateRecordRetry(request)
          body = send_request('UploadUpdateCertificateRecordRetry', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadUpdateCertificateRecordRetryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云资源更新成功（证书ID不变）记录回滚， 会对全量任务进行回滚

        # @param request: Request instance for UploadUpdateCertificateRecordRollback.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateRecordRollbackRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadUpdateCertificateRecordRollbackResponse`
        def UploadUpdateCertificateRecordRollback(request)
          body = send_request('UploadUpdateCertificateRecordRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadUpdateCertificateRecordRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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