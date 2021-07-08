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

        # 废弃接口下架

        # 获取坐席用户列表（废弃）

        # @param request: Request instance for DescribeSeatUserList.
        # @type request: :class:`Tencentcloud::ccc::V20200210::DescribeSeatUserListRequest`
        # @rtype: :class:`Tencentcloud::ccc::V20200210::DescribeSeatUserListResponse`
        def DescribeSeatUserList(request)
          body = send_request('DescribeSeatUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSeatUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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