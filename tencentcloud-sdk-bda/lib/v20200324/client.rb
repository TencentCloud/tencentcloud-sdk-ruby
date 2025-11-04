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
  module Bda
    module V20200324
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-03-24'
            api_endpoint = 'bda.tencentcloudapi.com'
            sdk_version = 'BDA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。

        # @param request: Request instance for CreateSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::CreateSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::CreateSegmentationTaskResponse`
        def CreateSegmentationTask(request)
          body = send_request('CreateSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可以查看单条任务的处理情况，包括处理状态，处理结果。

        # @param request: Request instance for DescribeSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::DescribeSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DescribeSegmentationTaskResponse`
        def DescribeSegmentationTask(request)
          body = send_request('DescribeSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在前后景分割的基础上优化多分类分割，支持对头发、五官等的分割，既作为换发型、挂件等底层技术，也可用于抠人头、抠人脸等玩法

        # @param request: Request instance for SegmentCustomizedPortraitPic.
        # @type request: :class:`Tencentcloud::bda::V20200324::SegmentCustomizedPortraitPicRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::SegmentCustomizedPortraitPicResponse`
        def SegmentCustomizedPortraitPic(request)
          body = send_request('SegmentCustomizedPortraitPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SegmentCustomizedPortraitPicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 即二分类人像分割，识别传入图片中人体的完整轮廓，进行抠像。

        # @param request: Request instance for SegmentPortraitPic.
        # @type request: :class:`Tencentcloud::bda::V20200324::SegmentPortraitPicRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::SegmentPortraitPicResponse`
        def SegmentPortraitPic(request)
          body = send_request('SegmentPortraitPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SegmentPortraitPicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止指定视频人像分割处理任务

        # @param request: Request instance for TerminateSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::TerminateSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::TerminateSegmentationTaskResponse`
        def TerminateSegmentationTask(request)
          body = send_request('TerminateSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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