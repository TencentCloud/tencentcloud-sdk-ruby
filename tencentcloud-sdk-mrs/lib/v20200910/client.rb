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
  module Mrs
    module V20200910
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-10'
            api_endpoint = 'mrs.tencentcloudapi.com'
            sdk_version = 'MRS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 药品说明书PDF文件结构化

        # @param request: Request instance for DrugInstructionObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::DrugInstructionObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::DrugInstructionObjectResponse`
        def DrugInstructionObject(request)
          body = send_request('DrugInstructionObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DrugInstructionObjectResponse.new
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

        # 医疗报告图片脱敏接口

        # @param request: Request instance for ImageMask.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageMaskRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageMaskResponse`
        def ImageMask(request)
          body = send_request('ImageMask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageMaskResponse.new
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

        # 图片脱敏-异步接口
        # 短时间大批量调用（例如>100上传/10分钟），如果遇到错误码“FalledOperation.AsyncQueueFullError”，请于数分钟后再次尝试提交。

        # @param request: Request instance for ImageMaskAsync.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageMaskAsyncRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageMaskAsyncResponse`
        def ImageMaskAsync(request)
          body = send_request('ImageMaskAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageMaskAsyncResponse.new
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

        # 图片脱敏-异步获取结果接口
        # 请于上传请求后24小时内获取结果。

        # @param request: Request instance for ImageMaskAsyncGetResult.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageMaskAsyncGetResultRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageMaskAsyncGetResultResponse`
        def ImageMaskAsyncGetResult(request)
          body = send_request('ImageMaskAsyncGetResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageMaskAsyncGetResultResponse.new
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

        # 图片分类

        # @param request: Request instance for ImageToClass.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageToClassRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageToClassResponse`
        def ImageToClass(request)
          body = send_request('ImageToClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageToClassResponse.new
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

        # 图片转结构化对象

        # @param request: Request instance for ImageToObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::ImageToObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::ImageToObjectResponse`
        def ImageToObject(request)
          body = send_request('ImageToObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageToObjectResponse.new
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

        # 文本分类

        # 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，并且需要加上每个字符的坐标信息，才可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。如有需要调用此接口，建议先咨询产品团队。

        # @param request: Request instance for TextToClass.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TextToClassRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TextToClassResponse`
        def TextToClass(request)
          body = send_request('TextToClass', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToClassResponse.new
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

        # 文本转结构化对象。

        # 适用场景：经过腾讯医疗专用 OCR 从图片识别之后的文本，可以调用此接口。通过其它 OCR 识别的文本可能不适配。医院的 XML 格式文本也不适配，XML 文件需要经过特殊转换才能直接调用此接口。单次调用传入的文本不宜超过 2000 字。

        # @param request: Request instance for TextToObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TextToObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TextToObjectResponse`
        def TextToObject(request)
          body = send_request('TextToObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToObjectResponse.new
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

        # 将PDF格式的体检报告文件结构化，解析关键信息。
        # 注意：该接口是按照体检报告 PDF 页面数量统计次数，不是按照 PDF 文件数量统计次数。通过该接口传入的报告必须是体检报告，非体检报告可能无法正确解析。

        # @param request: Request instance for TurnPDFToObject.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectResponse`
        def TurnPDFToObject(request)
          body = send_request('TurnPDFToObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TurnPDFToObjectResponse.new
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

        # 体检报告PDF文件结构化-异步接口

        # @param request: Request instance for TurnPDFToObjectAsync.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectAsyncRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectAsyncResponse`
        def TurnPDFToObjectAsync(request)
          body = send_request('TurnPDFToObjectAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TurnPDFToObjectAsyncResponse.new
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

        # 体检报告PDF文件结构化异步获取结果接口

        # @param request: Request instance for TurnPDFToObjectAsyncGetResult.
        # @type request: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectAsyncGetResultRequest`
        # @rtype: :class:`Tencentcloud::mrs::V20200910::TurnPDFToObjectAsyncGetResultResponse`
        def TurnPDFToObjectAsyncGetResult(request)
          body = send_request('TurnPDFToObjectAsyncGetResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TurnPDFToObjectAsyncGetResultResponse.new
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