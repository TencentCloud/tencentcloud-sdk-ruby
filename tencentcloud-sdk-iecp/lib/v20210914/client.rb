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
  module Iecp
    module V20210914
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-09-14'
            api_endpoint = 'iecp.tencentcloudapi.com'
            sdk_version = 'IECP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 从组件市场选中组件并添加到应用模板列表

        # @param request: Request instance for ApplyMarketComponent.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ApplyMarketComponentRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ApplyMarketComponentResponse`
        def ApplyMarketComponent(request)
          body = send_request('ApplyMarketComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyMarketComponentResponse.new
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

        # 创建可视化创建应用模板

        # @param request: Request instance for CreateApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateApplicationVisualizationResponse`
        def CreateApplicationVisualization(request)
          body = send_request('CreateApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationVisualizationResponse.new
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

        # 创建ConfigMap

        # @param request: Request instance for CreateConfigMap.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateConfigMapRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateConfigMapResponse`
        def CreateConfigMap(request)
          body = send_request('CreateConfigMap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigMapResponse.new
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

        # 创建边缘节点

        # @param request: Request instance for CreateEdgeNode.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeResponse`
        def CreateEdgeNode(request)
          body = send_request('CreateEdgeNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeNodeResponse.new
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

        # 创建边缘单元NodeGroup

        # @param request: Request instance for CreateEdgeNodeGroup.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeGroupRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeGroupResponse`
        def CreateEdgeNodeGroup(request)
          body = send_request('CreateEdgeNodeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeNodeGroupResponse.new
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

        # 创建边缘单元NodeUnit模版

        # @param request: Request instance for CreateEdgeNodeUnitTemplate.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeUnitTemplateRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeNodeUnitTemplateResponse`
        def CreateEdgeNodeUnitTemplate(request)
          body = send_request('CreateEdgeNodeUnitTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeNodeUnitTemplateResponse.new
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

        # 可视化创建应用

        # @param request: Request instance for CreateEdgeUnitApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitApplicationVisualizationResponse`
        def CreateEdgeUnitApplicationVisualization(request)
          body = send_request('CreateEdgeUnitApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeUnitApplicationVisualizationResponse.new
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

        # yaml方式创建应用

        # @param request: Request instance for CreateEdgeUnitApplicationYaml.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitApplicationYamlRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitApplicationYamlResponse`
        def CreateEdgeUnitApplicationYaml(request)
          body = send_request('CreateEdgeUnitApplicationYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeUnitApplicationYamlResponse.new
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

        # 创建边缘单元

        # @param request: Request instance for CreateEdgeUnitCloud.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitCloudRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateEdgeUnitCloudResponse`
        def CreateEdgeUnitCloud(request)
          body = send_request('CreateEdgeUnitCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgeUnitCloudResponse.new
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

        # 创建命名空间

        # @param request: Request instance for CreateNamespace.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateNamespaceResponse`
        def CreateNamespace(request)
          body = send_request('CreateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespaceResponse.new
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

        # 创建Secret

        # @param request: Request instance for CreateSecret.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateSecretRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateSecretResponse`
        def CreateSecret(request)
          body = send_request('CreateSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecretResponse.new
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

        # 创建或更新边缘单元NodeUnit

        # @param request: Request instance for CreateUpdateNodeUnit.
        # @type request: :class:`Tencentcloud::iecp::V20210914::CreateUpdateNodeUnitRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::CreateUpdateNodeUnitResponse`
        def CreateUpdateNodeUnit(request)
          body = send_request('CreateUpdateNodeUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUpdateNodeUnitResponse.new
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

        # 删除应用模板

        # @param request: Request instance for DeleteApplications.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteApplicationsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteApplicationsResponse`
        def DeleteApplications(request)
          body = send_request('DeleteApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationsResponse.new
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

        # 删除ConfigMap

        # @param request: Request instance for DeleteConfigMap.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteConfigMapRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteConfigMapResponse`
        def DeleteConfigMap(request)
          body = send_request('DeleteConfigMap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigMapResponse.new
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

        # 删除边缘单元NodeGroup

        # @param request: Request instance for DeleteEdgeNodeGroup.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodeGroupRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodeGroupResponse`
        def DeleteEdgeNodeGroup(request)
          body = send_request('DeleteEdgeNodeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeNodeGroupResponse.new
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

        # 删除边缘单元NodeUnit模版

        # @param request: Request instance for DeleteEdgeNodeUnitTemplates.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodeUnitTemplatesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodeUnitTemplatesResponse`
        def DeleteEdgeNodeUnitTemplates(request)
          body = send_request('DeleteEdgeNodeUnitTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeNodeUnitTemplatesResponse.new
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

        # 批量删除边缘节点

        # @param request: Request instance for DeleteEdgeNodes.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeNodesResponse`
        def DeleteEdgeNodes(request)
          body = send_request('DeleteEdgeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeNodesResponse.new
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

        # 删除应用列表

        # @param request: Request instance for DeleteEdgeUnitApplications.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitApplicationsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitApplicationsResponse`
        def DeleteEdgeUnitApplications(request)
          body = send_request('DeleteEdgeUnitApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeUnitApplicationsResponse.new
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

        # 删除边缘单元

        # @param request: Request instance for DeleteEdgeUnitCloud.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitCloudRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitCloudResponse`
        def DeleteEdgeUnitCloud(request)
          body = send_request('DeleteEdgeUnitCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeUnitCloudResponse.new
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

        # 重新部署边缘单元指定Grid下应用

        # @param request: Request instance for DeleteEdgeUnitDeployGridItem.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitDeployGridItemRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitDeployGridItemResponse`
        def DeleteEdgeUnitDeployGridItem(request)
          body = send_request('DeleteEdgeUnitDeployGridItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeUnitDeployGridItemResponse.new
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

        # 删除指定pod

        # @param request: Request instance for DeleteEdgeUnitPod.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitPodRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteEdgeUnitPodResponse`
        def DeleteEdgeUnitPod(request)
          body = send_request('DeleteEdgeUnitPod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEdgeUnitPodResponse.new
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

        # 删除命名空间

        # @param request: Request instance for DeleteNamespace.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteNamespaceRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteNamespaceResponse`
        def DeleteNamespace(request)
          body = send_request('DeleteNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNamespaceResponse.new
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

        # 删除边缘单元NodeUnit

        # @param request: Request instance for DeleteNodeUnit.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteNodeUnitRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteNodeUnitResponse`
        def DeleteNodeUnit(request)
          body = send_request('DeleteNodeUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNodeUnitResponse.new
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

        # 删除Secret

        # @param request: Request instance for DeleteSecret.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DeleteSecretRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DeleteSecretResponse`
        def DeleteSecret(request)
          body = send_request('DeleteSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecretResponse.new
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

        # 获取应用模板可视化配置信息

        # @param request: Request instance for DescribeApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationVisualizationResponse`
        def DescribeApplicationVisualization(request)
          body = send_request('DescribeApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationVisualizationResponse.new
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

        # 查询应用模板Yaml

        # @param request: Request instance for DescribeApplicationYaml.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationYamlRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationYamlResponse`
        def DescribeApplicationYaml(request)
          body = send_request('DescribeApplicationYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationYamlResponse.new
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

        # 检查应用模板的Yaml配置

        # @param request: Request instance for DescribeApplicationYamlError.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationYamlErrorRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationYamlErrorResponse`
        def DescribeApplicationYamlError(request)
          body = send_request('DescribeApplicationYamlError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationYamlErrorResponse.new
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

        # 获取应用模板列表

        # @param request: Request instance for DescribeApplications.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeApplicationsResponse`
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

        # 获取ConfigMap详情

        # @param request: Request instance for DescribeConfigMap.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapResponse`
        def DescribeConfigMap(request)
          body = send_request('DescribeConfigMap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigMapResponse.new
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

        # 校验ConfigMap的Yaml语法

        # @param request: Request instance for DescribeConfigMapYamlError.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapYamlErrorRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapYamlErrorResponse`
        def DescribeConfigMapYamlError(request)
          body = send_request('DescribeConfigMapYamlError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigMapYamlErrorResponse.new
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

        # 获取ConfigMap列表

        # @param request: Request instance for DescribeConfigMaps.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeConfigMapsResponse`
        def DescribeConfigMaps(request)
          body = send_request('DescribeConfigMaps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigMapsResponse.new
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

        # 获取节点安装信息

        # @param request: Request instance for DescribeEdgeAgentNodeInstaller.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeAgentNodeInstallerRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeAgentNodeInstallerResponse`
        def DescribeEdgeAgentNodeInstaller(request)
          body = send_request('DescribeEdgeAgentNodeInstaller', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeAgentNodeInstallerResponse.new
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

        # 获取边缘集群默认VPC信息

        # @param request: Request instance for DescribeEdgeDefaultVpc.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeDefaultVpcRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeDefaultVpcResponse`
        def DescribeEdgeDefaultVpc(request)
          body = send_request('DescribeEdgeDefaultVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeDefaultVpcResponse.new
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

        # 获取边缘节点信息

        # @param request: Request instance for DescribeEdgeNode.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodeRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodeResponse`
        def DescribeEdgeNode(request)
          body = send_request('DescribeEdgeNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeNodeResponse.new
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

        # 查询节点Pod内的容器列表

        # @param request: Request instance for DescribeEdgeNodePodContainers.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodePodContainersRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodePodContainersResponse`
        def DescribeEdgeNodePodContainers(request)
          body = send_request('DescribeEdgeNodePodContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeNodePodContainersResponse.new
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

        # 查询节点Pod列表

        # @param request: Request instance for DescribeEdgeNodePods.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodePodsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodePodsResponse`
        def DescribeEdgeNodePods(request)
          body = send_request('DescribeEdgeNodePods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeNodePodsResponse.new
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

        # 查询边缘节点列表

        # @param request: Request instance for DescribeEdgeNodes.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeNodesResponse`
        def DescribeEdgeNodes(request)
          body = send_request('DescribeEdgeNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeNodesResponse.new
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

        # 查询边缘操作日志

        # @param request: Request instance for DescribeEdgeOperationLogs.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeOperationLogsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeOperationLogsResponse`
        def DescribeEdgeOperationLogs(request)
          body = send_request('DescribeEdgeOperationLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeOperationLogsResponse.new
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

        # 查询边缘单元Pod

        # @param request: Request instance for DescribeEdgePod.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgePodRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgePodResponse`
        def DescribeEdgePod(request)
          body = send_request('DescribeEdgePod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgePodResponse.new
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

        # 获取应用事件列表

        # @param request: Request instance for DescribeEdgeUnitApplicationEvents.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationEventsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationEventsResponse`
        def DescribeEdgeUnitApplicationEvents(request)
          body = send_request('DescribeEdgeUnitApplicationEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationEventsResponse.new
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

        # 获取应用日志

        # @param request: Request instance for DescribeEdgeUnitApplicationLogs.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationLogsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationLogsResponse`
        def DescribeEdgeUnitApplicationLogs(request)
          body = send_request('DescribeEdgeUnitApplicationLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationLogsResponse.new
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

        # 获取应用容器状态

        # @param request: Request instance for DescribeEdgeUnitApplicationPodContainers.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationPodContainersRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationPodContainersResponse`
        def DescribeEdgeUnitApplicationPodContainers(request)
          body = send_request('DescribeEdgeUnitApplicationPodContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationPodContainersResponse.new
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

        # 获取应用下Pod状态

        # @param request: Request instance for DescribeEdgeUnitApplicationPods.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationPodsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationPodsResponse`
        def DescribeEdgeUnitApplicationPods(request)
          body = send_request('DescribeEdgeUnitApplicationPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationPodsResponse.new
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

        # 获取单元可视化配置信息

        # @param request: Request instance for DescribeEdgeUnitApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationVisualizationResponse`
        def DescribeEdgeUnitApplicationVisualization(request)
          body = send_request('DescribeEdgeUnitApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationVisualizationResponse.new
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

        # 获取应用的Yaml配置

        # @param request: Request instance for DescribeEdgeUnitApplicationYaml.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationYamlRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationYamlResponse`
        def DescribeEdgeUnitApplicationYaml(request)
          body = send_request('DescribeEdgeUnitApplicationYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationYamlResponse.new
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

        # 检查单元应用的Yaml配置

        # @param request: Request instance for DescribeEdgeUnitApplicationYamlError.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationYamlErrorRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationYamlErrorResponse`
        def DescribeEdgeUnitApplicationYamlError(request)
          body = send_request('DescribeEdgeUnitApplicationYamlError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationYamlErrorResponse.new
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

        # 获取单元下应用列表

        # @param request: Request instance for DescribeEdgeUnitApplications.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitApplicationsResponse`
        def DescribeEdgeUnitApplications(request)
          body = send_request('DescribeEdgeUnitApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitApplicationsResponse.new
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

        # 查询边缘集群详情

        # @param request: Request instance for DescribeEdgeUnitCloud.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitCloudRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitCloudResponse`
        def DescribeEdgeUnitCloud(request)
          body = send_request('DescribeEdgeUnitCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitCloudResponse.new
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

        # 查询边缘单元Grid列表

        # @param request: Request instance for DescribeEdgeUnitDeployGrid.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridResponse`
        def DescribeEdgeUnitDeployGrid(request)
          body = send_request('DescribeEdgeUnitDeployGrid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitDeployGridResponse.new
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

        # 查询边缘单元指定Grid下的部署应用列表

        # @param request: Request instance for DescribeEdgeUnitDeployGridItem.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridItemRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridItemResponse`
        def DescribeEdgeUnitDeployGridItem(request)
          body = send_request('DescribeEdgeUnitDeployGridItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitDeployGridItemResponse.new
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

        # 查询指定Grid下应用的Yaml

        # @param request: Request instance for DescribeEdgeUnitDeployGridItemYaml.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridItemYamlRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitDeployGridItemYamlResponse`
        def DescribeEdgeUnitDeployGridItemYaml(request)
          body = send_request('DescribeEdgeUnitDeployGridItemYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitDeployGridItemYamlResponse.new
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

        # 查询边缘单元额外信息

        # @param request: Request instance for DescribeEdgeUnitExtra.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitExtraRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitExtraResponse`
        def DescribeEdgeUnitExtra(request)
          body = send_request('DescribeEdgeUnitExtra', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitExtraResponse.new
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

        # 查询边缘单元Grid事件列表

        # @param request: Request instance for DescribeEdgeUnitGridEvents.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitGridEventsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitGridEventsResponse`
        def DescribeEdgeUnitGridEvents(request)
          body = send_request('DescribeEdgeUnitGridEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitGridEventsResponse.new
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

        # 查询边缘单元Grid的Pod列表

        # @param request: Request instance for DescribeEdgeUnitGridPods.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitGridPodsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitGridPodsResponse`
        def DescribeEdgeUnitGridPods(request)
          body = send_request('DescribeEdgeUnitGridPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitGridPodsResponse.new
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

        # 查询边缘集群监控状态

        # @param request: Request instance for DescribeEdgeUnitMonitorStatus.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitMonitorStatusRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitMonitorStatusResponse`
        def DescribeEdgeUnitMonitorStatus(request)
          body = send_request('DescribeEdgeUnitMonitorStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitMonitorStatusResponse.new
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

        # 查询边缘集群NodeGroup

        # @param request: Request instance for DescribeEdgeUnitNodeGroup.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitNodeGroupRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitNodeGroupResponse`
        def DescribeEdgeUnitNodeGroup(request)
          body = send_request('DescribeEdgeUnitNodeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitNodeGroupResponse.new
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

        # 查询边缘单元EdgeUnit模版列表

        # @param request: Request instance for DescribeEdgeUnitNodeUnitTemplates.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitNodeUnitTemplatesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitNodeUnitTemplatesResponse`
        def DescribeEdgeUnitNodeUnitTemplates(request)
          body = send_request('DescribeEdgeUnitNodeUnitTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitNodeUnitTemplatesResponse.new
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

        # 查询边缘单元列表

        # @param request: Request instance for DescribeEdgeUnitsCloud.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitsCloudRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeEdgeUnitsCloudResponse`
        def DescribeEdgeUnitsCloud(request)
          body = send_request('DescribeEdgeUnitsCloud', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgeUnitsCloudResponse.new
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

        # 查询边缘单元监控数据

        # @param request: Request instance for DescribeMonitorMetrics.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeMonitorMetricsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeMonitorMetricsResponse`
        def DescribeMonitorMetrics(request)
          body = send_request('DescribeMonitorMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorMetricsResponse.new
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

        # 获取命名空间

        # @param request: Request instance for DescribeNamespace.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeNamespaceRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeNamespaceResponse`
        def DescribeNamespace(request)
          body = send_request('DescribeNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespaceResponse.new
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

        # 获取命名空间下的资源信息

        # @param request: Request instance for DescribeNamespaceResources.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeNamespaceResourcesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeNamespaceResourcesResponse`
        def DescribeNamespaceResources(request)
          body = send_request('DescribeNamespaceResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespaceResourcesResponse.new
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

        # 获取命名空间列表信息

        # @param request: Request instance for DescribeNamespaces.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeNamespacesRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeNamespacesResponse`
        def DescribeNamespaces(request)
          body = send_request('DescribeNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespacesResponse.new
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

        # 查询边缘单元NodeUnit列表

        # @param request: Request instance for DescribeNodeUnit.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeNodeUnitRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeNodeUnitResponse`
        def DescribeNodeUnit(request)
          body = send_request('DescribeNodeUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeUnitResponse.new
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

        # 查询指定NodeGroup下NodeUnit模版列表

        # @param request: Request instance for DescribeNodeUnitTemplateOnNodeGroup.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeNodeUnitTemplateOnNodeGroupRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeNodeUnitTemplateOnNodeGroupResponse`
        def DescribeNodeUnitTemplateOnNodeGroup(request)
          body = send_request('DescribeNodeUnitTemplateOnNodeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeUnitTemplateOnNodeGroupResponse.new
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

        # 获取Secret详情

        # @param request: Request instance for DescribeSecret.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeSecretRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeSecretResponse`
        def DescribeSecret(request)
          body = send_request('DescribeSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecretResponse.new
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

        # 校验Secret的Yaml语法

        # @param request: Request instance for DescribeSecretYamlError.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeSecretYamlErrorRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeSecretYamlErrorResponse`
        def DescribeSecretYamlError(request)
          body = send_request('DescribeSecretYamlError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecretYamlErrorResponse.new
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

        # 获取Secrets列表

        # @param request: Request instance for DescribeSecrets.
        # @type request: :class:`Tencentcloud::iecp::V20210914::DescribeSecretsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::DescribeSecretsResponse`
        def DescribeSecrets(request)
          body = send_request('DescribeSecrets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecretsResponse.new
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

        # 获取组件市场的组件信息

        # @param request: Request instance for GetMarketComponent.
        # @type request: :class:`Tencentcloud::iecp::V20210914::GetMarketComponentRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::GetMarketComponentResponse`
        def GetMarketComponent(request)
          body = send_request('GetMarketComponent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMarketComponentResponse.new
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

        # 获取组件市场组件列表

        # @param request: Request instance for GetMarketComponentList.
        # @type request: :class:`Tencentcloud::iecp::V20210914::GetMarketComponentListRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::GetMarketComponentListResponse`
        def GetMarketComponentList(request)
          body = send_request('GetMarketComponentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMarketComponentListResponse.new
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

        # 修改应用模板基本信息

        # @param request: Request instance for ModifyApplicationBasicInfo.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyApplicationBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyApplicationBasicInfoResponse`
        def ModifyApplicationBasicInfo(request)
          body = send_request('ModifyApplicationBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationBasicInfoResponse.new
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

        # 修改应用模板配置

        # @param request: Request instance for ModifyApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyApplicationVisualizationResponse`
        def ModifyApplicationVisualization(request)
          body = send_request('ModifyApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationVisualizationResponse.new
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

        # 修改ConfigMap

        # @param request: Request instance for ModifyConfigMap.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyConfigMapRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyConfigMapResponse`
        def ModifyConfigMap(request)
          body = send_request('ModifyConfigMap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigMapResponse.new
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

        # 编辑边缘节点标签

        # @param request: Request instance for ModifyEdgeNodeLabels.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeNodeLabelsRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeNodeLabelsResponse`
        def ModifyEdgeNodeLabels(request)
          body = send_request('ModifyEdgeNodeLabels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeNodeLabelsResponse.new
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

        # 修改边缘集群

        # @param request: Request instance for ModifyEdgeUnit.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitResponse`
        def ModifyEdgeUnit(request)
          body = send_request('ModifyEdgeUnit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeUnitResponse.new
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

        # 修改单元应用基本信息

        # @param request: Request instance for ModifyEdgeUnitApplicationBasicInfo.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationBasicInfoResponse`
        def ModifyEdgeUnitApplicationBasicInfo(request)
          body = send_request('ModifyEdgeUnitApplicationBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeUnitApplicationBasicInfoResponse.new
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

        # 可视化修改应用配置

        # @param request: Request instance for ModifyEdgeUnitApplicationVisualization.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationVisualizationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationVisualizationResponse`
        def ModifyEdgeUnitApplicationVisualization(request)
          body = send_request('ModifyEdgeUnitApplicationVisualization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeUnitApplicationVisualizationResponse.new
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

        # Yaml方式修改应用配置

        # @param request: Request instance for ModifyEdgeUnitApplicationYaml.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationYamlRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitApplicationYamlResponse`
        def ModifyEdgeUnitApplicationYaml(request)
          body = send_request('ModifyEdgeUnitApplicationYaml', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeUnitApplicationYamlResponse.new
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

        # 修改边缘单元Grid部署应用副本数

        # @param request: Request instance for ModifyEdgeUnitDeployGridItem.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitDeployGridItemRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyEdgeUnitDeployGridItemResponse`
        def ModifyEdgeUnitDeployGridItem(request)
          body = send_request('ModifyEdgeUnitDeployGridItem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEdgeUnitDeployGridItemResponse.new
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

        # 修改边缘单元NodeUnit模版

        # @param request: Request instance for ModifyNodeUnitTemplate.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifyNodeUnitTemplateRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifyNodeUnitTemplateResponse`
        def ModifyNodeUnitTemplate(request)
          body = send_request('ModifyNodeUnitTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNodeUnitTemplateResponse.new
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

        # 修改Secret

        # @param request: Request instance for ModifySecret.
        # @type request: :class:`Tencentcloud::iecp::V20210914::ModifySecretRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::ModifySecretResponse`
        def ModifySecret(request)
          body = send_request('ModifySecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecretResponse.new
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

        # 单元应用重部署

        # @param request: Request instance for RedeployEdgeUnitApplication.
        # @type request: :class:`Tencentcloud::iecp::V20210914::RedeployEdgeUnitApplicationRequest`
        # @rtype: :class:`Tencentcloud::iecp::V20210914::RedeployEdgeUnitApplicationResponse`
        def RedeployEdgeUnitApplication(request)
          body = send_request('RedeployEdgeUnitApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RedeployEdgeUnitApplicationResponse.new
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