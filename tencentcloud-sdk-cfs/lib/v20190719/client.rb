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
  module Cfs
    module V20190719
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-19'
            api_endpoint = 'cfs.tencentcloudapi.com'
            sdk_version = 'CFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 配置生命周期策略关联到的目录列表

        # @param request: Request instance for ApplyPathLifecyclePolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::ApplyPathLifecyclePolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::ApplyPathLifecyclePolicyResponse`
        def ApplyPathLifecyclePolicy(request)
          body = send_request('ApplyPathLifecyclePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyPathLifecyclePolicyResponse.new
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

        # 文件系统绑定快照策略，可以同时绑定多个fs，一个fs 只能跟一个策略绑定

        # @param request: Request instance for BindAutoSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::BindAutoSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::BindAutoSnapshotPolicyResponse`
        def BindAutoSnapshotPolicy(request)
          body = send_request('BindAutoSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAutoSnapshotPolicyResponse.new
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

        # 创建用于访问文件系统的凭证

        # @param request: Request instance for CreateAccessCert.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateAccessCertRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateAccessCertResponse`
        def CreateAccessCert(request)
          body = send_request('CreateAccessCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessCertResponse.new
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

        # 创建定期快照策略

        # @param request: Request instance for CreateAutoSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateAutoSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateAutoSnapshotPolicyResponse`
        def CreateAutoSnapshotPolicy(request)
          body = send_request('CreateAutoSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAutoSnapshotPolicyResponse.new
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

        # 用于添加新文件系统

        # @param request: Request instance for CreateCfsFileSystem.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsFileSystemRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsFileSystemResponse`
        def CreateCfsFileSystem(request)
          body = send_request('CreateCfsFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsFileSystemResponse.new
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

        # 本接口（CreateCfsPGroup）用于创建权限组

        # @param request: Request instance for CreateCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsPGroupResponse`
        def CreateCfsPGroup(request)
          body = send_request('CreateCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsPGroupResponse.new
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

        # 本接口（CreateCfsRule）用于创建权限组规则。

        # @param request: Request instance for CreateCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsRuleResponse`
        def CreateCfsRule(request)
          body = send_request('CreateCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsRuleResponse.new
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

        # 创建文件系统快照

        # @param request: Request instance for CreateCfsSnapshot.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsSnapshotRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsSnapshotResponse`
        def CreateCfsSnapshot(request)
          body = send_request('CreateCfsSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsSnapshotResponse.new
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

        # 创建数据流动接口

        # @param request: Request instance for CreateDataFlow.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateDataFlowRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateDataFlowResponse`
        def CreateDataFlow(request)
          body = send_request('CreateDataFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataFlowResponse.new
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

        # 支持主动沉降/预热接口

        # @param request: Request instance for CreateLifecycleDataTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateLifecycleDataTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateLifecycleDataTaskResponse`
        def CreateLifecycleDataTask(request)
          body = send_request('CreateLifecycleDataTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLifecycleDataTaskResponse.new
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

        # 创建文件存储生命周期策略

        # @param request: Request instance for CreateLifecyclePolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateLifecyclePolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateLifecyclePolicyResponse`
        def CreateLifecyclePolicy(request)
          body = send_request('CreateLifecyclePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLifecyclePolicyResponse.new
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

        # 下载生命周期任务中文件列表

        # @param request: Request instance for CreateLifecyclePolicyDownloadTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateLifecyclePolicyDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateLifecyclePolicyDownloadTaskResponse`
        def CreateLifecyclePolicyDownloadTask(request)
          body = send_request('CreateLifecyclePolicyDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLifecyclePolicyDownloadTaskResponse.new
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

        # 用于创建迁移任务。

        # @param request: Request instance for CreateMigrationTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateMigrationTaskResponse`
        def CreateMigrationTask(request)
          body = send_request('CreateMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMigrationTaskResponse.new
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

        # 删除快照定期策略

        # @param request: Request instance for DeleteAutoSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteAutoSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteAutoSnapshotPolicyResponse`
        def DeleteAutoSnapshotPolicy(request)
          body = send_request('DeleteAutoSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAutoSnapshotPolicyResponse.new
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

        # 用于删除文件系统

        # @param request: Request instance for DeleteCfsFileSystem.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsFileSystemRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsFileSystemResponse`
        def DeleteCfsFileSystem(request)
          body = send_request('DeleteCfsFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsFileSystemResponse.new
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

        # 本接口（DeleteCfsPGroup）用于删除权限组，只有未绑定文件系统的权限组才能够被此接口删除。

        # @param request: Request instance for DeleteCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsPGroupResponse`
        def DeleteCfsPGroup(request)
          body = send_request('DeleteCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsPGroupResponse.new
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

        # 本接口（DeleteCfsRule）用于删除权限组规则。

        # @param request: Request instance for DeleteCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsRuleResponse`
        def DeleteCfsRule(request)
          body = send_request('DeleteCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsRuleResponse.new
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

        # 删除文件系统快照

        # @param request: Request instance for DeleteCfsSnapshot.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsSnapshotRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsSnapshotResponse`
        def DeleteCfsSnapshot(request)
          body = send_request('DeleteCfsSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsSnapshotResponse.new
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

        # 删除数据流动

        # @param request: Request instance for DeleteDataFlow.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteDataFlowRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteDataFlowResponse`
        def DeleteDataFlow(request)
          body = send_request('DeleteDataFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDataFlowResponse.new
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

        # 删除生命周期管理策略

        # @param request: Request instance for DeleteLifecyclePolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteLifecyclePolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteLifecyclePolicyResponse`
        def DeleteLifecyclePolicy(request)
          body = send_request('DeleteLifecyclePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLifecyclePolicyResponse.new
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

        # 用于删除迁移任务。不支持删除等待中、创建中、运行中、取消中、终止中状态的任务。

        # @param request: Request instance for DeleteMigrationTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteMigrationTaskResponse`
        def DeleteMigrationTask(request)
          body = send_request('DeleteMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMigrationTaskResponse.new
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

        # 指定条件删除文件系统配额（仅部分Turbo实例能使用，若需要调用请提交工单与我们联系）

        # @param request: Request instance for DeleteUserQuota.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteUserQuotaRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteUserQuotaResponse`
        def DeleteUserQuota(request)
          body = send_request('DeleteUserQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserQuotaResponse.new
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

        # 查询文件系统快照定期策略列表信息

        # @param request: Request instance for DescribeAutoSnapshotPolicies.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeAutoSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeAutoSnapshotPoliciesResponse`
        def DescribeAutoSnapshotPolicies(request)
          body = send_request('DescribeAutoSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoSnapshotPoliciesResponse.new
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

        # 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。

        # @param request: Request instance for DescribeAvailableZoneInfo.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeAvailableZoneInfoRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeAvailableZoneInfoResponse`
        def DescribeAvailableZoneInfo(request)
          body = send_request('DescribeAvailableZoneInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableZoneInfoResponse.new
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

        # 用于获取数据源桶列表。

        # @param request: Request instance for DescribeBucketList.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeBucketListRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeBucketListResponse`
        def DescribeBucketList(request)
          body = send_request('DescribeBucketList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBucketListResponse.new
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

        # 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。

        # @param request: Request instance for DescribeCfsFileSystemClients.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemClientsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemClientsResponse`
        def DescribeCfsFileSystemClients(request)
          body = send_request('DescribeCfsFileSystemClients', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsFileSystemClientsResponse.new
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

        # 本接口（DescribeCfsFileSystems）用于查询文件系统

        # @param request: Request instance for DescribeCfsFileSystems.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemsResponse`
        def DescribeCfsFileSystems(request)
          body = send_request('DescribeCfsFileSystems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsFileSystemsResponse.new
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

        # 本接口（DescribeCfsPGroups）用于查询权限组列表。

        # @param request: Request instance for DescribeCfsPGroups.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsPGroupsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsPGroupsResponse`
        def DescribeCfsPGroups(request)
          body = send_request('DescribeCfsPGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsPGroupsResponse.new
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

        # 本接口（DescribeCfsRules）用于查询权限组规则列表。

        # @param request: Request instance for DescribeCfsRules.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsRulesRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsRulesResponse`
        def DescribeCfsRules(request)
          body = send_request('DescribeCfsRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsRulesResponse.new
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

        # 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。

        # @param request: Request instance for DescribeCfsServiceStatus.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsServiceStatusResponse`
        def DescribeCfsServiceStatus(request)
          body = send_request('DescribeCfsServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsServiceStatusResponse.new
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

        # 文件系统快照概览

        # @param request: Request instance for DescribeCfsSnapshotOverview.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsSnapshotOverviewRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsSnapshotOverviewResponse`
        def DescribeCfsSnapshotOverview(request)
          body = send_request('DescribeCfsSnapshotOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsSnapshotOverviewResponse.new
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

        # 查询文件系统快照列表

        # @param request: Request instance for DescribeCfsSnapshots.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsSnapshotsResponse`
        def DescribeCfsSnapshots(request)
          body = send_request('DescribeCfsSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsSnapshotsResponse.new
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

        # 查询数据流动信息接口

        # @param request: Request instance for DescribeDataFlow.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeDataFlowRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeDataFlowResponse`
        def DescribeDataFlow(request)
          body = send_request('DescribeDataFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFlowResponse.new
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

        # 查询生命周期任务的接口

        # @param request: Request instance for DescribeLifecycleDataTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeLifecycleDataTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeLifecycleDataTaskResponse`
        def DescribeLifecycleDataTask(request)
          body = send_request('DescribeLifecycleDataTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLifecycleDataTaskResponse.new
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

        # 查询生命周期管理策略

        # @param request: Request instance for DescribeLifecyclePolicies.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeLifecyclePoliciesRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeLifecyclePoliciesResponse`
        def DescribeLifecyclePolicies(request)
          body = send_request('DescribeLifecyclePolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLifecyclePoliciesResponse.new
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

        # 用于获取迁移任务列表。
        # 此接口需提交工单，开启白名单之后才能使用。

        # @param request: Request instance for DescribeMigrationTasks.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeMigrationTasksRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeMigrationTasksResponse`
        def DescribeMigrationTasks(request)
          body = send_request('DescribeMigrationTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationTasksResponse.new
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

        # 本接口（DescribeMountTargets）用于查询文件系统挂载点信息

        # @param request: Request instance for DescribeMountTargets.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeMountTargetsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeMountTargetsResponse`
        def DescribeMountTargets(request)
          body = send_request('DescribeMountTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMountTargetsResponse.new
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

        # 查询快照操作日志

        # @param request: Request instance for DescribeSnapshotOperationLogs.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeSnapshotOperationLogsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeSnapshotOperationLogsResponse`
        def DescribeSnapshotOperationLogs(request)
          body = send_request('DescribeSnapshotOperationLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotOperationLogsResponse.new
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

        # 查询文件系统配额（仅部分Turbo实例能使用，若需要调用请提交工单与我们联系）

        # @param request: Request instance for DescribeUserQuota.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeUserQuotaRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeUserQuotaResponse`
        def DescribeUserQuota(request)
          body = send_request('DescribeUserQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserQuotaResponse.new
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

        # 文件系统目录操作接口

        # @param request: Request instance for DoDirectoryOperation.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DoDirectoryOperationRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DoDirectoryOperationResponse`
        def DoDirectoryOperation(request)
          body = send_request('DoDirectoryOperation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DoDirectoryOperationResponse.new
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

        # 修改数据流动相关参数

        # @param request: Request instance for ModifyDataFlow.
        # @type request: :class:`Tencentcloud::cfs::V20190719::ModifyDataFlowRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::ModifyDataFlowResponse`
        def ModifyDataFlow(request)
          body = send_request('ModifyDataFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataFlowResponse.new
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

        # 用来设置文件系统扩容策略，该接口只支持turbo文件系统

        # @param request: Request instance for ModifyFileSystemAutoScaleUpRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::ModifyFileSystemAutoScaleUpRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::ModifyFileSystemAutoScaleUpRuleResponse`
        def ModifyFileSystemAutoScaleUpRule(request)
          body = send_request('ModifyFileSystemAutoScaleUpRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileSystemAutoScaleUpRuleResponse.new
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

        # 更新文件存储生命周期策略

        # @param request: Request instance for ModifyLifecyclePolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::ModifyLifecyclePolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::ModifyLifecyclePolicyResponse`
        def ModifyLifecyclePolicy(request)
          body = send_request('ModifyLifecyclePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLifecyclePolicyResponse.new
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

        # 该接口用于对turbo 文件系统扩容使用,该接口只支持扩容不支持缩容。turbo标准型扩容步长是10240GIB，turbo性能型扩容步长是5120GIB

        # @param request: Request instance for ScaleUpFileSystem.
        # @type request: :class:`Tencentcloud::cfs::V20190719::ScaleUpFileSystemRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::ScaleUpFileSystemResponse`
        def ScaleUpFileSystem(request)
          body = send_request('ScaleUpFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleUpFileSystemResponse.new
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

        # 设置文件系统配额，提供UID/GID的配额设置的接口（仅部分Turbo实例能使用，若需要调用请提交工单与我们联系）

        # @param request: Request instance for SetUserQuota.
        # @type request: :class:`Tencentcloud::cfs::V20190719::SetUserQuotaRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::SetUserQuotaResponse`
        def SetUserQuota(request)
          body = send_request('SetUserQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetUserQuotaResponse.new
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

        # 本接口（SignUpCfsService）用于开通CFS服务。

        # @param request: Request instance for SignUpCfsService.
        # @type request: :class:`Tencentcloud::cfs::V20190719::SignUpCfsServiceRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::SignUpCfsServiceResponse`
        def SignUpCfsService(request)
          body = send_request('SignUpCfsService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignUpCfsServiceResponse.new
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

        # 终止生命周期任务的接口

        # @param request: Request instance for StopLifecycleDataTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::StopLifecycleDataTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::StopLifecycleDataTaskResponse`
        def StopLifecycleDataTask(request)
          body = send_request('StopLifecycleDataTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLifecycleDataTaskResponse.new
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

        # 用于终止迁移任务，可以终止等待中、运行中状态的任务。

        # @param request: Request instance for StopMigrationTask.
        # @type request: :class:`Tencentcloud::cfs::V20190719::StopMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::StopMigrationTaskResponse`
        def StopMigrationTask(request)
          body = send_request('StopMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopMigrationTaskResponse.new
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

        # 解除文件系统绑定的快照策略

        # @param request: Request instance for UnbindAutoSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UnbindAutoSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UnbindAutoSnapshotPolicyResponse`
        def UnbindAutoSnapshotPolicy(request)
          body = send_request('UnbindAutoSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindAutoSnapshotPolicyResponse.new
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

        # 更新定期自动快照策略

        # @param request: Request instance for UpdateAutoSnapshotPolicy.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateAutoSnapshotPolicyRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateAutoSnapshotPolicyResponse`
        def UpdateAutoSnapshotPolicy(request)
          body = send_request('UpdateAutoSnapshotPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAutoSnapshotPolicyResponse.new
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

        # 本接口（UpdateCfsFileSystemName）用于更新文件系统名

        # @param request: Request instance for UpdateCfsFileSystemName.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemNameRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemNameResponse`
        def UpdateCfsFileSystemName(request)
          body = send_request('UpdateCfsFileSystemName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemNameResponse.new
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

        # 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组

        # @param request: Request instance for UpdateCfsFileSystemPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemPGroupResponse`
        def UpdateCfsFileSystemPGroup(request)
          body = send_request('UpdateCfsFileSystemPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemPGroupResponse.new
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

        # 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。

        # @param request: Request instance for UpdateCfsFileSystemSizeLimit.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemSizeLimitRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemSizeLimitResponse`
        def UpdateCfsFileSystemSizeLimit(request)
          body = send_request('UpdateCfsFileSystemSizeLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemSizeLimitResponse.new
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

        # 本接口（UpdateCfsPGroup）更新权限组信息。

        # @param request: Request instance for UpdateCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsPGroupResponse`
        def UpdateCfsPGroup(request)
          body = send_request('UpdateCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsPGroupResponse.new
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

        # 本接口（UpdateCfsRule）用于更新权限规则。

        # @param request: Request instance for UpdateCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsRuleResponse`
        def UpdateCfsRule(request)
          body = send_request('UpdateCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsRuleResponse.new
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

        # 更新文件系统快照名称及保留时长

        # @param request: Request instance for UpdateCfsSnapshotAttribute.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsSnapshotAttributeRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsSnapshotAttributeResponse`
        def UpdateCfsSnapshotAttribute(request)
          body = send_request('UpdateCfsSnapshotAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsSnapshotAttributeResponse.new
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

        # 更新文件系统吞吐
        # 仅吞吐型支持此接口

        # @param request: Request instance for UpdateFileSystemBandwidthLimit.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateFileSystemBandwidthLimitRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateFileSystemBandwidthLimitResponse`
        def UpdateFileSystemBandwidthLimit(request)
          body = send_request('UpdateFileSystemBandwidthLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFileSystemBandwidthLimitResponse.new
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