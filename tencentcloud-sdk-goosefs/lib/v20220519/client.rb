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
  module Goosefs
    module V20220519
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-05-19'
            api_endpoint = 'goosefs.tencentcloudapi.com'
            sdk_version = 'GOOSEFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建数据流通任务,包括从将文件系统的数据上传到存储桶下, 以及从存储桶下载到文件系统里。

        # @param request: Request instance for CreateDataRepositoryTask.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::CreateDataRepositoryTaskRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::CreateDataRepositoryTaskResponse`
        def CreateDataRepositoryTask(request)
          body = send_request('CreateDataRepositoryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataRepositoryTaskResponse.new
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

        # 获取数据流通任务实时状态，用作客户端控制

        # @param request: Request instance for DescribeDataRepositoryTaskStatus.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeDataRepositoryTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeDataRepositoryTaskStatusResponse`
        def DescribeDataRepositoryTaskStatus(request)
          body = send_request('DescribeDataRepositoryTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataRepositoryTaskStatusResponse.new
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