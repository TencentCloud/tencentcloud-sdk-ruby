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
  module Facefusion
    module V20220927
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-09-27'
            api_endpoint = 'facefusion.tencentcloudapi.com'
            sdk_version = 'FACEFUSION_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。

        # @param request: Request instance for DescribeMaterialList.
        # @type request: :class:`Tencentcloud::facefusion::V20220927::DescribeMaterialListRequest`
        # @rtype: :class:`Tencentcloud::facefusion::V20220927::DescribeMaterialListResponse`
        def DescribeMaterialList(request)
          body = send_request('DescribeMaterialList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaterialListResponse.new
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

        # 本接口用于单脸、多脸、选脸融合，上传人脸图片，得到与素材模板融合后的人脸图片。支持为融合结果图添加标识。查看 <a href="https://cloud.tencent.com/document/product/670/38247" target="_blank">融合接入指引</a>。

        # 请求频率限制为20次/秒。
        # >
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for FuseFace.
        # @type request: :class:`Tencentcloud::facefusion::V20220927::FuseFaceRequest`
        # @rtype: :class:`Tencentcloud::facefusion::V20220927::FuseFaceResponse`
        def FuseFace(request)
          body = send_request('FuseFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FuseFaceResponse.new
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