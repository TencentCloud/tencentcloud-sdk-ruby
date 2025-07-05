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
  module Tiw
    module V20190919
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-09-19'
            api_endpoint = 'tiw.tencentcloudapi.com'
            sdk_version = 'TIW_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检测PPT文件，识别PPT中包含的动态转码任务（Transcode）不支持的元素

        # @param request: Request instance for CreatePPTCheckTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreatePPTCheckTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreatePPTCheckTaskResponse`
        def CreatePPTCheckTask(request)
          body = send_request('CreatePPTCheckTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePPTCheckTaskResponse.new
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

        # 创建白板板书生成任务, 在任务结束后，如果提供了回调地址，将通过回调地址通知板书生成结果

        # @param request: Request instance for CreateSnapshotTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateSnapshotTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateSnapshotTaskResponse`
        def CreateSnapshotTask(request)
          body = send_request('CreateSnapshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSnapshotTaskResponse.new
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

        # 创建一个文档转码任务

        # @param request: Request instance for CreateTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateTranscodeResponse`
        def CreateTranscode(request)
          body = send_request('CreateTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTranscodeResponse.new
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

        # 创建视频生成任务

        # @param request: Request instance for CreateVideoGenerationTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::CreateVideoGenerationTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::CreateVideoGenerationTaskResponse`
        def CreateVideoGenerationTask(request)
          body = send_request('CreateVideoGenerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoGenerationTaskResponse.new
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

        # 查询录制任务状态与结果

        # @param request: Request instance for DescribeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordResponse`
        def DescribeOnlineRecord(request)
          body = send_request('DescribeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordResponse.new
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

        # 查询实时录制回调地址

        # @param request: Request instance for DescribeOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeOnlineRecordCallbackResponse`
        def DescribeOnlineRecordCallback(request)
          body = send_request('DescribeOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOnlineRecordCallbackResponse.new
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

        # 查询PPT检测任务的执行进度或结果，支持查询最近半年内的任务结果

        # @param request: Request instance for DescribePPTCheck.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribePPTCheckRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribePPTCheckResponse`
        def DescribePPTCheck(request)
          body = send_request('DescribePPTCheck', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePPTCheckResponse.new
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

        # 查询PPT检测任务回调地址

        # @param request: Request instance for DescribePPTCheckCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribePPTCheckCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribePPTCheckCallbackResponse`
        def DescribePPTCheckCallback(request)
          body = send_request('DescribePPTCheckCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePPTCheckCallbackResponse.new
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

        # 根据指定的任务类型，获取当前正在执行中的任务列表。只能查询最近3天内创建的任务。

        # @param request: Request instance for DescribeRunningTasks.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeRunningTasksRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeRunningTasksResponse`
        def DescribeRunningTasks(request)
          body = send_request('DescribeRunningTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRunningTasksResponse.new
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

        # 获取指定白板板书生成任务信息

        # @param request: Request instance for DescribeSnapshotTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeSnapshotTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeSnapshotTaskResponse`
        def DescribeSnapshotTask(request)
          body = send_request('DescribeSnapshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotTaskResponse.new
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

        # 查询文档转码任务的执行进度与转码结果

        # @param request: Request instance for DescribeTranscode.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeResponse`
        def DescribeTranscode(request)
          body = send_request('DescribeTranscode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeResponse.new
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

        # 通过文档URL查询转码任务，返回最近一天内最新的转码任务状态

        # @param request: Request instance for DescribeTranscodeByUrl.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeByUrlRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeByUrlResponse`
        def DescribeTranscodeByUrl(request)
          body = send_request('DescribeTranscodeByUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeByUrlResponse.new
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

        # 查询文档转码回调地址

        # @param request: Request instance for DescribeTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeTranscodeCallbackResponse`
        def DescribeTranscodeCallback(request)
          body = send_request('DescribeTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeCallbackResponse.new
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

        # 查询录制视频生成任务状态与结果

        # @param request: Request instance for DescribeVideoGenerationTask.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskResponse`
        def DescribeVideoGenerationTask(request)
          body = send_request('DescribeVideoGenerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoGenerationTaskResponse.new
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

        # 查询录制视频生成回调地址

        # @param request: Request instance for DescribeVideoGenerationTaskCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeVideoGenerationTaskCallbackResponse`
        def DescribeVideoGenerationTaskCallback(request)
          body = send_request('DescribeVideoGenerationTaskCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoGenerationTaskCallbackResponse.new
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

        # 查询告警回调地址。此功能需要申请白名单使用。

        # @param request: Request instance for DescribeWarningCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWarningCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWarningCallbackResponse`
        def DescribeWarningCallback(request)
          body = send_request('DescribeWarningCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWarningCallbackResponse.new
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

        # 查询推流任务状态与结果

        # @param request: Request instance for DescribeWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushResponse`
        def DescribeWhiteboardPush(request)
          body = send_request('DescribeWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardPushResponse.new
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

        # 查询白板推流回调地址

        # @param request: Request instance for DescribeWhiteboardPushCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::DescribeWhiteboardPushCallbackResponse`
        def DescribeWhiteboardPushCallback(request)
          body = send_request('DescribeWhiteboardPushCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteboardPushCallbackResponse.new
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

        # 暂停实时录制

        # @param request: Request instance for PauseOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::PauseOnlineRecordResponse`
        def PauseOnlineRecord(request)
          body = send_request('PauseOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseOnlineRecordResponse.new
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

        # 恢复实时录制

        # @param request: Request instance for ResumeOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::ResumeOnlineRecordResponse`
        def ResumeOnlineRecord(request)
          body = send_request('ResumeOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeOnlineRecordResponse.new
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

        # 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258

        # @param request: Request instance for SetOnlineRecordCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackResponse`
        def SetOnlineRecordCallback(request)
          body = send_request('SetOnlineRecordCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackResponse.new
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

        # 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetOnlineRecordCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetOnlineRecordCallbackKeyResponse`
        def SetOnlineRecordCallbackKey(request)
          body = send_request('SetOnlineRecordCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetOnlineRecordCallbackKeyResponse.new
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

        # 设置PPT检测任务回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81

        # @param request: Request instance for SetPPTCheckCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetPPTCheckCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetPPTCheckCallbackResponse`
        def SetPPTCheckCallback(request)
          body = send_request('SetPPTCheckCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetPPTCheckCallbackResponse.new
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

        # 设置PPT检测任务回调密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetPPTCheckCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetPPTCheckCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetPPTCheckCallbackKeyResponse`
        def SetPPTCheckCallbackKey(request)
          body = send_request('SetPPTCheckCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetPPTCheckCallbackKeyResponse.new
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

        # 设置文档转码回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260

        # @param request: Request instance for SetTranscodeCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackResponse`
        def SetTranscodeCallback(request)
          body = send_request('SetTranscodeCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackResponse.new
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

        # 设置文档转码回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetTranscodeCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetTranscodeCallbackKeyResponse`
        def SetTranscodeCallbackKey(request)
          body = send_request('SetTranscodeCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTranscodeCallbackKeyResponse.new
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

        # 设置录制视频生成回调地址

        # @param request: Request instance for SetVideoGenerationTaskCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackResponse`
        def SetVideoGenerationTaskCallback(request)
          body = send_request('SetVideoGenerationTaskCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVideoGenerationTaskCallbackResponse.new
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

        # 设置视频生成回调鉴权密钥

        # @param request: Request instance for SetVideoGenerationTaskCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetVideoGenerationTaskCallbackKeyResponse`
        def SetVideoGenerationTaskCallbackKey(request)
          body = send_request('SetVideoGenerationTaskCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVideoGenerationTaskCallbackKeyResponse.new
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

        # 设置告警回调地址。此功能需要申请白名单使用。

        # @param request: Request instance for SetWarningCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetWarningCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetWarningCallbackResponse`
        def SetWarningCallback(request)
          body = send_request('SetWarningCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWarningCallbackResponse.new
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

        # 设置白板推流回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetWhiteboardPushCallback.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackResponse`
        def SetWhiteboardPushCallback(request)
          body = send_request('SetWhiteboardPushCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWhiteboardPushCallbackResponse.new
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

        # 设置白板推流回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257

        # @param request: Request instance for SetWhiteboardPushCallbackKey.
        # @type request: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackKeyRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::SetWhiteboardPushCallbackKeyResponse`
        def SetWhiteboardPushCallbackKey(request)
          body = send_request('SetWhiteboardPushCallbackKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWhiteboardPushCallbackKeyResponse.new
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

        # 发起一个实时录制任务

        # @param request: Request instance for StartOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StartOnlineRecordResponse`
        def StartOnlineRecord(request)
          body = send_request('StartOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartOnlineRecordResponse.new
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

        # 发起一个白板推流任务

        # @param request: Request instance for StartWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StartWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StartWhiteboardPushResponse`
        def StartWhiteboardPush(request)
          body = send_request('StartWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartWhiteboardPushResponse.new
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

        # 停止实时录制

        # @param request: Request instance for StopOnlineRecord.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StopOnlineRecordResponse`
        def StopOnlineRecord(request)
          body = send_request('StopOnlineRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopOnlineRecordResponse.new
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

        # 停止白板推流任务

        # @param request: Request instance for StopWhiteboardPush.
        # @type request: :class:`Tencentcloud::tiw::V20190919::StopWhiteboardPushRequest`
        # @rtype: :class:`Tencentcloud::tiw::V20190919::StopWhiteboardPushResponse`
        def StopWhiteboardPush(request)
          body = send_request('StopWhiteboardPush', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopWhiteboardPushResponse.new
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