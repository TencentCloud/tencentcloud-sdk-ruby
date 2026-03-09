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
  module Cetcd
    module V20220325
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-03-25'
            api_endpoint = 'cetcd.tencentcloudapi.com'
            sdk_version = 'CETCD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建etcd实例

        # @param request: Request instance for CreateEtcdInstance.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdInstanceRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdInstanceResponse`
        def CreateEtcdInstance(request)
          body = send_request('CreateEtcdInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEtcdInstanceResponse.new
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

        # 创建etcd快照

        # @param request: Request instance for CreateEtcdSnapshot.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdSnapshotRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdSnapshotResponse`
        def CreateEtcdSnapshot(request)
          body = send_request('CreateEtcdSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEtcdSnapshotResponse.new
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

        # 创建etcd快照策略

        # @param request: Request instance for CreateEtcdSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::CreateEtcdSnapshotPolicyResponse`
        def CreateEtcdSnapshotPolicy(request)
          body = send_request('CreateEtcdSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEtcdSnapshotPolicyResponse.new
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

        # 查看etcd可用版本

        # @param request: Request instance for DescribeEtcdAvailableVersions.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdAvailableVersionsRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdAvailableVersionsResponse`
        def DescribeEtcdAvailableVersions(request)
          body = send_request('DescribeEtcdAvailableVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdAvailableVersionsResponse.new
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

        # 查看etcd集群创建进度

        # @param request: Request instance for DescribeEtcdCreatingProgress.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdCreatingProgressRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdCreatingProgressResponse`
        def DescribeEtcdCreatingProgress(request)
          body = send_request('DescribeEtcdCreatingProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdCreatingProgressResponse.new
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

        # 查询etcd访问凭证

        # @param request: Request instance for DescribeEtcdCredentials.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdCredentialsRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdCredentialsResponse`
        def DescribeEtcdCredentials(request)
          body = send_request('DescribeEtcdCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdCredentialsResponse.new
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

        # 查询etcd实例列表

        # @param request: Request instance for DescribeEtcdInstances.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdInstancesRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdInstancesResponse`
        def DescribeEtcdInstances(request)
          body = send_request('DescribeEtcdInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdInstancesResponse.new
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

        # 查看etcd集群配额

        # @param request: Request instance for DescribeEtcdQuota.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdQuotaRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdQuotaResponse`
        def DescribeEtcdQuota(request)
          body = send_request('DescribeEtcdQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdQuotaResponse.new
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

        # 查看etcd支持地域

        # @param request: Request instance for DescribeEtcdRegions.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdRegionsRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdRegionsResponse`
        def DescribeEtcdRegions(request)
          body = send_request('DescribeEtcdRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdRegionsResponse.new
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

        # 查看etcd快照策略

        # @param request: Request instance for DescribeEtcdSnapshotPolicies.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdSnapshotPoliciesResponse`
        def DescribeEtcdSnapshotPolicies(request)
          body = send_request('DescribeEtcdSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdSnapshotPoliciesResponse.new
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

        # 查看etcd快照列表

        # @param request: Request instance for DescribeEtcdSnapshots.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdSnapshotsResponse`
        def DescribeEtcdSnapshots(request)
          body = send_request('DescribeEtcdSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdSnapshotsResponse.new
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

        # 查看etcd相关tasks

        # @param request: Request instance for DescribeEtcdTasks.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdTasksRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeEtcdTasksResponse`
        def DescribeEtcdTasks(request)
          body = send_request('DescribeEtcdTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEtcdTasksResponse.new
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

        # 获取etcd集群的gRPC方法列表

        # @param request: Request instance for DescribeRPCMethodList.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DescribeRPCMethodListRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DescribeRPCMethodListResponse`
        def DescribeRPCMethodList(request)
          body = send_request('DescribeRPCMethodList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRPCMethodListResponse.new
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

        # 关闭etcd实例删除保护

        # @param request: Request instance for DisableEtcdInstanceDeletionProtection.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::DisableEtcdInstanceDeletionProtectionRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::DisableEtcdInstanceDeletionProtectionResponse`
        def DisableEtcdInstanceDeletionProtection(request)
          body = send_request('DisableEtcdInstanceDeletionProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableEtcdInstanceDeletionProtectionResponse.new
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

        # 启用etcd实例删除保护

        # @param request: Request instance for EnableEtcdInstanceDeletionProtection.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::EnableEtcdInstanceDeletionProtectionRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::EnableEtcdInstanceDeletionProtectionResponse`
        def EnableEtcdInstanceDeletionProtection(request)
          body = send_request('EnableEtcdInstanceDeletionProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableEtcdInstanceDeletionProtectionResponse.new
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

        # 修改etcd实例属性

        # @param request: Request instance for ModifyEtcdAttribute.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdAttributeRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdAttributeResponse`
        def ModifyEtcdAttribute(request)
          body = send_request('ModifyEtcdAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEtcdAttributeResponse.new
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

        # 修改etcd实例配置

        # @param request: Request instance for ModifyEtcdConfiguration.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdConfigurationRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdConfigurationResponse`
        def ModifyEtcdConfiguration(request)
          body = send_request('ModifyEtcdConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEtcdConfigurationResponse.new
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

        # 修改etcd快照策略

        # @param request: Request instance for ModifyEtcdSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::ModifyEtcdSnapshotPolicyResponse`
        def ModifyEtcdSnapshotPolicy(request)
          body = send_request('ModifyEtcdSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEtcdSnapshotPolicyResponse.new
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

        # 扩容etcd实例

        # @param request: Request instance for ResizeEtcdInstance.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::ResizeEtcdInstanceRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::ResizeEtcdInstanceResponse`
        def ResizeEtcdInstance(request)
          body = send_request('ResizeEtcdInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeEtcdInstanceResponse.new
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

        # 升级etcd实例

        # @param request: Request instance for UpgradeEtcdInstance.
        # @type request: :class:`Tencentcloud::cetcd::V20220325::UpgradeEtcdInstanceRequest`
        # @rtype: :class:`Tencentcloud::cetcd::V20220325::UpgradeEtcdInstanceResponse`
        def UpgradeEtcdInstance(request)
          body = send_request('UpgradeEtcdInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeEtcdInstanceResponse.new
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