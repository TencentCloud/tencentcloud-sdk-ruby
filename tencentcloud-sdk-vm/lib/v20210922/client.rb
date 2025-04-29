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


        # 可使用该接口取消审核任务，成功取消后，该接口返回已取消任务的TaskId。

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

        # 本接口（Video Moderation System，VM）用于提交视频文件或视频流进行智能审核任务。使用前请您使用腾讯云主账号登录控制台[开通视频内容安全服务](https://console.cloud.tencent.com/cms)并调整好对应的业务配置。<br>
        # ### 功能使用说明：

        # - 前往“[内容安全控制台-视频内容安全](https://console.cloud.tencent.com/cms)”开启使用视频内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含200分钟的处理量（换算1s每帧截图，赠送**12000张图**、**200分钟的音频**处理量），有效期为15天。
        # - 该接口为收费接口，计费方式敬请参见[腾讯云视频内容安全定价](https://cloud.tencent.com/product/vm/pricing)。

        # ### 审核并发限制说明:

        # - **点播视频（异步审核）**
        #     - 默认并发路数：10
        #     - 队列处理机制：
        #         - 当并发任务达到上限时，新任务进入队列等待处理;
        #         - 支持通过`Priority`字段配置任务优先级（数值越大优先级越高），默认情况下新送审任务优先处理，旧任务往后排;
        # - **直播视频（异步审核）**
        #     - 默认并发路数：100
        #     - 队列处理机制：
        #       - 运行中的审核任务达到上限时，新请求会提示超频错误：`RequestLimitExceeded`，错误详细为：`You have reached the concurrency limit`;
        #       - 不支持排队;

        # ### 接口功能说明：

        # - 支持对视频文件或视频流进行自动检测，从 OCR文本识别、物体检测（实体、广告台标、二维码等）、图像识别及音频审核四个维度，通过深度学习技术识别视频中的违规内容；
        # - 支持设置回调地址 Callback 获取检测结果，或通过接口(查看任务详情)主动轮询获取检测结果详情；对于正常审核中的视频任务，如含有违规内容，则截帧图片最长会在**3s**内回调，音频片段会在用户配置的**切片时长 + 2s**内回调；对于在队列中的待审核任务，回调时间为正常审核回调时间+等待时间；
        # - 支持通过接口（查看审核任务列表）查询任务队列，用户可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表；
        # - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
        # - 支持根据不同的业务场景配置自定义的审核策略；
        # - 支持用户自定义配置黑白词库及图片库，打击自定义违规内容（目前仅支持黑名单配置）；
        # - 支持用户自定义配置审核任务优先级，当有多个任务排队时，可根据用户配置自动调整任务优先级；
        # - 支持批量提交检测任务，**最多可同时创建10个任务**；

        # ### 视频文件流调用说明：

        # - 视频文件大小支持：**4K视频文件 < 10GB**；**低于4K视频文件 < 5GB**
        # - 视频文件分辨率支持：**最佳分辨率为1920x1080 (1080p)**，如果视频文件小于300MB，则分辨率可以大于1080p，分辨率最大支持4K，更大视频可以调用[云转码服务](https://cloud.tencent.com/product/mps/details)转码后再送审；
        # - 视频文件支持格式：flv、mkv 、mp4 、rmvb 、avi 、wmv、3gp、ts、mov、rm、mpeg、wmf等。
        # - 视频文件支持的访问方式：链接地址（支持HTTP/HTTPS）、腾讯云COS存储；
        # - 若传入视频文件的访问链接，则需要注意视频**头文件的读取时间限制为3秒**，为保障被检测视频的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
        # - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频文件图像内容进行审核。

        # ### 直播视频流调用说明：

        # - 视频流时长支持：**24小时以内**，超过需要重新推送审核任务；
        # - 视频流分辨率支持：支持**1920x1080 (1080p)**，更高分辨率视频可以调用[直播云转码服务](https://cloud.tencent.com/document/product/267/39889)转码后再送审；
        # - 视频流支持格式：rtmp，flv 等主流视频流编码格式。
        # - 视频流支持的传输协议：HTTP/HTTPS/RTMP；
        # - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频流图像内容进行审核。

        # ### 直播断流处理说明：
        # - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
        # - 如果直播任务取消/结束，则终止直播拉流并退出审核。
        # - 在直播任务未取消或结束的情况下，若推流中断（例如 `Operation not permitted` 错误），审核服务将在 10分钟内持续尝试重新拉流。检测到有效的图片或音频数据，审核将自动恢复正常；否则，10分钟后终止拉流并退出审核。此时如有需要，请重新提交审核请求。对于因网络问题导致的拉流失败（如 `HTTP 404 Not Found` 错误），系统将进行最多 16次重试。若成功获取有效数据，审核流程即刻恢复；若所有重试均失败，则同样终止拉流并退出审核，需用户重新送审。

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

        # 通过查看任务详情 DescribeTaskDetail 接口，可主动轮询获取检测结果详情。

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

        # 通过查看审核任务列表接口，可查询任务队列；您可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表。

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