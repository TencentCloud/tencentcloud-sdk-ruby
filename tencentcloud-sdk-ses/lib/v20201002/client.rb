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
  module Ses
    module V20201002
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-10-02'
        @@endpoint = 'ses.tencentcloudapi.com'
        @@sdk_version = 'SES_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 在验证了发信域名之后，您需要一个发信地址来发送邮件。例如发信域名是mail.qcloud.com，那么发信地址可以为 service@mail.qcloud.com。如果您想要收件人在收件箱列表中显示您的别名，例如"腾讯云邮件通知"。那么发信地址为： 别名 空格 尖括号 邮箱地址。请注意中间需要有空格

        # @param request: Request instance for CreateEmailAddress.
        # @type request: :class:`Tencentcloud::ses::V20201002::CreateEmailAddressRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::CreateEmailAddressResponse`
        def CreateEmailAddress(request)
          body = send_request('CreateEmailAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmailAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在使用身份发送电子邮件之前，您需要有一个电子邮件域名，该域名可以是您的网站或者移动应用的域名。您首先必须进行验证，证明自己是该域名的所有者，并且授权给腾讯云SES发送许可，才可以从该域名发送电子邮件。

        # @param request: Request instance for CreateEmailIdentity.
        # @type request: :class:`Tencentcloud::ses::V20201002::CreateEmailIdentityRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::CreateEmailIdentityResponse`
        def CreateEmailIdentity(request)
          body = send_request('CreateEmailIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmailIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建模板，该模板可以是TXT或者HTML，请注意如果HTML不要包含外部文件的CSS。模板中的变量使用 {{变量名}} 表示。
        # 注意：模版需要审核通过才可以使用。

        # @param request: Request instance for CreateEmailTemplate.
        # @type request: :class:`Tencentcloud::ses::V20201002::CreateEmailTemplateRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::CreateEmailTemplateResponse`
        def CreateEmailTemplate(request)
          body = send_request('CreateEmailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEmailTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 邮箱被拉黑之后，用户如果确认收件邮箱有效或者已经处于激活状态，可以从腾讯云地址库中删除该黑名单之后继续投递。

        # @param request: Request instance for DeleteBlackList.
        # @type request: :class:`Tencentcloud::ses::V20201002::DeleteBlackListRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::DeleteBlackListResponse`
        def DeleteBlackList(request)
          body = send_request('DeleteBlackList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBlackListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除发信人地址

        # @param request: Request instance for DeleteEmailAddress.
        # @type request: :class:`Tencentcloud::ses::V20201002::DeleteEmailAddressRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::DeleteEmailAddressResponse`
        def DeleteEmailAddress(request)
          body = send_request('DeleteEmailAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEmailAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除发信域名，删除后，将不可再使用该域名进行发信

        # @param request: Request instance for DeleteEmailIdentity.
        # @type request: :class:`Tencentcloud::ses::V20201002::DeleteEmailIdentityRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::DeleteEmailIdentityResponse`
        def DeleteEmailIdentity(request)
          body = send_request('DeleteEmailIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEmailIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除发信模版

        # @param request: Request instance for DeleteEmailTemplate.
        # @type request: :class:`Tencentcloud::ses::V20201002::DeleteEmailTemplateRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::DeleteEmailTemplateResponse`
        def DeleteEmailTemplate(request)
          body = send_request('DeleteEmailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEmailTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取某个发信域名的配置详情

        # @param request: Request instance for GetEmailIdentity.
        # @type request: :class:`Tencentcloud::ses::V20201002::GetEmailIdentityRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::GetEmailIdentityResponse`
        def GetEmailIdentity(request)
          body = send_request('GetEmailIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEmailIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据模板ID获取模板详情

        # @param request: Request instance for GetEmailTemplate.
        # @type request: :class:`Tencentcloud::ses::V20201002::GetEmailTemplateRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::GetEmailTemplateResponse`
        def GetEmailTemplate(request)
          body = send_request('GetEmailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEmailTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取邮件发送状态。仅支持查询90天之内的数据

        # @param request: Request instance for GetSendEmailStatus.
        # @type request: :class:`Tencentcloud::ses::V20201002::GetSendEmailStatusRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::GetSendEmailStatusResponse`
        def GetSendEmailStatus(request)
          body = send_request('GetSendEmailStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSendEmailStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取近期发送的统计情况，包含发送量、送达率、打开率、退信率等一系列数据。最大跨度为14天。

        # @param request: Request instance for GetStatisticsReport.
        # @type request: :class:`Tencentcloud::ses::V20201002::GetStatisticsReportRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::GetStatisticsReportResponse`
        def GetStatisticsReport(request)
          body = send_request('GetStatisticsReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetStatisticsReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。

        # @param request: Request instance for ListBlackEmailAddress.
        # @type request: :class:`Tencentcloud::ses::V20201002::ListBlackEmailAddressRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::ListBlackEmailAddressResponse`
        def ListBlackEmailAddress(request)
          body = send_request('ListBlackEmailAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListBlackEmailAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取发信地址列表

        # @param request: Request instance for ListEmailAddress.
        # @type request: :class:`Tencentcloud::ses::V20201002::ListEmailAddressRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::ListEmailAddressResponse`
        def ListEmailAddress(request)
          body = send_request('ListEmailAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEmailAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前发信域名列表，包含已验证通过与未验证的域名

        # @param request: Request instance for ListEmailIdentities.
        # @type request: :class:`Tencentcloud::ses::V20201002::ListEmailIdentitiesRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::ListEmailIdentitiesResponse`
        def ListEmailIdentities(request)
          body = send_request('ListEmailIdentities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEmailIdentitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前邮件模板列表

        # @param request: Request instance for ListEmailTemplates.
        # @type request: :class:`Tencentcloud::ses::V20201002::ListEmailTemplatesRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::ListEmailTemplatesResponse`
        def ListEmailTemplates(request)
          body = send_request('ListEmailTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListEmailTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以通过此API发送TEXT或者HTML邮件，默认仅支持使用模板发送邮件，如需发送自定义内容，请单独联系商务开通此功能。

        # @param request: Request instance for SendEmail.
        # @type request: :class:`Tencentcloud::ses::V20201002::SendEmailRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::SendEmailResponse`
        def SendEmail(request)
          body = send_request('SendEmail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendEmailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您已经成功配置好了您的DNS，接下来请求腾讯云验证您的DNS配置是否正确

        # @param request: Request instance for UpdateEmailIdentity.
        # @type request: :class:`Tencentcloud::ses::V20201002::UpdateEmailIdentityRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::UpdateEmailIdentityResponse`
        def UpdateEmailIdentity(request)
          body = send_request('UpdateEmailIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEmailIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新邮件模板，更新后需再次审核

        # @param request: Request instance for UpdateEmailTemplate.
        # @type request: :class:`Tencentcloud::ses::V20201002::UpdateEmailTemplateRequest`
        # @rtype: :class:`Tencentcloud::ses::V20201002::UpdateEmailTemplateResponse`
        def UpdateEmailTemplate(request)
          body = send_request('UpdateEmailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEmailTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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