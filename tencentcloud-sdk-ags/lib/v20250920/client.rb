# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Ags
    module V20250920
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-09-20'
            api_endpoint = 'ags.tencentcloudapi.com'
            sdk_version = 'AGS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取访问沙箱工具时所需要使用的访问Token，创建沙箱实例后需调用此接口获取沙箱实例访问Token。
        # 此Token可用于调用代码沙箱实例执行代码，或浏览器沙箱实例进行浏览器操作等。

        # @param request: Request instance for AcquireSandboxInstanceToken.
        # @type request: :class:`Tencentcloud::ags::V20250920::AcquireSandboxInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::AcquireSandboxInstanceTokenResponse`
        def AcquireSandboxInstanceToken(request)
          body = send_request('AcquireSandboxInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcquireSandboxInstanceTokenResponse.new
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

        # 创建新的API密钥，用于调用Agent Sandbox接口。相较于腾讯云Secret ID Secret Key支持调用所有接口使用，仅有部分接口支持使用API密钥调用。

        # @param request: Request instance for CreateAPIKey.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateAPIKeyRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateAPIKeyResponse`
        def CreateAPIKey(request)
          body = send_request('CreateAPIKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAPIKeyResponse.new
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

        # 创建沙箱工具

        # @param request: Request instance for CreateSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::CreateSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::CreateSandboxToolResponse`
        def CreateSandboxTool(request)
          body = send_request('CreateSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSandboxToolResponse.new
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

        # 删除API密钥。注意区别于腾讯云Secret ID Secret Key，本接口删除的是Agent Sandbox专用API key。

        # @param request: Request instance for DeleteAPIKey.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteAPIKeyRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteAPIKeyResponse`
        def DeleteAPIKey(request)
          body = send_request('DeleteAPIKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAPIKeyResponse.new
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

        # 删除沙箱工具

        # @param request: Request instance for DeleteSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::DeleteSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DeleteSandboxToolResponse`
        def DeleteSandboxTool(request)
          body = send_request('DeleteSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSandboxToolResponse.new
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

        # 获取API密钥列表，包含API密钥简略信息，包含名称、创建时间等。

        # @param request: Request instance for DescribeAPIKeyList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeAPIKeyListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeAPIKeyListResponse`
        def DescribeAPIKeyList(request)
          body = send_request('DescribeAPIKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAPIKeyListResponse.new
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

        # 查询沙箱实例列表

        # @param request: Request instance for DescribeSandboxInstanceList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSandboxInstanceListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSandboxInstanceListResponse`
        def DescribeSandboxInstanceList(request)
          body = send_request('DescribeSandboxInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxInstanceListResponse.new
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

        # 查询沙箱工具列表

        # @param request: Request instance for DescribeSandboxToolList.
        # @type request: :class:`Tencentcloud::ags::V20250920::DescribeSandboxToolListRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::DescribeSandboxToolListResponse`
        def DescribeSandboxToolList(request)
          body = send_request('DescribeSandboxToolList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSandboxToolListResponse.new
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

        # 启动沙箱实例

        # @param request: Request instance for StartSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::StartSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::StartSandboxInstanceResponse`
        def StartSandboxInstance(request)
          body = send_request('StartSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartSandboxInstanceResponse.new
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

        # 停止沙箱实例

        # @param request: Request instance for StopSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::StopSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::StopSandboxInstanceResponse`
        def StopSandboxInstance(request)
          body = send_request('StopSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSandboxInstanceResponse.new
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

        # 更新沙箱实例

        # @param request: Request instance for UpdateSandboxInstance.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateSandboxInstanceRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateSandboxInstanceResponse`
        def UpdateSandboxInstance(request)
          body = send_request('UpdateSandboxInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSandboxInstanceResponse.new
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

        # 更新沙箱工具

        # @param request: Request instance for UpdateSandboxTool.
        # @type request: :class:`Tencentcloud::ags::V20250920::UpdateSandboxToolRequest`
        # @rtype: :class:`Tencentcloud::ags::V20250920::UpdateSandboxToolResponse`
        def UpdateSandboxTool(request)
          body = send_request('UpdateSandboxTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSandboxToolResponse.new
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