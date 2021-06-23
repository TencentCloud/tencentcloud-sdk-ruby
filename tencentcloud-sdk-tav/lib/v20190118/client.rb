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
  module Tav
    module V20190118
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-18'
            api_endpoint = 'tav.tencentcloudapi.com'
            sdk_version = 'TAV_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取TAV本地引擎

        # @param request: Request instance for GetLocalEngine.
        # @type request: :class:`Tencentcloud::tav::V20190118::GetLocalEngineRequest`
        # @rtype: :class:`Tencentcloud::tav::V20190118::GetLocalEngineResponse`
        def GetLocalEngine(request)
          body = send_request('GetLocalEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLocalEngineResponse.new
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

        # tav文件上传扫描结果查询

        # @param request: Request instance for GetScanResult.
        # @type request: :class:`Tencentcloud::tav::V20190118::GetScanResultRequest`
        # @rtype: :class:`Tencentcloud::tav::V20190118::GetScanResultResponse`
        def GetScanResult(request)
          body = send_request('GetScanResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetScanResultResponse.new
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

        # tav文件上传扫描

        # @param request: Request instance for ScanFile.
        # @type request: :class:`Tencentcloud::tav::V20190118::ScanFileRequest`
        # @rtype: :class:`Tencentcloud::tav::V20190118::ScanFileResponse`
        def ScanFile(request)
          body = send_request('ScanFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanFileResponse.new
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

        # 通过文件哈希值获取文件黑白属性

        # @param request: Request instance for ScanFileHash.
        # @type request: :class:`Tencentcloud::tav::V20190118::ScanFileHashRequest`
        # @rtype: :class:`Tencentcloud::tav::V20190118::ScanFileHashResponse`
        def ScanFileHash(request)
          body = send_request('ScanFileHash', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanFileHashResponse.new
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