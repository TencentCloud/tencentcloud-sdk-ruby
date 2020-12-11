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
  module Ticm
    module V20181127
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-11-27'
        @@endpoint = 'ticm.tencentcloudapi.com'
        @@sdk_version = 'TICM_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 提交完视频审核任务后，可以通过本接口来获取当前处理的进度和结果

        # @param request: Request instance for DescribeVideoTask.
        # @type request: :class:`Tencentcloud::ticm::V20181127::DescribeVideoTaskRequest`
        # @rtype: :class:`Tencentcloud::ticm::V20181127::DescribeVideoTaskResponse`
        def DescribeVideoTask(request)
          body = send_request('DescribeVideoTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVideoTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口提供多种维度的图像审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。

        # @param request: Request instance for ImageModeration.
        # @type request: :class:`Tencentcloud::ticm::V20181127::ImageModerationRequest`
        # @rtype: :class:`Tencentcloud::ticm::V20181127::ImageModerationResponse`
        def ImageModeration(request)
          body = send_request('ImageModeration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageModerationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口提供多种维度的视频审核能力，支持色情和性感内容识别，政治人物和涉政敏感场景识别，以及暴恐人物、场景、旗帜标识等违禁内容的识别。

        # @param request: Request instance for VideoModeration.
        # @type request: :class:`Tencentcloud::ticm::V20181127::VideoModerationRequest`
        # @rtype: :class:`Tencentcloud::ticm::V20181127::VideoModerationResponse`
        def VideoModeration(request)
          body = send_request('VideoModeration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VideoModerationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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