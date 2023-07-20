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
  module Cloudstudio
    module V20230508
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-05-08'
            api_endpoint = 'cloudstudio.tencentcloudapi.com'
            sdk_version = 'CLOUDSTUDIO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建工作空间

        # @param request: Request instance for CreateWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::CreateWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::CreateWorkspaceResponse`
        def CreateWorkspace(request)
          body = send_request('CreateWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceResponse.new
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

        # 创建工作空间临时访问凭证，重复调用会创建新的 Token，旧的 Token 将会自动失效

        # @param request: Request instance for CreateWorkspaceToken.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::CreateWorkspaceTokenRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::CreateWorkspaceTokenResponse`
        def CreateWorkspaceToken(request)
          body = send_request('CreateWorkspaceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceTokenResponse.new
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

        # 获取用户配置

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
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

        # 获取基础镜像列表

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
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

        # 获取用户工作空间列表

        # @param request: Request instance for DescribeWorkspaces.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::DescribeWorkspacesRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::DescribeWorkspacesResponse`
        def DescribeWorkspaces(request)
          body = send_request('DescribeWorkspaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspacesResponse.new
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

        # 修改工作空间

        # @param request: Request instance for ModifyWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::ModifyWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::ModifyWorkspaceResponse`
        def ModifyWorkspace(request)
          body = send_request('ModifyWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkspaceResponse.new
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

        # 删除工作空间

        # @param request: Request instance for RemoveWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::RemoveWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::RemoveWorkspaceResponse`
        def RemoveWorkspace(request)
          body = send_request('RemoveWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveWorkspaceResponse.new
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

        # 运行空间

        # @param request: Request instance for RunWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::RunWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::RunWorkspaceResponse`
        def RunWorkspace(request)
          body = send_request('RunWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunWorkspaceResponse.new
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

        # 停止运行空间

        # @param request: Request instance for StopWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20230508::StopWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20230508::StopWorkspaceResponse`
        def StopWorkspace(request)
          body = send_request('StopWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopWorkspaceResponse.new
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