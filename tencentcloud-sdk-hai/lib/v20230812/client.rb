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
  module Hai
    module V20230812
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-08-12'
            api_endpoint = 'hai.tencentcloudapi.com'
            sdk_version = 'HAI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（CreateApplication）用于对HAI实例制作自定义应用。

        # @param request: Request instance for CreateApplication.
        # @type request: :class:`Tencentcloud::hai::V20230812::CreateApplicationRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::CreateApplicationResponse`
        def CreateApplication(request)
          body = send_request('CreateApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationResponse.new
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

        # 本接口(CreateInferServiceByTemplate)用于根据模板创建服务

        # @param request: Request instance for CreateInferServiceByTemplate.
        # @type request: :class:`Tencentcloud::hai::V20230812::CreateInferServiceByTemplateRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::CreateInferServiceByTemplateResponse`
        def CreateInferServiceByTemplate(request)
          body = send_request('CreateInferServiceByTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInferServiceByTemplateResponse.new
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

        # 创建musk prompt 任务

        # @param request: Request instance for CreateMuskPrompt.
        # @type request: :class:`Tencentcloud::hai::V20230812::CreateMuskPromptRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::CreateMuskPromptResponse`
        def CreateMuskPrompt(request)
          body = send_request('CreateMuskPrompt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMuskPromptResponse.new
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

        # 本接口 (DeleteService) 用于删除一个指定配置的实例。

        # @param request: Request instance for DeleteService.
        # @type request: :class:`Tencentcloud::hai::V20230812::DeleteServiceRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DeleteServiceResponse`
        def DeleteService(request)
          body = send_request('DeleteService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceResponse.new
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

        # 本接口(DeployInferService)用于部署推理服务

        # @param request: Request instance for DeployInferService.
        # @type request: :class:`Tencentcloud::hai::V20230812::DeployInferServiceRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DeployInferServiceResponse`
        def DeployInferService(request)
          body = send_request('DeployInferService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployInferServiceResponse.new
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

        # 本接口（DescribeApplications）用于查询应用

        # @param request: Request instance for DescribeApplications.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeApplicationsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeApplicationsResponse`
        def DescribeApplications(request)
          body = send_request('DescribeApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationsResponse.new
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

        # 本接口(DescribeDeployTemplates)用于查询模型支持的部署模板

        # @param request: Request instance for DescribeDeployTemplates.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeDeployTemplatesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeDeployTemplatesResponse`
        def DescribeDeployTemplates(request)
          body = send_request('DescribeDeployTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployTemplatesResponse.new
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

        # 本接口（DescribeInstanceNetworkStatus）用于查询实例的网络配置及消耗情况

        # @param request: Request instance for DescribeInstanceNetworkStatus.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeInstanceNetworkStatusRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeInstanceNetworkStatusResponse`
        def DescribeInstanceNetworkStatus(request)
          body = send_request('DescribeInstanceNetworkStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNetworkStatusResponse.new
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

        # 本接口（DescribeInstances）用户查询实例

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
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

        # 本接口(DescribeModels)用于查询模型

        # @param request: Request instance for DescribeModels.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeModelsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeModelsResponse`
        def DescribeModels(request)
          body = send_request('DescribeModels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModelsResponse.new
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

        # 获取prompt任务列表

        # @param request: Request instance for DescribeMuskPrompts.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeMuskPromptsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeMuskPromptsResponse`
        def DescribeMuskPrompts(request)
          body = send_request('DescribeMuskPrompts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMuskPromptsResponse.new
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

        # 本接口（DescribeRegions）用于查询地域列表

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
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

        # 本接口（DescribeScenes）用于查询场景

        # @param request: Request instance for DescribeScenes.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeScenesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeScenesResponse`
        def DescribeScenes(request)
          body = send_request('DescribeScenes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScenesResponse.new
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

        # 本接口（DescribeServiceLoginSettings）用于查询服务登录配置

        # @param request: Request instance for DescribeServiceLoginSettings.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeServiceLoginSettingsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeServiceLoginSettingsResponse`
        def DescribeServiceLoginSettings(request)
          body = send_request('DescribeServiceLoginSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceLoginSettingsResponse.new
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

        # 本接口 (DescribeServices) 用于查询一个或多个服务

        # @param request: Request instance for DescribeServices.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeServicesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeServicesResponse`
        def DescribeServices(request)
          body = send_request('DescribeServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServicesResponse.new
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

        # 本接口 (DescribeServciesCallInfo) 用于查询服务调用信息。

        # @param request: Request instance for DescribeServicesCallInfo.
        # @type request: :class:`Tencentcloud::hai::V20230812::DescribeServicesCallInfoRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::DescribeServicesCallInfoResponse`
        def DescribeServicesCallInfo(request)
          body = send_request('DescribeServicesCallInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServicesCallInfoResponse.new
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

        # 本接口 (InquirePriceRunInstances) 用于实例询价。

        # @param request: Request instance for InquirePriceRunInstances.
        # @type request: :class:`Tencentcloud::hai::V20230812::InquirePriceRunInstancesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::InquirePriceRunInstancesResponse`
        def InquirePriceRunInstances(request)
          body = send_request('InquirePriceRunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRunInstancesResponse.new
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

        # 本接口(InquirePriceUpdateServiceConfigs)用于更新服务配置询价

        # @param request: Request instance for InquirePriceUpdateServiceConfigs.
        # @type request: :class:`Tencentcloud::hai::V20230812::InquirePriceUpdateServiceConfigsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::InquirePriceUpdateServiceConfigsResponse`
        def InquirePriceUpdateServiceConfigs(request)
          body = send_request('InquirePriceUpdateServiceConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceUpdateServiceConfigsResponse.new
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

        # 本接口 (ResetInstancesPassword) 用于重置实例的用户密码。

        # @param request: Request instance for ResetInstancesPassword.
        # @type request: :class:`Tencentcloud::hai::V20230812::ResetInstancesPasswordRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::ResetInstancesPasswordResponse`
        def ResetInstancesPassword(request)
          body = send_request('ResetInstancesPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesPasswordResponse.new
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

        # 本接口（ResizeInstanceDisk）用于对指定HAI实例进行扩容云硬盘操作。

        # @param request: Request instance for ResizeInstanceDisk.
        # @type request: :class:`Tencentcloud::hai::V20230812::ResizeInstanceDiskRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::ResizeInstanceDiskResponse`
        def ResizeInstanceDisk(request)
          body = send_request('ResizeInstanceDisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeInstanceDiskResponse.new
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

        # 本接口 (RunInstances) 用于创建一个或多个指定配置的实例。

        # @param request: Request instance for RunInstances.
        # @type request: :class:`Tencentcloud::hai::V20230812::RunInstancesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::RunInstancesResponse`
        def RunInstances(request)
          body = send_request('RunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunInstancesResponse.new
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

        # 本接口 (StartInstance) 用于主动启动实例。
        # ‘运行中’、‘预付费’的实例不支持启动实例

        # @param request: Request instance for StartInstance.
        # @type request: :class:`Tencentcloud::hai::V20230812::StartInstanceRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::StartInstanceResponse`
        def StartInstance(request)
          body = send_request('StartInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartInstanceResponse.new
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

        # 本接口 (StopInstance) 用于主动关闭实例。
        # ‘已关机’、‘预付费’的实例不支持关机

        # @param request: Request instance for StopInstance.
        # @type request: :class:`Tencentcloud::hai::V20230812::StopInstanceRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::StopInstanceResponse`
        def StopInstance(request)
          body = send_request('StopInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInstanceResponse.new
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

        # 本接口 (TerminateInstances) 用于主动退还实例。

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::hai::V20230812::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::TerminateInstancesResponse`
        def TerminateInstances(request)
          body = send_request('TerminateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateInstancesResponse.new
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

        # 本接口(UpdateServiceConfigs)用于更新服务配置

        # @param request: Request instance for UpdateServiceConfigs.
        # @type request: :class:`Tencentcloud::hai::V20230812::UpdateServiceConfigsRequest`
        # @rtype: :class:`Tencentcloud::hai::V20230812::UpdateServiceConfigsResponse`
        def UpdateServiceConfigs(request)
          body = send_request('UpdateServiceConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateServiceConfigsResponse.new
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