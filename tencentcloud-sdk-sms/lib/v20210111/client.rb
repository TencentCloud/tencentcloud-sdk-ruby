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
  module Sms
    module V20210111
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-11'
            api_endpoint = 'sms.tencentcloudapi.com'
            sdk_version = 'SMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 (AddSmsSign) 用于添加短信签名。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>添加短信签名前，请先认真参阅 <a href="https://cloud.tencent.com/document/product/382/39022">腾讯云短信签名审核标准。</a></li><li>个人认证用户不支持使用 API 申请短信签名，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 申请短信签名。</li></ul></blockquote>

        # @param request: Request instance for AddSmsSign.
        # @type request: :class:`Tencentcloud::sms::V20210111::AddSmsSignRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::AddSmsSignResponse`
        def AddSmsSign(request)
          body = send_request('AddSmsSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSmsSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AddSmsTemplate) 用于创建短信模板。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>申请短信模板前，请先认真参阅 <a href="https://cloud.tencent.com/document/product/382/39023">腾讯云短信正文模板审核标准。</a></li><li>个人认证用户不支持使用 API 申请短信正文模板，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 申请短信正文模板。</li></ul></blockquote>

        # @param request: Request instance for AddSmsTemplate.
        # @type request: :class:`Tencentcloud::sms::V20210111::AddSmsTemplateRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::AddSmsTemplateResponse`
        def AddSmsTemplate(request)
          body = send_request('AddSmsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSmsTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CallbackStatusStatistics) 用于统计用户回执的数据。

        # @param request: Request instance for CallbackStatusStatistics.
        # @type request: :class:`Tencentcloud::sms::V20210111::CallbackStatusStatisticsRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::CallbackStatusStatisticsResponse`
        def CallbackStatusStatistics(request)
          body = send_request('CallbackStatusStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallbackStatusStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteSmsSign) 用于删除短信签名。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>个人认证用户不支持使用 API 删除短信签名，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 删除短信签名。</li></ul></blockquote>

        # @param request: Request instance for DeleteSmsSign.
        # @type request: :class:`Tencentcloud::sms::V20210111::DeleteSmsSignRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::DeleteSmsSignResponse`
        def DeleteSmsSign(request)
          body = send_request('DeleteSmsSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSmsSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteSmsTemplate) 用于删除短信模板。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>个人认证用户不支持使用 API 删除短信正文模板，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 删除短信正文模板。</li></ul></blockquote>

        # @param request: Request instance for DeleteSmsTemplate.
        # @type request: :class:`Tencentcloud::sms::V20210111::DeleteSmsTemplateRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::DeleteSmsTemplateResponse`
        def DeleteSmsTemplate(request)
          body = send_request('DeleteSmsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSmsTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribePhoneNumberInfo) 用于提供电话号码的信息查询，包括国家（或地区）码、规范的 E.164 格式号码等。
        # - 例如：查询号码 +86018501234444，可以得到国家码 86、规范的 E.164 号码 +8618501234444 等信息。

        # @param request: Request instance for DescribePhoneNumberInfo.
        # @type request: :class:`Tencentcloud::sms::V20210111::DescribePhoneNumberInfoRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::DescribePhoneNumberInfoResponse`
        def DescribePhoneNumberInfo(request)
          body = send_request('DescribePhoneNumberInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePhoneNumberInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSmsSignList) 用于查询短信签名状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>个人认证用户不支持使用 API 查询短信签名，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 查询短信签名。</li></ul></blockquote>

        # @param request: Request instance for DescribeSmsSignList.
        # @type request: :class:`Tencentcloud::sms::V20210111::DescribeSmsSignListRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::DescribeSmsSignListResponse`
        def DescribeSmsSignList(request)
          body = send_request('DescribeSmsSignList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmsSignListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSmsTemplateList) 用于查询短信模板状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 查询短信正文模板。</li></ul></blockquote>

        # @param request: Request instance for DescribeSmsTemplateList.
        # @type request: :class:`Tencentcloud::sms::V20210111::DescribeSmsTemplateListRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::DescribeSmsTemplateListResponse`
        def DescribeSmsTemplateList(request)
          body = send_request('DescribeSmsTemplateList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmsTemplateListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifySmsSign) 用于修改短信签名。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>修改短信签名前，请先认真参阅 <a href="https://cloud.tencent.com/document/product/382/39022">腾讯云短信签名审核标准。</a></li><li>个人认证用户不支持使用 API 修改短信签名，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 修改短信签名。</li><li>修改短信签名，仅当签名为<b>待审核</b>或<b>已拒绝</b>状态时，才能进行修改，<b>已审核通过</b>的签名不支持修改。</li></ul></blockquote>

        # @param request: Request instance for ModifySmsSign.
        # @type request: :class:`Tencentcloud::sms::V20210111::ModifySmsSignRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::ModifySmsSignResponse`
        def ModifySmsSign(request)
          body = send_request('ModifySmsSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySmsSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifySmsTemplate) 用于修改短信模板。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>修改短信正文模板前，请先认真参阅 <a href="https://cloud.tencent.com/document/product/382/39023">腾讯云短信正文模板审核标准。</a></li><li>个人认证用户不支持使用 API 修改短信正文模板，请参阅了解 <a href="https://cloud.tencent.com/document/product/378/3629">实名认证基本介绍</a>，如果为个人认证请登录 <a href="https://console.cloud.tencent.com/smsv2">控制台</a> 修改短信正文模板。</li><li>修改短信模板，仅当正文模板为<b>待审核</b>或<b>已拒绝</b>状态时，才能进行修改，<b>已审核通过</b>的正文模板不支持修改。</li></ul></blockquote>

        # @param request: Request instance for ModifySmsTemplate.
        # @type request: :class:`Tencentcloud::sms::V20210111::ModifySmsTemplateRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::ModifySmsTemplateResponse`
        def ModifySmsTemplate(request)
          body = send_request('ModifySmsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySmsTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (PullSmsReplyStatus) 用于拉取短信回复状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>此接口需要联系  <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 开通。</li><li>上行回复也支持 <a href="https://cloud.tencent.com/document/product/382/42907">配置回复回调</a> 的方式获取。</li></ul></blockquote>

        # @param request: Request instance for PullSmsReplyStatus.
        # @type request: :class:`Tencentcloud::sms::V20210111::PullSmsReplyStatusRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::PullSmsReplyStatusResponse`
        def PullSmsReplyStatus(request)
          body = send_request('PullSmsReplyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullSmsReplyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (PullSmsReplyStatusByPhoneNumber) 用于拉取单个号码短信回复状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>上行回复也支持 <a href="https://cloud.tencent.com/document/product/382/42907">配置回复回调</a> 的方式获取。</li></ul></blockquote>

        # @param request: Request instance for PullSmsReplyStatusByPhoneNumber.
        # @type request: :class:`Tencentcloud::sms::V20210111::PullSmsReplyStatusByPhoneNumberRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::PullSmsReplyStatusByPhoneNumberResponse`
        def PullSmsReplyStatusByPhoneNumber(request)
          body = send_request('PullSmsReplyStatusByPhoneNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullSmsReplyStatusByPhoneNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (PullSmsSendStatus) 用于拉取短信下发状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>此接口需要联系  <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 开通。</li><li>下发状态也支持 <a href="https://cloud.tencent.com/document/product/382/37809#.E7.9F.AD.E4.BF.A1.E7.8A.B6.E6.80.81.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE">配置回调</a> 的方式获取。</li></ul></blockquote>

        # @param request: Request instance for PullSmsSendStatus.
        # @type request: :class:`Tencentcloud::sms::V20210111::PullSmsSendStatusRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::PullSmsSendStatusResponse`
        def PullSmsSendStatus(request)
          body = send_request('PullSmsSendStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullSmsSendStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (PullSmsSendStatusByPhoneNumber) 用于拉取单个号码短信下发状态。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>下发状态也支持 <a href="https://cloud.tencent.com/document/product/382/37809#.E7.9F.AD.E4.BF.A1.E7.8A.B6.E6.80.81.E5.9B.9E.E8.B0.83.E9.85.8D.E7.BD.AE">配置回调</a> 的方式获取。</li></ul></blockquote>

        # @param request: Request instance for PullSmsSendStatusByPhoneNumber.
        # @type request: :class:`Tencentcloud::sms::V20210111::PullSmsSendStatusByPhoneNumberRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::PullSmsSendStatusByPhoneNumberResponse`
        def PullSmsSendStatusByPhoneNumber(request)
          body = send_request('PullSmsSendStatusByPhoneNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullSmsSendStatusByPhoneNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ReportConversion) 用于短信转化率上报。将已接收到短信的流水号上报到腾讯云短信服务。
        # <blockquote class="d-mod-explain"><div class="d-mod-title d-explain-title" style="line-height: normal;"><i class="d-icon-explain"></i>说明：</div><p></p><ul><li>该接口当前以白名单方式对外开放，如有需要请联系  <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a> 开通。</li></ul></blockquote>

        # @param request: Request instance for ReportConversion.
        # @type request: :class:`Tencentcloud::sms::V20210111::ReportConversionRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::ReportConversionResponse`
        def ReportConversion(request)
          body = send_request('ReportConversion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReportConversionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (SendSms) 用于发送验证码、通知类短信和营销短信。支持国内短信与国际/港澳台短信。
        # - 当前接口属于 2021-01-11 版本，如果您仍在使用 [2019-07-11 版本](https://cloud.tencent.com/document/product/382/38778)，建议您使用当前最新版本的接口，版本差异可参考[版本描述](https://cloud.tencent.com/document/product/382/63195#.E7.89.88.E6.9C.AC.E6.8F.8F.E8.BF.B0)。

        # @param request: Request instance for SendSms.
        # @type request: :class:`Tencentcloud::sms::V20210111::SendSmsRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::SendSmsResponse`
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

        # 本接口 (SendStatusStatistics) 用于统计用户发送短信的数据。

        # @param request: Request instance for SendStatusStatistics.
        # @type request: :class:`Tencentcloud::sms::V20210111::SendStatusStatisticsRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::SendStatusStatisticsResponse`
        def SendStatusStatistics(request)
          body = send_request('SendStatusStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendStatusStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (SmsPackagesStatistics) 用于统计用户套餐包数据。

        # @param request: Request instance for SmsPackagesStatistics.
        # @type request: :class:`Tencentcloud::sms::V20210111::SmsPackagesStatisticsRequest`
        # @rtype: :class:`Tencentcloud::sms::V20210111::SmsPackagesStatisticsResponse`
        def SmsPackagesStatistics(request)
          body = send_request('SmsPackagesStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SmsPackagesStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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