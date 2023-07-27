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
        # 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；

        # **满足撤销条件的合同会发起异步撤销流程，不满足撤销条件的合同返回失败原因。**

        # **合同撤销成功后，会通过合同状态为 CANCEL 的回调消息通知调用方 [具体可参考回调消息](https://qian.tencent.com/developers/scenes/partner/callback_data_types#-%E5%90%88%E5%90%8C%E7%8A%B6%E6%80%81%E9%80%9A%E7%9F%A5---flowstatuschange)**

        # **注意:
        # 能撤回合同的只能是合同的发起人或者发起企业的超管、法人**

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

        # 撤销签署流程接口，可以撤回：未全部签署完成；不可以撤回（终态）：已全部签署完成、已拒签、已过期、已撤回。
        # 注意:
        # 能撤回合同的只能是合同的发起人或者发起企业的超管、法人

        # @param request: Request instance for ChannelCancelFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCancelFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCancelFlowResponse`
        def ChannelCancelFlow(request)
          body = send_request('ChannelCancelFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCancelFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 指定需要批量撤销的签署流程Id，获取批量撤销链接 - 不建议使用此接口，可使用ChannelBatchCancelFlows
        # 客户指定需要撤销的签署流程Id，最多100个，超过100不处理；
        # 接口调用成功返回批量撤销合同的链接，通过链接跳转到电子签小程序完成批量撤销;
        # 可以撤回：未全部签署完成；不可以撤回（终态）：已全部签署完成、已拒签、已过期、已撤回。
        # 注意:
        # 能撤回合同的只能是合同的发起人或者发起企业的超管、法人

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

        # 此接口（ChannelCreateBoundFlows）用于子客领取合同，经办人需要有相应的角色，合同不能重复领取。

        # @param request: Request instance for ChannelCreateBoundFlows.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateBoundFlowsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateBoundFlowsResponse`
        def ChannelCreateBoundFlows(request)
          body = send_request('ChannelCreateBoundFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateBoundFlowsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传了word、excel、图片文件后，通过该接口发起文件转换任务，将word、excel、图片文件转换为pdf文件。

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

        # 本接口（ChannelCreateEmbedWebUrl）用于创建常规模块嵌入web的链接
        # 本接口支持创建：创建印章，创建模板，修改模板，预览模板，预览合同流程的web链接
        # 进入web连接后与当前控制台操作保持一致

        # @param request: Request instance for ChannelCreateEmbedWebUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateEmbedWebUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateEmbedWebUrlResponse`
        def ChannelCreateEmbedWebUrl(request)
          body = send_request('ChannelCreateEmbedWebUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateEmbedWebUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口（ChannelCreateFlowByFiles）用于通过文件创建签署流程。此接口静默签能力不可直接使用，请联系客户经理申请使用

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

        # 接口（ChannelCreateFlowGroupByTemplates）用于通过多模板创建合同组签署流程。

        # @param request: Request instance for ChannelCreateFlowGroupByTemplates.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowGroupByTemplatesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowGroupByTemplatesResponse`
        def ChannelCreateFlowGroupByTemplates(request)
          body = send_request('ChannelCreateFlowGroupByTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowGroupByTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定需要批量催办的签署流程Id，批量催办合同，最多100个；接口失败后返回错误信息
        # 注意:
        # 该接口不可直接调用，请联系客户经理申请使用
        # 仅能催办当前状态为“待签署”的签署人，且只能催办一次

        # @param request: Request instance for ChannelCreateFlowReminds.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowRemindsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowRemindsResponse`
        def ChannelCreateFlowReminds(request)
          body = send_request('ChannelCreateFlowReminds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowRemindsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交企业流程审批结果
        # 目前存在两种审核操作，签署审核，发起审核
        # 签署审核：通过接口（CreateFlowsByTemplates或ChannelCreateFlowByFiles或ChannelCreatePrepareFlow）发起签署流程后，若指定了参数 NeedSignReview 为true,则可以调用此接口，指定operate=SignReview，提交企业内部签署审批结果；若签署流程状态正常，且本企业存在签署方未签署，同一签署流程可以多次提交签署审批结果，签署时的最后一个“审批结果”有效

        # 发起审核：通过接口ChannelCreatePrepareFlow指定发起后需要审核，则可以通过调用此接口，指定operate=CreateReview，提交企业内部审批结果，可多次提交，当通过后，后续提交结果无效

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

        # 创建个人签署H5签署链接，请联系客户经理申请使用<br/>
        # 该接口用于发起合同后，生成C端签署人的签署链接<br/>
        # 注意：该接口目前签署人类型仅支持个人签署方（PERSON）<br/>
        # 注意：该接口可生成签署链接的C端签署人必须仅有手写签名和时间类型的签署控件<br/>
        # 注意：该接口返回的签署链接是用于APP集成的场景，支持APP打开或浏览器直接打开，不支持微信小程序嵌入。微信小程序请使用小程序跳转或半屏弹窗的方式<br/>

        # @param request: Request instance for ChannelCreateFlowSignUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowSignUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateFlowSignUrlResponse`
        def ChannelCreateFlowSignUrl(request)
          body = send_request('ChannelCreateFlowSignUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateFlowSignUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ChannelCreateMultiFlowSignQRCode）用于创建一码多扫流程签署二维码。 适用场景：无需填写签署人信息，可通过模板id生成签署二维码，签署人可通过扫描二维码补充签署信息进行实名签署。常用于提前不知道签署人的身份信息场景，例如：劳务工招工、大批量员工入职等场景。

        # **本接口适用于发起方没有填写控件的 B2C或者单C模板**

        # **若是B2C模板,还要满足以下任意一个条件**

        # - 模板中配置的签署顺序是无序
        # - B端企业的签署方式是静默签署
        # - B端企业是非首位签署

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

        # 生成渠道子客编辑企业信息二维码

        # @param request: Request instance for ChannelCreateOrganizationModifyQrCode.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateOrganizationModifyQrCodeRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateOrganizationModifyQrCodeResponse`
        def ChannelCreateOrganizationModifyQrCode(request)
          body = send_request('ChannelCreateOrganizationModifyQrCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateOrganizationModifyQrCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建预发起合同
        # 通过此接口指定：合同，签署人，填写控件信息，生成预创建合同链接，点击后跳转到web页面完成合同创建并发起
        # 可指定合同信息不可更改，签署人信息不可更改
        # 合同发起后，填写及签署流程与现有操作流程一致
        # 注意：目前仅支持模板发起

        # @param request: Request instance for ChannelCreatePrepareFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreatePrepareFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreatePrepareFlowResponse`
        def ChannelCreatePrepareFlow(request)
          body = send_request('ChannelCreatePrepareFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreatePrepareFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起解除协议，主要应用场景为：基于一份已经签署的合同，进行解除操作。
        # 合同发起人必须在电子签已经进行实名。

        # @param request: Request instance for ChannelCreateReleaseFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateReleaseFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateReleaseFlowResponse`
        def ChannelCreateReleaseFlow(request)
          body = send_request('ChannelCreateReleaseFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateReleaseFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将指定印章授权给第三方平台子客企业下的某些员工

        # @param request: Request instance for ChannelCreateSealPolicy.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateSealPolicyRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateSealPolicyResponse`
        def ChannelCreateSealPolicy(request)
          body = send_request('ChannelCreateSealPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateSealPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口，绑定员工角色，支持以电子签userId、客户系统userId两种方式调用。

        # @param request: Request instance for ChannelCreateUserRoles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateUserRolesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateUserRolesResponse`
        def ChannelCreateUserRoles(request)
          body = send_request('ChannelCreateUserRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateUserRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成页面主题配置

        # @param request: Request instance for ChannelCreateWebThemeConfig.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateWebThemeConfigRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelCreateWebThemeConfigResponse`
        def ChannelCreateWebThemeConfig(request)
          body = send_request('ChannelCreateWebThemeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelCreateWebThemeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口，删除员工绑定的角色，支持以电子签userId、客户系统userId两种方式调用。

        # @param request: Request instance for ChannelDeleteRoleUsers.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDeleteRoleUsersRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDeleteRoleUsersResponse`
        def ChannelDeleteRoleUsers(request)
          body = send_request('ChannelDeleteRoleUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDeleteRoleUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定印章下多个授权信息

        # @param request: Request instance for ChannelDeleteSealPolicies.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDeleteSealPoliciesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDeleteSealPoliciesResponse`
        def ChannelDeleteSealPolicies(request)
          body = send_request('ChannelDeleteSealPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDeleteSealPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业员工列表

        # @param request: Request instance for ChannelDescribeEmployees.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeEmployeesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeEmployeesResponse`
        def ChannelDescribeEmployees(request)
          body = send_request('ChannelDescribeEmployees', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDescribeEmployeesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流程填写控件内容，可以根据流程Id查询该流程相关联的填写控件信息

        # @param request: Request instance for ChannelDescribeFlowComponents.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeFlowComponentsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeFlowComponentsResponse`
        def ChannelDescribeFlowComponents(request)
          body = send_request('ChannelDescribeFlowComponents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDescribeFlowComponentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询子客企业电子印章，需要操作者具有管理印章权限
        # 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。

        # @param request: Request instance for ChannelDescribeOrganizationSeals.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeOrganizationSealsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeOrganizationSealsResponse`
        def ChannelDescribeOrganizationSeals(request)
          body = send_request('ChannelDescribeOrganizationSeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDescribeOrganizationSealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询角色列表，支持根据类型和状态过滤角色列表

        # @param request: Request instance for ChannelDescribeRoles.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeRolesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelDescribeRolesResponse`
        def ChannelDescribeRoles(request)
          body = send_request('ChannelDescribeRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelDescribeRolesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过发起转换任务接口（ChannelCreateConvertTaskApi）返回的任务Id查询转换任务状态，通过本接口确认转换任务是否完成。大文件转换所需的时间可能会比较长。

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

        # 本接口（ChannelUpdateSealStatus）用于第三方应用平台为子客企业更新印章状态

        # @param request: Request instance for ChannelUpdateSealStatus.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelUpdateSealStatusRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelUpdateSealStatusResponse`
        def ChannelUpdateSealStatus(request)
          body = send_request('ChannelUpdateSealStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelUpdateSealStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对流程的合同文件进行验证，判断文件是否合法。

        # @param request: Request instance for ChannelVerifyPdf.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ChannelVerifyPdfRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ChannelVerifyPdfResponse`
        def ChannelVerifyPdf(request)
          body = send_request('ChannelVerifyPdf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChannelVerifyPdfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
        # 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。

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

        # 此接口（CreateConsoleLoginUrl）用于创建第三方平台子客企业控制台Web/移动登录链接。登录链接是子客控制台的唯一入口。
        # 若子客企业未激活，会进入企业激活流程，首次参与激活流程的经办人会成为超管。（若企业激活过程中填写信息有误，需要重置激活流程，可以换一个经办人OpenId获取新的链接进入。）
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

        # 接口（CreateFlowsByTemplates）用于使用模板批量创建签署流程。当前可批量发起合同（签署流程）数量为1-20个。
        # 如若在模板中配置了动态表格, 上传的附件必须为A4大小
        # 合同发起人必须在电子签已经进行实名。

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

        # 通过图片为子客企业代创建印章，图片最大5MB

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

        # 创建跳转小程序查看或签署的链接。

        # 跳转小程序的几种方式：主要是设置不同的EndPoint
        # 1. 通过链接Url直接跳转到小程序，不需要返回
        # 设置EndPoint为WEIXINAPP，得到链接打开即可。（与短信提醒用户签署形式一样）。

        # 2. 通过链接Url打开H5引导页-->点击跳转到小程序-->签署完退出小程序-->回到H5引导页-->跳转到指定JumpUrl
        # 设置EndPoint为CHANNEL，指定JumpUrl，得到链接打开即可。

        # 3. 客户App直接跳转到小程序-->小程序签署完成-->返回App
        # 跳转到小程序的实现，参考官方文档
        # https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/launchApp.html
        # 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
        # 使用CreateSignUrls，设置EndPoint为APP，得到path。

        # 4. 客户小程序直接跳到电子签小程序-->签署完成退出电子签小程序-->回到客户小程序
        # 跳转到小程序的实现，参考官方文档（分为全屏、半屏两种方式）
        # 全屏方式：
        # （https://developers.weixin.qq.com/miniprogram/dev/api/navigate/wx.navigateToMiniProgram.html）
        # 半屏方式：
        # （https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/openEmbeddedMiniProgram.html）
        # 其中小程序的原始Id，请联系<对接技术人员>获取，或者查看小程序信息自助获取。
        # 使用CreateSignUrls，设置EndPoint为APP，得到path。

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

        # 查询出证报告，返回报告 URL。

        # @param request: Request instance for DescribeChannelFlowEvidenceReport.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeChannelFlowEvidenceReportRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeChannelFlowEvidenceReportResponse`
        def DescribeChannelFlowEvidenceReport(request)
          body = send_request('DescribeChannelFlowEvidenceReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChannelFlowEvidenceReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业扩展服务授权信息，企业经办人需要是企业超管或者法人

        # @param request: Request instance for DescribeExtendedServiceAuthInfo.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::DescribeExtendedServiceAuthInfoRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::DescribeExtendedServiceAuthInfoResponse`
        def DescribeExtendedServiceAuthInfo(request)
          body = send_request('DescribeExtendedServiceAuthInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtendedServiceAuthInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 根据签署流程信息批量获取资源下载链接，可以下载签署中、签署完的合同，需合作企业先进行授权。
        # 此接口直接返回下载的资源的url，与接口GetDownloadFlowUrl跳转到控制台的下载方式不同。

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

        # 通过此接口（DescribeTemplates）查询该第三方平台子客企业在电子签拥有的有效模板，不包括第三方平台模板

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

        # 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
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
        # 返回的链接只能使用一次

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

        # 修改（操作）企业扩展服务 ，企业经办人需要是企业超管或者法人

        # @param request: Request instance for ModifyExtendedService.
        # @type request: :class:`Tencentcloud::essbasic::V20210526::ModifyExtendedServiceRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20210526::ModifyExtendedServiceResponse`
        def ModifyExtendedService(request)
          body = send_request('ModifyExtendedService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExtendedServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（OperateChannelTemplate）用于针对第三方应用平台模板库中的模板对子客企业可见性的查询和设置，不会直接分配第三方应用平台模板给子客企业。
        # 1、OperateType=select时：
        # 查询第三方应用平台模板库
        # 2、OperateType=update或者delete时：
        # 对子客企业进行模板库中模板可见性的修改、删除操作。

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
        # 目前该接口只支持B2C，不建议使用，将会废弃。

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

        # 此接口（SyncProxyOrganization）用于同步第三方平台子客企业信息，主要是子客企业的营业执照，便于子客企业开通过程中不用手动上传。若有需要调用此接口，需要在创建控制链接CreateConsoleLoginUrl之后即刻进行调用。

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

        # 此接口（SyncProxyOrganizationOperators）用于同步 第三方平台子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于第三方应用平台的，无法针对员工做新增/更新/离职等操作。
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
        # 其中上传的文件，图片类型(png/jpg/jpeg)大小限制为5M，其他大小限制为60M。
        # 调用时需要设置Domain, 正式环境为 file.ess.tencent.cn。
        # 代码示例：
        # HttpProfile httpProfile = new HttpProfile();
        # httpProfile.setEndpoint("file.test.ess.tencent.cn");

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