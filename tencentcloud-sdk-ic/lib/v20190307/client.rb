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
  module Ic
    module V20190307
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-07'
            api_endpoint = 'ic.tencentcloudapi.com'
            sdk_version = 'IC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 根据应用id查询物联卡应用详情

        # @param request: Request instance for DescribeApp.
        # @type request: :class:`Tencentcloud::ic::V20190307::DescribeAppRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::DescribeAppResponse`
        def DescribeApp(request)
          body = send_request('DescribeApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询卡片详细信息

        # @param request: Request instance for DescribeCard.
        # @type request: :class:`Tencentcloud::ic::V20190307::DescribeCardRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::DescribeCardResponse`
        def DescribeCard(request)
          body = send_request('DescribeCard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询卡片列表信息

        # @param request: Request instance for DescribeCards.
        # @type request: :class:`Tencentcloud::ic::V20190307::DescribeCardsRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::DescribeCardsResponse`
        def DescribeCards(request)
          body = send_request('DescribeCards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑卡片备注

        # @param request: Request instance for ModifyUserCardRemark.
        # @type request: :class:`Tencentcloud::ic::V20190307::ModifyUserCardRemarkRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::ModifyUserCardRemarkResponse`
        def ModifyUserCardRemark(request)
          body = send_request('ModifyUserCardRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserCardRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量为卡片续费，此接口建议调用至少间隔10s,如果出现返回deal lock failed相关的错误，请过10s再重试。
        # 续费的必要条件：
        # 1、单次续费的卡片不可以超过 100张。
        # 2、接口只支持在控制台购买的卡片进行续费
        # 3、销户和未激活的卡片不支持续费。
        # 4、每张物联网卡，续费总周期不能超过24个月

        # @param request: Request instance for RenewCards.
        # @type request: :class:`Tencentcloud::ic::V20190307::RenewCardsRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::RenewCardsResponse`
        def RenewCards(request)
          body = send_request('RenewCards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewCardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 群发短信

        # @param request: Request instance for SendMultiSms.
        # @type request: :class:`Tencentcloud::ic::V20190307::SendMultiSmsRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::SendMultiSmsResponse`
        def SendMultiSms(request)
          body = send_request('SendMultiSms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendMultiSmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送短信息接口

        # @param request: Request instance for SendSms.
        # @type request: :class:`Tencentcloud::ic::V20190307::SendSmsRequest`
        # @rtype: :class:`Tencentcloud::ic::V20190307::SendSmsResponse`
        def SendSms(request)
          body = send_request('SendSms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendSmsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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