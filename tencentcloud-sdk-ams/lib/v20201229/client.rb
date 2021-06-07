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
  module Ams
    module V20201229
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-12-29'
        @@endpoint = 'ams.tencentcloudapi.com'
        @@sdk_version = 'AMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 取消任务

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::ams::V20201229::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::ams::V20201229::CancelTaskResponse`
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

        # 本接口（CreateAudioModerationSyncTask） 用于提交短音频内容进行智能审核任务，使用前请您登陆控制台开通音频内容安全服务。

        # 功能使用说明：
        # 前往“内容安全控制台-音频内容安全”开启使用音频内容安全服务，首次开通可获得10小时免费调用时长；

        # 接口限制：
        # - 音频文件大小支持：文件 < 5M;
        # - 音频文件时长小于60s，超过60s音频调用则报错；
        # - 音频码率类型支持：8Kbps - 16Kbps；
        # - 音频文件支持格式：wav、mp3；
        # - 接口仅限音频文件传入，视频文件传入请调用长音频异步接口；
        # - 接口默认QPS为10，默认接口请求频率限制20次/秒，如需要更高的并发或请求频率，请工单咨询；
        # - 接口超时为5s，每一次请求超过该时长会报错；

        # @param request: Request instance for CreateAudioModerationSyncTask.
        # @type request: :class:`Tencentcloud::ams::V20201229::CreateAudioModerationSyncTaskRequest`
        # @rtype: :class:`Tencentcloud::ams::V20201229::CreateAudioModerationSyncTaskResponse`
        def CreateAudioModerationSyncTask(request)
          body = send_request('CreateAudioModerationSyncTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAudioModerationSyncTaskResponse.new
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

        # 本接口（Audio Moderation）用于提交音频内容（包括音频文件或流地址）进行智能审核任务，使用前请您登陆控制台开通音频内容安全服务。

        # ### 功能使用说明：
        # - 前往“内容安全控制台-音频内容安全”开启使用音频内容安全服务，首次开通可获得20小时免费调用时长

        # ### 接口功能说明：
        # - 支持对音频流或音频文件进行检测，判断其中是否包含违规内容；
        # - 支持设置回调地址 Callback 获取检测结果，或通过接口(查询音频检测结果)主动轮询获取检测结果；
        # - 支持识别违规内容，包括：低俗、谩骂、色情、涉政、广告等场景；
        # - 支持批量提交检测任务。检测任务列表最多支持10个；

        # ### 音频文件调用说明：
        # - 音频文件大小支持：文件 < 500M；
        # - 音频文件时长支持：< 1小时；
        # - 音频码率类型支持：128 Kbps - 256 Kbps ；
        # - 音频文件支持格式：wav、mp3、aac、flac、amr、3gp、 m4a、wma、ogg、ape；
        # - 支持音视频文件分离并对音频文件进行独立识别；

        # ### 音频流调用说明：
        # - 音频流时长支持：< 3小时；
        # - 音频码率类型支持：128 Kbps - 256 Kbps ；
        # - 音频流支持的传输协议：RTMP、HTTP、HTTPS；
        # - 音频流格式支持的类型：rtp、srtp、rtmp、rtmps、mmsh、 mmst、hls、http、tcp、https、m3u8；
        # - 支持音视频流分离并对音频流进行独立识别；

        # @param request: Request instance for CreateAudioModerationTask.
        # @type request: :class:`Tencentcloud::ams::V20201229::CreateAudioModerationTaskRequest`
        # @rtype: :class:`Tencentcloud::ams::V20201229::CreateAudioModerationTaskResponse`
        def CreateAudioModerationTask(request)
          body = send_request('CreateAudioModerationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAudioModerationTaskResponse.new
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

        # 查看任务详情

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::ams::V20201229::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::ams::V20201229::DescribeTaskDetailResponse`
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

        # 查看审核任务列表

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::ams::V20201229::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::ams::V20201229::DescribeTasksResponse`
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