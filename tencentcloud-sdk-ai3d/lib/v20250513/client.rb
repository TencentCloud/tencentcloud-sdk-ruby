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
  module Ai3d
    module V20250513
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-05-13'
            api_endpoint = 'ai3d.tencentcloudapi.com'
            sdk_version = 'AI3D_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 混元生3D接口，基于混元大模型，根据输入的文本描述/图片智能生成3D。
        # 默认提供3个并发，代表最多能同时处理3个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for QueryHunyuanTo3DProJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuanTo3DProJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuanTo3DProJobResponse`
        def QueryHunyuanTo3DProJob(request)
          body = send_request('QueryHunyuanTo3DProJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryHunyuanTo3DProJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 混元生3D接口，基于混元大模型，根据输入的文本描述/图片智能生成3D。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for QueryHunyuanTo3DRapidJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuanTo3DRapidJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuanTo3DRapidJobResponse`
        def QueryHunyuanTo3DRapidJob(request)
          body = send_request('QueryHunyuanTo3DRapidJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryHunyuanTo3DRapidJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 混元生3D接口，基于混元大模型，根据输入的文本描述/图片智能生成3D。
        # 默认提供3个并发，代表最多能同时处理3个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for SubmitHunyuanTo3DProJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DProJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DProJobResponse`
        def SubmitHunyuanTo3DProJob(request)
          body = send_request('SubmitHunyuanTo3DProJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuanTo3DProJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 混元生3D接口，基于混元大模型，根据输入的文本描述/图片智能生成3D。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for SubmitHunyuanTo3DRapidJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DRapidJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DRapidJobResponse`
        def SubmitHunyuanTo3DRapidJob(request)
          body = send_request('SubmitHunyuanTo3DRapidJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuanTo3DRapidJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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