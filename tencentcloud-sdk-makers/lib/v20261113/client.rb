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
  module Makers
    module V20261113
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2026-11-13'
            api_endpoint = 'makers.tencentcloudapi.com'
            sdk_version = 'MAKERS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 封禁或解封当前账号指定站点下的项目及域名。Status 支持 Ban或Normal。

        # @param request: Request instance for BlockProject.
        # @type request: :class:`Tencentcloud::makers::V20261113::BlockProjectRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::BlockProjectResponse`
        def BlockProject(request)
          body = send_request('BlockProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BlockProjectResponse.new
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

        # 创建部署。上传制品时 ViaMeta 和 Provider 传 Upload，TempBucketPath 传已上传对象的路径。

        # @param request: Request instance for CreateDeployment.
        # @type request: :class:`Tencentcloud::makers::V20261113::CreateDeploymentRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::CreateDeploymentResponse`
        def CreateDeployment(request)
          body = send_request('CreateDeployment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDeploymentResponse.new
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

        # 创建项目。上传制品时 Provider 传 Upload，Channel 传 Custom。

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::makers::V20261113::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
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

        # 把一个自定义域名绑到项目的指定环境。

        # @param request: Request instance for CreateZoneCustomDomain.
        # @type request: :class:`Tencentcloud::makers::V20261113::CreateZoneCustomDomainRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::CreateZoneCustomDomainResponse`
        def CreateZoneCustomDomain(request)
          body = send_request('CreateZoneCustomDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateZoneCustomDomainResponse.new
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

        # 删除项目。进行中的构建会阻止删除。

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::makers::V20261113::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
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

        # 按域名解绑项目的自定义域名。

        # @param request: Request instance for DeleteProjectCustomDomains.
        # @type request: :class:`Tencentcloud::makers::V20261113::DeleteProjectCustomDomainsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DeleteProjectCustomDomainsResponse`
        def DeleteProjectCustomDomains(request)
          body = send_request('DeleteProjectCustomDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectCustomDomainsResponse.new
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

        # 按 EnvVars 删除环境变量。按 Id 或 Key 匹配。Value 必填但不参与匹配，可传任意值。

        # @param request: Request instance for DeleteProjectEnvs.
        # @type request: :class:`Tencentcloud::makers::V20261113::DeleteProjectEnvsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DeleteProjectEnvsResponse`
        def DeleteProjectEnvs(request)
          body = send_request('DeleteProjectEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectEnvsResponse.new
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

        # 获取上传制品用的 COS 桶、地域、目标路径和临时密钥。

        # @param request: Request instance for DescribeCosTempToken.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeCosTempTokenRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeCosTempTokenResponse`
        def DescribeCosTempToken(request)
          body = send_request('DescribeCosTempToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCosTempTokenResponse.new
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

        # 返回构建日志的访问地址。

        # @param request: Request instance for DescribeDeploymentLog.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeDeploymentLogRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeDeploymentLogResponse`
        def DescribeDeploymentLog(request)
          body = send_request('DescribeDeploymentLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeploymentLogResponse.new
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

        # 查询项目的部署记录。

        # @param request: Request instance for DescribeDeployments.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeDeploymentsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeDeploymentsResponse`
        def DescribeDeployments(request)
          body = send_request('DescribeDeployments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeploymentsResponse.new
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

        # 查询项目下的环境，含内置 Production、Preview 和自定义环境。

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
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

        # 查询项目环境变量。不传 Env 时返回全部作用域。

        # @param request: Request instance for DescribeProjectEnvs.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeProjectEnvsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeProjectEnvsResponse`
        def DescribeProjectEnvs(request)
          body = send_request('DescribeProjectEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectEnvsResponse.new
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

        # 分页查询站点下的项目。Offset 是页码偏移，后端按 Offset * Limit 跳过。

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
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

        # 查询项目在站点下的自定义域名和预设域名。

        # @param request: Request instance for DescribeZoneCustomDomains.
        # @type request: :class:`Tencentcloud::makers::V20261113::DescribeZoneCustomDomainsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::DescribeZoneCustomDomainsResponse`
        def DescribeZoneCustomDomains(request)
          body = send_request('DescribeZoneCustomDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneCustomDomainsResponse.new
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

        # 修改项目名称和构建配置。未传的字段保持原值。

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::makers::V20261113::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
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

        # 按传入的 EnvVars 写入环境变量。

        # @param request: Request instance for ModifyProjectEnvs.
        # @type request: :class:`Tencentcloud::makers::V20261113::ModifyProjectEnvsRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::ModifyProjectEnvsResponse`
        def ModifyProjectEnvs(request)
          body = send_request('ModifyProjectEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectEnvsResponse.new
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

        # 把已绑定的自定义域名切到另一个环境。

        # @param request: Request instance for ModifyZoneCustomDomainEnv.
        # @type request: :class:`Tencentcloud::makers::V20261113::ModifyZoneCustomDomainEnvRequest`
        # @rtype: :class:`Tencentcloud::makers::V20261113::ModifyZoneCustomDomainEnvResponse`
        def ModifyZoneCustomDomainEnv(request)
          body = send_request('ModifyZoneCustomDomainEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneCustomDomainEnvResponse.new
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