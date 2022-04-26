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
  module Ess
    module V20201111
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-11'
            api_endpoint = 'ess.tencentcloudapi.com'
            sdk_version = 'ESS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用于撤销流程

        # @param request: Request instance for CancelFlow.
        # @type request: :class:`Tencentcloud::ess::V20201111::CancelFlowRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CancelFlowResponse`
        def CancelFlow(request)
          body = send_request('CancelFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建电子文档

        # @param request: Request instance for CreateDocument.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateDocumentRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateDocumentResponse`
        def CreateDocument(request)
          body = send_request('CreateDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDocumentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建签署流程

        # @param request: Request instance for CreateFlow.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateFlowRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateFlowResponse`
        def CreateFlow(request)
          body = send_request('CreateFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建流程。

        # @param request: Request instance for CreateFlowByFiles.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateFlowByFilesRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateFlowByFilesResponse`
        def CreateFlowByFiles(request)
          body = send_request('CreateFlowByFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowByFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取小程序跳转链接

        # @param request: Request instance for CreateSchemeUrl.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateSchemeUrlRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateSchemeUrlResponse`
        def CreateSchemeUrl(request)
          body = send_request('CreateSchemeUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSchemeUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询文件下载URL

        # @param request: Request instance for DescribeFileUrls.
        # @type request: :class:`Tencentcloud::ess::V20201111::DescribeFileUrlsRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::DescribeFileUrlsResponse`
        def DescribeFileUrls(request)
          body = send_request('DescribeFileUrls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileUrlsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流程摘要

        # @param request: Request instance for DescribeFlowBriefs.
        # @type request: :class:`Tencentcloud::ess::V20201111::DescribeFlowBriefsRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::DescribeFlowBriefsResponse`
        def DescribeFlowBriefs(request)
          body = send_request('DescribeFlowBriefs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowBriefsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过AuthCode查询用户是否实名

        # @param request: Request instance for DescribeThirdPartyAuthCode.
        # @type request: :class:`Tencentcloud::ess::V20201111::DescribeThirdPartyAuthCodeRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::DescribeThirdPartyAuthCodeResponse`
        def DescribeThirdPartyAuthCode(request)
          body = send_request('DescribeThirdPartyAuthCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeThirdPartyAuthCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于发起流程

        # @param request: Request instance for StartFlow.
        # @type request: :class:`Tencentcloud::ess::V20201111::StartFlowRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::StartFlowResponse`
        def StartFlow(request)
          body = send_request('StartFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（UploadFiles）用于文件上传。
        # 调用时需要设置Domain 为 file.ess.tencent.cn，设置Version为2020-12-22

        # @param request: Request instance for UploadFiles.
        # @type request: :class:`Tencentcloud::ess::V20201111::UploadFilesRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::UploadFilesResponse`
        def UploadFiles(request)
          body = send_request('UploadFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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