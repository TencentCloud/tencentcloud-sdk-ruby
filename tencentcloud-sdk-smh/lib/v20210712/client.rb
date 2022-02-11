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
  module Smh
    module V20210712
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-07-12'
            api_endpoint = 'smh.tencentcloudapi.com'
            sdk_version = 'SMH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建 PaaS 服务媒体库

        # @param request: Request instance for CreateLibrary.
        # @type request: :class:`Tencentcloud::smh::V20210712::CreateLibraryRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::CreateLibraryResponse`
        def CreateLibrary(request)
          body = send_request('CreateLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLibraryResponse.new
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

        # 删除 PaaS 服务媒体库

        # @param request: Request instance for DeleteLibrary.
        # @type request: :class:`Tencentcloud::smh::V20210712::DeleteLibraryRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DeleteLibraryResponse`
        def DeleteLibrary(request)
          body = send_request('DeleteLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLibraryResponse.new
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

        # 查询 PaaS 服务媒体库列表

        # @param request: Request instance for DescribeLibraries.
        # @type request: :class:`Tencentcloud::smh::V20210712::DescribeLibrariesRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DescribeLibrariesResponse`
        def DescribeLibraries(request)
          body = send_request('DescribeLibraries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLibrariesResponse.new
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

        # 查询 PaaS 服务媒体库密钥

        # @param request: Request instance for DescribeLibrarySecret.
        # @type request: :class:`Tencentcloud::smh::V20210712::DescribeLibrarySecretRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DescribeLibrarySecretResponse`
        def DescribeLibrarySecret(request)
          body = send_request('DescribeLibrarySecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLibrarySecretResponse.new
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

        # 查询官方云盘实例

        # @param request: Request instance for DescribeOfficialInstances.
        # @type request: :class:`Tencentcloud::smh::V20210712::DescribeOfficialInstancesRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DescribeOfficialInstancesResponse`
        def DescribeOfficialInstances(request)
          body = send_request('DescribeOfficialInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfficialInstancesResponse.new
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

        # 查询官方云盘实例概览数据

        # @param request: Request instance for DescribeOfficialOverview.
        # @type request: :class:`Tencentcloud::smh::V20210712::DescribeOfficialOverviewRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DescribeOfficialOverviewResponse`
        def DescribeOfficialOverview(request)
          body = send_request('DescribeOfficialOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfficialOverviewResponse.new
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

        # 查询流量资源包

        # @param request: Request instance for DescribeTrafficPackages.
        # @type request: :class:`Tencentcloud::smh::V20210712::DescribeTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::DescribeTrafficPackagesResponse`
        def DescribeTrafficPackages(request)
          body = send_request('DescribeTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficPackagesResponse.new
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

        # 修改 PaaS 服务媒体库配置项

        # @param request: Request instance for ModifyLibrary.
        # @type request: :class:`Tencentcloud::smh::V20210712::ModifyLibraryRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::ModifyLibraryResponse`
        def ModifyLibrary(request)
          body = send_request('ModifyLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLibraryResponse.new
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

        # 发送用于换绑官方云盘实例的超级管理员账号的短信验证码

        # @param request: Request instance for SendSmsCode.
        # @type request: :class:`Tencentcloud::smh::V20210712::SendSmsCodeRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::SendSmsCodeResponse`
        def SendSmsCode(request)
          body = send_request('SendSmsCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendSmsCodeResponse.new
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

        # 验证短信验证码以换绑官方云盘实例的超级管理员账号

        # @param request: Request instance for VerifySmsCode.
        # @type request: :class:`Tencentcloud::smh::V20210712::VerifySmsCodeRequest`
        # @rtype: :class:`Tencentcloud::smh::V20210712::VerifySmsCodeResponse`
        def VerifySmsCode(request)
          body = send_request('VerifySmsCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifySmsCodeResponse.new
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