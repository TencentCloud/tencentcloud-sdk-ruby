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
  module Asr
    module V20190614
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-06-14'
        @@endpoint = 'asr.tencentcloudapi.com'
        @@sdk_version = 'ASR_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 用户通过本接口进行热词表的创建。
        # <br>•   默认最多可创建30个热词表。
        # <br>•   每个热词表最多可添加128个词，每个词最长10个字，不能超出限制。
        # <br>•   热词表可以通过数组或者本地文件形式上传。
        # <br>•   本地文件必须为UTF-8编码格式，每行仅添加一个热词且不能包含标点和特殊字符。
        # <br>•   热词权重取值范围为[1,10]之间的整数，权重越大代表该词被识别出来的概率越大。

        # @param request: Request instance for CreateAsrVocab.
        # @type request: :class:`Tencentcloud::asr::V20190614::CreateAsrVocabRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::CreateAsrVocabResponse`
        def CreateAsrVocab(request)
          body = send_request('CreateAsrVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAsrVocabResponse.new
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

        # 本接口服务对时长5小时以内的录音文件进行识别，异步返回识别全部结果， HTTP RESTful 形式。
        # <br>• 支持中文普通话、英语和粤语
        # <br>• 支持通用、音视频领域
        # <br>• 支持wav、mp3、m4a的音频格式
        # <br>• 支持语音 URL 和本地语音文件两种请求方式
        # <br>• 语音 URL 的音频时长不能长于5小时，文件大小不超过512MB
        # <br>• 本地语音文件上传的文件不能大于5MB
        # <br>• 支持回调或轮询的方式获取结果，结果获取请参考[ 录音文件识别结果查询](https://cloud.tencent.com/document/product/1093/37822)。

        # @param request: Request instance for CreateRecTask.
        # @type request: :class:`Tencentcloud::asr::V20190614::CreateRecTaskRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::CreateRecTaskResponse`
        def CreateRecTask(request)
          body = send_request('CreateRecTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecTaskResponse.new
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

        # 用户通过本接口进行热词表的删除。

        # @param request: Request instance for DeleteAsrVocab.
        # @type request: :class:`Tencentcloud::asr::V20190614::DeleteAsrVocabRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::DeleteAsrVocabResponse`
        def DeleteAsrVocab(request)
          body = send_request('DeleteAsrVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAsrVocabResponse.new
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

        # 在调用录音文件识别请求接口后，有回调和轮询两种方式获取识别结果。
        # <br>• 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[ 录音识别结果回调 ](https://cloud.tencent.com/document/product/1093/37139#callback)。
        # <br>• 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::asr::V20190614::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
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

        # 用户通过本接口进行热词表的下载，获得词表权重文件形式的 base64 值，文件形式为通过 “|” 分割的词和权重，即 word|weight 的形式。

        # @param request: Request instance for DownloadAsrVocab.
        # @type request: :class:`Tencentcloud::asr::V20190614::DownloadAsrVocabRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::DownloadAsrVocabResponse`
        def DownloadAsrVocab(request)
          body = send_request('DownloadAsrVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadAsrVocabResponse.new
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

        # 用户根据词表的ID可以获取对应的热词表信息

        # @param request: Request instance for GetAsrVocab.
        # @type request: :class:`Tencentcloud::asr::V20190614::GetAsrVocabRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::GetAsrVocabResponse`
        def GetAsrVocab(request)
          body = send_request('GetAsrVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAsrVocabResponse.new
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

        # 用户通过该接口，可获得所有的热词表及其信息。

        # @param request: Request instance for GetAsrVocabList.
        # @type request: :class:`Tencentcloud::asr::V20190614::GetAsrVocabListRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::GetAsrVocabListResponse`
        def GetAsrVocabList(request)
          body = send_request('GetAsrVocabList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAsrVocabListResponse.new
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

        # 本接口用于对60秒之内的短音频文件进行识别。
        # <br>•   支持中文普通话、英语、粤语。
        # <br>•   支持本地语音文件上传和语音URL上传两种请求方式。
        # <br>•   音频格式支持wav、mp3；采样率支持8000Hz或者16000Hz；采样精度支持16bits；声道支持单声道。
        # <br>•   当音频文件通过请求中body内容上传时，请求大小不能超过600KB；当音频以URL方式传输时，音频时长不可超过60s。
        # <br>•   所有请求参数放在POST请求的body中，编码类型采用x-www-form-urlencoded，参数进行urlencode编码后传输。

        # @param request: Request instance for SentenceRecognition.
        # @type request: :class:`Tencentcloud::asr::V20190614::SentenceRecognitionRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::SentenceRecognitionResponse`
        def SentenceRecognition(request)
          body = send_request('SentenceRecognition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SentenceRecognitionResponse.new
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

        # 用户通过该接口可以设置热词表的默认状态。初始状态为0，用户可设置状态为1，即为默认状态。默认状态表示用户在请求识别时，如不设置热词表ID，则默认使用状态为1的热词表。

        # @param request: Request instance for SetVocabState.
        # @type request: :class:`Tencentcloud::asr::V20190614::SetVocabStateRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::SetVocabStateResponse`
        def SetVocabState(request)
          body = send_request('SetVocabState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVocabStateResponse.new
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

        # 用户通过本接口进行对应的词表信息更新。

        # @param request: Request instance for UpdateAsrVocab.
        # @type request: :class:`Tencentcloud::asr::V20190614::UpdateAsrVocabRequest`
        # @rtype: :class:`Tencentcloud::asr::V20190614::UpdateAsrVocabResponse`
        def UpdateAsrVocab(request)
          body = send_request('UpdateAsrVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAsrVocabResponse.new
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