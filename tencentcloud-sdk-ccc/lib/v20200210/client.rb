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
        @@api_version = '2020-02-10'
        @@endpoint = 'ccc.tencentcloudapi.com'
        @@sdk_version = 'CCC_' + File.read(File.expand_path('../VERSION', __dir__)).strip


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

        # 获取 PSTN 活动会话列表。

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


      end
    end
  end
end