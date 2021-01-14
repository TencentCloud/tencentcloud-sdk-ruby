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
  module Ft
    module V20200304
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-03-04'
        @@endpoint = 'ft.tencentcloudapi.com'
        @@sdk_version = 'FT_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 撤销人像渐变任务请求

        # @param request: Request instance for CancelFaceMorphJob.
        # @type request: :class:`Tencentcloud::ft::V20200304::CancelFaceMorphJobRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::CancelFaceMorphJobResponse`
        def CancelFaceMorphJob(request)
          body = send_request('CancelFaceMorphJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelFaceMorphJobResponse.new
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

        # 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸变老或变年轻的图片，支持实现人脸不同年龄的变化。

        # @param request: Request instance for ChangeAgePic.
        # @type request: :class:`Tencentcloud::ft::V20200304::ChangeAgePicRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::ChangeAgePicResponse`
        def ChangeAgePic(request)
          body = send_request('ChangeAgePic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeAgePicResponse.new
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

        # 输入一张人脸照片，生成个性化的二次元动漫形象，可用于打造个性头像、趣味活动、特效类应用等场景，提升社交娱乐的体验。

        # @param request: Request instance for FaceCartoonPic.
        # @type request: :class:`Tencentcloud::ft::V20200304::FaceCartoonPicRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::FaceCartoonPicResponse`
        def FaceCartoonPic(request)
          body = send_request('FaceCartoonPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FaceCartoonPicResponse.new
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

        # 输入2-5张人脸照片，生成一段以人脸为焦点的渐变视频或GIF图，支持自定义图片播放速度、视频每秒传输帧数，可用于短视频、表情包、创意H5等应用场景，丰富静态图片的玩法。

        # @param request: Request instance for MorphFace.
        # @type request: :class:`Tencentcloud::ft::V20200304::MorphFaceRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::MorphFaceResponse`
        def MorphFace(request)
          body = send_request('MorphFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MorphFaceResponse.new
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

        # 查询人像渐变处理进度

        # @param request: Request instance for QueryFaceMorphJob.
        # @type request: :class:`Tencentcloud::ft::V20200304::QueryFaceMorphJobRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::QueryFaceMorphJobResponse`
        def QueryFaceMorphJob(request)
          body = send_request('QueryFaceMorphJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFaceMorphJobResponse.new
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

        # 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸性别转换的图片。男变女可实现美颜、淡妆、加刘海和长发的效果；女变男可实现加胡须、变短发的效果。

        # @param request: Request instance for SwapGenderPic.
        # @type request: :class:`Tencentcloud::ft::V20200304::SwapGenderPicRequest`
        # @rtype: :class:`Tencentcloud::ft::V20200304::SwapGenderPicResponse`
        def SwapGenderPic(request)
          body = send_request('SwapGenderPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwapGenderPicResponse.new
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