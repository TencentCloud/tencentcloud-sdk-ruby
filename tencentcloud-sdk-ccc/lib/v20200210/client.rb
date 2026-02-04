# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Ccc
    module V20200210
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-02-10'
            api_endpoint = 'ccc.tencentcloudapi.com'
            sdk_version = 'CCC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 停止座席巡航式外呼任务

        # @param request: Request instance for AbortAgentCruiseDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::AbortAgentCruiseDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::AbortAgentCruiseDialingCampaignResponse`
        def AbortAgentCruiseDialingCampaign(request)
          body = send_request('AbortAgentCruiseDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AbortAgentCruiseDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止预测式外呼任务

        # @param request: Request instance for AbortPredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::AbortPredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::AbortPredictiveDialingCampaignResponse`
        def AbortPredictiveDialingCampaign(request)
          body = send_request('AbortPredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AbortPredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定号码呼入回调接口

        # @param request: Request instance for BindNumberCallInInterface.
        # @type request: :class:`Tencentcloud::ccc::V20200210::BindNumberCallInInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::BindNumberCallInInterfaceResponse`
        def BindNumberCallInInterface(request)
          body = send_request('BindNumberCallInInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindNumberCallInInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定号码外呼技能组

        # @param request: Request instance for BindNumberCallOutSkillGroup.
        # @type request: :class:`Tencentcloud::ccc::V20200210::BindNumberCallOutSkillGroupRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::BindNumberCallOutSkillGroupResponse`
        def BindNumberCallOutSkillGroup(request)
          body = send_request('BindNumberCallOutSkillGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindNumberCallOutSkillGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定座席所属技能组

        # @param request: Request instance for BindStaffSkillGroupList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::BindStaffSkillGroupListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::BindStaffSkillGroupListResponse`
        def BindStaffSkillGroupList(request)
          body = send_request('BindStaffSkillGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindStaffSkillGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供服务端控制机器人的功能

        # @param request: Request instance for ControlAIConversation.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ControlAIConversationRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ControlAIConversationResponse`
        def ControlAIConversation(request)
          body = send_request('ControlAIConversation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ControlAIConversationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建**一次性的智能体外呼通话**。你可以在管理端-智能体管理中，新建语音智能体，进行 [对话流程配置](https://cloud.tencent.com/document/product/679/119796) 。该接口可调用配置完成的智能体发起单次的外呼任务。若需创建批量智能体外呼任务，请参考文档 [创建自动外呼任务](https://cloud.tencent.com/document/product/679/69194)。

        # 该功能需购买语音智能体通话套餐，并且仅限自有电话号码使用。详情请参考 [语音智能体通话购买指引](https://cloud.tencent.com/document/product/679/125953)。

        # @param request: Request instance for CreateAIAgentCall.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateAIAgentCallRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateAIAgentCallResponse`
        def CreateAIAgentCall(request)
          body = send_request('CreateAIAgentCall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIAgentCallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于 **直接调用AI模型** 发起 **单次** 外呼通话，支持通过API参数直接配置模型、提示词、语音等全部通话要素。

        # 该功能需购买语音智能体通话套餐，并且仅限自有电话号码使用。详情请参考 [语音智能体通话购买指引](https://cloud.tencent.com/document/product/679/125953)。

        # @param request: Request instance for CreateAICall.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateAICallRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateAICallResponse`
        def CreateAICall(request)
          body = send_request('CreateAICall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAICallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建管理端访问链接

        # @param request: Request instance for CreateAdminURL.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateAdminURLRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateAdminURLResponse`
        def CreateAdminURL(request)
          body = send_request('CreateAdminURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAdminURLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 座席巡航式外呼。

        # @param request: Request instance for CreateAgentCruiseDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateAgentCruiseDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateAgentCruiseDialingCampaignResponse`
        def CreateAgentCruiseDialingCampaign(request)
          body = send_request('CreateAgentCruiseDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAgentCruiseDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于**创建批量自动外呼通话**，系统将根据任务配置，自动向指定的**被叫号码列表**发起外呼通话。该接口可调用配置完成的智能体发起批量的外呼任务，你可以在管理端-智能体管理中，新建语音智能体，进行 [对话流程配置](https://cloud.tencent.com/document/product/679/119796)。若需创建单次智能体外呼任务，请参考文档 [创建单次智能体通话](https://cloud.tencent.com/document/product/679/115681)。

        # 该功能需购买语音智能体通话套餐，并且仅限自有电话号码使用。详情请参考 [语音智能体通话购买指引](https://cloud.tencent.com/document/product/679/125953)。

        # @param request: Request instance for CreateAutoCalloutTask.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateAutoCalloutTaskRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateAutoCalloutTaskResponse`
        def CreateAutoCalloutTask(request)
          body = send_request('CreateAutoCalloutTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAutoCalloutTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建技能组

        # @param request: Request instance for CreateCCCSkillGroup.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateCCCSkillGroupRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateCCCSkillGroupResponse`
        def CreateCCCSkillGroup(request)
          body = send_request('CreateCCCSkillGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCCCSkillGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到座席手机上，座席接听后，然后再外呼用户，而且由于运营商频率限制，座席手机号必须先加白名单，避免频控导致外呼失败。所以调用此接口前，下述操作均已完成
        # 1. UserId 指定的座席已经[绑定手机号](https://cloud.tencent.com/document/product/679/76067#.E6.AD.A5.E9.AA.A42.EF.BC.9A.E5.AE.8C.E5.96.84.E8.B4.A6.E5.8F.B7.E4.BF.A1.E6.81.AF)
        # 2. 座席绑定的手机号已经[申请并通过了外呼白名单](https://cloud.tencent.com/document/product/679/76744#.E6.93.8D.E4.BD.9C.E6.AD.A5.E9.AA.A4)
        # 3. 当前座席侧只能呼叫其手机，所以 IsForceMobile 字段当前必须为 true
        # 4. 被叫不要填当前 UserId 所绑定的手机号，否则会造成占线呼叫失败

        # @param request: Request instance for CreateCallOutSession.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateCallOutSessionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateCallOutSessionResponse`
        def CreateCallOutSession(request)
          body = send_request('CreateCallOutSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCallOutSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于无限频率地呼叫坐席手机

        # @param request: Request instance for CreateCarrierPrivilegeNumberApplicant.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateCarrierPrivilegeNumberApplicantRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateCarrierPrivilegeNumberApplicantResponse`
        def CreateCarrierPrivilegeNumberApplicant(request)
          body = send_request('CreateCarrierPrivilegeNumberApplicant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCarrierPrivilegeNumberApplicantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公司资质申请（1、首次使用接口，建议先在云联络中心控制台查看各个资料模板:https://console.cloud.tencent.com/ccc/enterprise/update。2、参数中图片Url建议使用腾讯云Cos存储的临时链接）

        # @param request: Request instance for CreateCompanyApply.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateCompanyApplyRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateCompanyApplyResponse`
        def CreateCompanyApply(request)
          body = send_request('CreateCompanyApply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCompanyApplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建话机账号

        # @param request: Request instance for CreateExtension.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateExtensionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateExtensionResponse`
        def CreateExtension(request)
          body = send_request('CreateExtension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExtensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建关联 IVR 的会话，仅高级版支持，目前支持呼入和自动外呼两种 IVR 类型。收到请求后 TCCC 会先尝试呼通被叫，然后进入 IVR 流程。

        # @param request: Request instance for CreateIVRSession.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateIVRSessionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateIVRSessionResponse`
        def CreateIVRSession(request)
          body = send_request('CreateIVRSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIVRSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建客户自携号码接入审核

        # @param request: Request instance for CreateOwnNumberApply.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateOwnNumberApplyRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateOwnNumberApplyResponse`
        def CreateOwnNumberApply(request)
          body = send_request('CreateOwnNumberApply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOwnNumberApplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建预测式外呼任务

        # @param request: Request instance for CreatePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreatePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreatePredictiveDialingCampaignResponse`
        def CreatePredictiveDialingCampaign(request)
          body = send_request('CreatePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 SDK 登录 Token。

        # @param request: Request instance for CreateSDKLoginToken.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateSDKLoginTokenRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateSDKLoginTokenResponse`
        def CreateSDKLoginToken(request)
          body = send_request('CreateSDKLoginToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSDKLoginTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建客服账号。

        # @param request: Request instance for CreateStaff.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateStaffRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateStaffResponse`
        def CreateStaff(request)
          body = send_request('CreateStaff', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStaffResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建用户数据签名

        # @param request: Request instance for CreateUserSig.
        # @type request: :class:`Tencentcloud::ccc::V20200210::CreateUserSigRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::CreateUserSigResponse`
        def CreateUserSig(request)
          body = send_request('CreateUserSig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserSigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除技能组

        # @param request: Request instance for DeleteCCCSkillGroup.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DeleteCCCSkillGroupRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DeleteCCCSkillGroupResponse`
        def DeleteCCCSkillGroup(request)
          body = send_request('DeleteCCCSkillGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCCSkillGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除话机账号

        # @param request: Request instance for DeleteExtension.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DeleteExtensionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DeleteExtensionResponse`
        def DeleteExtension(request)
          body = send_request('DeleteExtension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteExtensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除预测式外呼任务

        # @param request: Request instance for DeletePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DeletePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DeletePredictiveDialingCampaignResponse`
        def DeletePredictiveDialingCampaign(request)
          body = send_request('DeletePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除坐席信息

        # @param request: Request instance for DeleteStaff.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DeleteStaffRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DeleteStaffResponse`
        def DeleteStaff(request)
          body = send_request('DeleteStaff', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStaffResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于分页查询指定实例（SdkAppId）下已配置的智能体信息列表，包括智能体ID和名称等基本信息。

        # @param request: Request instance for DescribeAIAgentInfoList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAIAgentInfoListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAIAgentInfoListResponse`
        def DescribeAIAgentInfoList(request)
          body = send_request('DescribeAIAgentInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAgentInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 AI 会话分析结果

        # @param request: Request instance for DescribeAIAnalysisResult.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAIAnalysisResultRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAIAnalysisResultResponse`
        def DescribeAIAnalysisResult(request)
          body = send_request('DescribeAIAnalysisResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于：在语音智能体通话结束后，通过 Session ID 查询指定会话的 **话后标签** 结果。相关话后标签需提前在管理端完成配置，具体说明请参见 [话后标签](https://cloud.tencent.com/document/product/679/119800) 。

        # @param request: Request instance for DescribeAICallExtractResult.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAICallExtractResultRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAICallExtractResultResponse`
        def DescribeAICallExtractResult(request)
          body = send_request('DescribeAICallExtractResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAICallExtractResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用该接口，可以通过 Session ID 查询指定会话在特定时间段内，AI服务的处理时延明细与统计数据，时延信息包括：
        # - 端到端（ETE）时延：统计从用户语音输入到 AI 返回完整响应的整体耗时。
        # - 自动语音识别（ASR）时延：统计语音输入被识别为文本所需的处理耗时。
        # - 大语言模型（LLM）时延：统计 AI 模型生成文本内容的推理耗时。
        # - 语音合成（TTS）时延：统计文本转换为语音音频的合成耗时。

        # @param request: Request instance for DescribeAILatency.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAILatencyRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAILatencyResponse`
        def DescribeAILatency(request)
          body = send_request('DescribeAILatency', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAILatencyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询生效运营商白名单规则

        # @param request: Request instance for DescribeActiveCarrierPrivilegeNumber.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeActiveCarrierPrivilegeNumberRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeActiveCarrierPrivilegeNumberResponse`
        def DescribeActiveCarrierPrivilegeNumber(request)
          body = send_request('DescribeActiveCarrierPrivilegeNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActiveCarrierPrivilegeNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 座席巡航式外呼任务

        # @param request: Request instance for DescribeAgentCruiseDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAgentCruiseDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAgentCruiseDialingCampaignResponse`
        def DescribeAgentCruiseDialingCampaign(request)
          body = send_request('DescribeAgentCruiseDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAgentCruiseDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于通过 TaskId 查询**自动外呼任务的详细信息**，包括任务基础配置、起止时间、外呼名单、执行状态以及实际通话情况等。
        # 该接口通常与 [创建批量自动外呼任务](https://cloud.tencent.com/document/product/679/69194) 配合使用，用于在任务创建后查看任务配置是否生效、任务当前状态，以及后续执行过程中的实时进展。

        # @param request: Request instance for DescribeAutoCalloutTask.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAutoCalloutTaskRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAutoCalloutTaskResponse`
        def DescribeAutoCalloutTask(request)
          body = send_request('DescribeAutoCalloutTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoCalloutTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量查询自动外呼任务

        # @param request: Request instance for DescribeAutoCalloutTasks.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeAutoCalloutTasksRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeAutoCalloutTasksResponse`
        def DescribeAutoCalloutTasks(request)
          body = send_request('DescribeAutoCalloutTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoCalloutTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户购买信息列表

        # @param request: Request instance for DescribeCCCBuyInfoList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeCCCBuyInfoListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeCCCBuyInfoListResponse`
        def DescribeCCCBuyInfoList(request)
          body = send_request('DescribeCCCBuyInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCCBuyInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取呼入实时数据统计指标

        # @param request: Request instance for DescribeCallInMetrics.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeCallInMetricsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeCallInMetricsResponse`
        def DescribeCallInMetrics(request)
          body = send_request('DescribeCallInMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallInMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单状态

        # @param request: Request instance for DescribeCarrierPrivilegeNumberApplicants.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeCarrierPrivilegeNumberApplicantsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeCarrierPrivilegeNumberApplicantsResponse`
        def DescribeCarrierPrivilegeNumberApplicants(request)
          body = send_request('DescribeCarrierPrivilegeNumberApplicants', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCarrierPrivilegeNumberApplicantsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定服务记录文本聊天内容，需要先使用查询在线客服记录（DescribeIMCdrs） API 获取服务记录 SessionId。

        # 文本聊天记录只保存了 1 年内的，1 年之前会自动清理。

        # @param request: Request instance for DescribeChatMessages.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeChatMessagesRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeChatMessagesResponse`
        def DescribeChatMessages(request)
          body = send_request('DescribeChatMessages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChatMessagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公司资质申请列表

        # @param request: Request instance for DescribeCompanyList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeCompanyListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeCompanyListResponse`
        def DescribeCompanyList(request)
          body = send_request('DescribeCompanyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompanyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取话机信息

        # @param request: Request instance for DescribeExtension.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeExtensionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeExtensionResponse`
        def DescribeExtension(request)
          body = send_request('DescribeExtension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询话机列表信息

        # @param request: Request instance for DescribeExtensions.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeExtensionsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeExtensionsResponse`
        def DescribeExtensions(request)
          body = send_request('DescribeExtensions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtensionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取闪信记录列表

        # @param request: Request instance for DescribeFlashSMSList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeFlashSMSListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeFlashSMSListResponse`
        def DescribeFlashSMSList(request)
          body = send_request('DescribeFlashSMSList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlashSMSListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取包括全媒体和文本会话两种类型的服务记录。

        # @param request: Request instance for DescribeIMCdrList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeIMCdrListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeIMCdrListResponse`
        def DescribeIMCdrList(request)
          body = send_request('DescribeIMCdrList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIMCdrListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取包括全媒体和文本会话两种类型的服务记录。

        # @param request: Request instance for DescribeIMCdrs.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeIMCdrsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeIMCdrsResponse`
        def DescribeIMCdrs(request)
          body = send_request('DescribeIMCdrs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIMCdrsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询IVR音频文件列表信息

        # @param request: Request instance for DescribeIvrAudioList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeIvrAudioListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeIvrAudioListResponse`
        def DescribeIvrAudioList(request)
          body = send_request('DescribeIvrAudioList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIvrAudioListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询号码列表

        # @param request: Request instance for DescribeNumbers.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeNumbersRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeNumbersResponse`
        def DescribeNumbers(request)
          body = send_request('DescribeNumbers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNumbersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前正在通话的会话列表

        # @param request: Request instance for DescribePSTNActiveSessionList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribePSTNActiveSessionListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribePSTNActiveSessionListResponse`
        def DescribePSTNActiveSessionList(request)
          body = send_request('DescribePSTNActiveSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePSTNActiveSessionListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询预测式外呼任务

        # @param request: Request instance for DescribePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingCampaignResponse`
        def DescribePredictiveDialingCampaign(request)
          body = send_request('DescribePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询预测式外呼任务列表

        # @param request: Request instance for DescribePredictiveDialingCampaigns.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingCampaignsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingCampaignsResponse`
        def DescribePredictiveDialingCampaigns(request)
          body = send_request('DescribePredictiveDialingCampaigns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePredictiveDialingCampaignsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询预测式外呼呼叫列表

        # @param request: Request instance for DescribePredictiveDialingSessions.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingSessionsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribePredictiveDialingSessionsResponse`
        def DescribePredictiveDialingSessions(request)
          body = send_request('DescribePredictiveDialingSessions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePredictiveDialingSessionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取主被叫受保护的电话服务记录与录音

        # @param request: Request instance for DescribeProtectedTelCdr.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeProtectedTelCdrRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeProtectedTelCdrResponse`
        def DescribeProtectedTelCdr(request)
          body = send_request('DescribeProtectedTelCdr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProtectedTelCdrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取通话详情

        # @param request: Request instance for DescribeSessionDetail.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeSessionDetailRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeSessionDetailResponse`
        def DescribeSessionDetail(request)
          body = send_request('DescribeSessionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取技能组信息列表

        # @param request: Request instance for DescribeSkillGroupInfoList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeSkillGroupInfoListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeSkillGroupInfoListResponse`
        def DescribeSkillGroupInfoList(request)
          body = send_request('DescribeSkillGroupInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSkillGroupInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取坐席信息列表

        # @param request: Request instance for DescribeStaffInfoList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeStaffInfoListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeStaffInfoListResponse`
        def DescribeStaffInfoList(request)
          body = send_request('DescribeStaffInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStaffInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询座席状态历史

        # @param request: Request instance for DescribeStaffStatusHistory.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeStaffStatusHistoryRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeStaffStatusHistoryResponse`
        def DescribeStaffStatusHistory(request)
          body = send_request('DescribeStaffStatusHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStaffStatusHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取坐席实时状态统计指标

        # @param request: Request instance for DescribeStaffStatusMetrics.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeStaffStatusMetricsRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeStaffStatusMetricsResponse`
        def DescribeStaffStatusMetrics(request)
          body = send_request('DescribeStaffStatusMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStaffStatusMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按实例获取电话消耗统计

        # @param request: Request instance for DescribeTelCallInfo.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeTelCallInfoRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeTelCallInfoResponse`
        def DescribeTelCallInfo(request)
          body = send_request('DescribeTelCallInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTelCallInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取电话服务记录与录音

        # @param request: Request instance for DescribeTelCdr.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeTelCdrRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeTelCdrResponse`
        def DescribeTelCdr(request)
          body = send_request('DescribeTelCdr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTelCdrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取会话录音转文本信息

        # @param request: Request instance for DescribeTelRecordAsr.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeTelRecordAsrRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeTelRecordAsrResponse`
        def DescribeTelRecordAsr(request)
          body = send_request('DescribeTelRecordAsr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTelRecordAsrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 PSTN 会话信息

        # @param request: Request instance for DescribeTelSession.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeTelSessionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeTelSessionResponse`
        def DescribeTelSession(request)
          body = send_request('DescribeTelSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTelSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停用号码

        # @param request: Request instance for DisableCCCPhoneNumber.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DisableCCCPhoneNumberRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DisableCCCPhoneNumberResponse`
        def DisableCCCPhoneNumber(request)
          body = send_request('DisableCCCPhoneNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableCCCPhoneNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 强制客服下线

        # @param request: Request instance for ForceMemberOffline.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ForceMemberOfflineRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ForceMemberOfflineResponse`
        def ForceMemberOffline(request)
          body = send_request('ForceMemberOffline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForceMemberOfflineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 挂断电话

        # @param request: Request instance for HangUpCall.
        # @type request: :class:`Tencentcloud::ccc::V20200210::HangUpCallRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::HangUpCallResponse`
        def HangUpCall(request)
          body = send_request('HangUpCall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HangUpCallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改公司资质申请，只能修改状态为驳回或待审核的申请单。（1、首次使用接口，建议先在云联络中心控制台查看各个资料模板:https://console.cloud.tencent.com/ccc/enterprise/update。2、参数中图片Url建议使用腾讯云Cos存储的临时链接）

        # @param request: Request instance for ModifyCompanyApply.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ModifyCompanyApplyRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ModifyCompanyApplyResponse`
        def ModifyCompanyApply(request)
          body = send_request('ModifyCompanyApply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCompanyApplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改话机账号(绑定技能组、绑定坐席账号)

        # @param request: Request instance for ModifyExtension.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ModifyExtensionRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ModifyExtensionResponse`
        def ModifyExtension(request)
          body = send_request('ModifyExtension', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExtensionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客户自携号码审批单

        # @param request: Request instance for ModifyOwnNumberApply.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ModifyOwnNumberApplyRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ModifyOwnNumberApplyResponse`
        def ModifyOwnNumberApply(request)
          body = send_request('ModifyOwnNumberApply', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOwnNumberApplyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客服账号

        # @param request: Request instance for ModifyStaff.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ModifyStaffRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ModifyStaffResponse`
        def ModifyStaff(request)
          body = send_request('ModifyStaff', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStaffResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改座席的密码

        # @param request: Request instance for ModifyStaffPassword.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ModifyStaffPasswordRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ModifyStaffPasswordResponse`
        def ModifyStaffPassword(request)
          body = send_request('ModifyStaffPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStaffPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于通过 TaskId **暂停一个正在执行的自动外呼任务**。调用该接口后，任务将被临时中断，不再发起新的外呼请求；已发起的通话不受影响。
        # 暂停后的任务可通过 [恢复暂停的自动外呼任务](https://cloud.tencent.com/document/product/679/125356) 接口继续执行。如需永久终止任务，请参考 [停止自动外呼任务](https://cloud.tencent.com/document/product/679/69192)。

        # @param request: Request instance for PauseAutoCalloutTask.
        # @type request: :class:`Tencentcloud::ccc::V20200210::PauseAutoCalloutTaskRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::PauseAutoCalloutTaskResponse`
        def PauseAutoCalloutTask(request)
          body = send_request('PauseAutoCalloutTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseAutoCalloutTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停预测式外呼任务

        # @param request: Request instance for PausePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::PausePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::PausePredictiveDialingCampaignResponse`
        def PausePredictiveDialingCampaign(request)
          body = send_request('PausePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PausePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对与座席通话中的会话，进行放音

        # @param request: Request instance for PlaySoundCall.
        # @type request: :class:`Tencentcloud::ccc::V20200210::PlaySoundCallRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::PlaySoundCallResponse`
        def PlaySoundCall(request)
          body = send_request('PlaySoundCall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PlaySoundCallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置话机注册密码

        # @param request: Request instance for ResetExtensionPassword.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ResetExtensionPasswordRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ResetExtensionPasswordResponse`
        def ResetExtensionPassword(request)
          body = send_request('ResetExtensionPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetExtensionPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复客服上线

        # @param request: Request instance for RestoreMemberOnline.
        # @type request: :class:`Tencentcloud::ccc::V20200210::RestoreMemberOnlineRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::RestoreMemberOnlineResponse`
        def RestoreMemberOnline(request)
          body = send_request('RestoreMemberOnline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreMemberOnlineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于通过 TaskId **恢复一个已被暂停的自动外呼任务**。该接口适用于在调用 [暂停自动外呼任务](https://cloud.tencent.com/document/product/679/125357) 后，需继续执行剩余外呼计划的场景。调用成功后，任务将从暂停状态恢复，重新发起未完成的外呼请求。

        # @param request: Request instance for ResumeAutoCalloutTask.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ResumeAutoCalloutTaskRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ResumeAutoCalloutTaskResponse`
        def ResumeAutoCalloutTask(request)
          body = send_request('ResumeAutoCalloutTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeAutoCalloutTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复预测式外呼任务

        # @param request: Request instance for ResumePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::ResumePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::ResumePredictiveDialingCampaignResponse`
        def ResumePredictiveDialingCampaign(request)
          body = send_request('ResumePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置 staff 状态

        # @param request: Request instance for SetStaffStatus.
        # @type request: :class:`Tencentcloud::ccc::V20200210::SetStaffStatusRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::SetStaffStatusResponse`
        def SetStaffStatus(request)
          body = send_request('SetStaffStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetStaffStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止自动外呼任务

        # @param request: Request instance for StopAutoCalloutTask.
        # @type request: :class:`Tencentcloud::ccc::V20200210::StopAutoCalloutTaskRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::StopAutoCalloutTaskResponse`
        def StopAutoCalloutTask(request)
          body = send_request('StopAutoCalloutTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopAutoCalloutTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 特定场景下讲会话转接到人工坐席

        # @param request: Request instance for TransferToManual.
        # @type request: :class:`Tencentcloud::ccc::V20200210::TransferToManualRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::TransferToManualResponse`
        def TransferToManual(request)
          body = send_request('TransferToManual', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransferToManualResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑号码外呼技能组

        # @param request: Request instance for UnbindNumberCallOutSkillGroup.
        # @type request: :class:`Tencentcloud::ccc::V20200210::UnbindNumberCallOutSkillGroupRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::UnbindNumberCallOutSkillGroupResponse`
        def UnbindNumberCallOutSkillGroup(request)
          body = send_request('UnbindNumberCallOutSkillGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindNumberCallOutSkillGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑坐席所属技能组

        # @param request: Request instance for UnbindStaffSkillGroupList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::UnbindStaffSkillGroupListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::UnbindStaffSkillGroupListResponse`
        def UnbindStaffSkillGroupList(request)
          body = send_request('UnbindStaffSkillGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindStaffSkillGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新技能组

        # @param request: Request instance for UpdateCCCSkillGroup.
        # @type request: :class:`Tencentcloud::ccc::V20200210::UpdateCCCSkillGroupRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::UpdateCCCSkillGroupResponse`
        def UpdateCCCSkillGroup(request)
          body = send_request('UpdateCCCSkillGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCCCSkillGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 任务未启动前，更新预测式外呼任务。

        # @param request: Request instance for UpdatePredictiveDialingCampaign.
        # @type request: :class:`Tencentcloud::ccc::V20200210::UpdatePredictiveDialingCampaignRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::UpdatePredictiveDialingCampaignResponse`
        def UpdatePredictiveDialingCampaign(request)
          body = send_request('UpdatePredictiveDialingCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePredictiveDialingCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传IVR中使用的音频文件，每日上传文件限制50个。（参数中音频文件Url建议使用腾讯云Cos存储的临时链接）

        # @param request: Request instance for UploadIvrAudio.
        # @type request: :class:`Tencentcloud::ccc::V20200210::UploadIvrAudioRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::UploadIvrAudioResponse`
        def UploadIvrAudio(request)
          body = send_request('UploadIvrAudio', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadIvrAudioResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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