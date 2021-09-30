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
  module Es
    module V20180416
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-16'
            api_endpoint = 'es.tencentcloudapi.com'
            sdk_version = 'ES_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建指定规格的ES集群实例

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
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

        # 销毁集群实例

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
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

        # 查询用户该地域下符合条件的ES集群的日志

        # @param request: Request instance for DescribeInstanceLogs.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstanceLogsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstanceLogsResponse`
        def DescribeInstanceLogs(request)
          body = send_request('DescribeInstanceLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogsResponse.new
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

        # 查询实例指定条件下的操作记录

        # @param request: Request instance for DescribeInstanceOperations.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstanceOperationsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstanceOperationsResponse`
        def DescribeInstanceOperations(request)
          body = send_request('DescribeInstanceOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceOperationsResponse.new
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

        # 查询用户该地域下符合条件的所有实例

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstancesResponse`
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

        # 智能运维诊断集群

        # @param request: Request instance for DiagnoseInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::DiagnoseInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DiagnoseInstanceResponse`
        def DiagnoseInstance(request)
          body = send_request('DiagnoseInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DiagnoseInstanceResponse.new
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

        # 获取接收客户端请求的节点类型

        # @param request: Request instance for GetRequestTargetNodeTypes.
        # @type request: :class:`Tencentcloud::es::V20180416::GetRequestTargetNodeTypesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::GetRequestTargetNodeTypesResponse`
        def GetRequestTargetNodeTypes(request)
          body = send_request('GetRequestTargetNodeTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRequestTargetNodeTypesResponse.new
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

        # 重启ES集群实例(用于系统版本更新等操作)

        # @param request: Request instance for RestartInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartInstanceResponse`
        def RestartInstance(request)
          body = send_request('RestartInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInstanceResponse.new
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

        # 重启Kibana

        # @param request: Request instance for RestartKibana.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartKibanaRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartKibanaResponse`
        def RestartKibana(request)
          body = send_request('RestartKibana', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartKibanaResponse.new
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

        # 用于重启集群节点

        # @param request: Request instance for RestartNodes.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartNodesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartNodesResponse`
        def RestartNodes(request)
          body = send_request('RestartNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartNodesResponse.new
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

        # 更新智能运维配置

        # @param request: Request instance for UpdateDiagnoseSettings.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateDiagnoseSettingsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateDiagnoseSettingsResponse`
        def UpdateDiagnoseSettings(request)
          body = send_request('UpdateDiagnoseSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDiagnoseSettingsResponse.new
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

        # 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
        # - InstanceName：修改实例名称(仅用于标识实例)
        # - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
        # - EsConfig：修改集群配置
        # - Password：修改默认用户elastic的密码
        # - EsAcl：修改访问控制列表
        # - CosBackUp: 设置集群COS自动备份信息
        # 以上参数组合只能传递一种，多传或少传均会导致请求失败

        # @param request: Request instance for UpdateInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateInstanceResponse`
        def UpdateInstance(request)
          body = send_request('UpdateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateInstanceResponse.new
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

        # 更新实例Jdk配置

        # @param request: Request instance for UpdateJdk.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateJdkRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateJdkResponse`
        def UpdateJdk(request)
          body = send_request('UpdateJdk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateJdkResponse.new
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

        # 变更插件列表

        # @param request: Request instance for UpdatePlugins.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdatePluginsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdatePluginsResponse`
        def UpdatePlugins(request)
          body = send_request('UpdatePlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePluginsResponse.new
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

        # 更新接收客户端请求的节点类型

        # @param request: Request instance for UpdateRequestTargetNodeTypes.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateRequestTargetNodeTypesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateRequestTargetNodeTypesResponse`
        def UpdateRequestTargetNodeTypes(request)
          body = send_request('UpdateRequestTargetNodeTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRequestTargetNodeTypesResponse.new
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

        # 升级ES集群版本

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpgradeInstanceResponse`
        def UpgradeInstance(request)
          body = send_request('UpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceResponse.new
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

        # 升级ES商业特性

        # @param request: Request instance for UpgradeLicense.
        # @type request: :class:`Tencentcloud::es::V20180416::UpgradeLicenseRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpgradeLicenseResponse`
        def UpgradeLicense(request)
          body = send_request('UpgradeLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeLicenseResponse.new
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