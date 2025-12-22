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
  module Vclm
    module V20240523
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-05-23'
            api_endpoint = 'vclm.tencentcloudapi.com'
            sdk_version = 'VCLM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 检查图片跳舞输入图

        # @param request: Request instance for CheckAnimateImageJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::CheckAnimateImageJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::CheckAnimateImageJobResponse`
        def CheckAnimateImageJob(request)
          body = send_request('CheckAnimateImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAnimateImageJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过JobId提交请求，获取人像驱动任务的结果信息。

        # @param request: Request instance for DescribeHumanActorJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeHumanActorJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeHumanActorJobResponse`
        def DescribeHumanActorJob(request)
          body = send_request('DescribeHumanActorJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHumanActorJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询混元生视频任务

        # @param request: Request instance for DescribeHunyuanToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeHunyuanToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeHunyuanToVideoJobResponse`
        def DescribeHunyuanToVideoJob(request)
          body = send_request('DescribeHunyuanToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHunyuanToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询图片跳舞任务。图片跳舞能力支持舞蹈动作结合图片生成跳舞视频，满足社交娱乐、互动营销等场景的需求。

        # @param request: Request instance for DescribeImageAnimateJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeImageAnimateJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeImageAnimateJobResponse`
        def DescribeImageAnimateJob(request)
          body = send_request('DescribeImageAnimateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageAnimateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询图生视频通用能力任务接口

        # @param request: Request instance for DescribeImageToVideoGeneralJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoGeneralJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoGeneralJobResponse`
        def DescribeImageToVideoGeneralJob(request)
          body = send_request('DescribeImageToVideoGeneralJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageToVideoGeneralJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询图片唱演任务。
        # 支持提交音频和图片生成唱演视频，满足社交娱乐、互动营销等场景的需求。

        # @param request: Request instance for DescribePortraitSingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribePortraitSingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribePortraitSingJobResponse`
        def DescribePortraitSingJob(request)
          body = send_request('DescribePortraitSingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePortraitSingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询视频特效任务。

        # @param request: Request instance for DescribeTemplateToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeTemplateToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeTemplateToVideoJobResponse`
        def DescribeTemplateToVideoJob(request)
          body = send_request('DescribeTemplateToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交视频编辑任务，支持上传视频、文本及图片素材开展编辑操作，涵盖风格迁移、元素替换、内容增减等核心能力。

        # @param request: Request instance for DescribeVideoEditJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoEditJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoEditJobResponse`
        def DescribeVideoEditJob(request)
          body = send_request('DescribeVideoEditJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoEditJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询视频人脸融合任务

        # @param request: Request instance for DescribeVideoFaceFusionJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoFaceFusionJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoFaceFusionJobResponse`
        def DescribeVideoFaceFusionJob(request)
          body = send_request('DescribeVideoFaceFusionJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoFaceFusionJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询视频风格化任务。视频风格化支持将输入视频生成特定风格的视频。生成后的视频画面风格多样、流畅自然，能够满足社交娱乐、互动营销、视频素材制作等场景的需求。

        # @param request: Request instance for DescribeVideoStylizationJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoStylizationJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoStylizationJobResponse`
        def DescribeVideoStylizationJob(request)
          body = send_request('DescribeVideoStylizationJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoStylizationJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过JobId提交请求，获取视频配音频任务的结果信息。

        # @param request: Request instance for DescribeVideoVoiceJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoVoiceJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoVoiceJobResponse`
        def DescribeVideoVoiceJob(request)
          body = send_request('DescribeVideoVoiceJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoVoiceJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交人像驱动任务
        # 支持提交音频和图文来生成对应视频，满足动态交互、内容生产等场景需求。

        # @param request: Request instance for SubmitHumanActorJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitHumanActorJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitHumanActorJobResponse`
        def SubmitHumanActorJob(request)
          body = send_request('SubmitHumanActorJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHumanActorJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ●混元生视频接口，基于混元大模型，根据输入的文本或图片智能生成视频。

        # ●默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for SubmitHunyuanToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitHunyuanToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitHunyuanToVideoJobResponse`
        def SubmitHunyuanToVideoJob(request)
          body = send_request('SubmitHunyuanToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuanToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交图片跳舞任务。图片跳舞能力支持舞蹈动作结合图片生成跳舞视频，满足社交娱乐、互动营销等场景的需求。

        # @param request: Request instance for SubmitImageAnimateJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitImageAnimateJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitImageAnimateJobResponse`
        def SubmitImageAnimateJob(request)
          body = send_request('SubmitImageAnimateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageAnimateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 图生视频通用能力接口

        # @param request: Request instance for SubmitImageToVideoGeneralJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoGeneralJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoGeneralJobResponse`
        def SubmitImageToVideoGeneralJob(request)
          body = send_request('SubmitImageToVideoGeneralJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageToVideoGeneralJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交图片唱演任务。
        # 支持提交音频和图片生成唱演视频，满足社交娱乐、互动营销等场景的需求。

        # @param request: Request instance for SubmitPortraitSingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitPortraitSingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitPortraitSingJobResponse`
        def SubmitPortraitSingJob(request)
          body = send_request('SubmitPortraitSingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitPortraitSingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交视频特效任务接口

        # @param request: Request instance for SubmitTemplateToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitTemplateToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitTemplateToVideoJobResponse`
        def SubmitTemplateToVideoJob(request)
          body = send_request('SubmitTemplateToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTemplateToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交视频编辑任务，支持上传视频、文本及图片素材开展编辑操作，涵盖风格迁移、元素替换、内容增减等核心能力。

        # @param request: Request instance for SubmitVideoEditJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoEditJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoEditJobResponse`
        def SubmitVideoEditJob(request)
          body = send_request('SubmitVideoEditJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoEditJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交视频人脸融合任务

        # @param request: Request instance for SubmitVideoFaceFusionJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoFaceFusionJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoFaceFusionJobResponse`
        def SubmitVideoFaceFusionJob(request)
          body = send_request('SubmitVideoFaceFusionJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoFaceFusionJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交视频风格化任务。支持将输入视频生成特定风格的视频。生成后的视频画面风格多样、流畅自然，能够满足社交娱乐、互动营销、视频素材制作等场景的需求。

        # @param request: Request instance for SubmitVideoStylizationJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoStylizationJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoStylizationJobResponse`
        def SubmitVideoStylizationJob(request)
          body = send_request('SubmitVideoStylizationJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoStylizationJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交视频配音效任务，输入视频后提交请求，会返回一个JobId，用于查询视频配音效的处理进度。

        # @param request: Request instance for SubmitVideoVoiceJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoVoiceJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoVoiceJobResponse`
        def SubmitVideoVoiceJob(request)
          body = send_request('SubmitVideoVoiceJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoVoiceJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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