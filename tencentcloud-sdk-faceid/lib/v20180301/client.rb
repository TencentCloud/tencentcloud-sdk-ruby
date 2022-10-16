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

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-01'
            api_endpoint = 'faceid.tencentcloudapi.com'
            sdk_version = 'FACEID_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 每次调用活体服务前，需要先调用本接口获取Token，需要保存此Token用来发起核验流程，并且在核验完成后获取结果信息。

        # @param request: Request instance for ApplyLivenessToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::ApplyLivenessTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::ApplyLivenessTokenResponse`
        def ApplyLivenessToken(request)
          body = send_request('ApplyLivenessToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyLivenessTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每次调用Web核验服务前，需要先调用本接口获取Token，需要保存此Token用来发起核验流程，并且在核验完成后获取结果信息。

        # @param request: Request instance for ApplySdkVerificationToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::ApplySdkVerificationTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::ApplySdkVerificationTokenResponse`
        def ApplySdkVerificationToken(request)
          body = send_request('ApplySdkVerificationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplySdkVerificationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每次调用Web核验服务前，需要先调用本接口获取BizToken，需要保存此BizToken用来发起核验流程，并且在核验完成后获取结果信息。

        # @param request: Request instance for ApplyWebVerificationToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::ApplyWebVerificationTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::ApplyWebVerificationTokenResponse`
        def ApplyWebVerificationToken(request)
          body = send_request('ApplyWebVerificationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyWebVerificationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

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

        # 用于轮询E证通H5场景EidToken验证状态。

        # @param request: Request instance for CheckEidTokenStatus.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CheckEidTokenStatusRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CheckEidTokenStatusResponse`
        def CheckEidTokenStatus(request)
          body = send_request('CheckEidTokenStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckEidTokenStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入身份证人像面照片，识别身份证照片上的信息，并将姓名、身份证号、身份证人像照片与权威库的证件照进行比对，是否属于同一个人，从而验证身份证信息的真实性。

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

        # 本接口用于校验姓名、身份证号、身份证有效期的真实性和一致性。

        # @param request: Request instance for CheckIdNameDate.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CheckIdNameDateRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CheckIdNameDateResponse`
        def CheckIdNameDate(request)
          body = send_request('CheckIdNameDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckIdNameDateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 手机号二要素核验接口用于校验手机号和姓名的真实性和一致性，支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。

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

        # 生成一个临时的UploadUrl用于上传资源文件，客户需要使用HTTP PUT方法上传，上传完成后将ResourceUrl传给TargetAction对应接口完成资源传递（具体字段由使用场景确定）。
        # 数据存储于Region参数对应地域的腾讯云COS Bucket，存储有效期2小时。

        # @param request: Request instance for CreateUploadUrl.
        # @type request: :class:`Tencentcloud::faceid::V20180301::CreateUploadUrlRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::CreateUploadUrlResponse`
        def CreateUploadUrl(request)
          body = send_request('CreateUploadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUploadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 使用活体比对（光线）SDK生成的数据包检测活体，并和传入的图片进行比对。
        # 图片和SDK生成的数据内容必须存储在腾讯云COS，COS Bucket所在的Region需要和本接口请求的Region保持一致，推荐使用生成上传链接接口来完成资源传递。

        # @param request: Request instance for DetectReflectLivenessAndCompare.
        # @type request: :class:`Tencentcloud::faceid::V20180301::DetectReflectLivenessAndCompareRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::DetectReflectLivenessAndCompareResponse`
        def DetectReflectLivenessAndCompare(request)
          body = send_request('DetectReflectLivenessAndCompare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectReflectLivenessAndCompareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验手机号、姓名和身份证号的真实性和一致性，入参支持明文、MD5和SHA256加密传输。

        # @param request: Request instance for EncryptedPhoneVerification.
        # @type request: :class:`Tencentcloud::faceid::V20180301::EncryptedPhoneVerificationRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::EncryptedPhoneVerificationResponse`
        def EncryptedPhoneVerification(request)
          body = send_request('EncryptedPhoneVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EncryptedPhoneVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据活体比对（光线）SDK采集的机器信息生成适合的光线序列，将光线序列传入SDK后开启核身。
        # SDK生成的数据内容必须存储在腾讯云COS，COS Bucket所在的Region需要和本接口请求的Region保持一致，推荐使用生成上传链接接口来完成资源传递。

        # @param request: Request instance for GenerateReflectSequence.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GenerateReflectSequenceRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GenerateReflectSequenceResponse`
        def GenerateReflectSequence(request)
          body = send_request('GenerateReflectSequence', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateReflectSequenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 完成验证后，用EidToken调用本接口获取结果信息，EidToken生成后三天内（3\*24\*3,600秒）可多次拉取。

        # @param request: Request instance for GetEidResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetEidResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetEidResultResponse`
        def GetEidResult(request)
          body = send_request('GetEidResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEidResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 每次调用E证通服务前，需先调用本接口获取EidToken，用来串联E证通流程，在验证完成后，用于获取E证通结果信息。

        # @param request: Request instance for GetEidToken.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetEidTokenRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetEidTokenResponse`
        def GetEidToken(request)
          body = send_request('GetEidToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEidTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 完成活体检测流程后，用核验令牌（SdkToken）调用本接口查询对应核验结果信息。Token申请后2小时内有效，可多次调用。

        # @param request: Request instance for GetLivenessResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetLivenessResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetLivenessResultResponse`
        def GetLivenessResult(request)
          body = send_request('GetLivenessResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLivenessResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 完成Sdk核验流程后，用核验令牌（Token）调用本接口查询对应核验结果信息。Token申请后三天内有效，可多次调用。

        # @param request: Request instance for GetSdkVerificationResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetSdkVerificationResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetSdkVerificationResultResponse`
        def GetSdkVerificationResult(request)
          body = send_request('GetSdkVerificationResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSdkVerificationResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询微信渠道服务（微信小程序、微信原生H5、微信普通H5）的账单明细及计费状态。

        # @param request: Request instance for GetWeChatBillDetails.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetWeChatBillDetailsRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetWeChatBillDetailsResponse`
        def GetWeChatBillDetails(request)
          body = send_request('GetWeChatBillDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWeChatBillDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成Web核验流程后，用核验令牌（BizToken）调用本接口查询对应核验结果信息。BizToken申请后三天内（3\*24\*3,600秒）有效，可多次调用。

        # @param request: Request instance for GetWebVerificationResult.
        # @type request: :class:`Tencentcloud::faceid::V20180301::GetWebVerificationResultRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::GetWebVerificationResultResponse`
        def GetWebVerificationResult(request)
          body = send_request('GetWebVerificationResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWebVerificationResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 传入照片和身份信息，判断该照片与权威库的证件照是否属于同一个人。

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

        # 传入视频和身份信息，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与权威库的证件照是否属于同一个人。

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

        # 通过传入手机号或姓名和身份证号，结合权威数据源和腾讯健康守护可信模型，判断该信息是否真实且年满18周岁。腾讯健康守护可信模型覆盖了上十亿手机库源，覆盖率高、准确率高，如果不在库中的手机号，还可以通过姓名+身份证进行兜底验证。

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

        # 解析SDK获取到的证件NFC数据，接口传入SDK返回的ReqId，返回证件信息（个别字段为特定证件类型特有）。SDK生成的ReqId五分钟内有效，重复查询仅收一次费。支持身份证类证件（二代身份证、港澳居住证、台湾居住证、外国人永居证）以及旅行类证件（港澳通行证、台湾通行证、台胞证、回乡证）的NFC识别及核验。

        # @param request: Request instance for ParseNfcData.
        # @type request: :class:`Tencentcloud::faceid::V20180301::ParseNfcDataRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::ParseNfcDataResponse`
        def ParseNfcData(request)
          body = send_request('ParseNfcData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseNfcDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验手机号、姓名和身份证号的真实性和一致性。支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。

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

        # 本接口用于校验中国移动手机号、姓名和身份证号的真实性和一致性。中国移动支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。

        # @param request: Request instance for PhoneVerificationCMCC.
        # @type request: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCMCCRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCMCCResponse`
        def PhoneVerificationCMCC(request)
          body = send_request('PhoneVerificationCMCC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PhoneVerificationCMCCResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验中国电信手机号、姓名和身份证号的真实性和一致性。中国电信支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。

        # @param request: Request instance for PhoneVerificationCTCC.
        # @type request: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCTCCRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCTCCResponse`
        def PhoneVerificationCTCC(request)
          body = send_request('PhoneVerificationCTCC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PhoneVerificationCTCCResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于校验中国联通手机号、姓名和身份证号的真实性和一致性。中国联通支持的手机号段详情请查阅<a href="https://cloud.tencent.com/document/product/1007/46063">运营商类</a>文档。

        # @param request: Request instance for PhoneVerificationCUCC.
        # @type request: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCUCCRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::PhoneVerificationCUCCResponse`
        def PhoneVerificationCUCC(request)
          body = send_request('PhoneVerificationCUCC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PhoneVerificationCUCCResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入视频和照片地址，先判断视频中是否为真人，判断为真人后，再判断该视频中的人与上传照片是否属于同一个人。

        # @param request: Request instance for VideoLivenessCompare.
        # @type request: :class:`Tencentcloud::faceid::V20180301::VideoLivenessCompareRequest`
        # @rtype: :class:`Tencentcloud::faceid::V20180301::VideoLivenessCompareResponse`
        def VideoLivenessCompare(request)
          body = send_request('VideoLivenessCompare', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VideoLivenessCompareResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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