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
  module Vclm
    module V20240523
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-05-23'
            api_endpoint = 'vclm.tencentcloudapi.com'
            sdk_version = 'VCLM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 确认视频转译结果

        # @param request: Request instance for ConfirmVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::ConfirmVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::ConfirmVideoTranslateJobResponse`
        def ConfirmVideoTranslateJob(request)
          body = send_request('ConfirmVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmVideoTranslateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询视频翻译任务

        # @param request: Request instance for DescribeVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::DescribeVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::DescribeVideoTranslateJobResponse`
        def DescribeVideoTranslateJob(request)
          body = send_request('DescribeVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoTranslateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 提交视频转译任务

        # @param request: Request instance for SubmitVideoTranslateJob.
        # @type request: :class:`Tencentcloud::vclm::V20240523::SubmitVideoTranslateJobRequest`
        # @rtype: :class:`Tencentcloud::vclm::V20240523::SubmitVideoTranslateJobResponse`
        def SubmitVideoTranslateJob(request)
          body = send_request('SubmitVideoTranslateJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitVideoTranslateJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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