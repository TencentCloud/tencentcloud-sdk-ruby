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
  module Captcha
    module V20190722
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-22'
            api_endpoint = 'captcha.tencentcloudapi.com'
            sdk_version = 'CAPTCHA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询安全验证码应用APPId信息

        # @param request: Request instance for DescribeCaptchaAppIdInfo.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaAppIdInfoRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaAppIdInfoResponse`
        def DescribeCaptchaAppIdInfo(request)
          body = send_request('DescribeCaptchaAppIdInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaAppIdInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3  分钟级查询

        # @param request: Request instance for DescribeCaptchaData.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaDataRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaDataResponse`
        def DescribeCaptchaData(request)
          body = send_request('DescribeCaptchaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码查询请求数据概况，例如：按照时间段查询数据  昨日请求量、昨日恶意比例、昨日验证量、昨日通过量、昨日恶意拦截量……

        # @param request: Request instance for DescribeCaptchaDataSum.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaDataSumRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaDataSumResponse`
        def DescribeCaptchaDataSum(request)
          body = send_request('DescribeCaptchaDataSum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaDataSumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码小程序插件分类查询数据接口，请求量type=0、通过量type=1、验证量type=2、拦截量type=3 小时级查询（五小时左右延迟）

        # @param request: Request instance for DescribeCaptchaMiniData.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniDataRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniDataResponse`
        def DescribeCaptchaMiniData(request)
          body = send_request('DescribeCaptchaMiniData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaMiniDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码小程序插件查询请求数据概况

        # @param request: Request instance for DescribeCaptchaMiniDataSum.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniDataSumRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniDataSumResponse`
        def DescribeCaptchaMiniDataSum(request)
          body = send_request('DescribeCaptchaMiniDataSum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaMiniDataSumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码小程序插件用户操作数据查询

        # @param request: Request instance for DescribeCaptchaMiniOperData.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniOperDataRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniOperDataResponse`
        def DescribeCaptchaMiniOperData(request)
          body = send_request('DescribeCaptchaMiniOperData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaMiniOperDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核查验证码票据结果(小程序插件)

        # @param request: Request instance for DescribeCaptchaMiniResult.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniResultRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniResultResponse`
        def DescribeCaptchaMiniResult(request)
          body = send_request('DescribeCaptchaMiniResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaMiniResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核查验证码小程序插件票据接入风控结果(已停用)

        # @param request: Request instance for DescribeCaptchaMiniRiskResult.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniRiskResultRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaMiniRiskResultResponse`
        def DescribeCaptchaMiniRiskResult(request)
          body = send_request('DescribeCaptchaMiniRiskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaMiniRiskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码用户操作数据查询，验证码加载耗时type = 1 、拦截情况type = 2、 一周通过平均尝试次数 type = 3、尝试次数分布 type = 4

        # @param request: Request instance for DescribeCaptchaOperData.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaOperDataRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaOperDataResponse`
        def DescribeCaptchaOperData(request)
          body = send_request('DescribeCaptchaOperData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaOperDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 核查验证码票据结果(Web及APP)

        # @param request: Request instance for DescribeCaptchaResult.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaResultRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaResultResponse`
        def DescribeCaptchaResult(request)
          body = send_request('DescribeCaptchaResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码用户操作票据数据查询

        # @param request: Request instance for DescribeCaptchaTicketData.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaTicketDataRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaTicketDataResponse`
        def DescribeCaptchaTicketData(request)
          body = send_request('DescribeCaptchaTicketData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaTicketDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全验证码获取用户注册所有APPId和应用名称

        # @param request: Request instance for DescribeCaptchaUserAllAppId.
        # @type request: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaUserAllAppIdRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::DescribeCaptchaUserAllAppIdResponse`
        def DescribeCaptchaUserAllAppId(request)
          body = send_request('DescribeCaptchaUserAllAppId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCaptchaUserAllAppIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个CaptchaAppID票据校验数据，包括：票据校验量、票据校验通过量、票据校验拦截量。

        # @param request: Request instance for GetTicketStatistics.
        # @type request: :class:`Tencentcloud::captcha::V20190722::GetTicketStatisticsRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::GetTicketStatisticsResponse`
        def GetTicketStatistics(request)
          body = send_request('GetTicketStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTicketStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询全部票据校验的统计数据，包括：总票据校验量、总票据校验通过量、总票据校验拦截量。

        # @param request: Request instance for GetTotalTicketStatistics.
        # @type request: :class:`Tencentcloud::captcha::V20190722::GetTotalTicketStatisticsRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::GetTotalTicketStatisticsResponse`
        def GetTotalTicketStatistics(request)
          body = send_request('GetTotalTicketStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTotalTicketStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新验证码应用APPId信息

        # @param request: Request instance for UpdateCaptchaAppIdInfo.
        # @type request: :class:`Tencentcloud::captcha::V20190722::UpdateCaptchaAppIdInfoRequest`
        # @rtype: :class:`Tencentcloud::captcha::V20190722::UpdateCaptchaAppIdInfoResponse`
        def UpdateCaptchaAppIdInfo(request)
          body = send_request('UpdateCaptchaAppIdInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCaptchaAppIdInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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