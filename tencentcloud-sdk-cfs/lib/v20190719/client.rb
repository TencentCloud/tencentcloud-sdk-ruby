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
  module Cfs
    module V20190719
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-19'
            api_endpoint = 'cfs.tencentcloudapi.com'
            sdk_version = 'CFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
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

        # 用于创建迁移任务。
        # 此接口需提交工单，开启白名单之后才能使用。

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

        # 本接口（DeleteCfsPGroup）用于删除权限组。

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

        # 用于删除迁移任务。
        # 此接口需提交工单，开启白名单之后才能使用。

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

        # 本接口（DeleteMountTarget）用于删除挂载点

        # @param request: Request instance for DeleteMountTarget.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteMountTargetRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteMountTargetResponse`
        def DeleteMountTarget(request)
          body = send_request('DeleteMountTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMountTargetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定条件删除文件系统配额

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
        # 此接口需提交工单，开启白名单之后才能使用。

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

        # 查询文件系统配额

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

        # 用来设置文件系统扩容策略

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

        # 该接口用于对turbo 文件系统扩容使用

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

        # 设置文件系统配额，提供UID/GID的配额设置的接口

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

        # 用于终止迁移任务。
        # 此接口需提交工单，开启白名单之后才能使用。

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


      end
    end
  end
end