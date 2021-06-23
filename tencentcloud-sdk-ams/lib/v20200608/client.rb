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
    module V20200608
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-06-08'
            api_endpoint = 'ams.tencentcloudapi.com'
            sdk_version = 'AMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 取消任务

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::ams::V20200608::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::CancelTaskResponse`
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
        # @type request: :class:`Tencentcloud::ams::V20200608::CreateAudioModerationTaskRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::CreateAudioModerationTaskResponse`
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

        # 创建业务配置，1个账号最多可以创建20个配置，可定义音频审核的场景，如色情、谩骂等，

        # 在创建业务配置之前，你需要以下步骤：
        # 1. 开通COS存储桶功能，新建存储桶，例如 cms_segments，用来存储 视频转换过程中生成对音频和图片。
        # 2. 然后在COS控制台，授权天御内容安全主账号 对 cms_segments 存储桶对读写权限。具体授权操作，参考https://cloud.tencent.com/document/product/436/38648

        # @param request: Request instance for CreateBizConfig.
        # @type request: :class:`Tencentcloud::ams::V20200608::CreateBizConfigRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::CreateBizConfigResponse`
        def CreateBizConfig(request)
          body = send_request('CreateBizConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBizConfigResponse.new
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

        # 音频审核明细列表

        # @param request: Request instance for DescribeAmsList.
        # @type request: :class:`Tencentcloud::ams::V20200608::DescribeAmsListRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::DescribeAmsListResponse`
        def DescribeAmsList(request)
          body = send_request('DescribeAmsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAmsListResponse.new
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

        # 控制台识别统计

        # @param request: Request instance for DescribeAudioStat.
        # @type request: :class:`Tencentcloud::ams::V20200608::DescribeAudioStatRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::DescribeAudioStatResponse`
        def DescribeAudioStat(request)
          body = send_request('DescribeAudioStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAudioStatResponse.new
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

        # 查看单个配置

        # @param request: Request instance for DescribeBizConfig.
        # @type request: :class:`Tencentcloud::ams::V20200608::DescribeBizConfigRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::DescribeBizConfigResponse`
        def DescribeBizConfig(request)
          body = send_request('DescribeBizConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizConfigResponse.new
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
        # @type request: :class:`Tencentcloud::ams::V20200608::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::ams::V20200608::DescribeTaskDetailResponse`
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


      end
    end
  end
end