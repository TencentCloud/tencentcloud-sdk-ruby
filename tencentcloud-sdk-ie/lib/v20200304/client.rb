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
  module Ie
    module V20200304
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-03-04'
            api_endpoint = 'ie.tencentcloudapi.com'
            sdk_version = 'IE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建编辑理解任务，可以同时选择视频标签识别、分类识别、智能拆条、智能集锦、智能封面和片头片尾识别中的一项或者多项能力。

        # @param request: Request instance for CreateEditingTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::CreateEditingTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::CreateEditingTaskResponse`
        def CreateEditingTask(request)
          body = send_request('CreateEditingTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEditingTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建编辑处理任务，如媒体截取、媒体编辑、媒体拼接、媒体字幕。

        # @param request: Request instance for CreateMediaProcessTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::CreateMediaProcessTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::CreateMediaProcessTaskResponse`
        def CreateMediaProcessTask(request)
          body = send_request('CreateMediaProcessTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMediaProcessTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建画质重生任务，对视频进行转码、去噪、去划痕、去毛刺、超分、细节增强和色彩增强。

        # @param request: Request instance for CreateMediaQualityRestorationTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::CreateMediaQualityRestorationTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::CreateMediaQualityRestorationTaskResponse`
        def CreateMediaQualityRestorationTask(request)
          body = send_request('CreateMediaQualityRestorationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMediaQualityRestorationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口可以智能检测视频画面中抖动重影、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等在内的多个场景，还可以自动检测视频无音频异常、无声音片段。

        # @param request: Request instance for CreateQualityControlTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::CreateQualityControlTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::CreateQualityControlTaskResponse`
        def CreateQualityControlTask(request)
          body = send_request('CreateQualityControlTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateQualityControlTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取编辑理解任务结果。

        # @param request: Request instance for DescribeEditingTaskResult.
        # @type request: :class:`Tencentcloud::ie::V20200304::DescribeEditingTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::DescribeEditingTaskResultResponse`
        def DescribeEditingTaskResult(request)
          body = send_request('DescribeEditingTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEditingTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取编辑处理任务的结果。

        # @param request: Request instance for DescribeMediaProcessTaskResult.
        # @type request: :class:`Tencentcloud::ie::V20200304::DescribeMediaProcessTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::DescribeMediaProcessTaskResultResponse`
        def DescribeMediaProcessTaskResult(request)
          body = send_request('DescribeMediaProcessTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaProcessTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取画质重生任务结果，查看结束后的文件信息

        # @param request: Request instance for DescribeMediaQualityRestorationTaskRusult.
        # @type request: :class:`Tencentcloud::ie::V20200304::DescribeMediaQualityRestorationTaskRusultRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::DescribeMediaQualityRestorationTaskRusultResponse`
        def DescribeMediaQualityRestorationTaskRusult(request)
          body = send_request('DescribeMediaQualityRestorationTaskRusult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaQualityRestorationTaskRusultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取媒体质检任务结果

        # @param request: Request instance for DescribeQualityControlTaskResult.
        # @type request: :class:`Tencentcloud::ie::V20200304::DescribeQualityControlTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::DescribeQualityControlTaskResultResponse`
        def DescribeQualityControlTaskResult(request)
          body = send_request('DescribeQualityControlTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQualityControlTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于停止正在进行中的编辑处理任务。

        # @param request: Request instance for StopMediaProcessTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::StopMediaProcessTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::StopMediaProcessTaskResponse`
        def StopMediaProcessTask(request)
          body = send_request('StopMediaProcessTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMediaProcessTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除正在进行的画质重生任务

        # @param request: Request instance for StopMediaQualityRestorationTask.
        # @type request: :class:`Tencentcloud::ie::V20200304::StopMediaQualityRestorationTaskRequest`
        # @rtype: :class:`Tencentcloud::ie::V20200304::StopMediaQualityRestorationTaskResponse`
        def StopMediaQualityRestorationTask(request)
          body = send_request('StopMediaQualityRestorationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMediaQualityRestorationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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