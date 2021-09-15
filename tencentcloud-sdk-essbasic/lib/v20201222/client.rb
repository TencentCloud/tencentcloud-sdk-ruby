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
    module V20201222
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-22'
            api_endpoint = 'essbasic.tencentcloudapi.com'
            sdk_version = 'ESSBASIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口（ArchiveFlow）用于流程的归档。

        # 注意：归档后的流程不可再进行发送、签署、拒签、撤回等一系列操作。

        # @param request: Request instance for ArchiveFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ArchiveFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ArchiveFlowResponse`
        def ArchiveFlow(request)
          body = send_request('ArchiveFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ArchiveFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CancelFlow）用于撤销正在进行中的流程。

        # 注：已归档流程不可完成撤销动作。

        # @param request: Request instance for CancelFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CancelFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CancelFlowResponse`
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

        # 该接口为第三方平台向电子签平台验证银行卡二要素

        # @param request: Request instance for CheckBankCard2EVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard2EVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard2EVerificationResponse`
        def CheckBankCard2EVerification(request)
          body = send_request('CheckBankCard2EVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBankCard2EVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证银行卡三要素

        # @param request: Request instance for CheckBankCard3EVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard3EVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard3EVerificationResponse`
        def CheckBankCard3EVerification(request)
          body = send_request('CheckBankCard3EVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBankCard3EVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证银行卡四要素

        # @param request: Request instance for CheckBankCard4EVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard4EVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckBankCard4EVerificationResponse`
        def CheckBankCard4EVerification(request)
          body = send_request('CheckBankCard4EVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBankCard4EVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证银行卡二/三/四要素
        # 银行卡二要素(同CheckBankCard2EVerification): bank_card + name
        # 银行卡三要素(同CheckBankCard3EVerification): bank_card + name + id_card_number
        # 银行卡四要素(同CheckBankCard4EVerification): bank_card + name + id_card_number + mobile

        # @param request: Request instance for CheckBankCardVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckBankCardVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckBankCardVerificationResponse`
        def CheckBankCardVerification(request)
          body = send_request('CheckBankCardVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBankCardVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台检测慧眼或腾讯电子签小程序人脸核身结果

        # @param request: Request instance for CheckFaceIdentify.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckFaceIdentifyRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckFaceIdentifyResponse`
        def CheckFaceIdentify(request)
          body = send_request('CheckFaceIdentify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckFaceIdentifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证姓名和身份证信息

        # @param request: Request instance for CheckIdCardVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckIdCardVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckIdCardVerificationResponse`
        def CheckIdCardVerification(request)
          body = send_request('CheckIdCardVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIdCardVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证手机号二要素

        # @param request: Request instance for CheckMobileAndName.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckMobileAndNameRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckMobileAndNameResponse`
        def CheckMobileAndName(request)
          body = send_request('CheckMobileAndName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckMobileAndNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台验证手机号三要素

        # @param request: Request instance for CheckMobileVerification.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckMobileVerificationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckMobileVerificationResponse`
        def CheckMobileVerification(request)
          body = send_request('CheckMobileVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckMobileVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于确认验证码是否正确

        # @param request: Request instance for CheckVerifyCodeMatchFlowId.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CheckVerifyCodeMatchFlowIdRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CheckVerifyCodeMatchFlowIdResponse`
        def CheckVerifyCodeMatchFlowId(request)
          body = send_request('CheckVerifyCodeMatchFlowId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckVerifyCodeMatchFlowIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台获取慧眼慧眼API签名

        # @param request: Request instance for CreateFaceIdSign.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateFaceIdSignRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateFaceIdSignResponse`
        def CreateFaceIdSign(request)
          body = send_request('CreateFaceIdSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFaceIdSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateFlowByFiles）用于通过PDF文件创建签署流程。

        # 注意：调用此接口前，请先调用多文件上传接口 (UploadFiles)，提前上传合同文件。

        # @param request: Request instance for CreateFlowByFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateFlowByFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateFlowByFilesResponse`
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

        # 该接口为第三方平台向电子签平台获取慧眼H5人脸核身Url

        # @param request: Request instance for CreateH5FaceIdUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateH5FaceIdUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateH5FaceIdUrlResponse`
        def CreateH5FaceIdUrl(request)
          body = send_request('CreateH5FaceIdUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateH5FaceIdUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreatePreviewSignUrl）用于生成生成预览签署URL。

        # 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。

        # @param request: Request instance for CreatePreviewSignUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreatePreviewSignUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreatePreviewSignUrlResponse`
        def CreatePreviewSignUrl(request)
          body = send_request('CreatePreviewSignUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePreviewSignUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateSeal）用于创建个人/企业印章。

        # 注意：使用FileId参数指定印章，需先调用多文件上传 (UploadFiles) 上传印章图片。

        # @param request: Request instance for CreateSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateSealResponse`
        def CreateSeal(request)
          body = send_request('CreateSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateServerFlowSign）用于静默签署文件。

        # 注：
        # 1、此接口为白名单接口，调用前请提前与客服经理或邮件至e-contract@tencent.com进行联系。
        # 2、仅合同发起者可使用流程静默签署能力。

        # @param request: Request instance for CreateServerFlowSign.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateServerFlowSignRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateServerFlowSignResponse`
        def CreateServerFlowSign(request)
          body = send_request('CreateServerFlowSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServerFlowSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateSignUrl）用于生成指定用户的签署URL。

        # 注：调用此接口前，请确保您已提前调用了发送流程接口（SendFlow）指定相关签署方。

        # @param request: Request instance for CreateSignUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateSignUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateSignUrlResponse`
        def CreateSignUrl(request)
          body = send_request('CreateSignUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSignUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateSubOrganization）用于在腾讯电子签内注册子机构。

        # @param request: Request instance for CreateSubOrganization.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateSubOrganizationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateSubOrganizationResponse`
        def CreateSubOrganization(request)
          body = send_request('CreateSubOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateSubOrganizationAndSeal）用于注册子机构，同时系统将为该子企业自动生成一个默认电子印章图片。

        # 注意：
        # 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的印章图片进行签署。
        # 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。

        # @param request: Request instance for CreateSubOrganizationAndSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateSubOrganizationAndSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateSubOrganizationAndSealResponse`
        def CreateSubOrganizationAndSeal(request)
          body = send_request('CreateSubOrganizationAndSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubOrganizationAndSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（CreateUser）用于注册腾讯电子签个人用户。

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方应用可通过此接口（CreateUserAndSeal）注册腾讯电子签实名个人用户，同时系统将为该用户自动生成一个默认电子签名图片。

        # 注意：
        # 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的签名图片进行签署。
        # 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。

        # @param request: Request instance for CreateUserAndSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::CreateUserAndSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::CreateUserAndSealResponse`
        def CreateUserAndSeal(request)
          body = send_request('CreateUserAndSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserAndSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口 (DeleteSeal) 用于删除指定ID的印章。

        # 注意：默认印章不支持删除

        # @param request: Request instance for DeleteSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DeleteSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DeleteSealResponse`
        def DeleteSeal(request)
          body = send_request('DeleteSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方应用可通过此接口（DescribeCatalogApprovers）查询指定目录的参与者列表

        # @param request: Request instance for DescribeCatalogApprovers.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeCatalogApproversRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeCatalogApproversResponse`
        def DescribeCatalogApprovers(request)
          body = send_request('DescribeCatalogApprovers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCatalogApproversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方应用可通过此接口（DescribeCatalogSignComponents）拉取目录签署区

        # @param request: Request instance for DescribeCatalogSignComponents.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeCatalogSignComponentsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeCatalogSignComponentsResponse`
        def DescribeCatalogSignComponents(request)
          body = send_request('DescribeCatalogSignComponents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCatalogSignComponentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeCustomFlowIds）用于通过自定义流程id来查询对应的电子签流程id

        # @param request: Request instance for DescribeCustomFlowIds.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeCustomFlowIdsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeCustomFlowIdsResponse`
        def DescribeCustomFlowIds(request)
          body = send_request('DescribeCustomFlowIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomFlowIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeCustomFlowIdsByFlowId）用于根据流程id反查自定义流程id

        # @param request: Request instance for DescribeCustomFlowIdsByFlowId.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeCustomFlowIdsByFlowIdRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeCustomFlowIdsByFlowIdResponse`
        def DescribeCustomFlowIdsByFlowId(request)
          body = send_request('DescribeCustomFlowIdsByFlowId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomFlowIdsByFlowIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台获取慧眼人脸核身照片

        # @param request: Request instance for DescribeFaceIdPhotos.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFaceIdPhotosRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFaceIdPhotosResponse`
        def DescribeFaceIdPhotos(request)
          body = send_request('DescribeFaceIdPhotos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFaceIdPhotosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为第三方平台向电子签平台获取慧眼人脸核身结果

        # @param request: Request instance for DescribeFaceIdResults.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFaceIdResultsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFaceIdResultsResponse`
        def DescribeFaceIdResults(request)
          body = send_request('DescribeFaceIdResults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFaceIdResultsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据用户自定义id查询文件id

        # @param request: Request instance for DescribeFileIdsByCustomIds.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFileIdsByCustomIdsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFileIdsByCustomIdsResponse`
        def DescribeFileIdsByCustomIds(request)
          body = send_request('DescribeFileIdsByCustomIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileIdsByCustomIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeFileUrls）用于获取签署文件下载的URL。

        # @param request: Request instance for DescribeFileUrls.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFileUrlsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFileUrlsResponse`
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

        # 通过此接口（DescribeFlow）可查询签署流程的详细信息。

        # @param request: Request instance for DescribeFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowResponse`
        def DescribeFlow(request)
          body = send_request('DescribeFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方应用可通过此接口（DescribeFlowApprovers）查询流程参与者信息。

        # @param request: Request instance for DescribeFlowApprovers.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowApproversRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowApproversResponse`
        def DescribeFlowApprovers(request)
          body = send_request('DescribeFlowApprovers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowApproversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流程文件

        # @param request: Request instance for DescribeFlowFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeFlowFilesResponse`
        def DescribeFlowFiles(request)
          body = send_request('DescribeFlowFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeSeals）用于查询指定ID的印章信息。

        # @param request: Request instance for DescribeSeals.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeSealsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeSealsResponse`
        def DescribeSeals(request)
          body = send_request('DescribeSeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSealsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeSubOrganizations）用于查询子机构信息。

        # 注：此接口仅可查询您所属机构应用号创建的子机构信息，不可跨应用/跨机构查询。

        # @param request: Request instance for DescribeSubOrganizations.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeSubOrganizationsRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeSubOrganizationsResponse`
        def DescribeSubOrganizations(request)
          body = send_request('DescribeSubOrganizations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubOrganizationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（DescribeUsers）用于查询应用号下的个人用户信息。

        # 注：此接口仅可查询您所属机构应用号创建的个人用户信息，不可跨应用/跨机构查询。

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过此接口（DestroyFlowFile）可删除指定流程中的合同文件。

        # 注：调用此接口前，请确保此流程已属于归档状态。您可通过查询流程信息接口（DescribeFlow）进行查询。

        # @param request: Request instance for DestroyFlowFile.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::DestroyFlowFileRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::DestroyFlowFileResponse`
        def DestroyFlowFile(request)
          body = send_request('DestroyFlowFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyFlowFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 生成企业电子印章

        # @param request: Request instance for GenerateOrganizationSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::GenerateOrganizationSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::GenerateOrganizationSealResponse`
        def GenerateOrganizationSeal(request)
          body = send_request('GenerateOrganizationSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateOrganizationSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（GenerateUserSeal）用于生成个人签名图片。

        # 注意：
        # 1. 个人签名由用户注册时预留的姓名信息生成，不支持自定义签名内容。
        # 2. 个人用户仅支持拥有一个系统生成的电子签名。

        # @param request: Request instance for GenerateUserSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::GenerateUserSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::GenerateUserSealResponse`
        def GenerateUserSeal(request)
          body = send_request('GenerateUserSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateUserSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口 (ModifyOrganizationDefaultSeal) 用于重新指定企业默认印章。

        # @param request: Request instance for ModifyOrganizationDefaultSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ModifyOrganizationDefaultSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ModifyOrganizationDefaultSealResponse`
        def ModifyOrganizationDefaultSeal(request)
          body = send_request('ModifyOrganizationDefaultSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOrganizationDefaultSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ModifySeal）用于修改指定印章ID的印章图片和名称。

        # 注：印章类型暂不支持修改，如需调整，请联系客服经理或通过创建印章接口（CreateSeal）进行创建新印章。

        # @param request: Request instance for ModifySeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ModifySealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ModifySealResponse`
        def ModifySeal(request)
          body = send_request('ModifySeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ModifySubOrganizationInfo）用于更新子机构信息。

        # 注：若修改子机构名称或更新机构证件照片，需要重新通过子机构实名接口（VerifySubOrganization）进行重新实名。

        # @param request: Request instance for ModifySubOrganizationInfo.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ModifySubOrganizationInfoRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ModifySubOrganizationInfoResponse`
        def ModifySubOrganizationInfo(request)
          body = send_request('ModifySubOrganizationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubOrganizationInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（ModifyUser）用于更新个人用户信息。

        # 注：若修改用户姓名，需要重新通过个人用户实名接口（VerifyUser）进行重新实名。

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ModifyUserResponse`
        def ModifyUser(request)
          body = send_request('ModifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口 (ModifyUserDefaultSeal) 用于重新指定个人默认印章。

        # @param request: Request instance for ModifyUserDefaultSeal.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::ModifyUserDefaultSealRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::ModifyUserDefaultSealResponse`
        def ModifyUserDefaultSeal(request)
          body = send_request('ModifyUserDefaultSeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserDefaultSealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（RejectFlow）用于用户拒绝签署合同流程。

        # @param request: Request instance for RejectFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::RejectFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::RejectFlowResponse`
        def RejectFlow(request)
          body = send_request('RejectFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（SendFlow）用于指定签署者及签署内容，后续可通过生成签署接口（CreateSignUrl）获取签署url。

        # @param request: Request instance for SendFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::SendFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::SendFlowResponse`
        def SendFlow(request)
          body = send_request('SendFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送流程并获取签署URL

        # @param request: Request instance for SendFlowUrl.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::SendFlowUrlRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::SendFlowUrlResponse`
        def SendFlowUrl(request)
          body = send_request('SendFlowUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendFlowUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口用于发送签署验证码

        # @param request: Request instance for SendSignInnerVerifyCode.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::SendSignInnerVerifyCodeRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::SendSignInnerVerifyCodeResponse`
        def SendSignInnerVerifyCode(request)
          body = send_request('SendSignInnerVerifyCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendSignInnerVerifyCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口（SignFlow）可用于对流程文件进行签署。

        # @param request: Request instance for SignFlow.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::SignFlowRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::SignFlowResponse`
        def SignFlow(request)
          body = send_request('SignFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for UploadFiles.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::UploadFilesRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::UploadFilesResponse`
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

        # 此接口（VerifySubOrganization）用于通过子机构的实名认证。

        # 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。

        # @param request: Request instance for VerifySubOrganization.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::VerifySubOrganizationRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::VerifySubOrganizationResponse`
        def VerifySubOrganization(request)
          body = send_request('VerifySubOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifySubOrganizationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 第三方应用可通过此接口（VerifyUser）将腾讯电子签个人用户的实名认证状态设为通过。

        # 注：此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。

        # @param request: Request instance for VerifyUser.
        # @type request: :class:`Tencentcloud::essbasic::V20201222::VerifyUserRequest`
        # @rtype: :class:`Tencentcloud::essbasic::V20201222::VerifyUserResponse`
        def VerifyUser(request)
          body = send_request('VerifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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