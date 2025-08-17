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
  module Vod
    module V20180717
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-17'
            api_endpoint = 'vod.tencentcloudapi.com'
            sdk_version = 'VOD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # * 我们强烈建议您使用云点播提供的 [服务端上传 SDK](/document/product/266/9759#1.-.E5.8F.91.E8.B5.B7.E4.B8.8A.E4.BC.A0) 来上传文件。直接调用 API 进行上传的难度和工作量都显著大于使用 SDK。
        # * 该接口用于申请媒体文件（和封面文件）的上传，获取文件上传到云点播的元信息（包括上传路径、上传签名等），用于后续上传接口。
        # * 上传流程请参考 [服务端上传综述](/document/product/266/9759)。

        # @param request: Request instance for ApplyUpload.
        # @type request: :class:`Tencentcloud::vod::V20180717::ApplyUploadRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ApplyUploadResponse`
        def ApplyUpload(request)
          body = send_request('ApplyUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyUploadResponse.new
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

        # 关联媒资字幕，将指定的字幕关联到转自适应码流模板号对应的媒体输出文件中（或解除关联）。

        # @param request: Request instance for AttachMediaSubtitles.
        # @type request: :class:`Tencentcloud::vod::V20180717::AttachMediaSubtitlesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::AttachMediaSubtitlesResponse`
        def AttachMediaSubtitles(request)
          body = send_request('AttachMediaSubtitles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachMediaSubtitlesResponse.new
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

        # 该接口用于确认媒体文件（和封面文件）上传到腾讯云点播的结果，并存储媒体信息，返回文件的播放地址和文件 ID。

        # @param request: Request instance for CommitUpload.
        # @type request: :class:`Tencentcloud::vod::V20180717::CommitUploadRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CommitUploadResponse`
        def CommitUpload(request)
          body = send_request('CommitUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitUploadResponse.new
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

        # 该接口用于合成媒体文件，可以达到以下效果：

        # 1. **画面旋转**：对视频、图片的画面旋转一定角度，或按照某个方向翻转。
        # 2. **声音控制**：升高降低视频、音频中声音的音量，或者对视频静音。
        # 3. **画面叠加**：将视频、图片中的画面依序叠加在一起，如实现“画中画”的效果。
        # 4. **声音混合**：将视频、音频中的声音混合在一起（混音）。
        # 5. **声音提取**：将视频中的音频提取出来（不保留画面）。
        # 6. **裁剪**：对视频、音频裁剪出指定时间段。
        # 7. **拼接**：对视频、音频、图片按时间顺序前后拼接。
        # 8. **转场**：将多段视频或图片拼接时，可以在段落之间添加转场效果。

        # 合成后的媒体封装格式可以是 MP4（视频）或 MP3（音频）。如使用事件通知，事件通知的类型为 [视频合成完成](https://cloud.tencent.com/document/product/266/43000)。

        # @param request: Request instance for ComposeMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::ComposeMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ComposeMediaResponse`
        def ComposeMedia(request)
          body = send_request('ComposeMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ComposeMediaResponse.new
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

        # * 开发者调用拉取事件通知，获取到事件后，必须调用该接口来确认消息已经收到；
        # * 开发者获取到事件句柄后，等待确认的有效时间为 30 秒，超出 30 秒会报参数错误（4000）；
        # * 更多参考事件通知的[可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83)。

        # @param request: Request instance for ConfirmEvents.
        # @type request: :class:`Tencentcloud::vod::V20180717::ConfirmEventsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ConfirmEventsResponse`
        def ConfirmEvents(request)
          body = send_request('ConfirmEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmEventsResponse.new
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

        # 创建用户自定义音视频内容分析模板，数量上限：50。暂时不支持 HLS 格式。

        # @param request: Request instance for CreateAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateAIAnalysisTemplateResponse`
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

        # 创建用户自定义音视频内容识别模板，数量上限：50。

        # @param request: Request instance for CreateAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateAIRecognitionTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateAdaptiveDynamicStreamingTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateAnimatedGraphicsTemplateResponse`
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

        # 由 VOD 创建新的日志集。

        # @param request: Request instance for CreateCLSLogset.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateCLSLogsetRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateCLSLogsetResponse`
        def CreateCLSLogset(request)
          body = send_request('CreateCLSLogset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCLSLogsetResponse.new
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

        # 创建 VOD 下新的 CLS 日志主题

        # @param request: Request instance for CreateCLSTopic.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateCLSTopicRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateCLSTopicResponse`
        def CreateCLSTopic(request)
          body = send_request('CreateCLSTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCLSTopicResponse.new
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

        # * 用于对媒体进行分类管理；
        # * 该接口不影响既有媒体的分类，如需修改媒体分类，请调用[修改媒体文件属性](/document/product/266/31762)接口。
        # * 分类层次不可超过 4 层。
        # * 每个分类的子类数量不可超过 500 个。

        # @param request: Request instance for CreateClass.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateClassRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateClassResponse`
        def CreateClass(request)
          body = send_request('CreateClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClassResponse.new
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

        # 发起复杂自适应码流处理任务，功能包括：
        # 1. 按指定的自适应码流模板输出 HLS、DASH 自适应码流；
        # 2. 自适应码流的内容保护方案可选择无加密、Widevine 或 FairPlay；
        # 3. 支持添加片头片尾；
        # 4. 输出的自适应码流可包含多语言音频流，每种语言分别来自不同的媒体文件；
        # 5. 输出的自适应码流可包含多语言字幕流。

        # 注意事项：
        # 1. 当使用片头时，片头媒体中的视频流需要和音频流对齐，否则将导致输出的内容音画不同步；
        # 2. 如果输出的自适应码流需要包含主媒体的音频，那么需要在 AudioSet 参数中指定主媒体的 FileId；
        # 3. 使用字幕时，需要先将字幕添加到主媒体，可通过 ModifyMediaInfo 接口或控制台的音视频详情页进行添加；
        # 4. 暂不支持极速高清、水印。

        # @param request: Request instance for CreateComplexAdaptiveDynamicStreamingTask.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateComplexAdaptiveDynamicStreamingTaskRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateComplexAdaptiveDynamicStreamingTaskResponse`
        def CreateComplexAdaptiveDynamicStreamingTask(request)
          body = send_request('CreateComplexAdaptiveDynamicStreamingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateComplexAdaptiveDynamicStreamingTaskResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版审核模板支持音视频审核和图片审核，详细请参考 [创建审核模板](https://cloud.tencent.com/document/api/266/84391)。
        # 创建用户自定义音视频内容审核模板，数量上限：50。

        # @param request: Request instance for CreateContentReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateContentReviewTemplateResponse`
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

        # 该接口用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。

        # @param request: Request instance for CreateDomainVerifyRecord.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateDomainVerifyRecordRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateDomainVerifyRecordResponse`
        def CreateDomainVerifyRecord(request)
          body = send_request('CreateDomainVerifyRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainVerifyRecordResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 创建音画质重生模板。

        # @param request: Request instance for CreateEnhanceMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateEnhanceMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateEnhanceMediaTemplateResponse`
        def CreateEnhanceMediaTemplate(request)
          body = send_request('CreateEnhanceMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnhanceMediaTemplateResponse.new
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

        # 创建片头片尾模板。
        # - 最大支持模板数量为 100 个。

        # @param request: Request instance for CreateHeadTailTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateHeadTailTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateHeadTailTemplateResponse`
        def CreateHeadTailTemplate(request)
          body = send_request('CreateHeadTailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHeadTailTemplateResponse.new
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

        # 创建一个用户自定义的图片处理模板，数量上限：16。最多支持十次操作，例如：裁剪-缩略-裁剪-模糊-缩略-裁剪-缩略-裁剪-模糊-缩略。

        # @param request: Request instance for CreateImageProcessingTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateImageProcessingTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateImageProcessingTemplateResponse`
        def CreateImageProcessingTemplate(request)
          body = send_request('CreateImageProcessingTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageProcessingTemplateResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateImageSpriteTemplateResponse`
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

        # 创建即时转码模板。

        # @param request: Request instance for CreateJustInTimeTranscodeTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateJustInTimeTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateJustInTimeTranscodeTemplateResponse`
        def CreateJustInTimeTranscodeTemplate(request)
          body = send_request('CreateJustInTimeTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJustInTimeTranscodeTemplateResponse.new
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

        # 该接口用于创建自定义模板，模板用于 ProcessMediaByMPS 接口的部分功能。
        # 创建模板时，需要将 MPS 相关参数以 JSON 格式填入 MPSCreateTemplateParams 参数中。关于具体的任务参数配置方法，请参考 MPS 任务模板相关文档说明。
        # 当前支持创建自定义模板的 MPS 功能：
        # 1. [音视频增强](https://cloud.tencent.com/document/product/862/118703)。

        # > 以该种方式创建的任务模板：
        # > 1. 模板的管理仍在点播平台中完成。
        # > 2. 该功能目前仍在内测中，如需测试体验，您可以联系我们获得支持。

        # @param request: Request instance for CreateMPSTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateMPSTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateMPSTemplateResponse`
        def CreateMPSTemplate(request)
          body = send_request('CreateMPSTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMPSTemplateResponse.new
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

        # 该接口用于创建素材样本，用于通过五官定位等技术，进行内容识别、不适宜视频识别等视频处理。

        # @param request: Request instance for CreatePersonSample.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreatePersonSampleRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreatePersonSampleResponse`
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

        # 创建用户自定义的任务流模板，模板上限：50。

        # @param request: Request instance for CreateProcedureTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateProcedureTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateProcedureTemplateResponse`
        def CreateProcedureTemplate(request)
          body = send_request('CreateProcedureTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProcedureTemplateResponse.new
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

        # 创建音画质检测模板。

        # @param request: Request instance for CreateQualityInspectTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateQualityInspectTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateQualityInspectTemplateResponse`
        def CreateQualityInspectTemplate(request)
          body = send_request('CreateQualityInspectTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQualityInspectTemplateResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 创建视频重生模板。

        # @param request: Request instance for CreateRebuildMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateRebuildMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateRebuildMediaTemplateResponse`
        def CreateRebuildMediaTemplate(request)
          body = send_request('CreateRebuildMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRebuildMediaTemplateResponse.new
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

        # 创建用户自定义审核模板，数量上限：50。
        # >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。

        # @param request: Request instance for CreateReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateReviewTemplateResponse`
        def CreateReviewTemplate(request)
          body = send_request('CreateReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReviewTemplateResponse.new
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

        # 该接口用于创建轮播播单，数量上限：100。
        # 轮播播单的每个文件可以指定源文件，也可以指定某个转码文件。
        # 指定的文件必须是hls格式，所有的播单文件最好保持相同的码率和分辨率。

        # @param request: Request instance for CreateRoundPlay.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateRoundPlayRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateRoundPlayResponse`
        def CreateRoundPlay(request)
          body = send_request('CreateRoundPlay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoundPlayResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateSampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateSampleSnapshotTemplateResponse`
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

        # 创建用户自定义指定时间点截图模板，数量上限：16。

        # @param request: Request instance for CreateSnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateSnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateSnapshotByTimeOffsetTemplateResponse`
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

        # 该接口用于开通某地域的存储。
        #   1. 用户开通点播业务时，系统默认为用户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通。
        #   2. 通过 DescribeStorageRegions 接口可以查询到所有存储地域及已经开通的地域。

        # @param request: Request instance for CreateStorageRegion.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateStorageRegionRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateStorageRegionResponse`
        def CreateStorageRegion(request)
          body = send_request('CreateStorageRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStorageRegionResponse.new
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

        # 该接口用于创建点播应用。

        # @param request: Request instance for CreateSubAppId.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateSubAppIdRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateSubAppIdResponse`
        def CreateSubAppId(request)
          body = send_request('CreateSubAppId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubAppIdResponse.new
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

        # 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
        # 创建播放器配置，数量上限：100。

        # @param request: Request instance for CreateSuperPlayerConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateSuperPlayerConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateSuperPlayerConfigResponse`
        def CreateSuperPlayerConfig(request)
          body = send_request('CreateSuperPlayerConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSuperPlayerConfigResponse.new
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

        # 创建用户自定义转码模板，数量上限：100。

        # @param request: Request instance for CreateTranscodeTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateTranscodeTemplateResponse`
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

        # 该接口用于将加速域名添加到点播，一个用户最多添加20个加速域名。
        # 1.域名添加成功后点播会进行域名的部署，域名由部署状态变为在线状态大概需要2分钟的时间。

        # @param request: Request instance for CreateVodDomain.
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateVodDomainRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateVodDomainResponse`
        def CreateVodDomain(request)
          body = send_request('CreateVodDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVodDomainResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateWatermarkTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::CreateWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::CreateWordSamplesResponse`
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

        # 删除用户自定义音视频内容分析模板。

        # 注意：模板 ID 为 10000 以下的为系统预置模板，不允许删除。

        # @param request: Request instance for DeleteAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteAIAnalysisTemplateResponse`
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

        # 删除用户自定义音视频内容识别模板。

        # @param request: Request instance for DeleteAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteAIRecognitionTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteAdaptiveDynamicStreamingTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteAnimatedGraphicsTemplateResponse`
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

        # 删除点播开通的日志主题。

        # @param request: Request instance for DeleteCLSTopic.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteCLSTopicRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteCLSTopicResponse`
        def DeleteCLSTopic(request)
          body = send_request('DeleteCLSTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCLSTopicResponse.new
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

        # * 仅当待删分类无子分类且无媒体关联情况下，可删除分类；
        # * 否则，请先执行[删除媒体](/document/product/266/31764)及子分类，再删除该分类；

        # @param request: Request instance for DeleteClass.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteClassRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteClassResponse`
        def DeleteClass(request)
          body = send_request('DeleteClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClassResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版审核模板支持音视频审核和图片审核，详细请参考 [删除审核模板](https://cloud.tencent.com/document/api/266/84390)。
        # 删除用户自定义音视频内容审核模板。

        # @param request: Request instance for DeleteContentReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteContentReviewTemplateResponse`
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 删除音画质重生模板。

        # @param request: Request instance for DeleteEnhanceMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteEnhanceMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteEnhanceMediaTemplateResponse`
        def DeleteEnhanceMediaTemplate(request)
          body = send_request('DeleteEnhanceMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEnhanceMediaTemplateResponse.new
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

        # 删除片头片尾模板。

        # @param request: Request instance for DeleteHeadTailTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteHeadTailTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteHeadTailTemplateResponse`
        def DeleteHeadTailTemplate(request)
          body = send_request('DeleteHeadTailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHeadTailTemplateResponse.new
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

        # 删除用户自定义图片处理模板。

        # @param request: Request instance for DeleteImageProcessingTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteImageProcessingTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteImageProcessingTemplateResponse`
        def DeleteImageProcessingTemplate(request)
          body = send_request('DeleteImageProcessingTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageProcessingTemplateResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteImageSpriteTemplateResponse`
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

        # 删除即时转码模板。

        # @param request: Request instance for DeleteJustInTimeTranscodeTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteJustInTimeTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteJustInTimeTranscodeTemplateResponse`
        def DeleteJustInTimeTranscodeTemplate(request)
          body = send_request('DeleteJustInTimeTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJustInTimeTranscodeTemplateResponse.new
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

        # 删除用户自定义 MPS 任务模板。

        # @param request: Request instance for DeleteMPSTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteMPSTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteMPSTemplateResponse`
        def DeleteMPSTemplate(request)
          body = send_request('DeleteMPSTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMPSTemplateResponse.new
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

        # * 删除媒体及其对应的视频处理文件（原始文件、如转码视频、雪碧图、截图、微信发布视频等）；
        # * 可单独删除指定 ID 的视频文件下的原文件、转码视频、微信发布视频等；
        # * 注意：原文件删除后，无法发起转码、微信发布等任何视频处理操作。

        # @param request: Request instance for DeleteMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteMediaResponse`
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

        # 该接口用于根据人物 ID，删除素材样本。

        # @param request: Request instance for DeletePersonSample.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeletePersonSampleRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeletePersonSampleResponse`
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

        # 删除用户自定义的任务流模板。

        # @param request: Request instance for DeleteProcedureTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteProcedureTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteProcedureTemplateResponse`
        def DeleteProcedureTemplate(request)
          body = send_request('DeleteProcedureTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProcedureTemplateResponse.new
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

        # 删除音画质检测模板。

        # @param request: Request instance for DeleteQualityInspectTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteQualityInspectTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteQualityInspectTemplateResponse`
        def DeleteQualityInspectTemplate(request)
          body = send_request('DeleteQualityInspectTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteQualityInspectTemplateResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 删除视频重生模板。

        # @param request: Request instance for DeleteRebuildMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteRebuildMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteRebuildMediaTemplateResponse`
        def DeleteRebuildMediaTemplate(request)
          body = send_request('DeleteRebuildMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRebuildMediaTemplateResponse.new
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

        # 删除用户自定义审核模板。
        # >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。

        # @param request: Request instance for DeleteReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteReviewTemplateResponse`
        def DeleteReviewTemplate(request)
          body = send_request('DeleteReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReviewTemplateResponse.new
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

        # 该接口用于删除轮播播单。

        # @param request: Request instance for DeleteRoundPlay.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteRoundPlayRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteRoundPlayResponse`
        def DeleteRoundPlay(request)
          body = send_request('DeleteRoundPlay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoundPlayResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteSampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteSampleSnapshotTemplateResponse`
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

        # 删除用户自定义指定时间点截图模板。

        # @param request: Request instance for DeleteSnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteSnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteSnapshotByTimeOffsetTemplateResponse`
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

        # 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
        # 删除播放器配置。
        # *注：系统预置播放器配置不允许删除。*

        # @param request: Request instance for DeleteSuperPlayerConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteSuperPlayerConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteSuperPlayerConfigResponse`
        def DeleteSuperPlayerConfig(request)
          body = send_request('DeleteSuperPlayerConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSuperPlayerConfigResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteTranscodeTemplateResponse`
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

        # 该接口用于删除点播加速域名。
        # 1、域名删除前需要先关闭所有区域的加速。

        # @param request: Request instance for DeleteVodDomain.
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteVodDomainRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteVodDomainResponse`
        def DeleteVodDomain(request)
          body = send_request('DeleteVodDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVodDomainResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteWatermarkTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DeleteWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DeleteWordSamplesResponse`
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

        # 根据音视频内容分析模板唯一标识，获取音视频内容分析模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容分析模板及[系统预置音视频内容分析模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.88.86.E6.9E.90.E6.A8.A1.E6.9D.BF)。

        # @param request: Request instance for DescribeAIAnalysisTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeAIAnalysisTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeAIAnalysisTemplatesResponse`
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

        # 根据音视频内容识别模板唯一标识，获取音视频内容识别模板详情列表。返回结果包含符合条件的所有用户自定义音视频内容识别模板及[系统预置音视频内容识别模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E8.AF.86.E5.88.AB.E6.A8.A1.E6.9D.BF)。

        # @param request: Request instance for DescribeAIRecognitionTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeAIRecognitionTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeAIRecognitionTemplatesResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeAdaptiveDynamicStreamingTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeAdaptiveDynamicStreamingTemplatesResponse`
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

        # * 获得用户的所有分类信息。

        # @param request: Request instance for DescribeAllClass.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeAllClassRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeAllClassResponse`
        def DescribeAllClass(request)
          body = send_request('DescribeAllClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllClassResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeAnimatedGraphicsTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeAnimatedGraphicsTemplatesResponse`
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

        # 该接口用于查询点播域名的 CDN 带宽、流量等统计数据。
        # * 查询的起始时间和结束时间跨度不超过90天。
        # * 可以查询不同服务区域的数据。
        # * 中国境内的数据支持查询指定地区、运营商的统计数据。
        # * 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeCDNStatDetails.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCDNStatDetailsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCDNStatDetailsResponse`
        def DescribeCDNStatDetails(request)
          body = send_request('DescribeCDNStatDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCDNStatDetailsResponse.new
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

        # 该接口用于查询点播 CDN 的流量、带宽等统计数据。
        #    1. 可以查询最近365天内的 CDN 用量数据。
        #    2. 查询时间跨度不超过90天。
        #    3. 可以指定用量数据的时间粒度，支持5分钟、1小时、1天的时间粒度。
        #    4. 流量为查询时间粒度内的总流量，带宽为查询时间粒度内的峰值带宽。
        #    5. 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeCDNUsageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCDNUsageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCDNUsageDataResponse`
        def DescribeCDNUsageData(request)
          body = send_request('DescribeCDNUsageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCDNUsageDataResponse.new
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

        # 查询 VOD 创建的 CLS 日志集。

        # @param request: Request instance for DescribeCLSLogsets.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCLSLogsetsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCLSLogsetsResponse`
        def DescribeCLSLogsets(request)
          body = send_request('DescribeCLSLogsets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCLSLogsetsResponse.new
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

        # 查询点播域名下日志投递的目标主题。

        # @param request: Request instance for DescribeCLSPushTargets.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCLSPushTargetsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCLSPushTargetsResponse`
        def DescribeCLSPushTargets(request)
          body = send_request('DescribeCLSPushTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCLSPushTargetsResponse.new
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

        # 查询 VOD 创建的 CLS 日志主题列表。

        # @param request: Request instance for DescribeCLSTopics.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCLSTopicsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCLSTopicsResponse`
        def DescribeCLSTopics(request)
          body = send_request('DescribeCLSTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCLSTopicsResponse.new
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

        # 查询点播域名的 CDN （不含 EdgeOne 回源到 VOD 域名）访问日志的下载链接。
        #     1. 可以查询最近30天内的 CDN 日志下载链接。
        #     2. 默认情况下 CDN 每小时生成一个日志文件，如果某一个小时没有 CDN 访问，不会生成日志文件。
        #     3. CDN 日志下载链接的有效期为24小时。

        # @param request: Request instance for DescribeCdnLogs.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCdnLogsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCdnLogsResponse`
        def DescribeCdnLogs(request)
          body = send_request('DescribeCdnLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdnLogsResponse.new
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

        # 该接口返回查询时间范围内客户端上传加速统计信息。
        #    1. 可以查询最近365天内的客户端上传加速统计数据。
        #    2. 查询时间跨度不超过90天。
        #    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。

        # @param request: Request instance for DescribeClientUploadAccelerationUsageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeClientUploadAccelerationUsageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeClientUploadAccelerationUsageDataResponse`
        def DescribeClientUploadAccelerationUsageData(request)
          body = send_request('DescribeClientUploadAccelerationUsageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientUploadAccelerationUsageDataResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版审核模板支持音视频审核和图片审核，详细请参考 [获取审核模板列表](https://cloud.tencent.com/document/api/266/84389)。
        # 根据音视频内容审核模板唯一标识，获取音视频内容审核模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置内容审核模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.A7.86.E9.A2.91.E5.86.85.E5.AE.B9.E5.AE.A1.E6.A0.B8.E6.A8.A1.E6.9D.BF)。

        # @param request: Request instance for DescribeContentReviewTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeContentReviewTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeContentReviewTemplatesResponse`
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

        # 查询轮播当前播放列表。

        # @param request: Request instance for DescribeCurrentPlaylist.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeCurrentPlaylistRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeCurrentPlaylistResponse`
        def DescribeCurrentPlaylist(request)
          body = send_request('DescribeCurrentPlaylist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCurrentPlaylistResponse.new
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

        # 该接口用于查询指定日期范围内每天的播放统计数据。
        # * 可以查询最近一年的播放统计数据。
        # * 结束日期和起始日期的时间跨度最大为90天。
        # * 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeDailyMediaPlayStat.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDailyMediaPlayStatRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDailyMediaPlayStatResponse`
        def DescribeDailyMediaPlayStat(request)
          body = send_request('DescribeDailyMediaPlayStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDailyMediaPlayStatResponse.new
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

        # 该接口用于查询每日播放Top100 的媒体文件的播放统计数据。
        # * 可以查询最近一年的播放统计数据。
        # * 可以按播放次数或者播放流量查询。
        # * 播放次数统计说明：
        #     1. HLS 文件：访问 M3U8 文件时统计播放次数；访问 TS 文件不统计播放次数。
        #     2. 其它文件（如 MP4 文件）：播放请求带有 range 参数且 range 的 start 参数不等于0时不统计播放次数，其它情况统计播放次数。
        # * 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeDailyMostPlayedStat.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDailyMostPlayedStatRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDailyMostPlayedStatResponse`
        def DescribeDailyMostPlayedStat(request)
          body = send_request('DescribeDailyMostPlayedStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDailyMostPlayedStatResponse.new
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

        # 该接口用于查询播放统计文件的下载地址。
        # * 可以查询最近一年的播放统计文件下载地址，查询的起始日期和结束日期的时间跨度不超过90天。
        # * 云点播每天对前一天的 CDN 请求日志进行分析处理，生成播放统计文件。
        # * 播放统计文件内容包含媒体文件的播放次数、播放流量等统计信息。
        # * 播放次数统计说明：
        #     1. HLS 文件：访问M3U8 文件时统计播放次数；访问TS 文件不统计播放次数。
        #     2. 其它文件（如 MP4 文件）：播放请求带有 range 参数且 range 的 start 参数不等于0时不统计播放次数，其它情况统计播放次数。
        # * 播放设备的统计：播放请求带了 UserAgent 参数，并且 UserAgent 包含 Android 或者 iPhone 等标识，会统计为移动端播放次数，否则统计为 PC 端播放次数。
        # * 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeDailyPlayStatFileList.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDailyPlayStatFileListRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDailyPlayStatFileListResponse`
        def DescribeDailyPlayStatFileList(request)
          body = send_request('DescribeDailyPlayStatFileList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDailyPlayStatFileListResponse.new
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

        # 该接口用于查询默认分发配置。
        # * 分发域名和分发协议，即媒体文件分发 URL 中的域名和协议。媒体文件按默认分发配置进行分发。
        # * 播放密钥，用于计算播放器签名。

        # @param request: Request instance for DescribeDefaultDistributionConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDefaultDistributionConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDefaultDistributionConfigResponse`
        def DescribeDefaultDistributionConfig(request)
          body = send_request('DescribeDefaultDistributionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultDistributionConfigResponse.new
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

        # 本 API 是 [旧版本加密](https://cloud.tencent.com/document/product/266/9638) 中 [DescribeDrmDataKey 的 API 2017 接口](https://cloud.tencent.com/document/product/266/9643) 的升级版本。

        # 如果您是新接入点播加密的用户，不要使用该 API，请参考 [视频加密综述](https://cloud.tencent.com/document/product/266/45552) 使用推荐的加密方式。

        # @param request: Request instance for DescribeDrmDataKey.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDrmDataKeyRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDrmDataKeyResponse`
        def DescribeDrmDataKey(request)
          body = send_request('DescribeDrmDataKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrmDataKeyResponse.new
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

        # 查询 DRM 密钥提供商信息。

        # @param request: Request instance for DescribeDrmKeyProviderInfo.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeDrmKeyProviderInfoRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeDrmKeyProviderInfoResponse`
        def DescribeDrmKeyProviderInfo(request)
          body = send_request('DescribeDrmKeyProviderInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDrmKeyProviderInfoResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 获取音画质重生模板列表。

        # @param request: Request instance for DescribeEnhanceMediaTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeEnhanceMediaTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeEnhanceMediaTemplatesResponse`
        def DescribeEnhanceMediaTemplates(request)
          body = send_request('DescribeEnhanceMediaTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnhanceMediaTemplatesResponse.new
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

        # 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。

        # 开发者可以通过本接口来查询当前配置事件通知的接收方式、接收地址以及哪些事件开启了接收回调通知。

        # 默认接口请求频率限制：100次/秒。

        # @param request: Request instance for DescribeEventConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeEventConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeEventConfigResponse`
        def DescribeEventConfig(request)
          body = send_request('DescribeEventConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventConfigResponse.new
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

        # * 该接口用于业务服务器获取 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 事件通知的状态。

        # @param request: Request instance for DescribeEventsState.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeEventsStateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeEventsStateResponse`
        def DescribeEventsState(request)
          body = send_request('DescribeEventsState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventsStateResponse.new
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

        # 用于异步获取文件属性。
        # - 当前仅支持获取源文件的 Md5、Sha1。
        # - 对输入文件为 HLS 或 DASH 的情况，仅获取索引文件的属性。

        # @param request: Request instance for DescribeFileAttributes.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeFileAttributesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeFileAttributesResponse`
        def DescribeFileAttributes(request)
          body = send_request('DescribeFileAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileAttributesResponse.new
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

        # 获取片头片尾模板列表。

        # @param request: Request instance for DescribeHeadTailTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeHeadTailTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeHeadTailTemplatesResponse`
        def DescribeHeadTailTemplates(request)
          body = send_request('DescribeHeadTailTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHeadTailTemplatesResponse.new
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

        # 获取图片处理模板列表，支持根据条件，分页查询。

        # @param request: Request instance for DescribeImageProcessingTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeImageProcessingTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeImageProcessingTemplatesResponse`
        def DescribeImageProcessingTemplates(request)
          body = send_request('DescribeImageProcessingTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageProcessingTemplatesResponse.new
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

        # 该接口返回查询时间范围内每天使用的图片审核用量信息。
        #    1. 可以查询最近365天内的图片审核统计数据。
        #    2. 查询时间跨度不超过90天。
        #    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。

        # @param request: Request instance for DescribeImageReviewUsageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeImageReviewUsageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeImageReviewUsageDataResponse`
        def DescribeImageReviewUsageData(request)
          body = send_request('DescribeImageReviewUsageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageReviewUsageDataResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeImageSpriteTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeImageSpriteTemplatesResponse`
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

        # 获取即时转码模板列表。

        # @param request: Request instance for DescribeJustInTimeTranscodeTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeJustInTimeTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeJustInTimeTranscodeTemplatesResponse`
        def DescribeJustInTimeTranscodeTemplates(request)
          body = send_request('DescribeJustInTimeTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJustInTimeTranscodeTemplatesResponse.new
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

        # 该接口返回查询时间范围内每天 License 请求次数信息。
        #    1. 可以查询最近365天内的 License 请求次数统计数据。
        #    2. 查询时间跨度不超过90天。
        #    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。

        # @param request: Request instance for DescribeLicenseUsageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeLicenseUsageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeLicenseUsageDataResponse`
        def DescribeLicenseUsageData(request)
          body = send_request('DescribeLicenseUsageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseUsageDataResponse.new
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

        # 获取用户自定义媒体处理服务（MPS）任务模板。
        # 查询模板列表时，需要将 MPS 相关参数以 JSON 格式填入 MPSDescribeTemplateParams 参数中。关于具体的任务参数配置方法，请参考 MPS 任务模板相关文档说明。

        # @param request: Request instance for DescribeMPSTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeMPSTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeMPSTemplatesResponse`
        def DescribeMPSTemplates(request)
          body = send_request('DescribeMPSTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMPSTemplatesResponse.new
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

        # 1. 该接口可以获取多个媒体文件的多种信息，包括：
        #     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
        #     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
        #     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
        #     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
        #     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
        #     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
        #     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
        #     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
        #     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
        #     10. 审核信息（reviewInfo）：包括媒体审核及媒体封面审核信息。
        # 2. 可以指定回包只返回部分信息。

        # @param request: Request instance for DescribeMediaInfos.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeMediaInfosRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeMediaInfosResponse`
        def DescribeMediaInfos(request)
          body = send_request('DescribeMediaInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaInfosResponse.new
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

        # 该接口用于查询媒体文件按指定时间粒度统计的播放数据
        # * 可以查询最近一年的播放统计数据。
        # * 时间粒度为小时，结束时间和起始时间的跨度最大为7天。
        # * 时间粒度为天，结束时间和起始时间的跨度最大为90天。
        # * 播放统计仅针对 VOD 域名（即 EdgeOne 域名的分发不计入播放统计）。

        # @param request: Request instance for DescribeMediaPlayStatDetails.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeMediaPlayStatDetailsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeMediaPlayStatDetailsResponse`
        def DescribeMediaPlayStatDetails(request)
          body = send_request('DescribeMediaPlayStatDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaPlayStatDetailsResponse.new
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

        # 该接口返回查询时间范围内每天使用的视频处理用量信息。
        #    1. 可以查询最近365天内的视频处理统计数据。
        #    2. 查询时间跨度不超过90天。

        # @param request: Request instance for DescribeMediaProcessUsageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeMediaProcessUsageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeMediaProcessUsageDataResponse`
        def DescribeMediaProcessUsageData(request)
          body = send_request('DescribeMediaProcessUsageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaProcessUsageDataResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribePersonSamplesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribePersonSamplesResponse`
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

        # 该接口可以查询用户已经购买的预付费商品的信息，包括：
        #     1. 商品的类型、生效和失效日期。
        #     2. 商品中每种资源的额度和剩余额度。

        # @param request: Request instance for DescribePrepaidProducts.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribePrepaidProductsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribePrepaidProductsResponse`
        def DescribePrepaidProducts(request)
          body = send_request('DescribePrepaidProducts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrepaidProductsResponse.new
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

        # 根据任务流模板名字，获取任务流模板详情列表。

        # @param request: Request instance for DescribeProcedureTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeProcedureTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeProcedureTemplatesResponse`
        def DescribeProcedureTemplates(request)
          body = send_request('DescribeProcedureTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcedureTemplatesResponse.new
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

        # 获取音画质检测模板列表。

        # @param request: Request instance for DescribeQualityInspectTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeQualityInspectTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeQualityInspectTemplatesResponse`
        def DescribeQualityInspectTemplates(request)
          body = send_request('DescribeQualityInspectTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityInspectTemplatesResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 获取视频重生模板列表。

        # @param request: Request instance for DescribeRebuildMediaTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeRebuildMediaTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeRebuildMediaTemplatesResponse`
        def DescribeRebuildMediaTemplates(request)
          body = send_request('DescribeRebuildMediaTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRebuildMediaTemplatesResponse.new
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

        # <b>本接口已不推荐使用，用 [DescribeMediaProcessUsageData](/document/product/266/41464) 替代</b>

        # 该接口返回查询时间范围内每天使用的视频内容智能识别时长数据，单位： 秒。

        # 1. 可以查询最近365天内的视频内容智能识别时长统计数据。
        # 2. 查询时间跨度不超过90天。

        # @param request: Request instance for DescribeReviewDetails.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeReviewDetailsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeReviewDetailsResponse`
        def DescribeReviewDetails(request)
          body = send_request('DescribeReviewDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReviewDetailsResponse.new
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

        # 获取审核模板列表。
        # >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。

        # @param request: Request instance for DescribeReviewTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeReviewTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeReviewTemplatesResponse`
        def DescribeReviewTemplates(request)
          body = send_request('DescribeReviewTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReviewTemplatesResponse.new
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

        # 该接口用于获取轮播播单列表。

        # @param request: Request instance for DescribeRoundPlays.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeRoundPlaysRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeRoundPlaysResponse`
        def DescribeRoundPlays(request)
          body = send_request('DescribeRoundPlays', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoundPlaysResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeSampleSnapshotTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeSampleSnapshotTemplatesResponse`
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

        # 查询指定时间点截图模板，支持根据条件，分页查询。

        # @param request: Request instance for DescribeSnapshotByTimeOffsetTemplates.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeSnapshotByTimeOffsetTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeSnapshotByTimeOffsetTemplatesResponse`
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

        # 查询存储空间使用情况和文件数量。

        # @param request: Request instance for DescribeStorageData.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeStorageDataRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeStorageDataResponse`
        def DescribeStorageData(request)
          body = send_request('DescribeStorageData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageDataResponse.new
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

        # 该接口返回查询时间范围内使用的点播存储空间，单位：字节。
        #     1. 可以查询最近365天内的存储空间数据；
        #     2. 查询时间跨度不超过90天；
        #     3. 分钟粒度查询跨度不超过7天；

        # @param request: Request instance for DescribeStorageDetails.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeStorageDetailsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeStorageDetailsResponse`
        def DescribeStorageDetails(request)
          body = send_request('DescribeStorageDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageDetailsResponse.new
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

        # 该接口用于：
        #   1. 查询点播可开通的所有存储园区列表。
        #   2. 查询已经开通的园区列表。
        #   3. 查询默认使用的存储园区。

        # @param request: Request instance for DescribeStorageRegions.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeStorageRegionsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeStorageRegionsResponse`
        def DescribeStorageRegions(request)
          body = send_request('DescribeStorageRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageRegionsResponse.new
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

        # 该接口用于获取当前账号的应用列表。

        # @param request: Request instance for DescribeSubAppIds.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeSubAppIdsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeSubAppIdsResponse`
        def DescribeSubAppIds(request)
          body = send_request('DescribeSubAppIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubAppIdsResponse.new
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

        # 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
        # 查询播放器配置，支持根据条件，分页查询。

        # @param request: Request instance for DescribeSuperPlayerConfigs.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeSuperPlayerConfigsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeSuperPlayerConfigsResponse`
        def DescribeSuperPlayerConfigs(request)
          body = send_request('DescribeSuperPlayerConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSuperPlayerConfigsResponse.new
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

        # 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeTaskDetailResponse`
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
        # * 只能查询到最近三天（72 小时）内的任务。

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeTasksResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeTranscodeTemplatesResponse`
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

        # 该接口用于查询点播域名信息列表。

        # @param request: Request instance for DescribeVodDomains.
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeVodDomainsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeVodDomainsResponse`
        def DescribeVodDomains(request)
          body = send_request('DescribeVodDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVodDomainsResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeWatermarkTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeWatermarkTemplatesResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::DescribeWordSamplesRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::DescribeWordSamplesResponse`
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

        # 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：

        # 1. 对点播中的一个文件进行剪辑，生成一个新的视频；
        # 2. 对点播中的多个文件进行拼接，生成一个新的视频；
        # 3. 对点播中的多个文件进行剪辑，然后再拼接，生成一个新的视频；
        # 4. 对点播中的一个流，直接生成一个新的视频；
        # 5. 对点播中的一个流进行剪辑，生成一个新的视频；
        # 6. 对点播中的多个流进行拼接，生成一个新的视频；
        # 7. 对点播中的多个流进行剪辑，然后拼接，生成一个新的视频。

        # 对于生成的新视频，还可以指定生成后的视频是否要执行任务流。

        # >当对直播流做剪辑、拼接等操作时，请确保流结束后再操作。否则生成的视频可能不完整。

        # 如使用事件通知，事件通知的类型为 [视频编辑完成](https://cloud.tencent.com/document/product/266/33794)。

        # @param request: Request instance for EditMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::EditMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::EditMediaResponse`
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

        # 该 API 已经<font color=red>不再维护</font>，请使用新版接口 [音画质重生](https://cloud.tencent.com/document/api/266/102571)。
        # 使用模板发起音画质重生。

        # @param request: Request instance for EnhanceMediaByTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::EnhanceMediaByTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::EnhanceMediaByTemplateResponse`
        def EnhanceMediaByTemplate(request)
          body = send_request('EnhanceMediaByTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnhanceMediaByTemplateResponse.new
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

        # 对点播中的音视频媒体发起音画质重生任务。

        # @param request: Request instance for EnhanceMediaQuality.
        # @type request: :class:`Tencentcloud::vod::V20180717::EnhanceMediaQualityRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::EnhanceMediaQualityResponse`
        def EnhanceMediaQuality(request)
          body = send_request('EnhanceMediaQuality', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnhanceMediaQualityResponse.new
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

        # 本接口仅用于定制开发的特殊场景，除非云点播客服人员主动告知您需要使用本接口，其它情况请勿调用。

        # @param request: Request instance for ExecuteFunction.
        # @type request: :class:`Tencentcloud::vod::V20180717::ExecuteFunctionRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ExecuteFunctionResponse`
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

        # 如果有盗录溯源需求，请参考 [幽灵水印](https://cloud.tencent.com/document/product/266/94228)。

        # @param request: Request instance for ExtractCopyRightWatermark.
        # @type request: :class:`Tencentcloud::vod::V20180717::ExtractCopyRightWatermarkRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ExtractCopyRightWatermarkResponse`
        def ExtractCopyRightWatermark(request)
          body = send_request('ExtractCopyRightWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExtractCopyRightWatermarkResponse.new
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

        # 如果有盗录溯源需求，推荐使用 [幽灵水印](https://cloud.tencent.com/document/product/266/94228)。

        # @param request: Request instance for ExtractTraceWatermark.
        # @type request: :class:`Tencentcloud::vod::V20180717::ExtractTraceWatermarkRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ExtractTraceWatermarkResponse`
        def ExtractTraceWatermark(request)
          body = send_request('ExtractTraceWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExtractTraceWatermarkResponse.new
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

        # 对云点播的 HLS 视频实现快速拼接和快速剪辑，生成新的 HLS 格式的媒体。

        # 快速拼接或剪辑生成的视频，将产生新的 FileId 并进行固化，固化成功后新视频的文件独立于原始输入视频存在，不受原始视频删除等影响。

        # <font color='red'>注意：</font>通过 ModifyEventConfig 接口启用接收剪辑固化事件通知，固化成功后将会收到一个 PersistenceComplete 类型的事件通知。在收到这个事件通知之前，不应该对原始输入的视频进行删除、降冷等操作，否则拼接剪辑生成的视频播放可能出现异常。

        # @param request: Request instance for FastEditMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::FastEditMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::FastEditMediaResponse`
        def FastEditMedia(request)
          body = send_request('FastEditMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FastEditMediaResponse.new
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

        # * 对媒体禁播后，除了点播控制台预览，其他场景访问视频各种资源的 URL（原始文件、转码输出文件、截图等）均会返回 403。
        #   禁播/解禁操作全网生效时间约 5~10 分钟。
        # * 注意：禁播媒体仅能操作标准存储和低频存储的媒体。低频存储媒体，必须存储至少 30 天，提前删除或变更存储类型，仍旧按照 30 天计费；如果禁播低频存储媒体，该媒体低频存储的时长不足 30 天，会产生提前删除计费；同时，禁播后该媒体的低频存储时长会从当前时间重新开始计算，如果不满 30 天继续对该媒体进行删除或变更存储类型，也将产生提前删除计费。例：媒体 001 已经低频存储了 10 天，此时对 001 进行禁播，低频存储的计费仍旧按 30 天计算（提前删除计费时长为 30 - 10 = 20 天）；禁播后 001 的低频存储时长重新开始计算，如果禁播后第 5 天删除了 001，低频存储计费也会按 30 天计算（提前删除计费时长为 30 - 5 = 25 天）；001 实际的低频存储时长为 10 + 5 = 15 天，低频存储计费时长为 10 + 20(提前删除计费)+ 5 + 25(提前删除计费) = 60 天。

        # @param request: Request instance for ForbidMediaDistribution.
        # @type request: :class:`Tencentcloud::vod::V20180717::ForbidMediaDistributionRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ForbidMediaDistributionResponse`
        def ForbidMediaDistribution(request)
          body = send_request('ForbidMediaDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidMediaDistributionResponse.new
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

        # 操作轮播当前播放列表。支持的操作有：<li> Insert：向当前播列表插入播放节目。</li><li> Delete：删除播列表中的播放节目。</li>

        # @param request: Request instance for HandleCurrentPlaylist.
        # @type request: :class:`Tencentcloud::vod::V20180717::HandleCurrentPlaylistRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::HandleCurrentPlaylistResponse`
        def HandleCurrentPlaylist(request)
          body = send_request('HandleCurrentPlaylist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HandleCurrentPlaylistResponse.new
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

        # 对点播中的音视频媒体发起音画质检测任务。

        # @param request: Request instance for InspectMediaQuality.
        # @type request: :class:`Tencentcloud::vod::V20180717::InspectMediaQualityRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::InspectMediaQualityResponse`
        def InspectMediaQuality(request)
          body = send_request('InspectMediaQuality', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InspectMediaQualityResponse.new
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

        # 直播即时剪辑，是指在直播过程中（即直播尚未结束时），客户可以在过往直播内容中选择一段，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。

        # 腾讯云点播支持两种即时剪辑模式：
        # - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段**长久保存**的场景；
        # - 剪辑不固化：剪辑得到的视频附属于直播录制文件，没有独立 FileId；适用于将精彩片段**临时分享**的场景。

        # 注意：
        # - 使用直播即时剪辑功能的前提是：目标直播流开启了[时移回看](https://cloud.tencent.com/document/product/267/32742)功能。
        # - 直播即时剪辑是基于直播录制生成的 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
        # - 由于直播过程中可能存在断流的情况，所以有可能导致剪辑生成的实际视频时长与期望不一致。例如剪辑某个直播流的时间区间为 2018-09-20T10:30:00Z 到 2018-09-20T10:40:00Z ，如果在该时间区间中发生过断流，那么返回的媒资文件的时长将少于 10 分钟，在这种情况下，可以通过输出参数 <a href="#p_segmentset">SegmentSet</a> 感知到。

        # ### 剪辑固化
        # 所谓剪辑固化，是指将剪辑出来的视频是保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始直播录制视频影响（即使原始录制视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。

        # 举例如下：一场完整的足球比赛，直播录制出来的原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于直播即时剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择直播即时剪辑并且固化的方案。

        # 剪辑固化的优势在于其生命周期与原始录制视频相互独立，可以独立管理、长久保存。

        # <font color='red'>注意：</font>如果剪辑时指定进行固化，通过 ModifyEventConfig 接口启用接收剪辑固化事件通知，固化成功后将会收到一个 PersistenceComplete 类型的事件通知。在收到这个事件通知之前，不应该对直播录制视频进行删除、降冷等操作，否则剪辑生成的视频播放可能出现异常。

        # ### 剪辑不固化
        # 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与直播录制视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与直播录制的完整视频有效期是一致的。一旦直播录制出来的视频被删除，也会导致该片段无法播放。

        # 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。

        # 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。

        # @param request: Request instance for LiveRealTimeClip.
        # @type request: :class:`Tencentcloud::vod::V20180717::LiveRealTimeClipRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::LiveRealTimeClipResponse`
        def LiveRealTimeClip(request)
          body = send_request('LiveRealTimeClip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LiveRealTimeClipResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ManageTaskRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ManageTaskResponse`
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

        # 修改用户自定义音视频内容分析模板。

        # 注意：模板 ID 10000 以下的为系统预置模板，不允许修改。

        # @param request: Request instance for ModifyAIAnalysisTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyAIAnalysisTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyAIAnalysisTemplateResponse`
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

        # 修改用户自定义音视频内容识别模板。

        # @param request: Request instance for ModifyAIRecognitionTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyAIRecognitionTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyAIRecognitionTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyAdaptiveDynamicStreamingTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyAdaptiveDynamicStreamingTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyAnimatedGraphicsTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyAnimatedGraphicsTemplateResponse`
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

        # 修改媒体分类属性。

        # @param request: Request instance for ModifyClass.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyClassRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyClassResponse`
        def ModifyClass(request)
          body = send_request('ModifyClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClassResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版审核模板支持音视频审核和图片审核，详细请参考 [修改审核模板](https://cloud.tencent.com/document/api/266/84388)。
        # 修改用户自定义音视频内容审核模板。

        # @param request: Request instance for ModifyContentReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyContentReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyContentReviewTemplateResponse`
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

        # 该接口用于修改默认分发配置。
        # * 分发域名和分发协议，即媒体文件分发 URL 中的域名和协议。媒体文件按默认分发配置进行分发。
        # * 播放密钥，用于计算播放器签名。

        # @param request: Request instance for ModifyDefaultDistributionConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyDefaultDistributionConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyDefaultDistributionConfigResponse`
        def ModifyDefaultDistributionConfig(request)
          body = send_request('ModifyDefaultDistributionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDefaultDistributionConfigResponse.new
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

        # 该接口用于设置默认的存储地域。上传文件时如果没有指定地域，将上传到默认地域。

        # @param request: Request instance for ModifyDefaultStorageRegion.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyDefaultStorageRegionRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyDefaultStorageRegionResponse`
        def ModifyDefaultStorageRegion(request)
          body = send_request('ModifyDefaultStorageRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDefaultStorageRegionResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 修改音画质重生模板。

        # @param request: Request instance for ModifyEnhanceMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyEnhanceMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyEnhanceMediaTemplateResponse`
        def ModifyEnhanceMediaTemplate(request)
          body = send_request('ModifyEnhanceMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnhanceMediaTemplateResponse.new
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

        # 腾讯云点播为客户提供了媒体上传、媒体管理、媒体处理等等服务，在这些服务执行过程或执行结束时，腾讯云点播也提供各种对应的事件通知，方便开发者感知服务处理状态，并做下一步的业务操作。

        # 开发者可以通过调用本接口来实现：
        # - 设置接收回调通知的类型，目前有[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 和 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779) 两种类型。
        # - 对于[ HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)，可设置 3.0 格式回调的地址。3.0 格式回调的说明参见 [历史格式回调](https://cloud.tencent.com/document/product/266/33796)。
        # - 对具体事件服务的通知事件选择设置接收或者忽略。

        # @param request: Request instance for ModifyEventConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyEventConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyEventConfigResponse`
        def ModifyEventConfig(request)
          body = send_request('ModifyEventConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEventConfigResponse.new
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

        # 修改片头片尾模板。

        # @param request: Request instance for ModifyHeadTailTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyHeadTailTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyHeadTailTemplateResponse`
        def ModifyHeadTailTemplate(request)
          body = send_request('ModifyHeadTailTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHeadTailTemplateResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyImageSpriteTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyImageSpriteTemplateResponse`
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

        # 修改即时转码模板。
        # - 注意：即时转码模板创建后，不推荐修改，如需修改参数，推荐使用新增模板。

        # @param request: Request instance for ModifyJustInTimeTranscodeTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyJustInTimeTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyJustInTimeTranscodeTemplateResponse`
        def ModifyJustInTimeTranscodeTemplate(request)
          body = send_request('ModifyJustInTimeTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyJustInTimeTranscodeTemplateResponse.new
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

        # 修改用户自定义 MPS 任务模板。
        # 修改模板时，需要将 MPS 相关参数以 JSON 格式填入 MPSModifyTemplateParams 参数中。关于具体的任务参数配置方法，请参考 MPS 任务模板相关文档说明。

        # @param request: Request instance for ModifyMPSTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyMPSTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyMPSTemplateResponse`
        def ModifyMPSTemplate(request)
          body = send_request('ModifyMPSTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMPSTemplateResponse.new
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

        # 修改媒体文件的属性，包括分类、名称、描述、标签、过期时间、打点信息、视频封面、字幕信息等。

        # @param request: Request instance for ModifyMediaInfo.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyMediaInfoRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyMediaInfoResponse`
        def ModifyMediaInfo(request)
          body = send_request('ModifyMediaInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMediaInfoResponse.new
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

        # 修改媒体文件的存储类型。
        # 当媒体文件的存储类型为标准存储时，可以修改为以下类型：
        # <li>低频存储</li>
        # <li>归档存储</li>
        # <li>深度归档存储</li>
        # 当媒体文件的当前存储类型为低频存储时，可以修改为以下类型：
        # <li>标准存储</li>
        # <li>归档存储</li>
        # <li>深度归档存储</li>
        # 当媒体文件的当前存储类型为归档存储时，可以修改为以下类型：
        # <li>标准存储</li>
        # 当媒体文件的当前存储类型为深度归档存储时，可以修改为以下类型：
        # <li>标准存储</li>

        # @param request: Request instance for ModifyMediaStorageClass.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyMediaStorageClassRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyMediaStorageClassResponse`
        def ModifyMediaStorageClass(request)
          body = send_request('ModifyMediaStorageClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMediaStorageClassResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyPersonSampleRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyPersonSampleResponse`
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

        # 修改音画质检测模板。

        # @param request: Request instance for ModifyQualityInspectTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyQualityInspectTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyQualityInspectTemplateResponse`
        def ModifyQualityInspectTemplate(request)
          body = send_request('ModifyQualityInspectTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyQualityInspectTemplateResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，新版 [音画质重生](https://cloud.tencent.com/document/product/266/102571) 接口使用预置模板，详情请参见 [音画质重生模板](https://cloud.tencent.com/document/product/266/102586#50604b3f-0286-4a10-a3f7-18218116aff7)。
        # 修改视频重生模板。

        # @param request: Request instance for ModifyRebuildMediaTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyRebuildMediaTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyRebuildMediaTemplateResponse`
        def ModifyRebuildMediaTemplate(request)
          body = send_request('ModifyRebuildMediaTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRebuildMediaTemplateResponse.new
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

        # 修改用户自定义审核模板。
        # >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。

        # @param request: Request instance for ModifyReviewTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyReviewTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyReviewTemplateResponse`
        def ModifyReviewTemplate(request)
          body = send_request('ModifyReviewTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReviewTemplateResponse.new
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

        # 该接口用于修改轮播播单。
        # 修改后只有新的播放请求会生效，已经在播放中的用户在七天之内还可以播放修改前的播单。

        # @param request: Request instance for ModifyRoundPlay.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyRoundPlayRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyRoundPlayResponse`
        def ModifyRoundPlay(request)
          body = send_request('ModifyRoundPlay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoundPlayResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifySampleSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifySampleSnapshotTemplateResponse`
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

        # 修改用户自定义指定时间点截图模板。

        # @param request: Request instance for ModifySnapshotByTimeOffsetTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifySnapshotByTimeOffsetTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifySnapshotByTimeOffsetTemplateResponse`
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

        # 该接口用于修改应用信息，但不允许修改默认应用信息。

        # @param request: Request instance for ModifySubAppIdInfo.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifySubAppIdInfoRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifySubAppIdInfoResponse`
        def ModifySubAppIdInfo(request)
          body = send_request('ModifySubAppIdInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubAppIdInfoResponse.new
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

        # 该接口用于启用、停用应用。被停用的应用将封停对应域名，并限制控制台访问。

        # @param request: Request instance for ModifySubAppIdStatus.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifySubAppIdStatusRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifySubAppIdStatusResponse`
        def ModifySubAppIdStatus(request)
          body = send_request('ModifySubAppIdStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubAppIdStatusResponse.new
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

        # 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
        # 修改播放器配置。

        # @param request: Request instance for ModifySuperPlayerConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifySuperPlayerConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifySuperPlayerConfigResponse`
        def ModifySuperPlayerConfig(request)
          body = send_request('ModifySuperPlayerConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySuperPlayerConfigResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyTranscodeTemplateResponse`
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

        # 该接口用于修改点播域名的加速区域。
        # 1、域名部署状态为 Online 状态时才允许修改加速区域。

        # @param request: Request instance for ModifyVodDomainAccelerateConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyVodDomainAccelerateConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyVodDomainAccelerateConfigResponse`
        def ModifyVodDomainAccelerateConfig(request)
          body = send_request('ModifyVodDomainAccelerateConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVodDomainAccelerateConfigResponse.new
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

        # 该接口用于修改域名配置，可以修改域名的防盗链配置。
        # 1、域名部署状态为 Online 状态时才允许修改域名的配置。

        # @param request: Request instance for ModifyVodDomainConfig.
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyVodDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyVodDomainConfigResponse`
        def ModifyVodDomainConfig(request)
          body = send_request('ModifyVodDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVodDomainConfigResponse.new
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyWatermarkTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyWatermarkTemplateResponse`
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
        # @type request: :class:`Tencentcloud::vod::V20180717::ModifyWordSampleRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ModifyWordSampleResponse`
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

        # 上传 HLS 视频时，解析索引文件内容，返回待上传的分片文件列表。分片文件路径必须是当前目录或子目录的相对路径，不能是 URL，不能是绝对路径。

        # @param request: Request instance for ParseStreamingManifest.
        # @type request: :class:`Tencentcloud::vod::V20180717::ParseStreamingManifestRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ParseStreamingManifestResponse`
        def ParseStreamingManifest(request)
          body = send_request('ParseStreamingManifest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseStreamingManifestResponse.new
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

        # 该 API 已经<font color='red'>不再维护</font>，智能识别任务请使用图片智能识别 [ReviewImage](https://cloud.tencent.com/document/api/266/73217) 接口。

        # 对点播中的图片文件发起处理任务，功能包括：

        # 1. 智能识别（令人反感的信息、不安全的信息、不适宜的信息）;

        # ><li>图片文件大小支持：文件 < 5M；</li>
        # ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响识别效果；</li>
        # ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>

        # @param request: Request instance for ProcessImage.
        # @type request: :class:`Tencentcloud::vod::V20180717::ProcessImageRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ProcessImageResponse`
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

        # 对点播中的音视频媒体发起处理任务，功能包括：
        # 1. 视频转码（带水印）；
        # 2. 视频转动图；
        # 3. 对视频按指定时间点截图；
        # 4. 对视频采样截图；
        # 5. 对视频截取雪碧图；
        # 6. 对视频截取一张图做封面；
        # 7. 对视频转自适应码流（并加密）；
        # 8. 内容审核（令人反感的信息、不安全的信息、不适宜的信息），<font color=red>不建议</font> 使用该接口发起，推荐使用 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 或 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217)；
        # 9. 内容分析（标签、分类、封面、按帧标签），暂时不支持 HLS 格式；
        # 10. 内容识别（视频片头片尾、人脸、文本全文、文本关键词、语音全文、语音关键词、物体）。

        # 如使用事件通知，事件通知的类型为 [任务流状态变更](https://cloud.tencent.com/document/product/266/9636)。

        # @param request: Request instance for ProcessMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::ProcessMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ProcessMediaResponse`
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

        # 使用媒体处理服务（MPS）的媒体处理能力，对点播中的视频发起媒体处理，任务发起时需将 MPS 相关参数以 JSON 格式填入 MPSProcessMediaParams 参数中。具体任务参数配置请参考[媒体处理 ProcessMedia 接口](https://cloud.tencent.com/document/api/862/37578)。
        # 当前支持的 MPS 功能：
        # 1. [智能擦除](https://cloud.tencent.com/document/product/862/101530)：能够对视频画面中的 Logo、字幕、人脸和车牌等元素进行模糊、马赛克或无痕化处理，从而便于内容的传播和分享。该任务产生的新视频将生成新的 FileId 存储在点播平台的子应用中。
        # 2. [音视频增强](https://cloud.tencent.com/document/product/862/118703)：该功能支持分布式实时画质增强，包含视频去毛刺、降噪、色彩增强、细节增强、人脸增强、SDR2HDR、大模型增强等功能，可大幅提升音视频质量，广泛应用于 OTT、电商、赛事等场景，有效实现 QoE 与 QoS 双维度提升，创造显著业务价值。

        # > 以该种方式发起的视频处理任务：
        # > 1. 任务状态及结果的查询仍在点播平台中完成，使用 [DescribeTaskDetail](https://cloud.tencent.com/document/product/266/33431) 或 [DescribeTasks](https://cloud.tencent.com/document/product/266/33430) 查询任务。
        # > 2. 相关功能的用量及账单将在 MPS 平台给出，因此在使用该功能前，首先需要开通 MPS 服务。
        # > 3. 该功能目前仍在内测中，如需测试体验，您可以联系我们获得支持。

        # @param request: Request instance for ProcessMediaByMPS.
        # @type request: :class:`Tencentcloud::vod::V20180717::ProcessMediaByMPSRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ProcessMediaByMPSResponse`
        def ProcessMediaByMPS(request)
          body = send_request('ProcessMediaByMPS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessMediaByMPSResponse.new
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

        # 使用任务流模板，对点播中的视频发起处理任务。
        # 有两种方式创建任务流模板：
        # 1. 在控制台上创建和修改任务流模板；
        # 2. 通过任务流模板接口创建任务流模板。

        # 如使用事件通知，除音视频审核任务外的事件通知的类型为 [任务流状态变更](https://cloud.tencent.com/document/product/266/9636)；音视频审核任务事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。

        # @param request: Request instance for ProcessMediaByProcedure.
        # @type request: :class:`Tencentcloud::vod::V20180717::ProcessMediaByProcedureRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ProcessMediaByProcedureResponse`
        def ProcessMediaByProcedure(request)
          body = send_request('ProcessMediaByProcedure', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessMediaByProcedureResponse.new
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

        # 该 API 已经<font color='red'>不再维护</font>，请使用 MPS 产品的 [ProcessMedia](https://cloud.tencent.com/document/product/862/37578) 接口，在入参 InputInfo.UrlInputInfo.Url 中指定视频 URL。

        # @param request: Request instance for ProcessMediaByUrl.
        # @type request: :class:`Tencentcloud::vod::V20180717::ProcessMediaByUrlRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ProcessMediaByUrlResponse`
        def ProcessMediaByUrl(request)
          body = send_request('ProcessMediaByUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProcessMediaByUrlResponse.new
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

        # * 该接口用于业务服务器以 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 的方式获取事件通知；
        # * 接口为长轮询模式，即：如果服务端存在未消费事件，则立即返回给请求方；如果服务端没有未消费事件，则后台会将请求挂起，直到有新的事件产生为止；
        # * 请求最多挂起5秒，建议请求方将超时时间设置为10秒；
        # * 未被拉取的事件通知最多保留4天，超过该时限的事件通知可能会被清除；
        # * 若该接口有事件返回，调用方必须在<font color="red">30秒</font>内调用 [确认事件通知](https://cloud.tencent.com/document/product/266/33434) 接口，确认事件通知已经处理，否则该事件通知在<font color="red">30秒</font>后会再次被拉取到。
        # * 当前，API 每次最多可以获取16个事件通知。

        # @param request: Request instance for PullEvents.
        # @type request: :class:`Tencentcloud::vod::V20180717::PullEventsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::PullEventsResponse`
        def PullEvents(request)
          body = send_request('PullEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullEventsResponse.new
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

        # 该接口用于将一个网络上的视频拉取到云点播平台。

        # @param request: Request instance for PullUpload.
        # @type request: :class:`Tencentcloud::vod::V20180717::PullUploadRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::PullUploadResponse`
        def PullUpload(request)
          body = send_request('PullUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PullUploadResponse.new
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

        # 1. 预热指定的 URL 列表。
        # 2. URL 的域名必须已在云点播中注册。
        # 3. 单次请求最多指定20个 URL。
        # 4. 默认预热配额为每天10000个 URL。

        # @param request: Request instance for PushUrlCache.
        # @type request: :class:`Tencentcloud::vod::V20180717::PushUrlCacheRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::PushUrlCacheResponse`
        def PushUrlCache(request)
          body = send_request('PushUrlCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PushUrlCacheResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，请使用新版接口 [音画质重生](https://cloud.tencent.com/document/api/266/102571)。
        # 发起音画质重生

        # @param request: Request instance for RebuildMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::RebuildMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::RebuildMediaResponse`
        def RebuildMedia(request)
          body = send_request('RebuildMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebuildMediaResponse.new
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

        # 该 API 已经<font color=red>不再维护</font>，请使用新版接口 [音画质重生](https://cloud.tencent.com/document/api/266/102571)。
        # 使用模板发起视频重生。

        # @param request: Request instance for RebuildMediaByTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::RebuildMediaByTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::RebuildMediaByTemplateResponse`
        def RebuildMediaByTemplate(request)
          body = send_request('RebuildMediaByTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebuildMediaByTemplateResponse.new
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

        # 1. 刷新指定的 URL 列表。
        # 2. URL 的域名必须已在云点播中注册。
        # 3. 单次请求最多指定20个 URL。
        # 4. 默认刷新配额为每天100000个 URL。

        # @param request: Request instance for RefreshUrlCache.
        # @type request: :class:`Tencentcloud::vod::V20180717::RefreshUrlCacheRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::RefreshUrlCacheResponse`
        def RefreshUrlCache(request)
          body = send_request('RefreshUrlCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshUrlCacheResponse.new
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

        # 智能去除水印

        # @param request: Request instance for RemoveWatermark.
        # @type request: :class:`Tencentcloud::vod::V20180717::RemoveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::RemoveWatermarkResponse`
        def RemoveWatermark(request)
          body = send_request('RemoveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveWatermarkResponse.new
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

        # 重新设置用户自定义任务流模板的内容。

        # @param request: Request instance for ResetProcedureTemplate.
        # @type request: :class:`Tencentcloud::vod::V20180717::ResetProcedureTemplateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ResetProcedureTemplateResponse`
        def ResetProcedureTemplate(request)
          body = send_request('ResetProcedureTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetProcedureTemplateResponse.new
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

        # 当媒体文件的存储类型是归档存储或深度归档存储时，是不可访问的。如需访问，则需要调用本接口进行解冻，解冻后可访问的媒体文件是临时的，在有效期过后，则不可访问。

        # @param request: Request instance for RestoreMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::RestoreMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::RestoreMediaResponse`
        def RestoreMedia(request)
          body = send_request('RestoreMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreMediaResponse.new
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

        # 对点播中的音视频媒体发起审核任务，智能检测视频画面、画面中的文字、语音中的文字、声音出现的违规内容。

        # 如使用事件通知，事件通知的类型为 [音视频审核完成](https://cloud.tencent.com/document/product/266/81258)。

        # @param request: Request instance for ReviewAudioVideo.
        # @type request: :class:`Tencentcloud::vod::V20180717::ReviewAudioVideoRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ReviewAudioVideoResponse`
        def ReviewAudioVideo(request)
          body = send_request('ReviewAudioVideo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReviewAudioVideoResponse.new
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

        # 对点播中的图片文件发起审核（令人反感的信息、不安全的信息、不适宜的信息）任务。

        # ><li>图片文件大小支持：文件 < 5M；</li>
        # ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响审核效果；</li>
        # ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>

        # @param request: Request instance for ReviewImage.
        # @type request: :class:`Tencentcloud::vod::V20180717::ReviewImageRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::ReviewImageResponse`
        def ReviewImage(request)
          body = send_request('ReviewImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReviewImageResponse.new
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

        # 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
        # - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
        # - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
        # - 根据多个文件名前缀 NamePrefixes 进行搜索。
        # - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
        # - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
        # - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
        # - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
        # - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
        # - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
        # - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
        # - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
        # - 指定媒体的创建时间范围筛选媒体。
        # - 指定 TRTC 应用 ID 集合筛选媒体。
        # - 指定 TRTC 房间 ID 集合筛选媒体。

        # - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。

        # - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
        #     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
        #     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
        #     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
        #     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
        #     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
        #     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
        #     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
        #     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
        #     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。

        # - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。

        # <div id="maxResultsDesc">接口返回结果数限制：</div>

        # - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
        # - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>

        # <br>不推荐使用的条件筛选：
        # - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
        # - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
        # - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
        # - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
        # - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。

        # @param request: Request instance for SearchMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::SearchMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SearchMediaResponse`
        def SearchMedia(request)
          body = send_request('SearchMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchMediaResponse.new
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

        # 为点播域名设置投递 CLS 的目标。

        # @param request: Request instance for SetCLSPushTarget.
        # @type request: :class:`Tencentcloud::vod::V20180717::SetCLSPushTargetRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SetCLSPushTargetResponse`
        def SetCLSPushTarget(request)
          body = send_request('SetCLSPushTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetCLSPushTargetResponse.new
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

        # 设置 DRM 密钥提供商信息。

        # @param request: Request instance for SetDrmKeyProviderInfo.
        # @type request: :class:`Tencentcloud::vod::V20180717::SetDrmKeyProviderInfoRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SetDrmKeyProviderInfoResponse`
        def SetDrmKeyProviderInfo(request)
          body = send_request('SetDrmKeyProviderInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetDrmKeyProviderInfoResponse.new
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

        # 设置点播域名 HTTPS 证书。

        # @param request: Request instance for SetVodDomainCertificate.
        # @type request: :class:`Tencentcloud::vod::V20180717::SetVodDomainCertificateRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SetVodDomainCertificateResponse`
        def SetVodDomainCertificate(request)
          body = send_request('SetVodDomainCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVodDomainCertificateResponse.new
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

        # 对 HLS 视频进行按时间段裁剪，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。

        # 腾讯云点播支持两种剪辑模式：
        # - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段长久保存的场景；
        # - 剪辑不固化：剪辑得到的视频附属于输入文件，没有独立 FileId；适用于将精彩片段临时分享的场景。

        # 裁剪精度支持粗略裁剪和精确裁剪：
        # - 粗略剪辑：基于输入 m3u8 文件进行裁剪，其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
        # - 精确剪辑：按照 StartTimeOffset 和 EndTimeOffset 参数进行精确裁剪。使用精确裁剪需要开通[即时转码](/document/product/266/102174)的功能。

        # ### 剪辑固化
        # 所谓剪辑固化，是指将剪辑出来的视频保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始输入视频影响（即使原始输入视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。

        # 举例如下：一场完整的足球比赛，原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择剪辑并且固化的方案。

        # 剪辑固化的优势在于其生命周期与原始输入视频相互独立，可以独立管理、长久保存。

        # <font color='red'>注意：</font>如果剪辑时指定进行固化，通过 ModifyEventConfig 接口启用接收剪辑固化事件通知，固化成功后将会收到一个 PersistenceComplete 类型的事件通知。在收到这个事件通知之前，不应该对原始输入的视频进行删除、降冷等操作，否则剪辑生成的视频播放可能出现异常。

        # ### 剪辑不固化
        # 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与原始输入视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与原始输入的完整视频有效期是一致的。一旦原始输入的视频被删除，也会导致该片段无法播放。

        # 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。

        # 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。

        # @param request: Request instance for SimpleHlsClip.
        # @type request: :class:`Tencentcloud::vod::V20180717::SimpleHlsClipRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SimpleHlsClipResponse`
        def SimpleHlsClip(request)
          body = send_request('SimpleHlsClip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SimpleHlsClipResponse.new
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

        # 对点播视频进行拆条，生成多个新的点播视频。

        # @param request: Request instance for SplitMedia.
        # @type request: :class:`Tencentcloud::vod::V20180717::SplitMediaRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::SplitMediaResponse`
        def SplitMedia(request)
          body = send_request('SplitMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SplitMediaResponse.new
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

        # 该接口用于验证域名解析值。

        # @param request: Request instance for VerifyDomainRecord.
        # @type request: :class:`Tencentcloud::vod::V20180717::VerifyDomainRecordRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::VerifyDomainRecordResponse`
        def VerifyDomainRecord(request)
          body = send_request('VerifyDomainRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyDomainRecordResponse.new
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

        # 将点播视频发布到微信小程序，供微信小程序播放器播放。
        # 本接口支持发布原始视频和转码后视频，暂不支持发布自适应码流。

        # @param request: Request instance for WeChatMiniProgramPublish.
        # @type request: :class:`Tencentcloud::vod::V20180717::WeChatMiniProgramPublishRequest`
        # @rtype: :class:`Tencentcloud::vod::V20180717::WeChatMiniProgramPublishResponse`
        def WeChatMiniProgramPublish(request)
          body = send_request('WeChatMiniProgramPublish', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WeChatMiniProgramPublishResponse.new
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