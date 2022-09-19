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


        # 用于撤销签署流程
        # 适用场景：如果某个合同流程当前至少还有一方没有签署，则可通过该接口取消该合同流程。常用于合同发错、内容填错，需要及时撤销的场景。
        # 注：如果合同流程中的参与方均已签署完毕，则无法通过该接口撤销合同。

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

        # 此接口（CancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。

        # @param request: Request instance for CancelMultiFlowSignQRCode.
        # @type request: :class:`Tencentcloud::ess::V20201111::CancelMultiFlowSignQRCodeRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CancelMultiFlowSignQRCodeResponse`
        def CancelMultiFlowSignQRCode(request)
          body = send_request('CancelMultiFlowSignQRCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelMultiFlowSignQRCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 电子签企业版：指定需要批量撤回的签署流程Id，获取批量撤销链接
        # 客户指定需要撤回的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤回合同的链接，通过链接跳转到电子签小程序完成批量撤回

        # @param request: Request instance for CreateBatchCancelFlowUrl.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateBatchCancelFlowUrlRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateBatchCancelFlowUrlResponse`
        def CreateBatchCancelFlowUrl(request)
          body = send_request('CreateBatchCancelFlowUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBatchCancelFlowUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建文件转换任务

        # @param request: Request instance for CreateConvertTaskApi.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateConvertTaskApiRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateConvertTaskApiResponse`
        def CreateConvertTaskApi(request)
          body = send_request('CreateConvertTaskApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConvertTaskApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建签署流程电子文档
        # 适用场景：见创建签署流程接口。

        # 注：该接口需要给对应的流程指定一个模板id，并且填充该模板中需要补充的信息。是“发起流程”接口的前置接口。

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
        # 适用场景：在标准制式的合同场景中，可通过提前预制好模板文件，每次调用模板文件的id，补充合同内容信息及签署信息生成电子合同。
        # 注：该接口是通过模板生成合同流程的前置接口，先创建一个不包含签署文件的流程。配合“创建电子文档”接口和“发起流程”接口使用。

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

        # 补充签署流程本企业签署人信息
        # 适用场景：在通过模板或者文件发起合同时，若未指定本企业签署人信息，则流程发起后，可以调用此接口补充签署人。
        # 同一签署人可以补充多个员工作为候选签署人,最终签署人取决于谁先领取合同完成签署。

        # 注：目前暂时只支持补充来源于企业微信的员工作为候选签署人

        # @param request: Request instance for CreateFlowApprovers.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateFlowApproversRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateFlowApproversResponse`
        def CreateFlowApprovers(request)
          body = send_request('CreateFlowApprovers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowApproversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateFlowByFiles）用来通过上传后的pdf资源编号来创建待签署的合同流程。
        # 适用场景1：适用非制式的合同文件签署。一般开发者自己有完整的签署文件，可以通过该接口传入完整的PDF文件及流程信息生成待签署的合同流程。
        # 适用场景2：可通过该接口传入制式合同文件，同时在指定位置添加签署控件。可以起到接口创建临时模板的效果。如果是标准的制式文件，建议使用模板功能生成模板ID进行合同流程的生成。
        # 注意事项：该接口需要依赖“多文件上传”接口生成pdf资源编号（FileIds）进行使用。

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

        # 【描述】：创建出证报告，返回报告 URL
        # 【注意】：此接口需要通过添加白名单获取调用权限，请联系运营人员加白

        # @param request: Request instance for CreateFlowEvidenceReport.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateFlowEvidenceReportRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateFlowEvidenceReportResponse`
        def CreateFlowEvidenceReport(request)
          body = send_request('CreateFlowEvidenceReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowEvidenceReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交企业签署流程审批结果
        # 适用场景:
        # 在通过接口(CreateFlow 或者CreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true，且发起方企业作为签署方参与了流程签署，则可以调用此接口提交企业内部签署审批结果。
        # 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。

        # @param request: Request instance for CreateFlowSignReview.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateFlowSignReviewRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateFlowSignReviewResponse`
        def CreateFlowSignReview(request)
          body = send_request('CreateFlowSignReview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowSignReviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateMultiFlowSignQRCode）用于创建一码多扫流程签署二维码。
        # 适用场景：无需填写签署人信息，可通过模板id生成签署二维码，签署人可通过扫描二维码补充签署信息进行实名签署。常用于提前不知道签署人的身份信息场景，例如：劳务工招工、大批量员工入职等场景。
        # 适用的模板仅限于B2C（1、无序签署，2、顺序签署时B静默签署，3、顺序签署时B非首位签署）、单C的模板，且模板中发起方没有填写控件。

        # @param request: Request instance for CreateMultiFlowSignQRCode.
        # @type request: :class:`Tencentcloud::ess::V20201111::CreateMultiFlowSignQRCodeRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::CreateMultiFlowSignQRCodeResponse`
        def CreateMultiFlowSignQRCode(request)
          body = send_request('CreateMultiFlowSignQRCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiFlowSignQRCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 适用场景：如果需要签署人在自己的APP、小程序、H5应用中签署，可以通过此接口获取跳转腾讯电子签小程序的签署跳转链接。

        # 注：如果签署人是在PC端扫码签署，可以通过生成跳转链接自主转换成二维码，让签署人在PC端扫码签署。


        # 跳转到小程序的实现，参考官方文档（分为<a href="https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html">全屏</a>、<a href="https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html">半屏</a>两种方式）


        # 如您需要自主配置小程序跳转链接，请参考: <a href="https://cloud.tencent.com/document/product/1323/74774">跳转小程序链接配置说明</a>

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
        # 适用场景：通过传参合同流程编号，下载对应的合同PDF文件流到本地。

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
        # 适用场景：可用于主动查询某个合同流程的签署状态信息。可以配合回调通知使用。
        # 日调用量默认10W

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

        # 查询合同详情
        # 适用场景：可用于主动查询某个合同详情信息。

        # @param request: Request instance for DescribeFlowInfo.
        # @type request: :class:`Tencentcloud::ess::V20201111::DescribeFlowInfoRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::DescribeFlowInfoResponse`
        def DescribeFlowInfo(request)
          body = send_request('DescribeFlowInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 二期接口-查询模板
        # 适用场景：当模板较多或模板中的控件较多时，可以通过查询模板接口更方便的获取自己主体下的模板列表，以及每个模板内的控件信息。该接口常用来配合“创建电子文档”接口作为前置的接口使用。

        # @param request: Request instance for DescribeFlowTemplates.
        # @type request: :class:`Tencentcloud::ess::V20201111::DescribeFlowTemplatesRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::DescribeFlowTemplatesResponse`
        def DescribeFlowTemplates(request)
          body = send_request('DescribeFlowTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询转换任务状态

        # @param request: Request instance for GetTaskResultApi.
        # @type request: :class:`Tencentcloud::ess::V20201111::GetTaskResultApiRequest`
        # @rtype: :class:`Tencentcloud::ess::V20201111::GetTaskResultApiResponse`
        def GetTaskResultApi(request)
          body = send_request('GetTaskResultApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskResultApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # 适用场景：见创建签署流程接口。
        # 注：该接口是“创建电子文档”接口的后置接口，用于激活包含完整合同信息（模板及内容信息）的流程。激活后的流程就是一份待签署的电子合同。

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
        # 适用场景：用于生成pdf资源编号（FileIds）来配合“用PDF创建流程”接口使用，使用场景可详见“用PDF创建流程”接口说明。
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