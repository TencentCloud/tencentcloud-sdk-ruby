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
  module Tke
    module V20220501
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-05-01'
            api_endpoint = 'tke.tencentcloudapi.com'
            sdk_version = 'TKE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建健康检测策略

        # @param request: Request instance for CreateHealthCheckPolicy.
        # @type request: :class:`Tencentcloud::tke::V20220501::CreateHealthCheckPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::CreateHealthCheckPolicyResponse`
        def CreateHealthCheckPolicy(request)
          body = send_request('CreateHealthCheckPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHealthCheckPolicyResponse.new
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

        # 创建 TKE 节点池

        # @param request: Request instance for CreateNodePool.
        # @type request: :class:`Tencentcloud::tke::V20220501::CreateNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::CreateNodePoolResponse`
        def CreateNodePool(request)
          body = send_request('CreateNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNodePoolResponse.new
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

        # 删除健康检测策略

        # @param request: Request instance for DeleteHealthCheckPolicy.
        # @type request: :class:`Tencentcloud::tke::V20220501::DeleteHealthCheckPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DeleteHealthCheckPolicyResponse`
        def DeleteHealthCheckPolicy(request)
          body = send_request('DeleteHealthCheckPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHealthCheckPolicyResponse.new
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

        # 删除 TKE 节点池

        # @param request: Request instance for DeleteNodePool.
        # @type request: :class:`Tencentcloud::tke::V20220501::DeleteNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DeleteNodePoolResponse`
        def DeleteNodePool(request)
          body = send_request('DeleteNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNodePoolResponse.new
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

        # 查询集群下节点实例信息

        # @param request: Request instance for DescribeClusterInstances.
        # @type request: :class:`Tencentcloud::tke::V20220501::DescribeClusterInstancesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DescribeClusterInstancesResponse`
        def DescribeClusterInstances(request)
          body = send_request('DescribeClusterInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstancesResponse.new
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

        # 查询健康检测策略

        # @param request: Request instance for DescribeHealthCheckPolicies.
        # @type request: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckPoliciesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckPoliciesResponse`
        def DescribeHealthCheckPolicies(request)
          body = send_request('DescribeHealthCheckPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHealthCheckPoliciesResponse.new
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

        # 查询健康检测策略绑定关系

        # @param request: Request instance for DescribeHealthCheckPolicyBindings.
        # @type request: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckPolicyBindingsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckPolicyBindingsResponse`
        def DescribeHealthCheckPolicyBindings(request)
          body = send_request('DescribeHealthCheckPolicyBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHealthCheckPolicyBindingsResponse.new
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

        # 查询健康检测策略模板

        # @param request: Request instance for DescribeHealthCheckTemplate.
        # @type request: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckTemplateRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DescribeHealthCheckTemplateResponse`
        def DescribeHealthCheckTemplate(request)
          body = send_request('DescribeHealthCheckTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHealthCheckTemplateResponse.new
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

        # 查询 TKE 节点池列表

        # @param request: Request instance for DescribeNodePools.
        # @type request: :class:`Tencentcloud::tke::V20220501::DescribeNodePoolsRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::DescribeNodePoolsResponse`
        def DescribeNodePools(request)
          body = send_request('DescribeNodePools', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodePoolsResponse.new
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

        # 修改健康检测策略

        # @param request: Request instance for ModifyHealthCheckPolicy.
        # @type request: :class:`Tencentcloud::tke::V20220501::ModifyHealthCheckPolicyRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::ModifyHealthCheckPolicyResponse`
        def ModifyHealthCheckPolicy(request)
          body = send_request('ModifyHealthCheckPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHealthCheckPolicyResponse.new
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

        # 更新 TKE 节点池

        # @param request: Request instance for ModifyNodePool.
        # @type request: :class:`Tencentcloud::tke::V20220501::ModifyNodePoolRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::ModifyNodePoolResponse`
        def ModifyNodePool(request)
          body = send_request('ModifyNodePool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNodePoolResponse.new
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

        # 重启原生节点实例

        # @param request: Request instance for RebootMachines.
        # @type request: :class:`Tencentcloud::tke::V20220501::RebootMachinesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::RebootMachinesResponse`
        def RebootMachines(request)
          body = send_request('RebootMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootMachinesResponse.new
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

        # 本接口 (StartMachines) 用于启动一个或多个原生节点实例。

        # 只有状态为 Stopped 的实例才可以进行此操作。
        # 接口调用成功后，等待一分钟左右，实例会进入 Running 状态。
        # 支持批量操作。每次请求批量实例的上限为100。
        # 本接口为同步接口，启动实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeClusterInstances 接口查询，如果实例的状态为 Running，则代表启动实例操作成功。

        # @param request: Request instance for StartMachines.
        # @type request: :class:`Tencentcloud::tke::V20220501::StartMachinesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::StartMachinesResponse`
        def StartMachines(request)
          body = send_request('StartMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMachinesResponse.new
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

        # 本接口 (StopMachines) 用于关闭一个或多个原生节点实例。

        # 只有状态为 Running 的实例才可以进行此操作。
        # 接口调用成功时，实例会进入 Stopping 状态；关闭实例成功时，实例会进入 Stopped 状态。
        # 支持强制关闭。强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # 支持批量操作。每次请求批量实例的上限为 100。
        # 本接口为同步接口，关闭实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeClusterInstances 接口查询，如果实例的状态为stopped_with_charging，则代表关闭实例操作成功。

        # @param request: Request instance for StopMachines.
        # @type request: :class:`Tencentcloud::tke::V20220501::StopMachinesRequest`
        # @rtype: :class:`Tencentcloud::tke::V20220501::StopMachinesResponse`
        def StopMachines(request)
          body = send_request('StopMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMachinesResponse.new
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