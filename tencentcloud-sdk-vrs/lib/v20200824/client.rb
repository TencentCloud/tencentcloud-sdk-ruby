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
  module Vrs
    module V20200824
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-08-24'
            api_endpoint = 'vrs.tencentcloudapi.com'
            sdk_version = 'VRS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 声音复刻取消任务接口

        # @param request: Request instance for CancelVRSTask.
        # @type request: :class:`Tencentcloud::vrs::V20200824::CancelVRSTaskRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::CancelVRSTaskResponse`
        def CancelVRSTask(request)
          body = send_request('CancelVRSTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelVRSTaskResponse.new
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

        # 本接口服务对提交音频进行声音复刻任务创建接口，异步返回复刻结果。
        # • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
        # • 签名方法参考 公共参数 中签名方法v3。

        # @param request: Request instance for CreateVRSTask.
        # @type request: :class:`Tencentcloud::vrs::V20200824::CreateVRSTaskRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::CreateVRSTaskResponse`
        def CreateVRSTask(request)
          body = send_request('CreateVRSTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVRSTaskResponse.new
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

        # 在调用声音复刻创建任务请求接口后，有回调和轮询两种方式获取识别结果。（注意：回调方式目前仅支持轻量版声音复刻）
        # • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见 [“声音复刻任务创建接口”](https://cloud.tencent.com/document/product/1283/90064) CallbackUrl参数说明 。
        # • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
        # • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
        # • 签名方法参考 公共参数 中签名方法v3。

        # @param request: Request instance for DescribeVRSTaskStatus.
        # @type request: :class:`Tencentcloud::vrs::V20200824::DescribeVRSTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::DescribeVRSTaskStatusResponse`
        def DescribeVRSTaskStatus(request)
          body = send_request('DescribeVRSTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVRSTaskStatusResponse.new
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

        # 本接口用于检测音频的环境和音频质量。
        # 对于一句话声音复刻，音频时长需大于3s，小于15s，文件大小不能超过2MB，音频需为单声道，位深为16bit。建议格式：wav、单声道、采样率48kHz或24kHz
        # • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
        # • 签名方法参考 公共参数 中签名方法v3。

        # @param request: Request instance for DetectEnvAndSoundQuality.
        # @type request: :class:`Tencentcloud::vrs::V20200824::DetectEnvAndSoundQualityRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::DetectEnvAndSoundQualityResponse`
        def DetectEnvAndSoundQuality(request)
          body = send_request('DetectEnvAndSoundQuality', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectEnvAndSoundQualityResponse.new
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

        # 下载声音复刻离线模型

        # @param request: Request instance for DownloadVRSModel.
        # @type request: :class:`Tencentcloud::vrs::V20200824::DownloadVRSModelRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::DownloadVRSModelResponse`
        def DownloadVRSModel(request)
          body = send_request('DownloadVRSModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadVRSModelResponse.new
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

        # 本接口用于获取声音复刻训练文本信息。
        #  请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
        # • 签名方法参考 公共参数 中签名方法v3。
        # • 当复刻类型为一句话声音复刻时，生成的TextId有效期为7天，且在成功创建一次复刻任务后失效。

        # @param request: Request instance for GetTrainingText.
        # @type request: :class:`Tencentcloud::vrs::V20200824::GetTrainingTextRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::GetTrainingTextResponse`
        def GetTrainingText(request)
          body = send_request('GetTrainingText', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTrainingTextResponse.new
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

        # 该接口用于查询复刻音色详细信息。

        # @param request: Request instance for GetVRSVoiceTypeInfo.
        # @type request: :class:`Tencentcloud::vrs::V20200824::GetVRSVoiceTypeInfoRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::GetVRSVoiceTypeInfoResponse`
        def GetVRSVoiceTypeInfo(request)
          body = send_request('GetVRSVoiceTypeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVRSVoiceTypeInfoResponse.new
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

        # 查询复刻音色

        # @param request: Request instance for GetVRSVoiceTypes.
        # @type request: :class:`Tencentcloud::vrs::V20200824::GetVRSVoiceTypesRequest`
        # @rtype: :class:`Tencentcloud::vrs::V20200824::GetVRSVoiceTypesResponse`
        def GetVRSVoiceTypes(request)
          body = send_request('GetVRSVoiceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetVRSVoiceTypesResponse.new
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