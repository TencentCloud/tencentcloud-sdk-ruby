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
  module Mps
    module V20190612
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-06-12'
            api_endpoint = 'mps.tencentcloudapi.com'
            sdk_version = 'MPS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
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

        # 创建用户自定义内容智能识别模板，数量上限：50。

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

        # 创建用户自定义转码模板，数量上限：1000。

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

        # 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。

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
        # * 只能查询到最近三天（72 小时）内的任务。

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

        # 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：

        # 1. 对一个文件进行剪辑，生成一个新的视频；
        # 2. 对多个文件进行拼接，生成一个新的视频；
        # 3. 对多个文件进行剪辑，然后再拼接，生成一个新的视频。

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
        # 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 的中解析函数的实现事件通知的解析。

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
        # 该接口不用于发起网络调用，而是用来帮助生成各个语言平台的 SDK，您可以参考 SDK 的中解析函数的实现事件通知的解析。

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

        # 对直播流媒体发起处理任务，功能包括：

        # * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
        # * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词）。

        # 直播流处理事件通知实时写入用户指定的消息队列 CMQ 中，用户需要从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。

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

        # 对 COS 中的媒体文件发起处理任务，功能包括：
        # 1. 视频转码（带水印）；
        # 2. 视频转动图；
        # 3. 对视频按指定时间点截图；
        # 4. 对视频采样截图；
        # 5. 对视频截图雪碧图；
        # 6. 对视频转自适应码流；
        # 7. 智能内容审核（鉴黄、敏感信息检测）；
        # 8. 智能内容分析（标签、分类、封面、按帧标签）；
        # 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词）。

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


      end
    end
  end
end