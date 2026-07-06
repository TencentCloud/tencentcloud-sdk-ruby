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


        # 提交视频特效任务接口

        # @param request: Request instance for CreateAigcElement.
        # @type request: :class:`Tencentcloud::vclm::V20240523::CreateAigcElementRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::CreateAigcElementResponse`
        def CreateAigcElement(request)
          body = send_request('CreateAigcElement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAigcElementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主体库

        # @param request: Request instance for DeleteAigcElement.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DeleteAigcElementRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DeleteAigcElementResponse`
        def DeleteAigcElement(request)
          body = send_request('DeleteAigcElement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAigcElementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeAigcElement.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeAigcElementRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeAigcElementResponse`
        def DescribeAigcElement(request)
          body = send_request('DescribeAigcElement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAigcElementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 用于查询视频特效任务。

        # @param request: Request instance for DescribeImageToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoJobResponse`
        def DescribeImageToVideoJob(request)
          body = send_request('DescribeImageToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Vidu图生视频任务接口

        # @param request: Request instance for DescribeImageToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeImageToVideoViduJobResponse`
        def DescribeImageToVideoViduJob(request)
          body = send_request('DescribeImageToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Kling动作控制任务

        # @param request: Request instance for DescribeMotionControlKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeMotionControlKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeMotionControlKlingJobResponse`
        def DescribeMotionControlKlingJob(request)
          body = send_request('DescribeMotionControlKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMotionControlKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询Vidu参考生视频任务接口

        # @param request: Request instance for DescribeReferenceToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeReferenceToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeReferenceToVideoViduJobResponse`
        def DescribeReferenceToVideoViduJob(request)
          body = send_request('DescribeReferenceToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReferenceToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 用于查询文生视频任务。

        # @param request: Request instance for DescribeTextToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeTextToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeTextToVideoJobResponse`
        def DescribeTextToVideoJob(request)
          body = send_request('DescribeTextToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Vidu文生视频任务接口

        # @param request: Request instance for DescribeTextToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeTextToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeTextToVideoViduJobResponse`
        def DescribeTextToVideoViduJob(request)
          body = send_request('DescribeTextToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Kling多模态编辑任务

        # @param request: Request instance for DescribeVideoEditKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoEditKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoEditKlingJobResponse`
        def DescribeVideoEditKlingJob(request)
          body = send_request('DescribeVideoEditKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoEditKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询视频延长任务

        # @param request: Request instance for DescribeVideoExtendKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoExtendKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoExtendKlingJobResponse`
        def DescribeVideoExtendKlingJob(request)
          body = send_request('DescribeVideoExtendKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoExtendKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 提交视频特效任务接口

        # @param request: Request instance for SubmitImageToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoJobResponse`
        def SubmitImageToVideoJob(request)
          body = send_request('SubmitImageToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交Vidu图生视频任务接口

        # @param request: Request instance for SubmitImageToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitImageToVideoViduJobResponse`
        def SubmitImageToVideoViduJob(request)
          body = send_request('SubmitImageToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交动作控制(Kling)任务并发

        # @param request: Request instance for SubmitMotionControlKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitMotionControlKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitMotionControlKlingJobResponse`
        def SubmitMotionControlKlingJob(request)
          body = send_request('SubmitMotionControlKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitMotionControlKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 提交Vidu参考生视频任务接口

        # @param request: Request instance for SubmitReferenceToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitReferenceToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitReferenceToVideoViduJobResponse`
        def SubmitReferenceToVideoViduJob(request)
          body = send_request('SubmitReferenceToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitReferenceToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 通过提交对视频内容的描述文本生成一个短视频。文生视频为异步处理任务，成功提交任务后返回任务的JobId。

        # @param request: Request instance for SubmitTextToVideoJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitTextToVideoJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitTextToVideoJobResponse`
        def SubmitTextToVideoJob(request)
          body = send_request('SubmitTextToVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTextToVideoJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交Vidu文生视频任务接口

        # @param request: Request instance for SubmitTextToVideoViduJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitTextToVideoViduJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitTextToVideoViduJobResponse`
        def SubmitTextToVideoViduJob(request)
          body = send_request('SubmitTextToVideoViduJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTextToVideoViduJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交Kling多模态编辑任务

        # @param request: Request instance for SubmitVideoEditKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoEditKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoEditKlingJobResponse`
        def SubmitVideoEditKlingJob(request)
          body = send_request('SubmitVideoEditKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoEditKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于提交视频延长任务接口。

        # @param request: Request instance for SubmitVideoExtendKlingJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoExtendKlingJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoExtendKlingJobResponse`
        def SubmitVideoExtendKlingJob(request)
          body = send_request('SubmitVideoExtendKlingJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoExtendKlingJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end