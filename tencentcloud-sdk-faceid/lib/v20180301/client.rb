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
  module Faceid
    module V20180301
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-03-01'
        @@endpoint = 'faceid.tencentcloudapi.com'
        @@sdk_version = 'FACEID_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口用于校验姓名和银行卡号的真实性和一致性。

        # @param request: Request instance for BankCard2EVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::BankCard2EVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::BankCard2EVerificationResponse`
        def BankCard2EVerification(request)
          body = send_request('BankCard2EVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BankCard2EVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于输入银行卡号、姓名、开户证件号、开户手机号，校验信息的真实性和一致性。

        # @param request: Request instance for BankCard4EVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::BankCard4EVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::BankCard4EVerificationResponse`
        def BankCard4EVerification(request)
          body = send_request('BankCard4EVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BankCard4EVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于银行卡号、姓名、开户证件号信息的真实性和一致性。

        # @param request: Request instance for BankCardVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::BankCardVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::BankCardVerificationResponse`
        def BankCardVerification(request)
          body = send_request('BankCardVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BankCardVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 银行卡基础信息查询

        # @param request: Request instance for CheckBankCardInformation.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CheckBankCardInformationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CheckBankCardInformationResponse`
        def CheckBankCardInformation(request)
          body = send_request('CheckBankCardInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckBankCardInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入身份证人像面照片，识别身份证照片上的信息，并将姓名、身份证号、身份证人像照片与公安权威库的证件照进行比对，是否属于同一个人，从而验证身份证信息的真实性。

        # @param request: Request instance for CheckIdCardInformation.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CheckIdCardInformationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CheckIdCardInformationResponse`
        def CheckIdCardInformation(request)
          body = send_request('CheckIdCardInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIdCardInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验手机号和姓名的真实性和一致性。

        # @param request: Request instance for CheckPhoneAndName.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CheckPhoneAndNameRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CheckPhoneAndNameResponse`
        def CheckPhoneAndName(request)
          body = send_request('CheckPhoneAndName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckPhoneAndNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每次调用人脸核身SaaS化服务前，需先调用本接口获取BizToken，用来串联核身流程，在验证完成后，用于获取验证结果信息。

        # @param request: Request instance for DetectAuth.
        # @type request: :class:`Tencentcloud::faceid::V20180301::DetectAuthRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::DetectAuthResponse`
        def DetectAuth(request)
          body = send_request('DetectAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用动作活体检测模式前，需调用本接口获取动作顺序。

        # @param request: Request instance for GetActionSequence.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetActionSequenceRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetActionSequenceResponse`
        def GetActionSequence(request)
          body = send_request('GetActionSequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetActionSequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。

        # @param request: Request instance for GetDetectInfo.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetDetectInfoRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetDetectInfoResponse`
        def GetDetectInfo(request)
          body = send_request('GetDetectInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDetectInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成验证后，用BizToken调用本接口获取结果信息，BizToken生成后三天内（3\*24\*3,600秒）可多次拉取。

        # @param request: Request instance for GetDetectInfoEnhanced.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetDetectInfoEnhancedRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetDetectInfoEnhancedResponse`
        def GetDetectInfoEnhanced(request)
          body = send_request('GetDetectInfoEnhanced', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDetectInfoEnhancedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成验证后，用FaceIdToken调用本接口获取结果信息，FaceIdToken生成后三天内（3\*24\*3,600秒）可多次拉取。

        # @param request: Request instance for GetFaceIdResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetFaceIdResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetFaceIdResultResponse`
        def GetFaceIdResult(request)
          body = send_request('GetFaceIdResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFaceIdResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每次调用人脸核身SDK服务前，需先调用本接口获取SDKToken，用来串联核身流程，在验证完成后，用于获取验证结果信息，该token仅能核身一次。

        # @param request: Request instance for GetFaceIdToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetFaceIdTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetFaceIdTokenResponse`
        def GetFaceIdToken(request)
          body = send_request('GetFaceIdToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFaceIdTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用数字活体检测模式前，需调用本接口获取数字验证码。

        # @param request: Request instance for GetLiveCode.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetLiveCodeRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetLiveCodeResponse`
        def GetLiveCode(request)
          body = send_request('GetLiveCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLiveCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取微信实名认证结果

        # @param request: Request instance for GetRealNameAuthResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetRealNameAuthResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetRealNameAuthResultResponse`
        def GetRealNameAuthResult(request)
          body = send_request('GetRealNameAuthResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRealNameAuthResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口仅限微信公众号中使用，传入姓名和身份证号获取回调URL，在微信公众号中打开验证姓名和身份证号与微信实名的信息是否一致。

        # @param request: Request instance for GetRealNameAuthToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetRealNameAuthTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetRealNameAuthTokenResponse`
        def GetRealNameAuthToken(request)
          body = send_request('GetRealNameAuthToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRealNameAuthTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验姓名和身份证号的真实性和一致性，您可以通过输入姓名和身份证号或传入身份证人像面照片提供所需验证信息。

        # @param request: Request instance for IdCardOCRVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::IdCardOCRVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::IdCardOCRVerificationResponse`
        def IdCardOCRVerification(request)
          body = send_request('IdCardOCRVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IdCardOCRVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入姓名和身份证号，校验两者的真实性和一致性。

        # @param request: Request instance for IdCardVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::IdCardVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::IdCardVerificationResponse`
        def IdCardVerification(request)
          body = send_request('IdCardVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IdCardVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入照片和身份信息，判断该照片与公安权威库的证件照是否属于同一个人。

        # @param request: Request instance for ImageRecognition.
        # @type request: :class:`Tencentcloud::faceid::V20180301::ImageRecognitionRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::ImageRecognitionResponse`
        def ImageRecognition(request)
          body = send_request('ImageRecognition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageRecognitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 活体检测

        # @param request: Request instance for Liveness.
        # @type request: :class:`Tencentcloud::faceid::V20180301::LivenessRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::LivenessResponse`
        def Liveness(request)
          body = send_request('Liveness', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LivenessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入视频和照片，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与上传照片是否属于同一个人。

        # @param request: Request instance for LivenessCompare.
        # @type request: :class:`Tencentcloud::faceid::V20180301::LivenessCompareRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::LivenessCompareResponse`
        def LivenessCompare(request)
          body = send_request('LivenessCompare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LivenessCompareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入视频和身份信息，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与公安权威库的证件照是否属于同一个人。

        # @param request: Request instance for LivenessRecognition.
        # @type request: :class:`Tencentcloud::faceid::V20180301::LivenessRecognitionRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::LivenessRecognitionResponse`
        def LivenessRecognition(request)
          body = send_request('LivenessRecognition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LivenessRecognitionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 未成年人守护接口是通过传入手机号或姓名和身份证号，结合权威数据源和腾讯健康守护可信模型，判断该信息是否真实且年满18周岁。腾讯健康守护可信模型覆盖了上十亿手机库源，覆盖率高、准确率高，如果不在库中的手机号，还可以通过姓名+身份证进行兜底验证。

        # @param request: Request instance for MinorsVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::MinorsVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::MinorsVerificationResponse`
        def MinorsVerification(request)
          body = send_request('MinorsVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MinorsVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询手机号在网时长，输入手机号进行查询。

        # @param request: Request instance for MobileNetworkTimeVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::MobileNetworkTimeVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::MobileNetworkTimeVerificationResponse`
        def MobileNetworkTimeVerification(request)
          body = send_request('MobileNetworkTimeVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MobileNetworkTimeVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于验证手机号的状态，您可以输入手机号进行查询。

        # @param request: Request instance for MobileStatus.
        # @type request: :class:`Tencentcloud::faceid::V20180301::MobileStatusRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::MobileStatusResponse`
        def MobileStatus(request)
          body = send_request('MobileStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MobileStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验手机号、姓名和身份证号的真实性和一致性。

        # @param request: Request instance for PhoneVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationResponse`
        def PhoneVerification(request)
          body = send_request('PhoneVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PhoneVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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