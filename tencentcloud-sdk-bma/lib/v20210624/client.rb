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
  module Bma
    module V20210624
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-24'
            api_endpoint = 'bma.tencentcloudapi.com'
            sdk_version = 'BMA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加仿冒链接（举报）

        # @param request: Request instance for CreateBPFakeURL.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateBPFakeURLRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateBPFakeURLResponse`
        def CreateBPFakeURL(request)
          body = send_request('CreateBPFakeURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFakeURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加误报工单

        # @param request: Request instance for CreateBPFalseTicket.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateBPFalseTicketRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateBPFalseTicketResponse`
        def CreateBPFalseTicket(request)
          body = send_request('CreateBPFalseTicket', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPFalseTicketResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加下线材料

        # @param request: Request instance for CreateBPOfflineAttachment.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateBPOfflineAttachmentRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateBPOfflineAttachmentResponse`
        def CreateBPOfflineAttachment(request)
          body = send_request('CreateBPOfflineAttachment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPOfflineAttachmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加下线工单

        # @param request: Request instance for CreateBPOfflineTicket.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateBPOfflineTicketRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateBPOfflineTicketResponse`
        def CreateBPOfflineTicket(request)
          body = send_request('CreateBPOfflineTicket', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPOfflineTicketResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加保护网站

        # @param request: Request instance for CreateBPProtectURLs.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateBPProtectURLsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateBPProtectURLsResponse`
        def CreateBPProtectURLs(request)
          body = send_request('CreateBPProtectURLs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBPProtectURLsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建协查处置

        # @param request: Request instance for CreateCRBlock.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRBlockRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRBlockResponse`
        def CreateCRBlock(request)
          body = send_request('CreateCRBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRBlockResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于企业认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可

        # @param request: Request instance for CreateCRCompanyVerify.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyResponse`
        def CreateCRCompanyVerify(request)
          body = send_request('CreateCRCompanyVerify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRCompanyVerifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建过程取证码

        # @param request: Request instance for CreateCRDesktopCode.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRDesktopCodeRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRDesktopCodeResponse`
        def CreateCRDesktopCode(request)
          body = send_request('CreateCRDesktopCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRDesktopCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-新建取证接口

        # @param request: Request instance for CreateCRObtain.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRObtainRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRObtainResponse`
        def CreateCRObtain(request)
          body = send_request('CreateCRObtain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRObtainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-新建发函接口

        # @param request: Request instance for CreateCRRight.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRRightRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRRightResponse`
        def CreateCRRight(request)
          body = send_request('CreateCRRight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRRightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 权属文件添加

        # @param request: Request instance for CreateCRRightFile.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRRightFileRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRRightFileResponse`
        def CreateCRRightFile(request)
          body = send_request('CreateCRRightFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRRightFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 举报侵权链接

        # @param request: Request instance for CreateCRTort.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRTortRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRTortResponse`
        def CreateCRTort(request)
          body = send_request('CreateCRTort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRTortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于个人认证，新接入用户必须认证后才可以进行后续操作（个人认证和企业认证二选一），只需认证一次即可

        # @param request: Request instance for CreateCRUserVerify.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRUserVerifyRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRUserVerifyResponse`
        def CreateCRUserVerify(request)
          body = send_request('CreateCRUserVerify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRUserVerifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建作品

        # @param request: Request instance for CreateCRWork.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRWorkRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRWorkResponse`
        def CreateCRWork(request)
          body = send_request('CreateCRWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业信息

        # @param request: Request instance for DescribeBPCompanyInfo.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeBPCompanyInfoRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeBPCompanyInfoResponse`
        def DescribeBPCompanyInfo(request)
          body = send_request('DescribeBPCompanyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBPCompanyInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仿冒链接

        # @param request: Request instance for DescribeBPFakeURLs.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeBPFakeURLsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeBPFakeURLsResponse`
        def DescribeBPFakeURLs(request)
          body = send_request('DescribeBPFakeURLs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBPFakeURLsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询保护网站

        # @param request: Request instance for DescribeBPProtectURLs.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeBPProtectURLsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeBPProtectURLsResponse`
        def DescribeBPProtectURLs(request)
          body = send_request('DescribeBPProtectURLs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBPProtectURLsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询举报列表

        # @param request: Request instance for DescribeBPReportFakeURLs.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeBPReportFakeURLsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeBPReportFakeURLsResponse`
        def DescribeBPReportFakeURLs(request)
          body = send_request('DescribeBPReportFakeURLs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBPReportFakeURLsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-查询作品监测详情接口

        # @param request: Request instance for DescribeCRMonitorDetail.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorDetailRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorDetailResponse`
        def DescribeCRMonitorDetail(request)
          body = send_request('DescribeCRMonitorDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRMonitorDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-查询监测列表接口

        # @param request: Request instance for DescribeCRMonitors.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorsResponse`
        def DescribeCRMonitors(request)
          body = send_request('DescribeCRMonitors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRMonitorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询取证详情

        # @param request: Request instance for DescribeCRObtainDetail.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRObtainDetailRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRObtainDetailResponse`
        def DescribeCRObtainDetail(request)
          body = send_request('DescribeCRObtainDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRObtainDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询作品基本信息

        # @param request: Request instance for DescribeCRWorkInfo.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoResponse`
        def DescribeCRWorkInfo(request)
          body = send_request('DescribeCRWorkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRWorkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改下线材料

        # @param request: Request instance for ModifyBPOfflineAttachment.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyBPOfflineAttachmentRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyBPOfflineAttachmentResponse`
        def ModifyBPOfflineAttachment(request)
          body = send_request('ModifyBPOfflineAttachment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBPOfflineAttachmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 协查处置申请

        # @param request: Request instance for ModifyCRBlockStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRBlockStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRBlockStatusResponse`
        def ModifyCRBlockStatus(request)
          body = send_request('ModifyCRBlockStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRBlockStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启/关闭监测

        # @param request: Request instance for ModifyCRMonitor.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRMonitorRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRMonitorResponse`
        def ModifyCRMonitor(request)
          body = send_request('ModifyCRMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取证申请

        # @param request: Request instance for ModifyCRObtainStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRObtainStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRObtainStatusResponse`
        def ModifyCRObtainStatus(request)
          body = send_request('ModifyCRObtainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRObtainStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发函申请

        # @param request: Request instance for ModifyCRRightStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRRightStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRRightStatusResponse`
        def ModifyCRRightStatus(request)
          body = send_request('ModifyCRRightStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRRightStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改白名单列表

        # @param request: Request instance for ModifyCRWhiteList.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRWhiteListRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRWhiteListResponse`
        def ModifyCRWhiteList(request)
          body = send_request('ModifyCRWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRWhiteListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新作品

        # @param request: Request instance for UpdateCRWork.
        # @type request: :class:`Tencentcloud::bma::V20210624::UpdateCRWorkRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::UpdateCRWorkResponse`
        def UpdateCRWork(request)
          body = send_request('UpdateCRWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCRWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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