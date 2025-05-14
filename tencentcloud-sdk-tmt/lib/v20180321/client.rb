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
  module Tmt
    module V20180321
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-21'
            api_endpoint = 'tmt.tencentcloudapi.com'
            sdk_version = 'TMT_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 提交文档原文内容，输出任务ID， 支持原文为单一语种文档（如出现多语言文档，仅支持以选定的源语言相关内容翻译）,文件格式有pdf、docx、pptx、xlsx，支持的文本格式有txt、xml、html、markdown、properties。任务翻译数据可保存7天，7天后不再返回任务数据。请注意保存。

        # @param request: Request instance for FileTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::FileTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::FileTranslateResponse`
        def FileTranslate(request)
          body = send_request('FileTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FileTranslateResponse.new
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

        # 在调用文档翻译请求接口后，有回调和轮询两种方式获取识别结果。
        # •当采用回调方式时，翻译完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[文件翻译回调说明](https://cloud.tencent.com/document/product/551/91138)。
        # • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见参数说明。

        # @param request: Request instance for GetFileTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::GetFileTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::GetFileTranslateResponse`
        def GetFileTranslate(request)
          body = send_request('GetFileTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFileTranslateResponse.new
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

        # 提供13种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。<br />
        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for ImageTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::ImageTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::ImageTranslateResponse`
        def ImageTranslate(request)
          body = send_request('ImageTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageTranslateResponse.new
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

        # 提供18种语言的图片翻译服务，可自动识别图片中的文本内容并翻译成目标语言，识别后的文本按行翻译，后续会提供可按段落翻译的版本。

        # - 输入图片格式：png、jpg、jpeg等常用图片格式，不支持gif动图。
        # - 输出图片格式：jpg。

        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for ImageTranslateLLM.
        # @type request: :class:`Tencentcloud::tmt::V20180321::ImageTranslateLLMRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::ImageTranslateLLMResponse`
        def ImageTranslateLLM(request)
          body = send_request('ImageTranslateLLM', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageTranslateLLMResponse.new
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

        # 可自动识别文本内容的语言种类，轻量高效，无需额外实现判断方式，使面向客户的服务体验更佳。 <br />
        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for LanguageDetect.
        # @type request: :class:`Tencentcloud::tmt::V20180321::LanguageDetectRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::LanguageDetectResponse`
        def LanguageDetect(request)
          body = send_request('LanguageDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LanguageDetectResponse.new
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

        # 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的语音翻译服务。
        # 待识别和翻译的音频文件可以是 pcm、mp3和speex 格式，其中支持流式传输的只有pcm格式，pcm采样率要求16kHz、位深16bit、单声道，音频内语音清晰。<br/>
        # 如果采用流式传输的方式，要求每个分片时长200ms~500ms；如果采用非流式的传输方式，要求音频时长不超过8s。注意最后一个分片的IsEnd参数设置为1。<br />
        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源部分。

        # @param request: Request instance for SpeechTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::SpeechTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::SpeechTranslateResponse`
        def SpeechTranslate(request)
          body = send_request('SpeechTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SpeechTranslateResponse.new
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

        # 腾讯翻译为合作伙伴提供文本翻译、文档翻译、交互翻译、AI同传等多种机器翻译服务，具有toB多行业解决方案。作为WMT世界机器翻译大赛冠军，翻译准确度值得信赖，其中，交互翻译能力是业界领先技术；腾讯同传是AI同传业界标杆。<br />
        # 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。

        # @param request: Request instance for TextTranslate.
        # @type request: :class:`Tencentcloud::tmt::V20180321::TextTranslateRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::TextTranslateResponse`
        def TextTranslate(request)
          body = send_request('TextTranslate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextTranslateResponse.new
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

        # 批量翻译文本的接口

        # @param request: Request instance for TextTranslateBatch.
        # @type request: :class:`Tencentcloud::tmt::V20180321::TextTranslateBatchRequest`
        # @rtype: :class:`Tencentcloud::tmt::V20180321::TextTranslateBatchResponse`
        def TextTranslateBatch(request)
          body = send_request('TextTranslateBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextTranslateBatchResponse.new
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