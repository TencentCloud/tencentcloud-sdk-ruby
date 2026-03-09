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

module TencentCloud
  module Cetcd
    module V20220325
      # 预付费类型相关配置
      class ChargePrepaidConfig < TencentCloud::Common::AbstractModel
        # @param Period: 预付费购买周期，单位：月
        # @type Period: Integer
        # @param RenewFlag: 预付费自动续费设置：
        # NOTIFY_AND_MANUAL_RENEW：表示默认状态(用户未设置，即初始状态)， NOTIFY_AND_AUTO_RENEW：表示自动续费，DISABLE_NOTIFY_AND_MANUAL_RENEW：表示明确不自动续费(用户设置)
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # CreateEtcdInstance请求参数结构体
      class CreateEtcdInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Name: etcd实例名称
        # @type Name: String
        # @param VpcId: etcd所属vpc
        # @type VpcId: String
        # @param ServiceSubnetId: etcd对外提供访问ip地址所在子网
        # @type ServiceSubnetId: String
        # @param SubnetIds: etcd部署子网
        # @type SubnetIds: Array
        # @param EtcdVersion: etcd版本
        # @type EtcdVersion: String
        # @param Size: etcd节点个数，可选范围: 1, 3, 5, 7, 9
        # @type Size: Integer
        # @param Description: etcd集群描述信息
        # @type Description: String
        # @param AdvancedSettings: 高级设置
        # @type AdvancedSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdAdvancedSettings`
        # @param ChargeType: 付费类型：
        # PREPAID 预付费
        # POSTPAID_BY_HOUR 后付费按小时付费
        # @type ChargeType: String
        # @param ChargePrepaid: 预付费相关配置
        # @type ChargePrepaid: :class:`Tencentcloud::Cetcd.v20220325.models.ChargePrepaidConfig`
        # @param DiskSize: 存储大小GB
        # @type DiskSize: Integer
        # @param DeletionProtection: 删除保护，true 删除保护开启；false删除保护关闭
        # @type DeletionProtection: Boolean

        attr_accessor :Name, :VpcId, :ServiceSubnetId, :SubnetIds, :EtcdVersion, :Size, :Description, :AdvancedSettings, :ChargeType, :ChargePrepaid, :DiskSize, :DeletionProtection

        def initialize(name=nil, vpcid=nil, servicesubnetid=nil, subnetids=nil, etcdversion=nil, size=nil, description=nil, advancedsettings=nil, chargetype=nil, chargeprepaid=nil, disksize=nil, deletionprotection=nil)
          @Name = name
          @VpcId = vpcid
          @ServiceSubnetId = servicesubnetid
          @SubnetIds = subnetids
          @EtcdVersion = etcdversion
          @Size = size
          @Description = description
          @AdvancedSettings = advancedsettings
          @ChargeType = chargetype
          @ChargePrepaid = chargeprepaid
          @DiskSize = disksize
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @Name = params['Name']
          @VpcId = params['VpcId']
          @ServiceSubnetId = params['ServiceSubnetId']
          @SubnetIds = params['SubnetIds']
          @EtcdVersion = params['EtcdVersion']
          @Size = params['Size']
          @Description = params['Description']
          unless params['AdvancedSettings'].nil?
            @AdvancedSettings = EtcdAdvancedSettings.new
            @AdvancedSettings.deserialize(params['AdvancedSettings'])
          end
          @ChargeType = params['ChargeType']
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaidConfig.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
          @DiskSize = params['DiskSize']
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # CreateEtcdInstance返回参数结构体
      class CreateEtcdInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 创建etcd实例的Id
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEtcdSnapshotPolicy请求参数结构体
      class CreateEtcdSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例Id
        # @type InstanceId: String
        # @param SnapshotPolicyName: 快照策略名
        # @type SnapshotPolicyName: String
        # @param BackupSettings: 备份参数设置
        # @type BackupSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdBackupSettings`

        attr_accessor :InstanceId, :SnapshotPolicyName, :BackupSettings

        def initialize(instanceid=nil, snapshotpolicyname=nil, backupsettings=nil)
          @InstanceId = instanceid
          @SnapshotPolicyName = snapshotpolicyname
          @BackupSettings = backupsettings
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SnapshotPolicyName = params['SnapshotPolicyName']
          unless params['BackupSettings'].nil?
            @BackupSettings = EtcdBackupSettings.new
            @BackupSettings.deserialize(params['BackupSettings'])
          end
        end
      end

      # CreateEtcdSnapshotPolicy返回参数结构体
      class CreateEtcdSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateEtcdSnapshot请求参数结构体
      class CreateEtcdSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例id
        # @type InstanceId: String
        # @param SnapshotName: etcd快照名称
        # @type SnapshotName: String
        # @param User: 备份用户名
        # @type User: String
        # @param Password: 备份密码
        # @type Password: String

        attr_accessor :InstanceId, :SnapshotName, :User, :Password

        def initialize(instanceid=nil, snapshotname=nil, user=nil, password=nil)
          @InstanceId = instanceid
          @SnapshotName = snapshotname
          @User = user
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SnapshotName = params['SnapshotName']
          @User = params['User']
          @Password = params['Password']
        end
      end

      # CreateEtcdSnapshot返回参数结构体
      class CreateEtcdSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdAvailableVersions请求参数结构体
      class DescribeEtcdAvailableVersionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEtcdAvailableVersions返回参数结构体
      class DescribeEtcdAvailableVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Versions: 支持的版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Versions, :RequestId

        def initialize(versions=nil, requestid=nil)
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              versioninstance_tmp = VersionInstance.new
              versioninstance_tmp.deserialize(i)
              @Versions << versioninstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdCreatingProgress请求参数结构体
      class DescribeEtcdCreatingProgressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeEtcdCreatingProgress返回参数结构体
      class DescribeEtcdCreatingProgressResponse < TencentCloud::Common::AbstractModel
        # @param Steps: 创建进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Steps: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Steps, :RequestId

        def initialize(steps=nil, requestid=nil)
          @Steps = steps
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              taskstepinfo_tmp = TaskStepInfo.new
              taskstepinfo_tmp.deserialize(i)
              @Steps << taskstepinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdCredentials请求参数结构体
      class DescribeEtcdCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeEtcdCredentials返回参数结构体
      class DescribeEtcdCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 访问凭证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Credentials: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :RequestId

        def initialize(credentials=nil, requestid=nil)
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = []
            params['Credentials'].each do |i|
              etcdcredential_tmp = EtcdCredential.new
              etcdcredential_tmp.deserialize(i)
              @Credentials << etcdcredential_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdInstances请求参数结构体
      class DescribeEtcdInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如：etcd-xxxxxxxx。参数不支持同时指定InstanceIds和Filters
        # @type InstanceIds: Array
        # @param Filters: 支持按照vpc-id和instance-id过滤。参数不支持同时指定InstanceIds和Filters
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，最大值为50
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit

        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEtcdInstances返回参数结构体
      class DescribeEtcdInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Etcds: etcd实例详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Etcds: Array
        # @param TotalCount: 符合条件的实例数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Etcds, :TotalCount, :RequestId

        def initialize(etcds=nil, totalcount=nil, requestid=nil)
          @Etcds = etcds
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Etcds'].nil?
            @Etcds = []
            params['Etcds'].each do |i|
              etcd_tmp = Etcd.new
              etcd_tmp.deserialize(i)
              @Etcds << etcd_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdQuota请求参数结构体
      class DescribeEtcdQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEtcdQuota返回参数结构体
      class DescribeEtcdQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaLimit: 当前配额限制
        # @type QuotaLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaLimit, :RequestId

        def initialize(quotalimit=nil, requestid=nil)
          @QuotaLimit = quotalimit
          @RequestId = requestid
        end

        def deserialize(params)
          @QuotaLimit = params['QuotaLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdRegions请求参数结构体
      class DescribeEtcdRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEtcdRegions返回参数结构体
      class DescribeEtcdRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Regions: 支持的地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Regions, :RequestId

        def initialize(regions=nil, requestid=nil)
          @Regions = regions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              regioninstance_tmp = RegionInstance.new
              regioninstance_tmp.deserialize(i)
              @Regions << regioninstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdSnapshotPolicies请求参数结构体
      class DescribeEtcdSnapshotPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeEtcdSnapshotPolicies返回参数结构体
      class DescribeEtcdSnapshotPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotPolicies: 备份策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotPolicies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotPolicies, :RequestId

        def initialize(snapshotpolicies=nil, requestid=nil)
          @SnapshotPolicies = snapshotpolicies
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SnapshotPolicies'].nil?
            @SnapshotPolicies = []
            params['SnapshotPolicies'].each do |i|
              etcdsnapshotpolicy_tmp = EtcdSnapshotPolicy.new
              etcdsnapshotpolicy_tmp.deserialize(i)
              @SnapshotPolicies << etcdsnapshotpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdSnapshots请求参数结构体
      class DescribeEtcdSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeEtcdSnapshots返回参数结构体
      class DescribeEtcdSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param Snapshots: etcd快照列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Snapshots: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Snapshots, :RequestId

        def initialize(snapshots=nil, requestid=nil)
          @Snapshots = snapshots
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Snapshots'].nil?
            @Snapshots = []
            params['Snapshots'].each do |i|
              etcdsnapshot_tmp = EtcdSnapshot.new
              etcdsnapshot_tmp.deserialize(i)
              @Snapshots << etcdsnapshot_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEtcdTasks请求参数结构体
      class DescribeEtcdTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务ID
        # @type TaskID: String
        # @param Filters: taskType：
        #     按照任务类型过滤，当前支持enable_internet，disable_internet, restore_remote_snapshot
        # resourceId：
        #     按照资源ID过滤
        # lifeState：
        #     按照任务状态过滤，当前支持process， done
        # @type Filters: Array

        attr_accessor :TaskID, :Filters

        def initialize(taskid=nil, filters=nil)
          @TaskID = taskid
          @Filters = filters
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeEtcdTasks返回参数结构体
      class DescribeEtcdTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId

        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              etcdtaskinfo_tmp = EtcdTaskInfo.new
              etcdtaskinfo_tmp.deserialize(i)
              @Tasks << etcdtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRPCMethodList请求参数结构体
      class DescribeRPCMethodListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例ID
        # @type InstanceId: String
        # @param PodName: etcd集群pod名称
        # @type PodName: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 最大长度
        # @type Limit: Integer

        attr_accessor :InstanceId, :PodName, :Offset, :Limit

        def initialize(instanceid=nil, podname=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @PodName = podname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PodName = params['PodName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRPCMethodList返回参数结构体
      class DescribeRPCMethodListResponse < TencentCloud::Common::AbstractModel
        # @param MethodList: gRPC方法列表
        # @type MethodList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MethodList, :RequestId

        def initialize(methodlist=nil, requestid=nil)
          @MethodList = methodlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MethodList'].nil?
            @MethodList = []
            params['MethodList'].each do |i|
              rpcmethod_tmp = RPCMethod.new
              rpcmethod_tmp.deserialize(i)
              @MethodList << rpcmethod_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableEtcdInstanceDeletionProtection请求参数结构体
      class DisableEtcdInstanceDeletionProtectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DisableEtcdInstanceDeletionProtection返回参数结构体
      class DisableEtcdInstanceDeletionProtectionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableEtcdInstanceDeletionProtection请求参数结构体
      class EnableEtcdInstanceDeletionProtectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # EnableEtcdInstanceDeletionProtection返回参数结构体
      class EnableEtcdInstanceDeletionProtectionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # etcd信息
      class Etcd < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 实例名
        # @type Name: String
        # @param Description: 实例描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param VpcId: 实例所属vpcId
        # @type VpcId: String
        # @param Version: etcd版本
        # @type Version: String
        # @param Status: 实例状态
        # @type Status: String
        # @param Members: etcd成员信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Members: Array
        # @param Endpoint: 对外访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoint: String
        # @param DeletionProtection: 删除保护，true 删除保护开启；false删除保护关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionProtection: Boolean

        attr_accessor :InstanceId, :Name, :Description, :VpcId, :Version, :Status, :Members, :Endpoint, :DeletionProtection

        def initialize(instanceid=nil, name=nil, description=nil, vpcid=nil, version=nil, status=nil, members=nil, endpoint=nil, deletionprotection=nil)
          @InstanceId = instanceid
          @Name = name
          @Description = description
          @VpcId = vpcid
          @Version = version
          @Status = status
          @Members = members
          @Endpoint = endpoint
          @DeletionProtection = deletionprotection
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Description = params['Description']
          @VpcId = params['VpcId']
          @Version = params['Version']
          @Status = params['Status']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              etcdmember_tmp = EtcdMember.new
              etcdmember_tmp.deserialize(i)
              @Members << etcdmember_tmp
            end
          end
          @Endpoint = params['Endpoint']
          @DeletionProtection = params['DeletionProtection']
        end
      end

      # etcd高级设置
      class EtcdAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param SecuritySettings: 安全相关设置
        # @type SecuritySettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdSecuritySettings`
        # @param AutoCompactionSettings: 自动压缩设置
        # @type AutoCompactionSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdAutoCompactionSettings`
        # @param MonitorSettings: 监控设置
        # @type MonitorSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdMonitorSettings`
        # @param BackupSettings: 备份相关设置
        # @type BackupSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdBackupSettings`
        # @param CustomDomains: 自定义域名
        # @type CustomDomains: String
        # @param CustomIPs: 自定义ip
        # @type CustomIPs: String

        attr_accessor :SecuritySettings, :AutoCompactionSettings, :MonitorSettings, :BackupSettings, :CustomDomains, :CustomIPs

        def initialize(securitysettings=nil, autocompactionsettings=nil, monitorsettings=nil, backupsettings=nil, customdomains=nil, customips=nil)
          @SecuritySettings = securitysettings
          @AutoCompactionSettings = autocompactionsettings
          @MonitorSettings = monitorsettings
          @BackupSettings = backupsettings
          @CustomDomains = customdomains
          @CustomIPs = customips
        end

        def deserialize(params)
          unless params['SecuritySettings'].nil?
            @SecuritySettings = EtcdSecuritySettings.new
            @SecuritySettings.deserialize(params['SecuritySettings'])
          end
          unless params['AutoCompactionSettings'].nil?
            @AutoCompactionSettings = EtcdAutoCompactionSettings.new
            @AutoCompactionSettings.deserialize(params['AutoCompactionSettings'])
          end
          unless params['MonitorSettings'].nil?
            @MonitorSettings = EtcdMonitorSettings.new
            @MonitorSettings.deserialize(params['MonitorSettings'])
          end
          unless params['BackupSettings'].nil?
            @BackupSettings = EtcdBackupSettings.new
            @BackupSettings.deserialize(params['BackupSettings'])
          end
          @CustomDomains = params['CustomDomains']
          @CustomIPs = params['CustomIPs']
        end
      end

      # etcd自动压缩设置
      class EtcdAutoCompactionSettings < TencentCloud::Common::AbstractModel
        # @param AutoCompactionMode: 自动压缩模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoCompactionMode: String
        # @param AutoCompactionRetention: 自动压缩保留时间/revison数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoCompactionRetention: String

        attr_accessor :AutoCompactionMode, :AutoCompactionRetention

        def initialize(autocompactionmode=nil, autocompactionretention=nil)
          @AutoCompactionMode = autocompactionmode
          @AutoCompactionRetention = autocompactionretention
        end

        def deserialize(params)
          @AutoCompactionMode = params['AutoCompactionMode']
          @AutoCompactionRetention = params['AutoCompactionRetention']
        end
      end

      # etcd备份设置
      class EtcdBackupSettings < TencentCloud::Common::AbstractModel
        # @param BackupInterval: 备份间隔(s)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupInterval: Integer
        # @param MaxBackupCount: 最大备份个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBackupCount: Integer
        # @param User: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param CosBucketName: COS桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosBucketName: String

        attr_accessor :BackupInterval, :MaxBackupCount, :User, :Password, :CosBucketName

        def initialize(backupinterval=nil, maxbackupcount=nil, user=nil, password=nil, cosbucketname=nil)
          @BackupInterval = backupinterval
          @MaxBackupCount = maxbackupcount
          @User = user
          @Password = password
          @CosBucketName = cosbucketname
        end

        def deserialize(params)
          @BackupInterval = params['BackupInterval']
          @MaxBackupCount = params['MaxBackupCount']
          @User = params['User']
          @Password = params['Password']
          @CosBucketName = params['CosBucketName']
        end
      end

      # etcd访问凭证
      class EtcdCredential < TencentCloud::Common::AbstractModel
        # @param CACert: CA证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CACert: String
        # @param Cert: 证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cert: String
        # @param Key: 私钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String

        attr_accessor :CACert, :Cert, :Key

        def initialize(cacert=nil, cert=nil, key=nil)
          @CACert = cacert
          @Cert = cert
          @Key = key
        end

        def deserialize(params)
          @CACert = params['CACert']
          @Cert = params['Cert']
          @Key = params['Key']
        end
      end

      # etcd集群成员信息
      class EtcdMember < TencentCloud::Common::AbstractModel
        # @param Name: 节点名字
        # @type Name: String
        # @param Version: 节点当前版本
        # @type Version: String
        # @param Zone: 所属可用区
        # @type Zone: String
        # @param Status: 节点状态
        # @type Status: String

        attr_accessor :Name, :Version, :Zone, :Status

        def initialize(name=nil, version=nil, zone=nil, status=nil)
          @Name = name
          @Version = version
          @Zone = zone
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @Zone = params['Zone']
          @Status = params['Status']
        end
      end

      # etcd监控设置
      class EtcdMonitorSettings < TencentCloud::Common::AbstractModel
        # @param PrometheusCreationParam: Prometheus创建参数
        # @type PrometheusCreationParam: :class:`Tencentcloud::Cetcd.v20220325.models.PrometheusCreationParam`
        # @param ExistedPrometheusInstanceId: Prometheus Id
        # @type ExistedPrometheusInstanceId: String

        attr_accessor :PrometheusCreationParam, :ExistedPrometheusInstanceId

        def initialize(prometheuscreationparam=nil, existedprometheusinstanceid=nil)
          @PrometheusCreationParam = prometheuscreationparam
          @ExistedPrometheusInstanceId = existedprometheusinstanceid
        end

        def deserialize(params)
          unless params['PrometheusCreationParam'].nil?
            @PrometheusCreationParam = PrometheusCreationParam.new
            @PrometheusCreationParam.deserialize(params['PrometheusCreationParam'])
          end
          @ExistedPrometheusInstanceId = params['ExistedPrometheusInstanceId']
        end
      end

      # etcd安全相关设置
      class EtcdSecuritySettings < TencentCloud::Common::AbstractModel
        # @param Https: 是否启用https
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: Boolean
        # @param ClientCertAuth: 启用客户端证书认证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertAuth: Boolean

        attr_accessor :Https, :ClientCertAuth

        def initialize(https=nil, clientcertauth=nil)
          @Https = https
          @ClientCertAuth = clientcertauth
        end

        def deserialize(params)
          @Https = params['Https']
          @ClientCertAuth = params['ClientCertAuth']
        end
      end

      # etcd快照
      class EtcdSnapshot < TencentCloud::Common::AbstractModel
        # @param Name: 快照名称
        # @type Name: String
        # @param Size: 快照大小
        # @type Size: Integer

        attr_accessor :Name, :Size

        def initialize(name=nil, size=nil)
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
        end
      end

      # etcd快照策略
      class EtcdSnapshotPolicy < TencentCloud::Common::AbstractModel
        # @param Name: 快照策略名称
        # @type Name: String
        # @param BackupSettings: 备份参数
        # @type BackupSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdBackupSettings`

        attr_accessor :Name, :BackupSettings

        def initialize(name=nil, backupsettings=nil)
          @Name = name
          @BackupSettings = backupsettings
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['BackupSettings'].nil?
            @BackupSettings = EtcdBackupSettings.new
            @BackupSettings.deserialize(params['BackupSettings'])
          end
        end
      end

      # etcd task信息
      class EtcdTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务ID
        # @type TaskID: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param ResourceID: 资源ID
        # @type ResourceID: String
        # @param LifeState: 任务状态
        # @type LifeState: String
        # @param CreatedAt: 任务创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 任务更新时间
        # @type UpdatedAt: String

        attr_accessor :TaskID, :TaskType, :ResourceID, :LifeState, :CreatedAt, :UpdatedAt

        def initialize(taskid=nil, tasktype=nil, resourceid=nil, lifestate=nil, createdat=nil, updatedat=nil)
          @TaskID = taskid
          @TaskType = tasktype
          @ResourceID = resourceid
          @LifeState = lifestate
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
          @ResourceID = params['ResourceID']
          @LifeState = params['LifeState']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 实例配置信息
      class InstanceConfig < TencentCloud::Common::AbstractModel
        # @param Cpu: 核数
        # @type Cpu: Integer
        # @param Mem: 内存大小Gi
        # @type Mem: Integer
        # @param Size: 集群规模
        # @type Size: Integer

        attr_accessor :Cpu, :Mem, :Size

        def initialize(cpu=nil, mem=nil, size=nil)
          @Cpu = cpu
          @Mem = mem
          @Size = size
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Size = params['Size']
        end
      end

      # ModifyEtcdAttribute请求参数结构体
      class ModifyEtcdAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 实例名
        # @type Name: String
        # @param Description: 实例描述
        # @type Description: String
        # @param Password: root账号密码
        # @type Password: String
        # @param EnableAuth: 同步auth状态
        # @type EnableAuth: Boolean
        # @param EnableDeleteCos: 删除集群关联的cos数据
        # @type EnableDeleteCos: Boolean
        # @param SubnetIds: 子网id，数组
        # @type SubnetIds: Array

        attr_accessor :InstanceId, :Name, :Description, :Password, :EnableAuth, :EnableDeleteCos, :SubnetIds

        def initialize(instanceid=nil, name=nil, description=nil, password=nil, enableauth=nil, enabledeletecos=nil, subnetids=nil)
          @InstanceId = instanceid
          @Name = name
          @Description = description
          @Password = password
          @EnableAuth = enableauth
          @EnableDeleteCos = enabledeletecos
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Description = params['Description']
          @Password = params['Password']
          @EnableAuth = params['EnableAuth']
          @EnableDeleteCos = params['EnableDeleteCos']
          @SubnetIds = params['SubnetIds']
        end
      end

      # ModifyEtcdAttribute返回参数结构体
      class ModifyEtcdAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyEtcdConfiguration请求参数结构体
      class ModifyEtcdConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param AutoCompactionSettings: 自动压缩设置
        # @type AutoCompactionSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdAutoCompactionSettings`
        # @param MonitorSettings: 监控设置
        # @type MonitorSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdMonitorSettings`
        # @param ChargeType: 计费类型
        # PREPAID：预付费
        # POSTPAID_BY_HOUR：后付费
        # @type ChargeType: String
        # @param InstanceConfig: 实例配置信息
        # @type InstanceConfig: :class:`Tencentcloud::Cetcd.v20220325.models.InstanceConfig`
        # @param PrepaidConfig: 预付费配置信息
        # @type PrepaidConfig: :class:`Tencentcloud::Cetcd.v20220325.models.ChargePrepaidConfig`

        attr_accessor :InstanceId, :AutoCompactionSettings, :MonitorSettings, :ChargeType, :InstanceConfig, :PrepaidConfig

        def initialize(instanceid=nil, autocompactionsettings=nil, monitorsettings=nil, chargetype=nil, instanceconfig=nil, prepaidconfig=nil)
          @InstanceId = instanceid
          @AutoCompactionSettings = autocompactionsettings
          @MonitorSettings = monitorsettings
          @ChargeType = chargetype
          @InstanceConfig = instanceconfig
          @PrepaidConfig = prepaidconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AutoCompactionSettings'].nil?
            @AutoCompactionSettings = EtcdAutoCompactionSettings.new
            @AutoCompactionSettings.deserialize(params['AutoCompactionSettings'])
          end
          unless params['MonitorSettings'].nil?
            @MonitorSettings = EtcdMonitorSettings.new
            @MonitorSettings.deserialize(params['MonitorSettings'])
          end
          @ChargeType = params['ChargeType']
          unless params['InstanceConfig'].nil?
            @InstanceConfig = InstanceConfig.new
            @InstanceConfig.deserialize(params['InstanceConfig'])
          end
          unless params['PrepaidConfig'].nil?
            @PrepaidConfig = ChargePrepaidConfig.new
            @PrepaidConfig.deserialize(params['PrepaidConfig'])
          end
        end
      end

      # ModifyEtcdConfiguration返回参数结构体
      class ModifyEtcdConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyEtcdSnapshotPolicy请求参数结构体
      class ModifyEtcdSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: etcd实例id
        # @type InstanceId: String
        # @param SnapshotPolicyName: 快照策略名称
        # @type SnapshotPolicyName: String
        # @param BackupSettings: 备份参数设置
        # @type BackupSettings: :class:`Tencentcloud::Cetcd.v20220325.models.EtcdBackupSettings`

        attr_accessor :InstanceId, :SnapshotPolicyName, :BackupSettings

        def initialize(instanceid=nil, snapshotpolicyname=nil, backupsettings=nil)
          @InstanceId = instanceid
          @SnapshotPolicyName = snapshotpolicyname
          @BackupSettings = backupsettings
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SnapshotPolicyName = params['SnapshotPolicyName']
          unless params['BackupSettings'].nil?
            @BackupSettings = EtcdBackupSettings.new
            @BackupSettings.deserialize(params['BackupSettings'])
          end
        end
      end

      # ModifyEtcdSnapshotPolicy返回参数结构体
      class ModifyEtcdSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # Prometheus创建参数
      class PrometheusCreationParam < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param DataRetention: 保存时长，只支持天单位
        # 12d = 12天
        # @type DataRetention: Integer
        # @param GrafanaUserName: grafana用户名
        # @type GrafanaUserName: String
        # @param GrafanaPassword: grafana密码
        # @type GrafanaPassword: String

        attr_accessor :SubnetId, :DataRetention, :GrafanaUserName, :GrafanaPassword

        def initialize(subnetid=nil, dataretention=nil, grafanausername=nil, grafanapassword=nil)
          @SubnetId = subnetid
          @DataRetention = dataretention
          @GrafanaUserName = grafanausername
          @GrafanaPassword = grafanapassword
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @DataRetention = params['DataRetention']
          @GrafanaUserName = params['GrafanaUserName']
          @GrafanaPassword = params['GrafanaPassword']
        end
      end

      # RPC方法信息
      class RPCMethod < TencentCloud::Common::AbstractModel
        # @param Name: 方法名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # 地域属性信息
      class RegionInstance < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param Status: 地域状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param FeatureGates: 地域特性开关(按照JSON的形式返回所有属性)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureGates: String
        # @param Alias: 地域简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Remark: 地域白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :RegionName, :RegionId, :Status, :FeatureGates, :Alias, :Remark

        def initialize(regionname=nil, regionid=nil, status=nil, featuregates=nil, _alias=nil, remark=nil)
          @RegionName = regionname
          @RegionId = regionid
          @Status = status
          @FeatureGates = featuregates
          @Alias = _alias
          @Remark = remark
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @Status = params['Status']
          @FeatureGates = params['FeatureGates']
          @Alias = params['Alias']
          @Remark = params['Remark']
        end
      end

      # ResizeEtcdInstance请求参数结构体
      class ResizeEtcdInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Size: etcd节点个数
        # @type Size: Integer

        attr_accessor :InstanceId, :Size

        def initialize(instanceid=nil, size=nil)
          @InstanceId = instanceid
          @Size = size
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Size = params['Size']
        end
      end

      # ResizeEtcdInstance返回参数结构体
      class ResizeEtcdInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 任务步骤信息
      class TaskStepInfo < TencentCloud::Common::AbstractModel
        # @param Step: 步骤名称
        # @type Step: String
        # @param LifeState: 生命周期
        # pending : 步骤未开始
        # running: 步骤执行中
        # success: 步骤成功完成
        # failed: 步骤失败
        # @type LifeState: String
        # @param StartAt: 步骤开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartAt: String
        # @param EndAt: 步骤结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndAt: String
        # @param FailedMsg: 若步骤生命周期为failed,则此字段显示错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedMsg: String

        attr_accessor :Step, :LifeState, :StartAt, :EndAt, :FailedMsg

        def initialize(step=nil, lifestate=nil, startat=nil, endat=nil, failedmsg=nil)
          @Step = step
          @LifeState = lifestate
          @StartAt = startat
          @EndAt = endat
          @FailedMsg = failedmsg
        end

        def deserialize(params)
          @Step = params['Step']
          @LifeState = params['LifeState']
          @StartAt = params['StartAt']
          @EndAt = params['EndAt']
          @FailedMsg = params['FailedMsg']
        end
      end

      # UpgradeEtcdInstance请求参数结构体
      class UpgradeEtcdInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param EtcdVersion: etcd版本
        # @type EtcdVersion: String

        attr_accessor :InstanceId, :EtcdVersion

        def initialize(instanceid=nil, etcdversion=nil)
          @InstanceId = instanceid
          @EtcdVersion = etcdversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EtcdVersion = params['EtcdVersion']
        end
      end

      # UpgradeEtcdInstance返回参数结构体
      class UpgradeEtcdInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 版本信息
      class VersionInstance < TencentCloud::Common::AbstractModel
        # @param Name: 版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Version: 版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Remark: Remark信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Name, :Version, :Remark

        def initialize(name=nil, version=nil, remark=nil)
          @Name = name
          @Version = version
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @Remark = params['Remark']
        end
      end

    end
  end
end

