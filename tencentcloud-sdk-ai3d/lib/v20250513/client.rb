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


        # 输入3D模型文件后，可进行3D模型文件格式转换。

        # @param request: Request instance for Convert3DFormat.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::Convert3DFormatRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::Convert3DFormatResponse`
        def Convert3DFormat(request)
          body = send_request('Convert3DFormat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = Convert3DFormatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询组件拆分任务。

        # @param request: Request instance for DescribeHunyuanTo3DUVJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::DescribeHunyuanTo3DUVJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::DescribeHunyuanTo3DUVJobResponse`
        def DescribeHunyuanTo3DUVJob(request)
          body = send_request('DescribeHunyuanTo3DUVJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHunyuanTo3DUVJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeReduceFaceJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::DescribeReduceFaceJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::DescribeReduceFaceJobResponse`
        def DescribeReduceFaceJob(request)
          body = send_request('DescribeReduceFaceJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReduceFaceJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for DescribeTextureTo3DJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::DescribeTextureTo3DJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::DescribeTextureTo3DJobResponse`
        def DescribeTextureTo3DJob(request)
          body = send_request('DescribeTextureTo3DJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextureTo3DJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询组件生成任务。

        # @param request: Request instance for QueryHunyuan3DPartJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuan3DPartJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::QueryHunyuan3DPartJobResponse`
        def QueryHunyuan3DPartJob(request)
          body = send_request('QueryHunyuan3DPartJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryHunyuan3DPartJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 输入3D模型文件后，根据模型结构自动进行组件识别生成。

        # @param request: Request instance for SubmitHunyuan3DPartJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuan3DPartJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuan3DPartJobResponse`
        def SubmitHunyuan3DPartJob(request)
          body = send_request('SubmitHunyuan3DPartJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuan3DPartJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 输入模型后，可根据模型纹理进行UV展开，输出对应UV贴图。

        # @param request: Request instance for SubmitHunyuanTo3DUVJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DUVJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitHunyuanTo3DUVJobResponse`
        def SubmitHunyuanTo3DUVJob(request)
          body = send_request('SubmitHunyuanTo3DUVJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuanTo3DUVJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for SubmitReduceFaceJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitReduceFaceJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitReduceFaceJobResponse`
        def SubmitReduceFaceJob(request)
          body = send_request('SubmitReduceFaceJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitReduceFaceJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for SubmitTextureTo3DJob.
        # @type request: :class:`Tencentcloud::ai3d::V20250513::SubmitTextureTo3DJobRequest`
        # @rtype: :class:`Tencentcloud::ai3d::V20250513::SubmitTextureTo3DJobResponse`
        def SubmitTextureTo3DJob(request)
          body = send_request('SubmitTextureTo3DJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTextureTo3DJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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