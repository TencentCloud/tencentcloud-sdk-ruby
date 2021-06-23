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
  module Zj
    module V20190121
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-21'
            api_endpoint = 'zj.tencentcloudapi.com'
            sdk_version = 'ZJ_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加短信人群包信息

        # @param request: Request instance for AddCrowdPackInfo.
        # @type request: :class:`Tencentcloud::zj::V20190121::AddCrowdPackInfoRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::AddCrowdPackInfoResponse`
        def AddCrowdPackInfo(request)
          body = send_request('AddCrowdPackInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCrowdPackInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建普通短信签名信息

        # @param request: Request instance for AddSmsSign.
        # @type request: :class:`Tencentcloud::zj::V20190121::AddSmsSignRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::AddSmsSignResponse`
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

        # 根据短信标题、模板内容等创建短信模板

        # @param request: Request instance for AddSmsTemplate.
        # @type request: :class:`Tencentcloud::zj::V20190121::AddSmsTemplateRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::AddSmsTemplateResponse`
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

        # 取消短信推送活动

        # @param request: Request instance for CancelCampaign.
        # @type request: :class:`Tencentcloud::zj::V20190121::CancelCampaignRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::CancelCampaignResponse`
        def CancelCampaign(request)
          body = send_request('CancelCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建短信推送活动

        # @param request: Request instance for CreateCampaign.
        # @type request: :class:`Tencentcloud::zj::V20190121::CreateCampaignRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::CreateCampaignResponse`
        def CreateCampaign(request)
          body = send_request('CreateCampaign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCampaignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建超级短信的素材样例内容

        # @param request: Request instance for CreateMmsInstance.
        # @type request: :class:`Tencentcloud::zj::V20190121::CreateMmsInstanceRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::CreateMmsInstanceResponse`
        def CreateMmsInstance(request)
          body = send_request('CreateMmsInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMmsInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除人群包

        # @param request: Request instance for DelCrowdPack.
        # @type request: :class:`Tencentcloud::zj::V20190121::DelCrowdPackRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DelCrowdPackResponse`
        def DelCrowdPack(request)
          body = send_request('DelCrowdPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DelCrowdPackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除短信模板

        # @param request: Request instance for DelTemplate.
        # @type request: :class:`Tencentcloud::zj::V20190121::DelTemplateRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DelTemplateResponse`
        def DelTemplate(request)
          body = send_request('DelTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DelTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除超级短信样例

        # @param request: Request instance for DeleteMmsInstance.
        # @type request: :class:`Tencentcloud::zj::V20190121::DeleteMmsInstanceRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DeleteMmsInstanceResponse`
        def DeleteMmsInstance(request)
          body = send_request('DeleteMmsInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMmsInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取彩信实例信息

        # @param request: Request instance for DescribeMmsInstanceInfo.
        # @type request: :class:`Tencentcloud::zj::V20190121::DescribeMmsInstanceInfoRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DescribeMmsInstanceInfoResponse`
        def DescribeMmsInstanceInfo(request)
          body = send_request('DescribeMmsInstanceInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMmsInstanceInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取彩信实例列表

        # @param request: Request instance for DescribeMmsInstanceList.
        # @type request: :class:`Tencentcloud::zj::V20190121::DescribeMmsInstanceListRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DescribeMmsInstanceListResponse`
        def DescribeMmsInstanceList(request)
          body = send_request('DescribeMmsInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMmsInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取短信超短活动统计数据

        # @param request: Request instance for DescribeSmsCampaignStatistics.
        # @type request: :class:`Tencentcloud::zj::V20190121::DescribeSmsCampaignStatisticsRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DescribeSmsCampaignStatisticsResponse`
        def DescribeSmsCampaignStatistics(request)
          body = send_request('DescribeSmsCampaignStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmsCampaignStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取普通短信签名信息

        # @param request: Request instance for DescribeSmsSignList.
        # @type request: :class:`Tencentcloud::zj::V20190121::DescribeSmsSignListRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DescribeSmsSignListResponse`
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

        # 获取模板信息

        # @param request: Request instance for DescribeSmsTemplateList.
        # @type request: :class:`Tencentcloud::zj::V20190121::DescribeSmsTemplateListRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::DescribeSmsTemplateListResponse`
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

        # 获取人群包列表接口

        # @param request: Request instance for GetCrowdPackList.
        # @type request: :class:`Tencentcloud::zj::V20190121::GetCrowdPackListRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::GetCrowdPackListResponse`
        def GetCrowdPackList(request)
          body = send_request('GetCrowdPackList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCrowdPackListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取短信人群包cos上传需要的信息

        # @param request: Request instance for GetCrowdUploadInfo.
        # @type request: :class:`Tencentcloud::zj::V20190121::GetCrowdUploadInfoRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::GetCrowdUploadInfoResponse`
        def GetCrowdUploadInfo(request)
          body = send_request('GetCrowdUploadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCrowdUploadInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号短信额度配置信息

        # @param request: Request instance for GetSmsAmountInfo.
        # @type request: :class:`Tencentcloud::zj::V20190121::GetSmsAmountInfoRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::GetSmsAmountInfoResponse`
        def GetSmsAmountInfo(request)
          body = send_request('GetSmsAmountInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSmsAmountInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取短信活动状态信息

        # @param request: Request instance for GetSmsCampaignStatus.
        # @type request: :class:`Tencentcloud::zj::V20190121::GetSmsCampaignStatusRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::GetSmsCampaignStatusResponse`
        def GetSmsCampaignStatus(request)
          body = send_request('GetSmsCampaignStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSmsCampaignStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对未审核或者审核未通过的短信模板内容进行编辑修改

        # @param request: Request instance for ModifySmsTemplate.
        # @type request: :class:`Tencentcloud::zj::V20190121::ModifySmsTemplateRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::ModifySmsTemplateResponse`
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

        # 推送超级短信

        # @param request: Request instance for PushMmsContent.
        # @type request: :class:`Tencentcloud::zj::V20190121::PushMmsContentRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::PushMmsContentResponse`
        def PushMmsContent(request)
          body = send_request('PushMmsContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PushMmsContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发送短信

        # @param request: Request instance for SendSms.
        # @type request: :class:`Tencentcloud::zj::V20190121::SendSmsRequest`
        # @rtype: :class:`Tencentcloud::zj::V20190121::SendSmsResponse`
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