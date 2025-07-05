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
  module Cii
    module V20201210
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-10'
            api_endpoint = 'cii.tencentcloudapi.com'
            sdk_version = 'CII_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 基于提供的客户及保单信息，启动结构化识别任务。

        # @param request: Request instance for CreateStructureTask.
        # @type request: :class:`Tencentcloud::cii::V20201210::CreateStructureTaskRequest`
        # @rtype: :class:`Tencentcloud::cii::V20201210::CreateStructureTaskResponse`
        def CreateStructureTask(request)
          body = send_request('CreateStructureTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStructureTaskResponse.new
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

        # 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。

        # @param request: Request instance for DescribeStructCompareData.
        # @type request: :class:`Tencentcloud::cii::V20201210::DescribeStructCompareDataRequest`
        # @rtype: :class:`Tencentcloud::cii::V20201210::DescribeStructCompareDataResponse`
        def DescribeStructCompareData(request)
          body = send_request('DescribeStructCompareData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructCompareDataResponse.new
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

        # 依据任务ID获取结构化结果接口。

        # @param request: Request instance for DescribeStructureTaskResult.
        # @type request: :class:`Tencentcloud::cii::V20201210::DescribeStructureTaskResultRequest`
        # @rtype: :class:`Tencentcloud::cii::V20201210::DescribeStructureTaskResultResponse`
        def DescribeStructureTaskResult(request)
          body = send_request('DescribeStructureTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructureTaskResultResponse.new
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