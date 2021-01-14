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
  module Cms
    module V20190321
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-03-21'
        @@endpoint = 'cms.tencentcloudapi.com'
        @@sdk_version = 'CMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
        # <br>
        # 通过该接口可以将图片新增到样本库。

        # @param request: Request instance for CreateFileSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::CreateFileSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::CreateFileSampleResponse`
        def CreateFileSample(request)
          body = send_request('CreateFileSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
        # <br>
        # 通过该接口可以将文本新增到样本库。

        # @param request: Request instance for CreateTextSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::CreateTextSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::CreateTextSampleResponse`
        def CreateTextSample(request)
          body = send_request('CreateTextSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTextSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
        # <br>
        # 删除图片样本库，支持批量删除，一次提交不超过20个。

        # @param request: Request instance for DeleteFileSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::DeleteFileSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DeleteFileSampleResponse`
        def DeleteFileSample(request)
          body = send_request('DeleteFileSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFileSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
        # <br>
        # 删除文本样本库，暂时只支持单个删除。

        # @param request: Request instance for DeleteTextSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::DeleteTextSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DeleteTextSampleResponse`
        def DeleteTextSample(request)
          body = send_request('DeleteTextSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTextSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本文档适用于图片内容安全、视频内容安全自定义识别库的管理。
        # <br>
        # 查询图片样本库，支持批量查询。

        # @param request: Request instance for DescribeFileSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::DescribeFileSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DescribeFileSampleResponse`
        def DescribeFileSample(request)
          body = send_request('DescribeFileSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
        # <br>
        # 支持批量查询文本样本库。

        # @param request: Request instance for DescribeTextSample.
        # @type request: :class:`Tencentcloud::cms::V20190321::DescribeTextSampleRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::DescribeTextSampleResponse`
        def DescribeTextSample(request)
          body = send_request('DescribeTextSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTextSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别涉黄、涉恐、涉政、涉毒等有害内容，同时支持用户配置图片黑名单，打击自定义的违规图片。

        # @param request: Request instance for ImageModeration.
        # @type request: :class:`Tencentcloud::cms::V20190321::ImageModerationRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::ImageModerationResponse`
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

        # 人工审核对外接口

        # @param request: Request instance for ManualReview.
        # @type request: :class:`Tencentcloud::cms::V20190321::ManualReviewRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::ManualReviewResponse`
        def ManualReview(request)
          body = send_request('ManualReview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManualReviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。

        # @param request: Request instance for TextModeration.
        # @type request: :class:`Tencentcloud::cms::V20190321::TextModerationRequest`
        # @rtype: :class:`Tencentcloud::cms::V20190321::TextModerationResponse`
        def TextModeration(request)
          body = send_request('TextModeration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextModerationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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