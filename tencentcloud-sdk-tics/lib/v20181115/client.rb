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
  module Tics
    module V20181115
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-11-15'
            api_endpoint = 'tics.tencentcloudapi.com'
            sdk_version = 'TICS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 提供域名相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。

        # @param request: Request instance for DescribeDomainInfo.
        # @type request: :class:`Tencentcloud::tics::V20181115::DescribeDomainInfoRequest`
        # @rtype: :class:`Tencentcloud::tics::V20181115::DescribeDomainInfoResponse`
        def DescribeDomainInfo(request)
          body = send_request('DescribeDomainInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainInfoResponse.new
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

        # 提供文件相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。

        # @param request: Request instance for DescribeFileInfo.
        # @type request: :class:`Tencentcloud::tics::V20181115::DescribeFileInfoRequest`
        # @rtype: :class:`Tencentcloud::tics::V20181115::DescribeFileInfoResponse`
        def DescribeFileInfo(request)
          body = send_request('DescribeFileInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileInfoResponse.new
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

        # 提供IP相关的基础信息以及与攻击事件（团伙、家族）、恶意文件等相关联信息。

        # @param request: Request instance for DescribeIpInfo.
        # @type request: :class:`Tencentcloud::tics::V20181115::DescribeIpInfoRequest`
        # @rtype: :class:`Tencentcloud::tics::V20181115::DescribeIpInfoResponse`
        def DescribeIpInfo(request)
          body = send_request('DescribeIpInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpInfoResponse.new
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

        # 提供IP和域名相关威胁情报信息查询，这些信息可以辅助检测失陷主机、帮助SIEM/SOC等系统做研判决策、帮助运营团队对设备报警的编排处理。

        # @param request: Request instance for DescribeThreatInfo.
        # @type request: :class:`Tencentcloud::tics::V20181115::DescribeThreatInfoRequest`
        # @rtype: :class:`Tencentcloud::tics::V20181115::DescribeThreatInfoResponse`
        def DescribeThreatInfo(request)
          body = send_request('DescribeThreatInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeThreatInfoResponse.new
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