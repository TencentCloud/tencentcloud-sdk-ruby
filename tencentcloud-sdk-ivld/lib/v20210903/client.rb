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
  module Ivld
    module V20210903
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-09-03'
            api_endpoint = 'ivld.tencentcloudapi.com'
            sdk_version = 'IVLD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建智能标签任务。

        # 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
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

        # 将MediaId对应的媒资文件从系统中删除。

        # **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。

        # @param request: Request instance for DeleteMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteMediaResponse`
        def DeleteMedia(request)
          body = send_request('DeleteMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMediaResponse.new
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

        # 描述媒资文件信息，包括媒资状态，分辨率，帧率等。

        # 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。

        # @param request: Request instance for DescribeMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeMediaResponse`
        def DescribeMedia(request)
          body = send_request('DescribeMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaResponse.new
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

        # 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。

        # 请注意，本接口最多支持同时描述**50**个媒资文件

        # 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。

        # @param request: Request instance for DescribeMedias.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeMediasRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeMediasResponse`
        def DescribeMedias(request)
          body = send_request('DescribeMedias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediasResponse.new
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

        # 描述智能标签任务进度。

        # 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**


        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
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

        # 描述任务信息，如果任务成功完成，还将返回任务结果

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTaskDetailResponse`
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

        # 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。

        # 请注意，本接口最多支持同时描述**50**个任务信息

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTasksResponse`
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

        # 将URL指向的媒资视频文件导入系统之中。

        # **请注意，本接口为异步接口**。接口返回MediaId仅代表导入视频任务发起，不代表任务完成，您可调用读接口(DescribeMedia/DescribeMedias)接口查询MediaId对应的媒资文件的状态。

        # 当前URL只支持COS地址，其形式为`https://${Bucket}-${AppId}.cos.${Region}.myqcloud.com/${ObjectKey}`，其中`${Bucket}`为您的COS桶名称，Region为COS桶所在[可用区](https://cloud.tencent.com/document/product/213/6091)，`${ObjectKey}`为指向存储在COS桶内的待分析的视频的[ObjectKey](https://cloud.tencent.com/document/product/436/13324)

        # 分析完成后，本产品将在您的`${Bucket}`桶内创建名为`${ObjectKey}-${task-start-time}`的目录(`task-start-time`形式为1970-01-01T08:08:08)并将分析结果将回传回该目录，也即，结构化分析结果(包括图片，JSON等数据)将会写回`https://${Bucket}-${AppId}.cos.${Region}.myqcloud.com/${ObjectKey}-${task-start-time}`目录

        # @param request: Request instance for ImportMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::ImportMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::ImportMediaResponse`
        def ImportMedia(request)
          body = send_request('ImportMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportMediaResponse.new
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