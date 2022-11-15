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
  module Vm
    module V20210922
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-09-22'
            api_endpoint = 'vm.tencentcloudapi.com'
            sdk_version = 'VM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 取消任务

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::vm::V20210922::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::vm::V20210922::CancelTaskResponse`
        def CancelTask(request)
          body = send_request('CancelTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTaskResponse.new
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

        # 通过URL或存储桶创建审核任务。

        # ### 直播断流处理说明：
        # - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
        # - 如果直播任务取消/结束，则终止直播拉流并退出审核。
        # - 如果直播任务没有取消/结束，直播视频推流因故中断，产品将在将在10分钟内持续拉流重试。如果10分钟检测到图片截帧/音频切片数据，则恢复正常审核，反之，则终止拉流并退出审核。在拉流终止后，用户如有审核需求，需重新送审。

        # 默认接口请求频率限制：20次/秒。

        # @param request: Request instance for CreateVideoModerationTask.
        # @type request: :class:`Tencentcloud::vm::V20210922::CreateVideoModerationTaskRequest`
        # @rtype: :class:`Tencentcloud::vm::V20210922::CreateVideoModerationTaskResponse`
        def CreateVideoModerationTask(request)
          body = send_request('CreateVideoModerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoModerationTaskResponse.new
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

        # 查看任务详情DescribeTaskDetail

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::vm::V20210922::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::vm::V20210922::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
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

        # 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。<br>

        # 默认接口请求频率限制：**20次/秒**。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::vm::V20210922::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::vm::V20210922::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
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