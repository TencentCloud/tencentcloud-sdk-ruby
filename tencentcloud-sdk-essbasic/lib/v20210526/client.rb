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
  module Essbasic
    module V20210526
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-26'
            api_endpoint = 'essbasic.tencentcloudapi.com'
            sdk_version = 'ESSBASIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 指定需要批量撤销的签署流程Id，批量撤销合同
        # 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；接口失败后返回错误信息

        # @param request: Request instance for ChannelBatchCancelFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelBatchCancelFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelBatchCancelFlowsResponse`
        def ChannelBatchCancelFlows(request)
          body = send_request('ChannelBatchCancelFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelBatchCancelFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。

        # @param request: Request instance for ChannelCancelMultiFlowSignQRCode.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCancelMultiFlowSignQRCodeRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCancelMultiFlowSignQRCodeResponse`
        def ChannelCancelMultiFlowSignQRCode(request)
          body = send_request('ChannelCancelMultiFlowSignQRCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCancelMultiFlowSignQRCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定需要批量撤销的签署流程Id，获取批量撤销链接
        # 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤销合同的链接，通过链接跳转到电子签小程序完成批量撤销

        # @param request: Request instance for ChannelCreateBatchCancelFlowUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateBatchCancelFlowUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateBatchCancelFlowUrlResponse`
        def ChannelCreateBatchCancelFlowUrl(request)
          body = send_request('ChannelCreateBatchCancelFlowUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateBatchCancelFlowUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 渠道创建文件转换任务

        # @param request: Request instance for ChannelCreateConvertTaskApi.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateConvertTaskApiRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateConvertTaskApiResponse`
        def ChannelCreateConvertTaskApi(request)
          body = send_request('ChannelCreateConvertTaskApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateConvertTaskApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口（ChannelCreateFlowByFiles）用于渠道版通过文件创建签署流程。此接口不可直接使用，需要运营申请

        # @param request: Request instance for ChannelCreateFlowByFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowByFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowByFilesResponse`
        def ChannelCreateFlowByFiles(request)
          body = send_request('ChannelCreateFlowByFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowByFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口（ChannelCreateFlowGroupByFiles）用于通过多文件创建合同组签署流程。

        # @param request: Request instance for ChannelCreateFlowGroupByFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowGroupByFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowGroupByFilesResponse`
        def ChannelCreateFlowGroupByFiles(request)
          body = send_request('ChannelCreateFlowGroupByFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowGroupByFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 在通过接口(CreateFlowsByTemplates 或者ChannelCreateFlowByFiles)创建签署流程时，若指定了参数 NeedSignReview 为true,则可以调用此接口提交企业内部签署审批结果。
        # 若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效。

        # @param request: Request instance for ChannelCreateFlowSignReview.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowSignReviewRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowSignReviewResponse`
        def ChannelCreateFlowSignReview(request)
          body = send_request('ChannelCreateFlowSignReview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowSignReviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ChannelCreateMultiFlowSignQRCode）用于创建一码多扫签署流程二维码。
        # 适用的模版仅限于B2C（1、无序签署，2、顺序签署时B静默签署，3、顺序签署时B非首位签署）、单C的模版，且模版中发起方没有填写控件。

        # @param request: Request instance for ChannelCreateMultiFlowSignQRCode.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateMultiFlowSignQRCodeRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateMultiFlowSignQRCodeResponse`
        def ChannelCreateMultiFlowSignQRCode(request)
          body = send_request('ChannelCreateMultiFlowSignQRCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateMultiFlowSignQRCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 渠道版查询转换任务状态

        # @param request: Request instance for ChannelGetTaskResultApi.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelGetTaskResultApiRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelGetTaskResultApiResponse`
        def ChannelGetTaskResultApi(request)
          body = send_request('ChannelGetTaskResultApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelGetTaskResultApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for CreateChannelFlowEvidenceReport.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateChannelFlowEvidenceReportRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateChannelFlowEvidenceReportResponse`
        def CreateChannelFlowEvidenceReport(request)
          body = send_request('CreateChannelFlowEvidenceReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChannelFlowEvidenceReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateConsoleLoginUrl）用于创建渠道子客企业控制台Web端登录链接。Web端登录链接是子客控制台的唯一入口。
        # 若子客企业未激活，会进入企业激活流程,首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
        # 若子客企业已激活，使用了新的经办人OpenId进入，则会进入经办人的实名流程。
        # 若子客企业、经办人均已完成认证，则会直接进入子客Web控制台。

        # @param request: Request instance for CreateConsoleLoginUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateConsoleLoginUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateConsoleLoginUrlResponse`
        def CreateConsoleLoginUrl(request)
          body = send_request('CreateConsoleLoginUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConsoleLoginUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口（CreateFlowsByTemplates）用于使用多个模板批量创建签署流程。当前可批量发起合同（签署流程）数量最大为20个。

        # @param request: Request instance for CreateFlowsByTemplates.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateFlowsByTemplatesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateFlowsByTemplatesResponse`
        def CreateFlowsByTemplates(request)
          body = send_request('CreateFlowsByTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowsByTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 渠道通过图片为子客代创建印章，图片最大5m；此接口不可直接使用，需要运营申请

        # @param request: Request instance for CreateSealByImage.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateSealByImageRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateSealByImageResponse`
        def CreateSealByImage(request)
          body = send_request('CreateSealByImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSealByImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建跳转小程序查看或签署的链接；自动签署的签署方不创建签署链接；

        # @param request: Request instance for CreateSignUrls.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::CreateSignUrlsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::CreateSignUrlsResponse`
        def CreateSignUrls(request)
          body = send_request('CreateSignUrls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSignUrlsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeFlowDetailInfo）用于查询合同(签署流程)的详细信息。

        # @param request: Request instance for DescribeFlowDetailInfo.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeFlowDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeFlowDetailInfoResponse`
        def DescribeFlowDetailInfo(request)
          body = send_request('DescribeFlowDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据签署流程信息批量获取资源下载链接，需合作企业先进行授权

        # @param request: Request instance for DescribeResourceUrlsByFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeResourceUrlsByFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeResourceUrlsByFlowsResponse`
        def DescribeResourceUrlsByFlows(request)
          body = send_request('DescribeResourceUrlsByFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceUrlsByFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口（DescribeTemplates）查询该企业在电子签渠道版中配置的有效模板列表

        # @param request: Request instance for DescribeTemplates.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeTemplatesResponse`
        def DescribeTemplates(request)
          body = send_request('DescribeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
        #  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。

        # @param request: Request instance for DescribeUsage.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeUsageRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeUsageResponse`
        def DescribeUsage(request)
          body = send_request('DescribeUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（GetDownloadFlowUrl）用于创建电子签批量下载地址，让合作企业进入控制台直接下载，支持客户合同（流程）按照自定义文件夹形式 分类下载。
        # 当前接口限制最多合同（流程）50个.

        # @param request: Request instance for GetDownloadFlowUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::GetDownloadFlowUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::GetDownloadFlowUrlResponse`
        def GetDownloadFlowUrl(request)
          body = send_request('GetDownloadFlowUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDownloadFlowUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（OperateChannelTemplate）用于渠道侧将模板库中的模板对合作企业进行查询和设置, 其中包括可见性的修改以及对合作企业的设置.
        # 1、同步标识=select时：
        # 返回渠道侧模板库当前模板的属性.
        # 2、同步标识=update或者delete时：
        # 对渠道子客进行模板库中模板授权,修改操作

        # @param request: Request instance for OperateChannelTemplate.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::OperateChannelTemplateRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::OperateChannelTemplateResponse`
        def OperateChannelTemplate(request)
          body = send_request('OperateChannelTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateChannelTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口 (PrepareFlows) 用于创建待发起文件
        # 用户通过该接口进入签署流程发起的确认页面，进行发起信息二次确认， 如果确认则进行正常发起。
        # 目前该接口只支持B2C，不建议使用。

        # @param request: Request instance for PrepareFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::PrepareFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::PrepareFlowsResponse`
        def PrepareFlows(request)
          body = send_request('PrepareFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PrepareFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（SyncProxyOrganization）用于同步渠道子客企业信息，主要是子客企业的营业执照，便于子客企业开通过程中不用手动上传。若有需要调用此接口，需要在创建控制链接CreateConsoleLoginUrl之后即刻进行调用。

        # @param request: Request instance for SyncProxyOrganization.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationResponse`
        def SyncProxyOrganization(request)
          body = send_request('SyncProxyOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncProxyOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（SyncProxyOrganizationOperators）用于同步渠道子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于渠道平台的，无法针对员工做新增/更新/离职等操作。
        # 若经办人信息有误，或者需要修改，也可以先将之前的经办人做离职操作，然后重新使用控制台链接CreateConsoleLoginUrl让经办人重新实名。

        # @param request: Request instance for SyncProxyOrganizationOperators.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationOperatorsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::SyncProxyOrganizationOperatorsResponse`
        def SyncProxyOrganizationOperators(request)
          body = send_request('SyncProxyOrganizationOperators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncProxyOrganizationOperatorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # 调用时需要设置Domain 为 file.ess.tencent.cn

        # @param request: Request instance for UploadFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::UploadFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::UploadFilesResponse`
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