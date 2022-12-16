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
  module Ccc
    module V20200210
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-02-10'
            api_endpoint = 'ccc.tencentcloudapi.com'
            sdk_version = 'CCC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定坐席所属技能组

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

        # 创建自动外呼任务

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

        # 创建技能组

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

        # 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到坐席手机上，坐席接听后，然后再外呼用户，而且由于运营商频率限制，坐席手机号必须先加白名单，避免频控导致外呼失败。

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

        # 查询自动外呼任务详情

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

        # 批量查询自动任务外呼

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

        # 包括具体聊天内容

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

        # 包括全媒体和文本两种类型

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


      end
    end
  end
end