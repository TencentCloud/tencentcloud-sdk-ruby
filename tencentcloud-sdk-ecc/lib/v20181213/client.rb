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
  module Ecc
    module V20181213
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-12-13'
        @@endpoint = 'ecc.tencentcloudapi.com'
        @@sdk_version = 'ECC_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # https://ecc.tencentcloudapi.com/?Action=CorrectMultiImage
        # 多图像识别批改接口

        # @param request: Request instance for CorrectMultiImage.
        # @type request: :class:`Tencentcloud::ecc::V20181213::CorrectMultiImageRequest`
        # @rtype: :class:`Tencentcloud::ecc::V20181213::CorrectMultiImageResponse`
        def CorrectMultiImage(request)
          body = send_request('CorrectMultiImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CorrectMultiImageResponse.new
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

        # 异步任务结果查询接口

        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::ecc::V20181213::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::ecc::V20181213::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
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

        # 接口请求域名： ecc.tencentcloudapi.com
        # 纯文本英语作文批改

        # @param request: Request instance for ECC.
        # @type request: :class:`Tencentcloud::ecc::V20181213::ECCRequest`
        # @rtype: :class:`Tencentcloud::ecc::V20181213::ECCResponse`
        def ECC(request)
          body = send_request('ECC', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ECCResponse.new
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

        # https://ecc.tencentcloudapi.com/?Action=EHOCR
        # 图像识别批改接口

        # @param request: Request instance for EHOCR.
        # @type request: :class:`Tencentcloud::ecc::V20181213::EHOCRRequest`
        # @rtype: :class:`Tencentcloud::ecc::V20181213::EHOCRResponse`
        def EHOCR(request)
          body = send_request('EHOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EHOCRResponse.new
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