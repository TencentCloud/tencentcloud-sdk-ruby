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
    module V20210524
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-24'
            api_endpoint = 'cloudstudio.tencentcloudapi.com'
            sdk_version = 'CLOUDSTUDIO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加自定义模板

        # @param request: Request instance for CreateCustomizeTemplates.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::CreateCustomizeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::CreateCustomizeTemplatesResponse`
        def CreateCustomizeTemplates(request)
          body = send_request('CreateCustomizeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomizeTemplatesResponse.new
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

        # 云主机方式创建工作空间

        # @param request: Request instance for CreateWorkspaceByAgent.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByAgentRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByAgentResponse`
        def CreateWorkspaceByAgent(request)
          body = send_request('CreateWorkspaceByAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceByAgentResponse.new
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

        # 快速开始, 基于模版创建工作空间

        # @param request: Request instance for CreateWorkspaceByTemplate.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByTemplateRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByTemplateResponse`
        def CreateWorkspaceByTemplate(request)
          body = send_request('CreateWorkspaceByTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceByTemplateResponse.new
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

        # 根据模板创建工作空间

        # @param request: Request instance for CreateWorkspaceByVersionControl.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByVersionControlRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::CreateWorkspaceByVersionControlResponse`
        def CreateWorkspaceByVersionControl(request)
          body = send_request('CreateWorkspaceByVersionControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkspaceByVersionControlResponse.new
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

        # 删除自定义模板

        # @param request: Request instance for DeleteCustomizeTemplatesById.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DeleteCustomizeTemplatesByIdRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DeleteCustomizeTemplatesByIdResponse`
        def DeleteCustomizeTemplatesById(request)
          body = send_request('DeleteCustomizeTemplatesById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomizeTemplatesByIdResponse.new
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

        # 获取所有模版列表

        # @param request: Request instance for DescribeCustomizeTemplates.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesResponse`
        def DescribeCustomizeTemplates(request)
          body = send_request('DescribeCustomizeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomizeTemplatesResponse.new
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

        # 获取特定模板信息

        # @param request: Request instance for DescribeCustomizeTemplatesById.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesByIdRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesByIdResponse`
        def DescribeCustomizeTemplatesById(request)
          body = send_request('DescribeCustomizeTemplatesById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomizeTemplatesByIdResponse.new
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

        # 获取创建模板的预置参数

        # @param request: Request instance for DescribeCustomizeTemplatesPresets.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesPresetsRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeCustomizeTemplatesPresetsResponse`
        def DescribeCustomizeTemplatesPresets(request)
          body = send_request('DescribeCustomizeTemplatesPresets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomizeTemplatesPresetsResponse.new
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

        # 环境列表接口返回信息

        # @param request: Request instance for DescribeWorkspaceEnvList.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceEnvListRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceEnvListResponse`
        def DescribeWorkspaceEnvList(request)
          body = send_request('DescribeWorkspaceEnvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceEnvListResponse.new
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

        # 检查工作空间是否存在

        # @param request: Request instance for DescribeWorkspaceNameExist.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceNameExistRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceNameExistResponse`
        def DescribeWorkspaceNameExist(request)
          body = send_request('DescribeWorkspaceNameExist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceNameExistResponse.new
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

        # 获取工作空间元信息

        # @param request: Request instance for DescribeWorkspaceStatus.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceStatusRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceStatusResponse`
        def DescribeWorkspaceStatus(request)
          body = send_request('DescribeWorkspaceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceStatusResponse.new
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

        # @param request: Request instance for DescribeWorkspaceStatusList.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceStatusListRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::DescribeWorkspaceStatusListResponse`
        def DescribeWorkspaceStatusList(request)
          body = send_request('DescribeWorkspaceStatusList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkspaceStatusListResponse.new
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

        # 修改模版默认代码仓库

        # @param request: Request instance for ModifyCustomizeTemplateVersionControl.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplateVersionControlRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplateVersionControlResponse`
        def ModifyCustomizeTemplateVersionControl(request)
          body = send_request('ModifyCustomizeTemplateVersionControl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomizeTemplateVersionControlResponse.new
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

        # 全量修改自定义模板，不忽略空

        # @param request: Request instance for ModifyCustomizeTemplatesFullById.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplatesFullByIdRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplatesFullByIdResponse`
        def ModifyCustomizeTemplatesFullById(request)
          body = send_request('ModifyCustomizeTemplatesFullById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomizeTemplatesFullByIdResponse.new
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

        # 全量修改自定义模板，忽略空

        # @param request: Request instance for ModifyCustomizeTemplatesPartById.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplatesPartByIdRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::ModifyCustomizeTemplatesPartByIdResponse`
        def ModifyCustomizeTemplatesPartById(request)
          body = send_request('ModifyCustomizeTemplatesPartById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomizeTemplatesPartByIdResponse.new
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

        # 修改工作空间的名称和描述

        # @param request: Request instance for ModifyWorkspaceAttributes.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::ModifyWorkspaceAttributesRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::ModifyWorkspaceAttributesResponse`
        def ModifyWorkspaceAttributes(request)
          body = send_request('ModifyWorkspaceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkspaceAttributesResponse.new
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

        # 恢复工作空间

        # @param request: Request instance for RecoverWorkspace.
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::RecoverWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::RecoverWorkspaceResponse`
        def RecoverWorkspace(request)
          body = send_request('RecoverWorkspace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverWorkspaceResponse.new
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
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::RemoveWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::RemoveWorkspaceResponse`
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
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::RunWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::RunWorkspaceResponse`
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
        # @type request: :class:`Tencentcloud::cloudstudio::V20210524::StopWorkspaceRequest`
        # @rtype: :class:`Tencentcloud::cloudstudio::V20210524::StopWorkspaceResponse`
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