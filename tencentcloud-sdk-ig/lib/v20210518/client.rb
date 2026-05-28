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
  module Ig
    module V20210518
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-18'
            api_endpoint = 'ig.tencentcloudapi.com'
            sdk_version = 'IG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查询智能导诊订单列表

        # @param request: Request instance for DescribeIgOrderList.
        # @type request: :class:`Tencentcloud::ig::V20210518::DescribeIgOrderListRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::DescribeIgOrderListResponse`
        def DescribeIgOrderList(request)
          body = send_request('DescribeIgOrderList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIgOrderListResponse.new
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

        # 大模型问药拍药盒

        # @param request: Request instance for GetLLMDiagnosisDrug.
        # @type request: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisDrugRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisDrugResponse`
        def GetLLMDiagnosisDrug(request)
          body = send_request('GetLLMDiagnosisDrug', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLLMDiagnosisDrugResponse.new
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

        # 大模型问药问答

        # @param request: Request instance for GetLLMDiagnosisDrugChat.
        # @type request: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisDrugChatRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisDrugChatResponse`
        def GetLLMDiagnosisDrugChat(request)
          body = send_request('GetLLMDiagnosisDrugChat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLLMDiagnosisDrugChatResponse.new
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

        # 大模型健康自诊

        # @param request: Request instance for GetLLMDiagnosisHealth.
        # @type request: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisHealthRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::GetLLMDiagnosisHealthResponse`
        def GetLLMDiagnosisHealth(request)
          body = send_request('GetLLMDiagnosisHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLLMDiagnosisHealthResponse.new
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

        # 大模型报告解读

        # @param request: Request instance for GetLLMReportInterpretation.
        # @type request: :class:`Tencentcloud::ig::V20210518::GetLLMReportInterpretationRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::GetLLMReportInterpretationResponse`
        def GetLLMReportInterpretation(request)
          body = send_request('GetLLMReportInterpretation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLLMReportInterpretationResponse.new
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

        # 查询药品说明书

        # @param request: Request instance for QueryDrugInstructions.
        # @type request: :class:`Tencentcloud::ig::V20210518::QueryDrugInstructionsRequest`
        # @rtype: :class:`Tencentcloud::ig::V20210518::QueryDrugInstructionsResponse`
        def QueryDrugInstructions(request)
          body = send_request('QueryDrugInstructions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDrugInstructionsResponse.new
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