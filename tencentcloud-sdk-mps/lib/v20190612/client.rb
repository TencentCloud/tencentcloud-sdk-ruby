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
  module Mps
    module V20190612
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-06-12'
            api_endpoint = 'mps.tencentcloudapi.com'
            sdk_version = 'MPS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量删除媒体传输流。

        # @param request: Request instance for BatchDeleteStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::BatchDeleteStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::BatchDeleteStreamLinkFlowResponse`
        def BatchDeleteStreamLinkFlow(request)
          body = send_request('BatchDeleteStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteStreamLinkFlowResponse.new
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

        # 对 URL视频链接批量发起处理任务，功能包括：
        # 智能字幕（语音全文、语音热词、语音翻译）

        # @param request: Request instance for BatchProcessMedia.
        # @type request: :class:`Tencentcloud::mps::V20190612::BatchProcessMediaRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::BatchProcessMediaResponse`
        def BatchProcessMedia(request)
          body = send_request('BatchProcessMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchProcessMediaResponse.new
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

        # 批量启动媒体传输流。

        # @param request: Request instance for BatchStartStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::BatchStartStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::BatchStartStreamLinkFlowResponse`
        def BatchStartStreamLinkFlow(request)
          body = send_request('BatchStartStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStartStreamLinkFlowResponse.new
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

        # 批量停止媒体传输流。

        # @param request: Request instance for BatchStopStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::BatchStopStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::BatchStopStreamLinkFlowResponse`
        def BatchStopStreamLinkFlow(request)
          body = send_request('BatchStopStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchStopStreamLinkFlowResponse.new
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

        # 创建用户自定义内容分析模板，数量上限：50。

        # @param request: Request instance for CreateAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateAIAnalysisTemplateResponse`
        def CreateAIAnalysisTemplate(request)
          body = send_request('CreateAIAnalysisTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIAnalysisTemplateResponse.new
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

        # 创建用户自定义内容识别模板，数量上限：50。

        # @param request: Request instance for CreateAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateAIRecognitionTemplateResponse`
        def CreateAIRecognitionTemplate(request)
          body = send_request('CreateAIRecognitionTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIRecognitionTemplateResponse.new
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

        # 创建转自适应码流模板，数量上限：100。

        # @param request: Request instance for CreateAdaptiveDynamicStreamingTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateAdaptiveDynamicStreamingTemplateResponse`
        def CreateAdaptiveDynamicStreamingTemplate(request)
          body = send_request('CreateAdaptiveDynamicStreamingTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAdaptiveDynamicStreamingTemplateResponse.new
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

        # 创建用户自定义转动图模板，数量上限：16。

        # @param request: Request instance for CreateAnimatedGraphicsTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateAnimatedGraphicsTemplateResponse`
        def CreateAnimatedGraphicsTemplate(request)
          body = send_request('CreateAnimatedGraphicsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAnimatedGraphicsTemplateResponse.new
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

        # 智能字幕新建热词库接口

        # @param request: Request instance for CreateAsrHotwords.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateAsrHotwordsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateAsrHotwordsResponse`
        def CreateAsrHotwords(request)
          body = send_request('CreateAsrHotwords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAsrHotwordsResponse.new
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

        # 创建用户自定义内容审核模板，数量上限：50。

        # @param request: Request instance for CreateContentReviewTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateContentReviewTemplateResponse`
        def CreateContentReviewTemplate(request)
          body = send_request('CreateContentReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateContentReviewTemplateResponse.new
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

        # 创建用户自定义雪碧图模板，数量上限：16。

        # @param request: Request instance for CreateImageSpriteTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateImageSpriteTemplateResponse`
        def CreateImageSpriteTemplate(request)
          body = send_request('CreateImageSpriteTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageSpriteTemplateResponse.new
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

        # 创建直播录制模板

        # @param request: Request instance for CreateLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateLiveRecordTemplateResponse`
        def CreateLiveRecordTemplate(request)
          body = send_request('CreateLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordTemplateResponse.new
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

        # 发起视频评测任务，功能包括：

        # 1. 对一个原视频和多个转码后的视频进行评分。
        # 2. 计算不同转码方式的 BD-Rate。

        # @param request: Request instance for CreateMediaEvaluation.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateMediaEvaluationRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateMediaEvaluationResponse`
        def CreateMediaEvaluation(request)
          body = send_request('CreateMediaEvaluation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMediaEvaluationResponse.new
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

        # 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、内容不适宜等视频处理。

        # @param request: Request instance for CreatePersonSample.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreatePersonSampleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreatePersonSampleResponse`
        def CreatePersonSample(request)
          body = send_request('CreatePersonSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePersonSampleResponse.new
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

        # 创建媒体质检模板，数量上限：50。

        # @param request: Request instance for CreateQualityControlTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateQualityControlTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateQualityControlTemplateResponse`
        def CreateQualityControlTemplate(request)
          body = send_request('CreateQualityControlTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQualityControlTemplateResponse.new
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

        # 创建用户自定义采样截图模板，数量上限：16。

        # @param request: Request instance for CreateSampleSnapshotTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateSampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateSampleSnapshotTemplateResponse`
        def CreateSampleSnapshotTemplate(request)
          body = send_request('CreateSampleSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSampleSnapshotTemplateResponse.new
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

        # 对 COS 中指定 Bucket 的目录下上传的媒体文件，设置处理规则，包括：
        # 1. 视频转码（带水印）；
        # 2. 视频转动图；
        # 3. 对视频按指定时间点截图；
        # 4. 对视频采样截图；
        # 5. 对视频截图雪碧图；
        # 6. 对视频转自适应码流；
        # 7. 智能内容审核（鉴黄、敏感信息检测）；
        # 8. 智能内容分析（标签、分类、封面、按帧标签）；
        # 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词）。

        # 注意：创建编排成功后是禁用状态，需要手动启用。

        # @param request: Request instance for CreateSchedule.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateScheduleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateScheduleResponse`
        def CreateSchedule(request)
          body = send_request('CreateSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScheduleResponse.new
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

        # 创建自定义智能字幕模板

        # @param request: Request instance for CreateSmartSubtitleTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateSmartSubtitleTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateSmartSubtitleTemplateResponse`
        def CreateSmartSubtitleTemplate(request)
          body = send_request('CreateSmartSubtitleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSmartSubtitleTemplateResponse.new
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

        # 创建用户自定义指定时间点截图模板，数量上限：16。

        # @param request: Request instance for CreateSnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateSnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateSnapshotByTimeOffsetTemplateResponse`
        def CreateSnapshotByTimeOffsetTemplate(request)
          body = send_request('CreateSnapshotByTimeOffsetTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSnapshotByTimeOffsetTemplateResponse.new
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

        # 创建媒体传输的事件Event。

        # @param request: Request instance for CreateStreamLinkEvent.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkEventRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkEventResponse`
        def CreateStreamLinkEvent(request)
          body = send_request('CreateStreamLinkEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStreamLinkEventResponse.new
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

        # 创建媒体传输的传输流配置。

        # @param request: Request instance for CreateStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkFlowResponse`
        def CreateStreamLinkFlow(request)
          body = send_request('CreateStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStreamLinkFlowResponse.new
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

        # 创建媒体传输的输入配置。

        # @param request: Request instance for CreateStreamLinkInput.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkInputRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkInputResponse`
        def CreateStreamLinkInput(request)
          body = send_request('CreateStreamLinkInput', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStreamLinkInputResponse.new
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

        # 创建媒体传输流的输出信息。

        # @param request: Request instance for CreateStreamLinkOutputInfo.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkOutputInfoRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkOutputInfoResponse`
        def CreateStreamLinkOutputInfo(request)
          body = send_request('CreateStreamLinkOutputInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStreamLinkOutputInfoResponse.new
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

        # 创建安全组，数量限制5个。

        # @param request: Request instance for CreateStreamLinkSecurityGroup.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateStreamLinkSecurityGroupResponse`
        def CreateStreamLinkSecurityGroup(request)
          body = send_request('CreateStreamLinkSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStreamLinkSecurityGroupResponse.new
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

        # 创建用户自定义转码模板，数量上限：1000

        # @param request: Request instance for CreateTranscodeTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateTranscodeTemplateResponse`
        def CreateTranscodeTemplate(request)
          body = send_request('CreateTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTranscodeTemplateResponse.new
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

        # 对URL链接或COS中的视频发起入库任务。
        # 可选在任务完成后向回调方发送任务完成状态信息。

        # @param request: Request instance for CreateVideoDatabaseEntryTask.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateVideoDatabaseEntryTaskRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateVideoDatabaseEntryTaskResponse`
        def CreateVideoDatabaseEntryTask(request)
          body = send_request('CreateVideoDatabaseEntryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoDatabaseEntryTaskResponse.new
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

        # 使用检索值检索库中最接近检索值的若干视频。

        # @param request: Request instance for CreateVideoSearchTask.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateVideoSearchTaskRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateVideoSearchTaskResponse`
        def CreateVideoSearchTask(request)
          body = send_request('CreateVideoSearchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVideoSearchTaskResponse.new
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

        # 创建用户自定义水印模板，数量上限：1000。

        # @param request: Request instance for CreateWatermarkTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateWatermarkTemplateResponse`
        def CreateWatermarkTemplate(request)
          body = send_request('CreateWatermarkTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWatermarkTemplateResponse.new
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

        # 该接口用于批量创建关键词样本，样本用于通过OCR、ASR技术，进行不适宜内容识别、内容识别等视频处理。

        # @param request: Request instance for CreateWordSamples.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateWordSamplesResponse`
        def CreateWordSamples(request)
          body = send_request('CreateWordSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWordSamplesResponse.new
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

        # 对 COS 中指定 Bucket 的目录下上传的媒体文件，设置处理规则，包括：
        # 1. 视频转码（带水印）；
        # 2. 视频转动图；
        # 3. 对视频按指定时间点截图；
        # 4. 对视频采样截图；
        # 5. 对视频截图雪碧图；
        # 6. 对视频转自适应码流；
        # 7. 智能内容审核（鉴黄、敏感信息检测）；
        # 8. 智能内容分析（标签、分类、封面、按帧标签）；
        # 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词）。

        # 注意：创建工作流成功后是禁用状态，需要手动启用。

        # @param request: Request instance for CreateWorkflow.
        # @type request: :class:`Tencentcloud::mps::V20190612::CreateWorkflowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::CreateWorkflowResponse`
        def CreateWorkflow(request)
          body = send_request('CreateWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkflowResponse.new
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

        # 删除用户自定义内容分析模板。

        # 注意：模板 ID 为 10000 以下的为系统预置模板，不允许删除。

        # @param request: Request instance for DeleteAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteAIAnalysisTemplateResponse`
        def DeleteAIAnalysisTemplate(request)
          body = send_request('DeleteAIAnalysisTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIAnalysisTemplateResponse.new
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

        # 删除用户自定义内容识别模板。

        # @param request: Request instance for DeleteAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteAIRecognitionTemplateResponse`
        def DeleteAIRecognitionTemplate(request)
          body = send_request('DeleteAIRecognitionTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIRecognitionTemplateResponse.new
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

        # 删除转自适应码流模板

        # @param request: Request instance for DeleteAdaptiveDynamicStreamingTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteAdaptiveDynamicStreamingTemplateResponse`
        def DeleteAdaptiveDynamicStreamingTemplate(request)
          body = send_request('DeleteAdaptiveDynamicStreamingTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAdaptiveDynamicStreamingTemplateResponse.new
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

        # 删除用户自定义转动图模板。

        # @param request: Request instance for DeleteAnimatedGraphicsTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteAnimatedGraphicsTemplateResponse`
        def DeleteAnimatedGraphicsTemplate(request)
          body = send_request('DeleteAnimatedGraphicsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAnimatedGraphicsTemplateResponse.new
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

        # 删除智能字幕热词库

        # @param request: Request instance for DeleteAsrHotwords.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteAsrHotwordsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteAsrHotwordsResponse`
        def DeleteAsrHotwords(request)
          body = send_request('DeleteAsrHotwords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAsrHotwordsResponse.new
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

        # 删除用户自定义内容审核模板。

        # @param request: Request instance for DeleteContentReviewTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteContentReviewTemplateResponse`
        def DeleteContentReviewTemplate(request)
          body = send_request('DeleteContentReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteContentReviewTemplateResponse.new
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

        # 删除雪碧图模板。

        # @param request: Request instance for DeleteImageSpriteTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteImageSpriteTemplateResponse`
        def DeleteImageSpriteTemplate(request)
          body = send_request('DeleteImageSpriteTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageSpriteTemplateResponse.new
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

        # 删除直播录制模板

        # @param request: Request instance for DeleteLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteLiveRecordTemplateResponse`
        def DeleteLiveRecordTemplate(request)
          body = send_request('DeleteLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordTemplateResponse.new
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

        # 该接口用于根据素材 ID，删除素材样本。

        # @param request: Request instance for DeletePersonSample.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeletePersonSampleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeletePersonSampleResponse`
        def DeletePersonSample(request)
          body = send_request('DeletePersonSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePersonSampleResponse.new
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

        # 删除媒体质检模板

        # @param request: Request instance for DeleteQualityControlTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteQualityControlTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteQualityControlTemplateResponse`
        def DeleteQualityControlTemplate(request)
          body = send_request('DeleteQualityControlTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQualityControlTemplateResponse.new
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

        # 删除用户自定义采样截图模板。

        # @param request: Request instance for DeleteSampleSnapshotTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteSampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteSampleSnapshotTemplateResponse`
        def DeleteSampleSnapshotTemplate(request)
          body = send_request('DeleteSampleSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSampleSnapshotTemplateResponse.new
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

        # 删除编排

        # @param request: Request instance for DeleteSchedule.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteScheduleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteScheduleResponse`
        def DeleteSchedule(request)
          body = send_request('DeleteSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScheduleResponse.new
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

        # 删除用户自定义智能字幕模板。

        # @param request: Request instance for DeleteSmartSubtitleTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteSmartSubtitleTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteSmartSubtitleTemplateResponse`
        def DeleteSmartSubtitleTemplate(request)
          body = send_request('DeleteSmartSubtitleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSmartSubtitleTemplateResponse.new
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

        # 删除用户自定义指定时间点截图模板。

        # @param request: Request instance for DeleteSnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteSnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteSnapshotByTimeOffsetTemplateResponse`
        def DeleteSnapshotByTimeOffsetTemplate(request)
          body = send_request('DeleteSnapshotByTimeOffsetTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSnapshotByTimeOffsetTemplateResponse.new
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

        # 删除媒体传输的事件配置。

        # @param request: Request instance for DeleteStreamLinkEvent.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkEventRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkEventResponse`
        def DeleteStreamLinkEvent(request)
          body = send_request('DeleteStreamLinkEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStreamLinkEventResponse.new
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

        # 删除媒体传输的传输流配置。

        # @param request: Request instance for DeleteStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkFlowResponse`
        def DeleteStreamLinkFlow(request)
          body = send_request('DeleteStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStreamLinkFlowResponse.new
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

        # 删除媒体传输流的输出配置。

        # @param request: Request instance for DeleteStreamLinkOutput.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkOutputRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkOutputResponse`
        def DeleteStreamLinkOutput(request)
          body = send_request('DeleteStreamLinkOutput', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStreamLinkOutputResponse.new
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

        # 删除安全组。

        # @param request: Request instance for DeleteStreamLinkSecurityGroup.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteStreamLinkSecurityGroupResponse`
        def DeleteStreamLinkSecurityGroup(request)
          body = send_request('DeleteStreamLinkSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStreamLinkSecurityGroupResponse.new
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

        # 删除用户自定义转码模板。

        # @param request: Request instance for DeleteTranscodeTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteTranscodeTemplateResponse`
        def DeleteTranscodeTemplate(request)
          body = send_request('DeleteTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTranscodeTemplateResponse.new
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

        # 删除用户自定义水印模板。

        # @param request: Request instance for DeleteWatermarkTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteWatermarkTemplateResponse`
        def DeleteWatermarkTemplate(request)
          body = send_request('DeleteWatermarkTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWatermarkTemplateResponse.new
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

        # 该接口用于批量删除关键词样本。

        # @param request: Request instance for DeleteWordSamples.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteWordSamplesResponse`
        def DeleteWordSamples(request)
          body = send_request('DeleteWordSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWordSamplesResponse.new
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

        # 删除工作流。对于已启用的工作流，需要禁用后才能删除。

        # @param request: Request instance for DeleteWorkflow.
        # @type request: :class:`Tencentcloud::mps::V20190612::DeleteWorkflowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DeleteWorkflowResponse`
        def DeleteWorkflow(request)
          body = send_request('DeleteWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkflowResponse.new
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

        # 根据内容分析模板唯一标识，获取内容分析模板详情列表。返回结果包含符合条件的所有用户自定义内容分析模板及系统预置视频内容分析模板

        # @param request: Request instance for DescribeAIAnalysisTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAIAnalysisTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAIAnalysisTemplatesResponse`
        def DescribeAIAnalysisTemplates(request)
          body = send_request('DescribeAIAnalysisTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIAnalysisTemplatesResponse.new
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

        # 根据内容识别模板唯一标识，获取内容识别模板详情列表。返回结果包含符合条件的所有用户自定义内容识别模板及系统预置视频内容识别模板

        # @param request: Request instance for DescribeAIRecognitionTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAIRecognitionTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAIRecognitionTemplatesResponse`
        def DescribeAIRecognitionTemplates(request)
          body = send_request('DescribeAIRecognitionTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIRecognitionTemplatesResponse.new
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

        # 查询转自适应码流模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeAdaptiveDynamicStreamingTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAdaptiveDynamicStreamingTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAdaptiveDynamicStreamingTemplatesResponse`
        def DescribeAdaptiveDynamicStreamingTemplates(request)
          body = send_request('DescribeAdaptiveDynamicStreamingTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAdaptiveDynamicStreamingTemplatesResponse.new
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

        # 查询转动图模板列表，支持根据条件，分页查询。

        # @param request: Request instance for DescribeAnimatedGraphicsTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAnimatedGraphicsTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAnimatedGraphicsTemplatesResponse`
        def DescribeAnimatedGraphicsTemplates(request)
          body = send_request('DescribeAnimatedGraphicsTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAnimatedGraphicsTemplatesResponse.new
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

        # 查询智能字幕热词库

        # @param request: Request instance for DescribeAsrHotwords.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAsrHotwordsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAsrHotwordsResponse`
        def DescribeAsrHotwords(request)
          body = send_request('DescribeAsrHotwords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsrHotwordsResponse.new
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

        # 获取热词库列表

        # @param request: Request instance for DescribeAsrHotwordsList.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeAsrHotwordsListRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeAsrHotwordsListResponse`
        def DescribeAsrHotwordsList(request)
          body = send_request('DescribeAsrHotwordsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAsrHotwordsListResponse.new
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

        # 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询7天之内提交的任务）。

        # @param request: Request instance for DescribeBatchTaskDetail.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeBatchTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeBatchTaskDetailResponse`
        def DescribeBatchTaskDetail(request)
          body = send_request('DescribeBatchTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchTaskDetailResponse.new
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

        # 根据智能审核模板唯一标识，获取智能审核模板详情列表。返回结果包含符合条件的所有用户自定义模板及系统预置智能审核模板。

        # @param request: Request instance for DescribeContentReviewTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeContentReviewTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeContentReviewTemplatesResponse`
        def DescribeContentReviewTemplates(request)
          body = send_request('DescribeContentReviewTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContentReviewTemplatesResponse.new
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

        # 根据安全组反差关联的Flow信息。

        # @param request: Request instance for DescribeGroupAttachFlowsById.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeGroupAttachFlowsByIdRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeGroupAttachFlowsByIdResponse`
        def DescribeGroupAttachFlowsById(request)
          body = send_request('DescribeGroupAttachFlowsById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupAttachFlowsByIdResponse.new
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

        # 查询雪碧图模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeImageSpriteTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeImageSpriteTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeImageSpriteTemplatesResponse`
        def DescribeImageSpriteTemplates(request)
          body = send_request('DescribeImageSpriteTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageSpriteTemplatesResponse.new
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

        # 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询7天之内提交的任务）。

        # @param request: Request instance for DescribeImageTaskDetail.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeImageTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeImageTaskDetailResponse`
        def DescribeImageTaskDetail(request)
          body = send_request('DescribeImageTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageTaskDetailResponse.new
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

        # 获取直播录制模板

        # @param request: Request instance for DescribeLiveRecordTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeLiveRecordTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeLiveRecordTemplatesResponse`
        def DescribeLiveRecordTemplates(request)
          body = send_request('DescribeLiveRecordTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordTemplatesResponse.new
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

        # 获取媒体的元信息，包括视频画面宽、高、编码格式、时长、帧率等。

        # @param request: Request instance for DescribeMediaMetaData.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeMediaMetaDataRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeMediaMetaDataResponse`
        def DescribeMediaMetaData(request)
          body = send_request('DescribeMediaMetaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaMetaDataResponse.new
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

        # 该接口用于查询素材样本信息，支持根据素材 ID、名称、标签，分页查询。

        # @param request: Request instance for DescribePersonSamples.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribePersonSamplesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribePersonSamplesResponse`
        def DescribePersonSamples(request)
          body = send_request('DescribePersonSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonSamplesResponse.new
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

        # 查询用户自定义媒体质检模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeQualityControlTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeQualityControlTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeQualityControlTemplatesResponse`
        def DescribeQualityControlTemplates(request)
          body = send_request('DescribeQualityControlTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityControlTemplatesResponse.new
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

        # 查询采样截图模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeSampleSnapshotTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeSampleSnapshotTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeSampleSnapshotTemplatesResponse`
        def DescribeSampleSnapshotTemplates(request)
          body = send_request('DescribeSampleSnapshotTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleSnapshotTemplatesResponse.new
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

        # 查询编排。

        # @param request: Request instance for DescribeSchedules.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeSchedulesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeSchedulesResponse`
        def DescribeSchedules(request)
          body = send_request('DescribeSchedules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulesResponse.new
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

        # 根据智能字幕 模板唯一标识，获取智能字幕模板详情列表。返回结果包含符合条件的所有用户自定义智能字幕模板及系统预置智能字幕模板

        # @param request: Request instance for DescribeSmartSubtitleTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeSmartSubtitleTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeSmartSubtitleTemplatesResponse`
        def DescribeSmartSubtitleTemplates(request)
          body = send_request('DescribeSmartSubtitleTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmartSubtitleTemplatesResponse.new
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

        # 查询指定时间点截图模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeSnapshotByTimeOffsetTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeSnapshotByTimeOffsetTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeSnapshotByTimeOffsetTemplatesResponse`
        def DescribeSnapshotByTimeOffsetTemplates(request)
          body = send_request('DescribeSnapshotByTimeOffsetTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotByTimeOffsetTemplatesResponse.new
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

        # 查询媒体传输开通状态。

        # @param request: Request instance for DescribeStreamLinkActivateState.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkActivateStateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkActivateStateResponse`
        def DescribeStreamLinkActivateState(request)
          body = send_request('DescribeStreamLinkActivateState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkActivateStateResponse.new
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

        # 查询媒体传输事件的配置信息。

        # @param request: Request instance for DescribeStreamLinkEvent.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventResponse`
        def DescribeStreamLinkEvent(request)
          body = send_request('DescribeStreamLinkEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkEventResponse.new
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

        # 查询媒体传输事件关联的所有媒体输入流的配置信息。

        # @param request: Request instance for DescribeStreamLinkEventAttachedFlows.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventAttachedFlowsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventAttachedFlowsResponse`
        def DescribeStreamLinkEventAttachedFlows(request)
          body = send_request('DescribeStreamLinkEventAttachedFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkEventAttachedFlowsResponse.new
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

        # 批量查询媒体传输事件的配置信息。

        # @param request: Request instance for DescribeStreamLinkEvents.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkEventsResponse`
        def DescribeStreamLinkEvents(request)
          body = send_request('DescribeStreamLinkEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkEventsResponse.new
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

        # 查询媒体输入流的配置信息。

        # @param request: Request instance for DescribeStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowResponse`
        def DescribeStreamLinkFlow(request)
          body = send_request('DescribeStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowResponse.new
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

        # 查询媒体传输流的日志信息。

        # @param request: Request instance for DescribeStreamLinkFlowLogs.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowLogsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowLogsResponse`
        def DescribeStreamLinkFlowLogs(request)
          body = send_request('DescribeStreamLinkFlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowLogsResponse.new
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

        # 查询媒体传输流的媒体质量数据。

        # @param request: Request instance for DescribeStreamLinkFlowMediaStatistics.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowMediaStatisticsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowMediaStatisticsResponse`
        def DescribeStreamLinkFlowMediaStatistics(request)
          body = send_request('DescribeStreamLinkFlowMediaStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowMediaStatisticsResponse.new
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

        # 实时查询流的当前状态

        # @param request: Request instance for DescribeStreamLinkFlowRealtimeStatus.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowRealtimeStatusRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowRealtimeStatusResponse`
        def DescribeStreamLinkFlowRealtimeStatus(request)
          body = send_request('DescribeStreamLinkFlowRealtimeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowRealtimeStatusResponse.new
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

        # 查询媒体传输流的SRT质量数据。

        # @param request: Request instance for DescribeStreamLinkFlowSRTStatistics.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowSRTStatisticsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowSRTStatisticsResponse`
        def DescribeStreamLinkFlowSRTStatistics(request)
          body = send_request('DescribeStreamLinkFlowSRTStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowSRTStatisticsResponse.new
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

        # 查询媒体传输流的媒体质量数据。

        # @param request: Request instance for DescribeStreamLinkFlowStatistics.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowStatisticsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowStatisticsResponse`
        def DescribeStreamLinkFlowStatistics(request)
          body = send_request('DescribeStreamLinkFlowStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowStatisticsResponse.new
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

        # 批量查询媒体输入流的配置信息。

        # @param request: Request instance for DescribeStreamLinkFlows.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkFlowsResponse`
        def DescribeStreamLinkFlows(request)
          body = send_request('DescribeStreamLinkFlows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkFlowsResponse.new
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

        # 查询媒体传输所有地区。

        # @param request: Request instance for DescribeStreamLinkRegions.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkRegionsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkRegionsResponse`
        def DescribeStreamLinkRegions(request)
          body = send_request('DescribeStreamLinkRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkRegionsResponse.new
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

        # 批量查询安全组信息。

        # @param request: Request instance for DescribeStreamLinkSecurityGroups.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeStreamLinkSecurityGroupsResponse`
        def DescribeStreamLinkSecurityGroups(request)
          body = send_request('DescribeStreamLinkSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamLinkSecurityGroupsResponse.new
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

        # 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询7天之内提交的任务）。

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeTaskDetailResponse`
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

        # * 该接口用于查询任务列表；
        # * 当列表数据比较多时，单次接口调用无法拉取整个列表，可通过 ScrollToken 参数，分批拉取；
        # * 只能查询到最近七天（168小时）内的任务。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeTasksResponse`
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

        # 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。

        # @param request: Request instance for DescribeTranscodeTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeTranscodeTemplatesResponse`
        def DescribeTranscodeTemplates(request)
          body = send_request('DescribeTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeTemplatesResponse.new
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

        # 根据任务ID查询视频入库任务的状态。

        # @param request: Request instance for DescribeVideoDatabaseEntryTaskDetail.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeVideoDatabaseEntryTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeVideoDatabaseEntryTaskDetailResponse`
        def DescribeVideoDatabaseEntryTaskDetail(request)
          body = send_request('DescribeVideoDatabaseEntryTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoDatabaseEntryTaskDetailResponse.new
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

        # 根据任务ID查询视频检索任务的状态。

        # @param request: Request instance for DescribeVideoSearchTaskDetail.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeVideoSearchTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeVideoSearchTaskDetailResponse`
        def DescribeVideoSearchTaskDetail(request)
          body = send_request('DescribeVideoSearchTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoSearchTaskDetailResponse.new
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

        # 查询用户自定义水印模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeWatermarkTemplates.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeWatermarkTemplatesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeWatermarkTemplatesResponse`
        def DescribeWatermarkTemplates(request)
          body = send_request('DescribeWatermarkTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWatermarkTemplatesResponse.new
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

        # 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。

        # @param request: Request instance for DescribeWordSamples.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeWordSamplesResponse`
        def DescribeWordSamples(request)
          body = send_request('DescribeWordSamples', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWordSamplesResponse.new
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

        # 根据工作流 ID，获取工作流详情列表。

        # @param request: Request instance for DescribeWorkflows.
        # @type request: :class:`Tencentcloud::mps::V20190612::DescribeWorkflowsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DescribeWorkflowsResponse`
        def DescribeWorkflows(request)
          body = send_request('DescribeWorkflows', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkflowsResponse.new
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

        # 禁用自动化触发编排任务。

        # @param request: Request instance for DisableSchedule.
        # @type request: :class:`Tencentcloud::mps::V20190612::DisableScheduleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DisableScheduleResponse`
        def DisableSchedule(request)
          body = send_request('DisableSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableScheduleResponse.new
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

        # 禁用工作流。

        # @param request: Request instance for DisableWorkflow.
        # @type request: :class:`Tencentcloud::mps::V20190612::DisableWorkflowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DisableWorkflowResponse`
        def DisableWorkflow(request)
          body = send_request('DisableWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableWorkflowResponse.new
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

        # 批量解绑安全组下面关联的输入输出。

        # @param request: Request instance for DisassociateSecurityGroup.
        # @type request: :class:`Tencentcloud::mps::V20190612::DisassociateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::DisassociateSecurityGroupResponse`
        def DisassociateSecurityGroup(request)
          body = send_request('DisassociateSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupResponse.new
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

        # 对视频进行编辑，生成一个新的视频。编辑的功能包括：


        # 一、**剪辑任务**：简单的视频剪辑，如剪辑、拼接等
        # 1. 对一个文件进行剪辑，生成一个新的视频；
        # 2. 对多个文件进行拼接，生成一个新的视频；
        # 3. 对多个文件进行剪辑，然后再拼接，生成一个新的视频。

        # 二、**合成任务**：通过接口描述信息，合成一个新的视频。
        # 1. 多轨道（视频、音频、字幕）、多类型元素（视频、图片、音频、文字、空）
        # 2. 图像级别：贴图、缩放、任意角度旋转、镜像等
        # 3. 音频级别：音量控制、淡入淡出、混音等
        # 4. 视频级别：转场、倍数播放、拼接、剪切、字幕、画中画、音画分离、出入场动效等

        # @param request: Request instance for EditMedia.
        # @type request: :class:`Tencentcloud::mps::V20190612::EditMediaRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::EditMediaResponse`
        def EditMedia(request)
          body = send_request('EditMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditMediaResponse.new
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

        # 启用自动化触发编排任务。

        # @param request: Request instance for EnableSchedule.
        # @type request: :class:`Tencentcloud::mps::V20190612::EnableScheduleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::EnableScheduleResponse`
        def EnableSchedule(request)
          body = send_request('EnableSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableScheduleResponse.new
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

        # 启用工作流。

        # @param request: Request instance for EnableWorkflow.
        # @type request: :class:`Tencentcloud::mps::V20190612::EnableWorkflowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::EnableWorkflowResponse`
        def EnableWorkflow(request)
          body = send_request('EnableWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableWorkflowResponse.new
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

        # 本接口仅用于定制开发的特殊场景，除非云媒体处理客服人员主动告知您需要使用本接口，其它情况请勿调用。

        # @param request: Request instance for ExecuteFunction.
        # @type request: :class:`Tencentcloud::mps::V20190612::ExecuteFunctionRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ExecuteFunctionResponse`
        def ExecuteFunction(request)
          body = send_request('ExecuteFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteFunctionResponse.new
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

        # 对已发起的任务进行管理。

        # @param request: Request instance for ManageTask.
        # @type request: :class:`Tencentcloud::mps::V20190612::ManageTaskRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ManageTaskResponse`
        def ManageTask(request)
          body = send_request('ManageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageTaskResponse.new
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

        # 修改用户自定义内容分析模板。

        # 注意：模板 ID 10000 以下的为系统预置模板，不允许修改。

        # @param request: Request instance for ModifyAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyAIAnalysisTemplateResponse`
        def ModifyAIAnalysisTemplate(request)
          body = send_request('ModifyAIAnalysisTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAIAnalysisTemplateResponse.new
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

        # 修改用户自定义内容识别模板。

        # @param request: Request instance for ModifyAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyAIRecognitionTemplateResponse`
        def ModifyAIRecognitionTemplate(request)
          body = send_request('ModifyAIRecognitionTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAIRecognitionTemplateResponse.new
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

        # 修改转自适应码流模板

        # @param request: Request instance for ModifyAdaptiveDynamicStreamingTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyAdaptiveDynamicStreamingTemplateResponse`
        def ModifyAdaptiveDynamicStreamingTemplate(request)
          body = send_request('ModifyAdaptiveDynamicStreamingTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAdaptiveDynamicStreamingTemplateResponse.new
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

        # 修改用户自定义转动图模板。

        # @param request: Request instance for ModifyAnimatedGraphicsTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyAnimatedGraphicsTemplateResponse`
        def ModifyAnimatedGraphicsTemplate(request)
          body = send_request('ModifyAnimatedGraphicsTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAnimatedGraphicsTemplateResponse.new
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

        # 智能字幕更新热词库接口

        # @param request: Request instance for ModifyAsrHotwords.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyAsrHotwordsRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyAsrHotwordsResponse`
        def ModifyAsrHotwords(request)
          body = send_request('ModifyAsrHotwords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAsrHotwordsResponse.new
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

        # 修改用户自定义内容审核模板。

        # @param request: Request instance for ModifyContentReviewTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyContentReviewTemplateResponse`
        def ModifyContentReviewTemplate(request)
          body = send_request('ModifyContentReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyContentReviewTemplateResponse.new
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

        # 修改用户自定义雪碧图模板。

        # @param request: Request instance for ModifyImageSpriteTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyImageSpriteTemplateResponse`
        def ModifyImageSpriteTemplate(request)
          body = send_request('ModifyImageSpriteTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageSpriteTemplateResponse.new
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

        # 修改直播录制模板

        # @param request: Request instance for ModifyLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyLiveRecordTemplateResponse`
        def ModifyLiveRecordTemplate(request)
          body = send_request('ModifyLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveRecordTemplateResponse.new
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

        # 该接口用于根据素材 ID，修改素材样本信息，包括名称、描述的修改，以及五官、标签的添加、删除、重置操作。五官删除操作需保证至少剩余 1 张图片，否则，请使用重置操作。

        # @param request: Request instance for ModifyPersonSample.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyPersonSampleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyPersonSampleResponse`
        def ModifyPersonSample(request)
          body = send_request('ModifyPersonSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonSampleResponse.new
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

        # 修改媒体质检模板。

        # @param request: Request instance for ModifyQualityControlTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyQualityControlTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyQualityControlTemplateResponse`
        def ModifyQualityControlTemplate(request)
          body = send_request('ModifyQualityControlTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQualityControlTemplateResponse.new
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

        # 修改用户自定义采样截图模板。

        # @param request: Request instance for ModifySampleSnapshotTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifySampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifySampleSnapshotTemplateResponse`
        def ModifySampleSnapshotTemplate(request)
          body = send_request('ModifySampleSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySampleSnapshotTemplateResponse.new
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

        # 修改编排

        # @param request: Request instance for ModifySchedule.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyScheduleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyScheduleResponse`
        def ModifySchedule(request)
          body = send_request('ModifySchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyScheduleResponse.new
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

        # 修改用户自定义智能字幕模板。

        # @param request: Request instance for ModifySmartSubtitleTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifySmartSubtitleTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifySmartSubtitleTemplateResponse`
        def ModifySmartSubtitleTemplate(request)
          body = send_request('ModifySmartSubtitleTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySmartSubtitleTemplateResponse.new
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

        # 修改用户自定义指定时间点截图模板。

        # @param request: Request instance for ModifySnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifySnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifySnapshotByTimeOffsetTemplateResponse`
        def ModifySnapshotByTimeOffsetTemplate(request)
          body = send_request('ModifySnapshotByTimeOffsetTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySnapshotByTimeOffsetTemplateResponse.new
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

        # 修改媒体传输的事件配置信息。

        # @param request: Request instance for ModifyStreamLinkEvent.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkEventRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkEventResponse`
        def ModifyStreamLinkEvent(request)
          body = send_request('ModifyStreamLinkEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStreamLinkEventResponse.new
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

        # 修改媒体传输的传输流配置信息。

        # @param request: Request instance for ModifyStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkFlowResponse`
        def ModifyStreamLinkFlow(request)
          body = send_request('ModifyStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStreamLinkFlowResponse.new
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

        # 修改媒体传输流的输入信息。

        # @param request: Request instance for ModifyStreamLinkInput.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkInputRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkInputResponse`
        def ModifyStreamLinkInput(request)
          body = send_request('ModifyStreamLinkInput', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStreamLinkInputResponse.new
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

        # 修改媒体传输流的输出配置。

        # @param request: Request instance for ModifyStreamLinkOutputInfo.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkOutputInfoRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkOutputInfoResponse`
        def ModifyStreamLinkOutputInfo(request)
          body = send_request('ModifyStreamLinkOutputInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStreamLinkOutputInfoResponse.new
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

        # 更新安全组。

        # @param request: Request instance for ModifyStreamLinkSecurityGroup.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyStreamLinkSecurityGroupResponse`
        def ModifyStreamLinkSecurityGroup(request)
          body = send_request('ModifyStreamLinkSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStreamLinkSecurityGroupResponse.new
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

        # 修改用户自定义转码模板信息。

        # @param request: Request instance for ModifyTranscodeTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyTranscodeTemplateResponse`
        def ModifyTranscodeTemplate(request)
          body = send_request('ModifyTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTranscodeTemplateResponse.new
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

        # 修改用户自定义水印模板，水印类型不允许修改。

        # @param request: Request instance for ModifyWatermarkTemplate.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyWatermarkTemplateResponse`
        def ModifyWatermarkTemplate(request)
          body = send_request('ModifyWatermarkTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWatermarkTemplateResponse.new
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

        # 该接口用于修改关键词的应用场景、标签，关键词本身不可修改，如需修改，可删除重建。

        # @param request: Request instance for ModifyWordSample.
        # @type request: :class:`Tencentcloud::mps::V20190612::ModifyWordSampleRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ModifyWordSampleResponse`
        def ModifyWordSample(request)
          body = send_request('ModifyWordSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWordSampleResponse.new
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

        # 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 直播流处理事件通知的内容。
        # 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析实现事件通知的解析。

        # @param request: Request instance for ParseLiveStreamProcessNotification.
        # @type request: :class:`Tencentcloud::mps::V20190612::ParseLiveStreamProcessNotificationRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ParseLiveStreamProcessNotificationResponse`
        def ParseLiveStreamProcessNotification(request)
          body = send_request('ParseLiveStreamProcessNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseLiveStreamProcessNotificationResponse.new
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

        # 从 CMQ 获取到消息后，从消息的 msgBody 字段中解析出 MPS 事件通知的内容。
        # 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 中的解析函数，实现事件通知的解析。

        # @param request: Request instance for ParseNotification.
        # @type request: :class:`Tencentcloud::mps::V20190612::ParseNotificationRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ParseNotificationResponse`
        def ParseNotification(request)
          body = send_request('ParseNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseNotificationResponse.new
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

        # 发起图片处理，功能包括：
        # 1. 格式转换；
        # 2. 图像增强；
        # 3. 图像擦除;

        # @param request: Request instance for ProcessImage.
        # @type request: :class:`Tencentcloud::mps::V20190612::ProcessImageRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ProcessImageResponse`
        def ProcessImage(request)
          body = send_request('ProcessImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessImageResponse.new
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

        # 对直播流媒体发起处理任务，功能包括：

        # * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
        # * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音实时翻译、物体识别、游戏打点）。
        # * 智能内容分析（新闻实时拆条）。
        # * 质检（直播流格式诊断、音画内容检测（抖动、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等）、无参考打分）。
        # * 录制

        # 直播流处理事件通知支持HTTP回调，也支持实时写入用户指定的消息队列 CMQ 中，用户从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。

        # @param request: Request instance for ProcessLiveStream.
        # @type request: :class:`Tencentcloud::mps::V20190612::ProcessLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ProcessLiveStreamResponse`
        def ProcessLiveStream(request)
          body = send_request('ProcessLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessLiveStreamResponse.new
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

        # 对 URL视频链接 或 COS 中的媒体文件发起处理任务，功能包括：
        # 1. 视频转码（普通转码、极速高清转码、音视频增强）；
        # 2. 视频转动图；
        # 3. 对视频按指定时间点截图；
        # 4. 对视频采样截图；
        # 5. 对视频截图雪碧图；
        # 6. 对视频转自适应码流；
        # 7. 智能内容审核（鉴黄、敏感信息检测）；
        # 8. 智能内容分析（标签、分类、封面、按帧标签、拆条、集锦、片头片尾、游戏打点）；
        # 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音翻译、物体识别）。
        # 10. 媒体质检（直播流格式诊断、音画内容检测（抖动、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等）、无参考打分）
        # 11. 智能字幕（语音全文、语音热词、语音翻译）

        # @param request: Request instance for ProcessMedia.
        # @type request: :class:`Tencentcloud::mps::V20190612::ProcessMediaRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ProcessMediaResponse`
        def ProcessMedia(request)
          body = send_request('ProcessMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessMediaResponse.new
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

        # 智能媒体识别，包含表情和动作识别。仅用于智学，其他调用无效。

        # @param request: Request instance for RecognizeMediaForZhiXue.
        # @type request: :class:`Tencentcloud::mps::V20190612::RecognizeMediaForZhiXueRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::RecognizeMediaForZhiXueResponse`
        def RecognizeMediaForZhiXue(request)
          body = send_request('RecognizeMediaForZhiXue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeMediaForZhiXueResponse.new
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

        # 重新设置一个已经存在且处于禁用状态的工作流。

        # @param request: Request instance for ResetWorkflow.
        # @type request: :class:`Tencentcloud::mps::V20190612::ResetWorkflowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::ResetWorkflowResponse`
        def ResetWorkflow(request)
          body = send_request('ResetWorkflow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetWorkflowResponse.new
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

        # 启动媒体传输流。

        # @param request: Request instance for StartStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::StartStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::StartStreamLinkFlowResponse`
        def StartStreamLinkFlow(request)
          body = send_request('StartStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartStreamLinkFlowResponse.new
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

        # 停止媒体传输流。

        # @param request: Request instance for StopStreamLinkFlow.
        # @type request: :class:`Tencentcloud::mps::V20190612::StopStreamLinkFlowRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::StopStreamLinkFlowResponse`
        def StopStreamLinkFlow(request)
          body = send_request('StopStreamLinkFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopStreamLinkFlowResponse.new
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

        # 提取视频中的盲水印。

        # @param request: Request instance for WithdrawsWatermark.
        # @type request: :class:`Tencentcloud::mps::V20190612::WithdrawsWatermarkRequest`
        # @rtype: :class:`Tencentcloud::mps::V20190612::WithdrawsWatermarkResponse`
        def WithdrawsWatermark(request)
          body = send_request('WithdrawsWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WithdrawsWatermarkResponse.new
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