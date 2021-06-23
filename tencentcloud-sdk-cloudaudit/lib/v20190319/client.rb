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
  module Cloudaudit
    module V20190319
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-19'
            api_endpoint = 'cloudaudit.tencentcloudapi.com'
            sdk_version = 'CLOUDAUDIT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 参数要求：
        # 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
        # 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
        # 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
        # 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项

        # @param request: Request instance for CreateAudit.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::CreateAuditRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::CreateAuditResponse`
        def CreateAudit(request)
          body = send_request('CreateAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除跟踪集

        # @param request: Request instance for DeleteAudit.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::DeleteAuditRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::DeleteAuditResponse`
        def DeleteAudit(request)
          body = send_request('DeleteAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询跟踪集详情

        # @param request: Request instance for DescribeAudit.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::DescribeAuditRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::DescribeAuditResponse`
        def DescribeAudit(request)
          body = send_request('DescribeAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云审计日志

        # @param request: Request instance for DescribeEvents.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::DescribeEventsRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::DescribeEventsResponse`
        def DescribeEvents(request)
          body = send_request('DescribeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询AttributeKey的有效取值范围

        # @param request: Request instance for GetAttributeKey.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::GetAttributeKeyRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::GetAttributeKeyResponse`
        def GetAttributeKey(request)
          body = send_request('GetAttributeKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAttributeKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户可创建跟踪集的数量

        # @param request: Request instance for InquireAuditCredit.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::InquireAuditCreditRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::InquireAuditCreditResponse`
        def InquireAuditCredit(request)
          body = send_request('InquireAuditCredit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquireAuditCreditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询跟踪集概要

        # @param request: Request instance for ListAudits.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::ListAuditsRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::ListAuditsResponse`
        def ListAudits(request)
          body = send_request('ListAudits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAuditsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云审计支持的cmq的可用区

        # @param request: Request instance for ListCmqEnableRegion.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::ListCmqEnableRegionRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::ListCmqEnableRegionResponse`
        def ListCmqEnableRegion(request)
          body = send_request('ListCmqEnableRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListCmqEnableRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云审计支持的cos可用区

        # @param request: Request instance for ListCosEnableRegion.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::ListCosEnableRegionRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::ListCosEnableRegionResponse`
        def ListCosEnableRegion(request)
          body = send_request('ListCosEnableRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListCosEnableRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据地域获取KMS密钥别名

        # @param request: Request instance for ListKeyAliasByRegion.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::ListKeyAliasByRegionRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::ListKeyAliasByRegionResponse`
        def ListKeyAliasByRegion(request)
          body = send_request('ListKeyAliasByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListKeyAliasByRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对操作日志进行检索，便于用户进行查询相关的操作信息。

        # @param request: Request instance for LookUpEvents.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::LookUpEventsRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::LookUpEventsResponse`
        def LookUpEvents(request)
          body = send_request('LookUpEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LookUpEventsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启跟踪集

        # @param request: Request instance for StartLogging.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::StartLoggingRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::StartLoggingResponse`
        def StartLogging(request)
          body = send_request('StartLogging', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartLoggingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭跟踪集

        # @param request: Request instance for StopLogging.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::StopLoggingRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::StopLoggingResponse`
        def StopLogging(request)
          body = send_request('StopLogging', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLoggingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 参数要求：
        # 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
        # 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
        # 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
        # 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项

        # @param request: Request instance for UpdateAudit.
        # @type request: :class:`Tencentcloud::cloudaudit::V20190319::UpdateAuditRequest`
        # @rtype: :class:`Tencentcloud::cloudaudit::V20190319::UpdateAuditResponse`
        def UpdateAudit(request)
          body = send_request('UpdateAudit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAuditResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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