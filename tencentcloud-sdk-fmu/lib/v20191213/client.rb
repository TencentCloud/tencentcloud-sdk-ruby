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
  module Fmu
    module V20191213
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-12-13'
            api_endpoint = 'fmu.tencentcloudapi.com'
            sdk_version = 'FMU_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用户上传一张人脸图片（最多能处理一张图片中最大的五张人脸信息），精准定位五官，实现美肤、亮肤、祛痘等美颜功能。

        # @param request: Request instance for BeautifyPic.
        # @type request: :class:`Tencentcloud::fmu::V20191213::BeautifyPicRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::BeautifyPicResponse`
        def BeautifyPic(request)
          body = send_request('BeautifyPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BeautifyPicResponse.new
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

        # 视频美颜

        # @param request: Request instance for BeautifyVideo.
        # @type request: :class:`Tencentcloud::fmu::V20191213::BeautifyVideoRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::BeautifyVideoResponse`
        def BeautifyVideo(request)
          body = send_request('BeautifyVideo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BeautifyVideoResponse.new
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

        # 撤销视频美颜任务请求

        # @param request: Request instance for CancelBeautifyVideoJob.
        # @type request: :class:`Tencentcloud::fmu::V20191213::CancelBeautifyVideoJobRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::CancelBeautifyVideoJobResponse`
        def CancelBeautifyVideoJob(request)
          body = send_request('CancelBeautifyVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelBeautifyVideoJobResponse.new
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

        # 在使用LUT素材的modelid实现试唇色前，您需要先上传 LUT 格式的cube文件注册唇色ID。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。

        # 注：您也可以直接使用 [试唇色接口](https://cloud.tencent.com/document/product/1172/40706)，通过输入RGBA模型数值的方式指定唇色，更简单易用。

        # @param request: Request instance for CreateModel.
        # @type request: :class:`Tencentcloud::fmu::V20191213::CreateModelRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::CreateModelResponse`
        def CreateModel(request)
          body = send_request('CreateModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModelResponse.new
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

        # 删除已注册的唇色素材。

        # @param request: Request instance for DeleteModel.
        # @type request: :class:`Tencentcloud::fmu::V20191213::DeleteModelRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::DeleteModelResponse`
        def DeleteModel(request)
          body = send_request('DeleteModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModelResponse.new
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

        # 查询已注册的唇色素材。

        # @param request: Request instance for GetModelList.
        # @type request: :class:`Tencentcloud::fmu::V20191213::GetModelListRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::GetModelListResponse`
        def GetModelList(request)
          body = send_request('GetModelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetModelListResponse.new
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

        # 查询视频美颜处理进度

        # @param request: Request instance for QueryBeautifyVideoJob.
        # @type request: :class:`Tencentcloud::fmu::V20191213::QueryBeautifyVideoJobRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::QueryBeautifyVideoJobResponse`
        def QueryBeautifyVideoJob(request)
          body = send_request('QueryBeautifyVideoJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBeautifyVideoJobResponse.new
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

        # 上传一张照片，输出滤镜处理后的图片。

        # @param request: Request instance for StyleImage.
        # @type request: :class:`Tencentcloud::fmu::V20191213::StyleImageRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::StyleImageResponse`
        def StyleImage(request)
          body = send_request('StyleImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StyleImageResponse.new
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

        # 上传一张照片，输出滤镜处理后的图片。

        # @param request: Request instance for StyleImagePro.
        # @type request: :class:`Tencentcloud::fmu::V20191213::StyleImageProRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::StyleImageProResponse`
        def StyleImagePro(request)
          body = send_request('StyleImagePro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StyleImageProResponse.new
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

        # 对图片中的人脸嘴唇进行着色，最多支持同时对一张图中的3张人脸进行试唇色。

        # 您可以通过事先注册在腾讯云的唇色素材（LUT文件）改变图片中的人脸唇色，也可以输入RGBA模型数值。

        # 为了更好的效果，建议您使用事先注册在腾讯云的唇色素材（LUT文件）。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for TryLipstickPic.
        # @type request: :class:`Tencentcloud::fmu::V20191213::TryLipstickPicRequest`
        # @rtype: :class:`Tencentcloud::fmu::V20191213::TryLipstickPicResponse`
        def TryLipstickPic(request)
          body = send_request('TryLipstickPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TryLipstickPicResponse.new
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