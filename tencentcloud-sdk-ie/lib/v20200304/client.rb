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
  module Ie
    module V20200304
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-03-04'
        @@endpoint = 'ie.tencentcloudapi.com'
        @@sdk_version = 'IE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 创建智能编辑任务，可以同时选择视频标签识别、分类识别、智能拆条、智能集锦、智能封面和片头片尾识别中的一项或者多项能力。

        # @param request: Request instance for CreateEditingTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::CreateEditingTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::CreateEditingTaskResponse`
        def CreateEditingTask(request)
          body = send_request('CreateEditingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEditingTaskResponse.new
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

        # 获取智能编辑任务结果。

        # @param request: Request instance for DescribeEditingTaskResult.
        # @type request: :class:`Tencentcloud::ie::V20200304::DescribeEditingTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::DescribeEditingTaskResultResponse`
        def DescribeEditingTaskResult(request)
          body = send_request('DescribeEditingTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEditingTaskResultResponse.new
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