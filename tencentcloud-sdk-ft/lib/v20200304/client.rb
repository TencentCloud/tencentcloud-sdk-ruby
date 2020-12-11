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