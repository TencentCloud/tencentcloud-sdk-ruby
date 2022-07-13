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
  module Iotvideo
    module V20211125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-11-25'
            api_endpoint = 'iotvideo.tencentcloudapi.com'
            sdk_version = 'IOTVIDEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 异步调用设备行为

        # @param request: Request instance for CallDeviceActionAsync.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::CallDeviceActionAsyncRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::CallDeviceActionAsyncResponse`
        def CallDeviceActionAsync(request)
          body = send_request('CallDeviceActionAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionAsyncResponse.new
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

        # 同步调用设备行为

        # @param request: Request instance for CallDeviceActionSync.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::CallDeviceActionSyncRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::CallDeviceActionSyncResponse`
        def CallDeviceActionSync(request)
          body = send_request('CallDeviceActionSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CallDeviceActionSyncResponse.new
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

        # 创建产品

        # @param request: Request instance for CreateProduct.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::CreateProductRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::CreateProductResponse`
        def CreateProduct(request)
          body = send_request('CreateProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProductResponse.new
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

        # 查询设备数据统计

        # @param request: Request instance for DescribeDeviceDataStats.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::DescribeDeviceDataStatsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::DescribeDeviceDataStatsResponse`
        def DescribeDeviceDataStats(request)
          body = send_request('DescribeDeviceDataStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeviceDataStatsResponse.new
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

        # 查询设备消息数量统计

        # @param request: Request instance for DescribeMessageDataStats.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::DescribeMessageDataStatsRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::DescribeMessageDataStatsResponse`
        def DescribeMessageDataStats(request)
          body = send_request('DescribeMessageDataStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMessageDataStatsResponse.new
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

        # 获取设备的绑定签名

        # @param request: Request instance for GenSingleDeviceSignatureOfPublic.
        # @type request: :class:`Tencentcloud::iotvideo::V20211125::GenSingleDeviceSignatureOfPublicRequest`
        # @rtype: :class:`Tencentcloud::iotvideo::V20211125::GenSingleDeviceSignatureOfPublicResponse`
        def GenSingleDeviceSignatureOfPublic(request)
          body = send_request('GenSingleDeviceSignatureOfPublic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenSingleDeviceSignatureOfPublicResponse.new
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