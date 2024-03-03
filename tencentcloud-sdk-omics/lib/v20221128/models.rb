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

module TencentCloud
  module Omics
    module V20221128
      # 应用版本。
      class ApplicationVersion < TencentCloud::Common::AbstractModel
        # @param Type: 版本类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ApplicationVersionId: 版本ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationVersionId: String
        # @param Name: 发布名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 发布描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Entrypoint: 入口文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Entrypoint: String
        # @param CreateTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param CreatorName: 创建者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorName: String
        # @param CreatorId: 创建者ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorId: String
        # @param GitInfo: Git信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitInfo: String

        attr_accessor :Type, :ApplicationVersionId, :Name, :Description, :Entrypoint, :CreateTime, :CreatorName, :CreatorId, :GitInfo

        def initialize(type=nil, applicationversionid=nil, name=nil, description=nil, entrypoint=nil, createtime=nil, creatorname=nil, creatorid=nil, gitinfo=nil)
          @Type = type
          @ApplicationVersionId = applicationversionid
          @Name = name
          @Description = description
          @Entrypoint = entrypoint
          @CreateTime = createtime
          @CreatorName = creatorname
          @CreatorId = creatorid
          @GitInfo = gitinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @ApplicationVersionId = params['ApplicationVersionId']
          @Name = params['Name']
          @Description = params['Description']
          @Entrypoint = params['Entrypoint']
          @CreateTime = params['CreateTime']
          @CreatorName = params['CreatorName']
          @CreatorId = params['CreatorId']
          @GitInfo = params['GitInfo']
        end
      end

      # 云服务器配置。
      class CVMOption < TencentCloud::Common::AbstractModel
        # @param Zone: 云服务器可用区。
        # @type Zone: String
        # @param InstanceType: 云服务器实例规格。
        # @type InstanceType: String

        attr_accessor :Zone, :InstanceType

        def initialize(zone=nil, instancetype=nil)
          @Zone = zone
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
        end
      end

      # 缓存信息。
      class CacheInfo < TencentCloud::Common::AbstractModel
        # @param CacheClearDelay: 缓存清理时间(小时)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheClearDelay: Integer
        # @param CacheClearTime: 缓存清理计划时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheClearTime: String
        # @param CacheCleared: 缓存是否已被清理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheCleared: Boolean

        attr_accessor :CacheClearDelay, :CacheClearTime, :CacheCleared

        def initialize(cachecleardelay=nil, cachecleartime=nil, cachecleared=nil)
          @CacheClearDelay = cachecleardelay
          @CacheClearTime = cachecleartime
          @CacheCleared = cachecleared
        end

        def deserialize(params)
          @CacheClearDelay = params['CacheClearDelay']
          @CacheClearTime = params['CacheClearTime']
          @CacheCleared = params['CacheCleared']
        end
      end

      # 计算集群配置。
      class ClusterOption < TencentCloud::Common::AbstractModel
        # @param Zone: 计算集群可用区。
        # @type Zone: String
        # @param Type: 计算集群类型，取值范围：
        # - KUBERNETES
        # @type Type: String
        # @param ServiceCidr: 计算集群Service CIDR，不能与VPC网段重合。
        # @type ServiceCidr: String
        # @param ResourceQuota: 资源配额。
        # @type ResourceQuota: :class:`Tencentcloud::Omics.v20221128.models.ResourceQuota`
        # @param LimitRange: 限制范围。
        # @type LimitRange: :class:`Tencentcloud::Omics.v20221128.models.LimitRange`

        attr_accessor :Zone, :Type, :ServiceCidr, :ResourceQuota, :LimitRange

        def initialize(zone=nil, type=nil, servicecidr=nil, resourcequota=nil, limitrange=nil)
          @Zone = zone
          @Type = type
          @ServiceCidr = servicecidr
          @ResourceQuota = resourcequota
          @LimitRange = limitrange
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Type = params['Type']
          @ServiceCidr = params['ServiceCidr']
          unless params['ResourceQuota'].nil?
            @ResourceQuota = ResourceQuota.new
            @ResourceQuota.deserialize(params['ResourceQuota'])
          end
          unless params['LimitRange'].nil?
            @LimitRange = LimitRange.new
            @LimitRange.deserialize(params['LimitRange'])
          end
        end
      end

      # CreateEnvironment请求参数结构体
      class CreateEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param Name: 环境名称。
        # @type Name: String
        # @param Config: 环境配置信息。
        # @type Config: :class:`Tencentcloud::Omics.v20221128.models.EnvironmentConfig`
        # @param Description: 环境描述。
        # @type Description: String
        # @param IsDefault: 是否为默认环境。
        # @type IsDefault: Boolean

        attr_accessor :Name, :Config, :Description, :IsDefault

        def initialize(name=nil, config=nil, description=nil, isdefault=nil)
          @Name = name
          @Config = config
          @Description = description
          @IsDefault = isdefault
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Config'].nil?
            @Config = EnvironmentConfig.new
            @Config.deserialize(params['Config'])
          end
          @Description = params['Description']
          @IsDefault = params['IsDefault']
        end
      end

      # CreateEnvironment返回参数结构体
      class CreateEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param WorkflowUuid: 工作流UUID。
        # @type WorkflowUuid: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentId, :WorkflowUuid, :RequestId

        def initialize(environmentid=nil, workflowuuid=nil, requestid=nil)
          @EnvironmentId = environmentid
          @WorkflowUuid = workflowuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @WorkflowUuid = params['WorkflowUuid']
          @RequestId = params['RequestId']
        end
      end

      # CreateVolume请求参数结构体
      class CreateVolumeRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param Name: 名称。
        # @type Name: String
        # @param Type: 缓存卷类型，取值范围：
        # * SHARED：多点挂载共享存储
        # @type Type: String
        # @param Spec: 缓存卷规格，取值范围：

        # - SD：通用标准型
        # - HP：通用性能型
        # - TB：turbo标准型
        # - TP：turbo性能型
        # @type Spec: String
        # @param Description: 描述。
        # @type Description: String
        # @param Capacity: 缓存卷大小（GB），Turbo系列需要指定。
        # @type Capacity: Integer

        attr_accessor :EnvironmentId, :Name, :Type, :Spec, :Description, :Capacity

        def initialize(environmentid=nil, name=nil, type=nil, spec=nil, description=nil, capacity=nil)
          @EnvironmentId = environmentid
          @Name = name
          @Type = type
          @Spec = spec
          @Description = description
          @Capacity = capacity
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @Type = params['Type']
          @Spec = params['Spec']
          @Description = params['Description']
          @Capacity = params['Capacity']
        end
      end

      # CreateVolume返回参数结构体
      class CreateVolumeResponse < TencentCloud::Common::AbstractModel
        # @param VolumeId: 缓存卷ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VolumeId, :RequestId

        def initialize(volumeid=nil, requestid=nil)
          @VolumeId = volumeid
          @RequestId = requestid
        end

        def deserialize(params)
          @VolumeId = params['VolumeId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库配置。
      class DatabaseOption < TencentCloud::Common::AbstractModel
        # @param Zone: 数据库可用区。
        # @type Zone: String

        attr_accessor :Zone

        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # DeleteEnvironment请求参数结构体
      class DeleteEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String

        attr_accessor :EnvironmentId

        def initialize(environmentid=nil)
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # DeleteEnvironment返回参数结构体
      class DeleteEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param WorkflowUuid: 工作流UUID。
        # @type WorkflowUuid: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkflowUuid, :RequestId

        def initialize(workflowuuid=nil, requestid=nil)
          @WorkflowUuid = workflowuuid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkflowUuid = params['WorkflowUuid']
          @RequestId = params['RequestId']
        end
      end

      # DeleteVolumeData请求参数结构体
      class DeleteVolumeDataRequest < TencentCloud::Common::AbstractModel
        # @param VolumeId: 缓存卷ID。
        # @type VolumeId: String
        # @param Path: 需要删除的路径
        # @type Path: String

        attr_accessor :VolumeId, :Path

        def initialize(volumeid=nil, path=nil)
          @VolumeId = volumeid
          @Path = path
        end

        def deserialize(params)
          @VolumeId = params['VolumeId']
          @Path = params['Path']
        end
      end

      # DeleteVolumeData返回参数结构体
      class DeleteVolumeDataResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteVolume请求参数结构体
      class DeleteVolumeRequest < TencentCloud::Common::AbstractModel
        # @param VolumeId: 缓存卷ID。
        # @type VolumeId: String

        attr_accessor :VolumeId

        def initialize(volumeid=nil)
          @VolumeId = volumeid
        end

        def deserialize(params)
          @VolumeId = params['VolumeId']
        end
      end

      # DeleteVolume返回参数结构体
      class DeleteVolumeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - EnvironmentId：环境ID
        # - Name：名称
        # - Status：环境状态
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的数量。
        # @type TotalCount: Integer
        # @param Environments: 环境详情列表。
        # @type Environments: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Environments, :RequestId

        def initialize(totalcount=nil, environments=nil, requestid=nil)
          @TotalCount = totalcount
          @Environments = environments
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Environments'].nil?
            @Environments = []
            params['Environments'].each do |i|
              environment_tmp = Environment.new
              environment_tmp.deserialize(i)
              @Environments << environment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRunGroups请求参数结构体
      class DescribeRunGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - Name：任务批次名称
        # - RunGroupId：任务批次ID
        # - Status：任务批次状态
        # @type Filters: Array

        attr_accessor :ProjectId, :Limit, :Offset, :Filters

        def initialize(projectid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeRunGroups返回参数结构体
      class DescribeRunGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的数量。
        # @type TotalCount: Integer
        # @param RunGroups: 任务批次列表。
        # @type RunGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RunGroups, :RequestId

        def initialize(totalcount=nil, rungroups=nil, requestid=nil)
          @TotalCount = totalcount
          @RunGroups = rungroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RunGroups'].nil?
            @RunGroups = []
            params['RunGroups'].each do |i|
              rungroup_tmp = RunGroup.new
              rungroup_tmp.deserialize(i)
              @RunGroups << rungroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuns请求参数结构体
      class DescribeRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - RunGroupId：任务批次ID
        # - Status：任务状态
        # - RunUuid：任务UUID
        # - UserDefinedId：用户定义ID
        # @type Filters: Array

        attr_accessor :ProjectId, :Limit, :Offset, :Filters

        def initialize(projectid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeRuns返回参数结构体
      class DescribeRunsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的数量。
        # @type TotalCount: Integer
        # @param Runs: 任务列表。
        # @type Runs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Runs, :RequestId

        def initialize(totalcount=nil, runs=nil, requestid=nil)
          @TotalCount = totalcount
          @Runs = runs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Runs'].nil?
            @Runs = []
            params['Runs'].each do |i|
              run_tmp = Run.new
              run_tmp.deserialize(i)
              @Runs << run_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - Name：表格名称
        # - TableId：表格ID
        # @type Filters: Array

        attr_accessor :ProjectId, :Limit, :Offset, :Filters

        def initialize(projectid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数。
        # @type TotalCount: Integer
        # @param Tables: 表格列表。
        # @type Tables: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tables, :RequestId

        def initialize(totalcount=nil, tables=nil, requestid=nil)
          @TotalCount = totalcount
          @Tables = tables
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              table_tmp = Table.new
              table_tmp.deserialize(i)
              @Tables << table_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTablesRows请求参数结构体
      class DescribeTablesRowsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param TableId: 表格ID。
        # @type TableId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - Tr：表格数据，支持模糊查询
        # - TableRowUuid：表格行UUID
        # @type Filters: Array

        attr_accessor :ProjectId, :TableId, :Limit, :Offset, :Filters

        def initialize(projectid=nil, tableid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @TableId = tableid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TableId = params['TableId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeTablesRows返回参数结构体
      class DescribeTablesRowsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果总数。
        # @type TotalCount: Integer
        # @param Rows: 表格行列表。
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rows, :RequestId

        def initialize(totalcount=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tablerow_tmp = TableRow.new
              tablerow_tmp.deserialize(i)
              @Rows << tablerow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVolumes请求参数结构体
      class DescribeVolumesRequest < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - Name：名称
        # - IsDefault：是否为默认
        # @type Filters: Array

        attr_accessor :EnvironmentId, :Limit, :Offset, :Filters

        def initialize(environmentid=nil, limit=nil, offset=nil, filters=nil)
          @EnvironmentId = environmentid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeVolumes返回参数结构体
      class DescribeVolumesResponse < TencentCloud::Common::AbstractModel
        # @param Volumes: 缓存卷。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Volumes: Array
        # @param TotalCount: 符合条件的数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Volumes, :TotalCount, :RequestId

        def initialize(volumes=nil, totalcount=nil, requestid=nil)
          @Volumes = volumes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Volumes << volume_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 组学平台环境详情。
      class Environment < TencentCloud::Common::AbstractModel
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param Name: 环境名称。
        # @type Name: String
        # @param Description: 环境描述信息。
        # @type Description: String
        # @param Region: 环境地域。
        # @type Region: String
        # @param Type: 环境类型，取值范围：
        # - KUBERNETES：Kubernetes容器集群
        # - HPC：HPC高性能计算集群
        # @type Type: String
        # @param Status: 环境状态，取值范围：
        # - INITIALIZING：创建中
        # - INITIALIZATION_ERROR：创建失败
        # - RUNNING：运行中
        # - ERROR：异常
        # - DELETING：正在删除
        # - DELETE_ERROR：删除失败
        # @type Status: String
        # @param Available: 环境是否可用。环境需要可用才能投递计算任务。
        # @type Available: Boolean
        # @param IsDefault: 环境是否为默认环境。
        # @type IsDefault: Boolean
        # @param IsManaged: 环境是否为托管环境。
        # @type IsManaged: Boolean
        # @param Message: 环境信息。
        # @type Message: String
        # @param ResourceIds: 云资源ID。
        # @type ResourceIds: :class:`Tencentcloud::Omics.v20221128.models.ResourceIds`
        # @param LastWorkflowUuid: 上个工作流UUID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastWorkflowUuid: String
        # @param CreationTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String

        attr_accessor :EnvironmentId, :Name, :Description, :Region, :Type, :Status, :Available, :IsDefault, :IsManaged, :Message, :ResourceIds, :LastWorkflowUuid, :CreationTime

        def initialize(environmentid=nil, name=nil, description=nil, region=nil, type=nil, status=nil, available=nil, isdefault=nil, ismanaged=nil, message=nil, resourceids=nil, lastworkflowuuid=nil, creationtime=nil)
          @EnvironmentId = environmentid
          @Name = name
          @Description = description
          @Region = region
          @Type = type
          @Status = status
          @Available = available
          @IsDefault = isdefault
          @IsManaged = ismanaged
          @Message = message
          @ResourceIds = resourceids
          @LastWorkflowUuid = lastworkflowuuid
          @CreationTime = creationtime
        end

        def deserialize(params)
          @EnvironmentId = params['EnvironmentId']
          @Name = params['Name']
          @Description = params['Description']
          @Region = params['Region']
          @Type = params['Type']
          @Status = params['Status']
          @Available = params['Available']
          @IsDefault = params['IsDefault']
          @IsManaged = params['IsManaged']
          @Message = params['Message']
          unless params['ResourceIds'].nil?
            @ResourceIds = ResourceIds.new
            @ResourceIds.deserialize(params['ResourceIds'])
          end
          @LastWorkflowUuid = params['LastWorkflowUuid']
          @CreationTime = params['CreationTime']
        end
      end

      # 环境配置。
      class EnvironmentConfig < TencentCloud::Common::AbstractModel
        # @param VPCOption: 私有网络配置。
        # @type VPCOption: :class:`Tencentcloud::Omics.v20221128.models.VPCOption`
        # @param ClusterOption: 计算集群配置。
        # @type ClusterOption: :class:`Tencentcloud::Omics.v20221128.models.ClusterOption`
        # @param DatabaseOption: 数据库配置。
        # @type DatabaseOption: :class:`Tencentcloud::Omics.v20221128.models.DatabaseOption`
        # @param StorageOption: 存储配置。
        # @type StorageOption: :class:`Tencentcloud::Omics.v20221128.models.StorageOption`
        # @param CVMOption: 云服务器配置。
        # @type CVMOption: :class:`Tencentcloud::Omics.v20221128.models.CVMOption`
        # @param SecurityGroupOption: 安全组配置。
        # @type SecurityGroupOption: :class:`Tencentcloud::Omics.v20221128.models.SecurityGroupOption`

        attr_accessor :VPCOption, :ClusterOption, :DatabaseOption, :StorageOption, :CVMOption, :SecurityGroupOption

        def initialize(vpcoption=nil, clusteroption=nil, databaseoption=nil, storageoption=nil, cvmoption=nil, securitygroupoption=nil)
          @VPCOption = vpcoption
          @ClusterOption = clusteroption
          @DatabaseOption = databaseoption
          @StorageOption = storageoption
          @CVMOption = cvmoption
          @SecurityGroupOption = securitygroupoption
        end

        def deserialize(params)
          unless params['VPCOption'].nil?
            @VPCOption = VPCOption.new
            @VPCOption.deserialize(params['VPCOption'])
          end
          unless params['ClusterOption'].nil?
            @ClusterOption = ClusterOption.new
            @ClusterOption.deserialize(params['ClusterOption'])
          end
          unless params['DatabaseOption'].nil?
            @DatabaseOption = DatabaseOption.new
            @DatabaseOption.deserialize(params['DatabaseOption'])
          end
          unless params['StorageOption'].nil?
            @StorageOption = StorageOption.new
            @StorageOption.deserialize(params['StorageOption'])
          end
          unless params['CVMOption'].nil?
            @CVMOption = CVMOption.new
            @CVMOption.deserialize(params['CVMOption'])
          end
          unless params['SecurityGroupOption'].nil?
            @SecurityGroupOption = SecurityGroupOption.new
            @SecurityGroupOption.deserialize(params['SecurityGroupOption'])
          end
        end
      end

      # 执行时间。
      class ExecutionTime < TencentCloud::Common::AbstractModel
        # @param SubmitTime: 提交时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitTime: String
        # @param StartTime: 开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :SubmitTime, :StartTime, :EndTime

        def initialize(submittime=nil, starttime=nil, endtime=nil)
          @SubmitTime = submittime
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SubmitTime = params['SubmitTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。

      # - 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。

      # - 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段。
        # @type Name: String
        # @param Values: 过滤字段值。
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

      # GetRunCalls请求参数结构体
      class GetRunCallsRequest < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务Uuid。
        # @type RunUuid: String
        # @param Path: 作业路径
        # @type Path: String
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String

        attr_accessor :RunUuid, :Path, :ProjectId

        def initialize(runuuid=nil, path=nil, projectid=nil)
          @RunUuid = runuuid
          @Path = path
          @ProjectId = projectid
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @Path = params['Path']
          @ProjectId = params['ProjectId']
        end
      end

      # GetRunCalls返回参数结构体
      class GetRunCallsResponse < TencentCloud::Common::AbstractModel
        # @param Calls: 作业详情。
        # @type Calls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Calls, :RequestId

        def initialize(calls=nil, requestid=nil)
          @Calls = calls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Calls'].nil?
            @Calls = []
            params['Calls'].each do |i|
              runmetadata_tmp = RunMetadata.new
              runmetadata_tmp.deserialize(i)
              @Calls << runmetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRunMetadataFile请求参数结构体
      class GetRunMetadataFileRequest < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务Uuid。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param Key: 需要获取的文件名。

        # 默认支持以下文件：
        # - nextflow.log

        # 提交时NFOption中report指定为true时，额外支持以下文件：
        # - execution_report.html
        # - execution_timeline.html
        # - execution_trace.txt
        # - pipeline_dag.html
        # @type Key: String
        # @param Keys: 需要批量获取的文件名。

        # 默认支持以下文件：
        # - nextflow.log

        # 提交时NFOption中report指定为true时，额外支持以下文件：
        # - execution_report.html
        # - execution_timeline.html
        # - execution_trace.txt
        # - pipeline_dag.html
        # @type Keys: Array

        attr_accessor :RunUuid, :ProjectId, :Key, :Keys

        def initialize(runuuid=nil, projectid=nil, key=nil, keys=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
          @Key = key
          @Keys = keys
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
          @Key = params['Key']
          @Keys = params['Keys']
        end
      end

      # GetRunMetadataFile返回参数结构体
      class GetRunMetadataFileResponse < TencentCloud::Common::AbstractModel
        # @param CosSignedUrl: 文件预签名链接，一分钟内有效。
        # @type CosSignedUrl: String
        # @param CosSignedUrls: 批量文件预签名链接，一分钟内有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosSignedUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosSignedUrl, :CosSignedUrls, :RequestId

        def initialize(cossignedurl=nil, cossignedurls=nil, requestid=nil)
          @CosSignedUrl = cossignedurl
          @CosSignedUrls = cossignedurls
          @RequestId = requestid
        end

        def deserialize(params)
          @CosSignedUrl = params['CosSignedUrl']
          @CosSignedUrls = params['CosSignedUrls']
          @RequestId = params['RequestId']
        end
      end

      # GetRunStatus请求参数结构体
      class GetRunStatusRequest < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务Uuid。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String

        attr_accessor :RunUuid, :ProjectId

        def initialize(runuuid=nil, projectid=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
        end
      end

      # GetRunStatus返回参数结构体
      class GetRunStatusResponse < TencentCloud::Common::AbstractModel
        # @param Metadata: 作业详情。
        # @type Metadata: :class:`Tencentcloud::Omics.v20221128.models.RunMetadata`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metadata, :RequestId

        def initialize(metadata=nil, requestid=nil)
          @Metadata = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metadata'].nil?
            @Metadata = RunMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Git信息。
      class GitInfo < TencentCloud::Common::AbstractModel
        # @param GitHttpPath: Git地址。
        # @type GitHttpPath: String
        # @param GitUserName: Git用户名。
        # @type GitUserName: String
        # @param GitTokenOrPassword: Git密码或者Token。
        # @type GitTokenOrPassword: String
        # @param Branch: 分支。
        # @type Branch: String
        # @param Tag: 标签。
        # @type Tag: String

        attr_accessor :GitHttpPath, :GitUserName, :GitTokenOrPassword, :Branch, :Tag

        def initialize(githttppath=nil, gitusername=nil, gittokenorpassword=nil, branch=nil, tag=nil)
          @GitHttpPath = githttppath
          @GitUserName = gitusername
          @GitTokenOrPassword = gittokenorpassword
          @Branch = branch
          @Tag = tag
        end

        def deserialize(params)
          @GitHttpPath = params['GitHttpPath']
          @GitUserName = params['GitUserName']
          @GitTokenOrPassword = params['GitTokenOrPassword']
          @Branch = params['Branch']
          @Tag = params['Tag']
        end
      end

      # ImportTableFile请求参数结构体
      class ImportTableFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 表格关联的项目ID。
        # @type ProjectId: String
        # @param Name: 表格名称。最多支持200个字符。
        # @type Name: String
        # @param CosUri: 表格文件Cos对象路径。
        # @type CosUri: String
        # @param DataType: 表格文件中每列的数据类型，支持的类型包括：Int、Float、String、File、Boolean、Array[Int]、Array[Float]、Array[String]、Array[File]、Array[Boolean]
        # @type DataType: Array
        # @param Description: 表格描述。最多支持500个字符。
        # @type Description: String

        attr_accessor :ProjectId, :Name, :CosUri, :DataType, :Description

        def initialize(projectid=nil, name=nil, cosuri=nil, datatype=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @CosUri = cosuri
          @DataType = datatype
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @CosUri = params['CosUri']
          @DataType = params['DataType']
          @Description = params['Description']
        end
      end

      # ImportTableFile返回参数结构体
      class ImportTableFileResponse < TencentCloud::Common::AbstractModel
        # @param TableId: 表格ID。
        # @type TableId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableId, :RequestId

        def initialize(tableid=nil, requestid=nil)
          @TableId = tableid
          @RequestId = requestid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @RequestId = params['RequestId']
        end
      end

      # 资源限制范围。
      class LimitRange < TencentCloud::Common::AbstractModel
        # @param MaxCPU: 最大CPU设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCPU: String
        # @param MaxMemory: 最大内存设置（单位：Mi，Gi，Ti，M，G，T）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMemory: String

        attr_accessor :MaxCPU, :MaxMemory

        def initialize(maxcpu=nil, maxmemory=nil)
          @MaxCPU = maxcpu
          @MaxMemory = maxmemory
        end

        def deserialize(params)
          @MaxCPU = params['MaxCPU']
          @MaxMemory = params['MaxMemory']
        end
      end

      # ModifyVolume请求参数结构体
      class ModifyVolumeRequest < TencentCloud::Common::AbstractModel
        # @param VolumeId: 缓存卷ID。
        # @type VolumeId: String
        # @param Name: 名称。
        # @type Name: String
        # @param Description: 描述。
        # @type Description: String

        attr_accessor :VolumeId, :Name, :Description

        def initialize(volumeid=nil, name=nil, description=nil)
          @VolumeId = volumeid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @VolumeId = params['VolumeId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifyVolume返回参数结构体
      class ModifyVolumeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # Nextflow选项。
      class NFOption < TencentCloud::Common::AbstractModel
        # @param Config: Config。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: String
        # @param Profile: Profile。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profile: String
        # @param Report: Report。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Report: Boolean
        # @param Resume: Resume。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resume: Boolean
        # @param NFVersion: Nextflow引擎版本，取值范围：
        # - 22.10.4
        # - 22.10.8
        # - 23.10.1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFVersion: String

        attr_accessor :Config, :Profile, :Report, :Resume, :NFVersion

        def initialize(config=nil, profile=nil, report=nil, resume=nil, nfversion=nil)
          @Config = config
          @Profile = profile
          @Report = report
          @Resume = resume
          @NFVersion = nfversion
        end

        def deserialize(params)
          @Config = params['Config']
          @Profile = params['Profile']
          @Report = params['Report']
          @Resume = params['Resume']
          @NFVersion = params['NFVersion']
        end
      end

      # 云资源ID。
      class ResourceIds < TencentCloud::Common::AbstractModel
        # @param VPCId: 私有网络ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPCId: String
        # @param SubnetId: 子网ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param SecurityGroupId: 安全组ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupId: String
        # @param TDSQLCId: TDSQL-C Mysql版数据库ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TDSQLCId: String
        # @param CFSId: 文件存储ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSId: String
        # @param CFSStorageType: 文件存储类型：取值范围：
        # - SD：通用标准型
        # - HP：通用性能型
        # - TB：turbo标准型
        # - TP：turbo性能型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSStorageType: String
        # @param CVMId: 云服务器ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMId: String
        # @param EKSId: 弹性容器集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EKSId: String

        attr_accessor :VPCId, :SubnetId, :SecurityGroupId, :TDSQLCId, :CFSId, :CFSStorageType, :CVMId, :EKSId

        def initialize(vpcid=nil, subnetid=nil, securitygroupid=nil, tdsqlcid=nil, cfsid=nil, cfsstoragetype=nil, cvmid=nil, eksid=nil)
          @VPCId = vpcid
          @SubnetId = subnetid
          @SecurityGroupId = securitygroupid
          @TDSQLCId = tdsqlcid
          @CFSId = cfsid
          @CFSStorageType = cfsstoragetype
          @CVMId = cvmid
          @EKSId = eksid
        end

        def deserialize(params)
          @VPCId = params['VPCId']
          @SubnetId = params['SubnetId']
          @SecurityGroupId = params['SecurityGroupId']
          @TDSQLCId = params['TDSQLCId']
          @CFSId = params['CFSId']
          @CFSStorageType = params['CFSStorageType']
          @CVMId = params['CVMId']
          @EKSId = params['EKSId']
        end
      end

      # 资源配额。
      class ResourceQuota < TencentCloud::Common::AbstractModel
        # @param CPULimit: CPU Limit设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPULimit: String
        # @param MemoryLimit: 内存Limit设置（单位：Mi，Gi，Ti，M，G，T）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryLimit: String
        # @param Pods: Pods数量设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pods: String

        attr_accessor :CPULimit, :MemoryLimit, :Pods

        def initialize(cpulimit=nil, memorylimit=nil, pods=nil)
          @CPULimit = cpulimit
          @MemoryLimit = memorylimit
          @Pods = pods
        end

        def deserialize(params)
          @CPULimit = params['CPULimit']
          @MemoryLimit = params['MemoryLimit']
          @Pods = params['Pods']
        end
      end

      # RetryRuns请求参数结构体
      class RetryRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。（不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param RunGroupId: 需要重试的任务批次ID。
        # @type RunGroupId: String
        # @param RunUuids: 需要重试的任务UUID。
        # @type RunUuids: Array
        # @param WDLOption: WDL运行选项，不填使用被重试的任务批次运行选项。
        # @type WDLOption: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param NFOption: Nextflow运行选项，不填使用被重试的任务批次运行选项。
        # @type NFOption: :class:`Tencentcloud::Omics.v20221128.models.NFOption`

        attr_accessor :ProjectId, :RunGroupId, :RunUuids, :WDLOption, :NFOption

        def initialize(projectid=nil, rungroupid=nil, runuuids=nil, wdloption=nil, nfoption=nil)
          @ProjectId = projectid
          @RunGroupId = rungroupid
          @RunUuids = runuuids
          @WDLOption = wdloption
          @NFOption = nfoption
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RunGroupId = params['RunGroupId']
          @RunUuids = params['RunUuids']
          unless params['WDLOption'].nil?
            @WDLOption = RunOption.new
            @WDLOption.deserialize(params['WDLOption'])
          end
          unless params['NFOption'].nil?
            @NFOption = NFOption.new
            @NFOption.deserialize(params['NFOption'])
          end
        end
      end

      # RetryRuns返回参数结构体
      class RetryRunsResponse < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 新的任务批次ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RunGroupId, :RequestId

        def initialize(rungroupid=nil, requestid=nil)
          @RunGroupId = rungroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 任务。
      class Run < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务UUID。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param UserDefinedId: 用户定义ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefinedId: String
        # @param TableId: 表格ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableRowUuid: 表格行UUID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableRowUuid: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Input: 任务输入。
        # @type Input: String
        # @param Option: 运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param ExecutionTime: 执行时间。
        # @type ExecutionTime: :class:`Tencentcloud::Omics.v20221128.models.ExecutionTime`
        # @param Cache: 缓存信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Omics.v20221128.models.CacheInfo`
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :RunUuid, :ProjectId, :ApplicationId, :RunGroupId, :EnvironmentId, :UserDefinedId, :TableId, :TableRowUuid, :Status, :Input, :Option, :ExecutionTime, :Cache, :ErrorMessage, :CreateTime, :UpdateTime
        extend Gem::Deprecate
        deprecate :Option, :none, 2024, 3
        deprecate :Option=, :none, 2024, 3

        def initialize(runuuid=nil, projectid=nil, applicationid=nil, rungroupid=nil, environmentid=nil, userdefinedid=nil, tableid=nil, tablerowuuid=nil, status=nil, input=nil, option=nil, executiontime=nil, cache=nil, errormessage=nil, createtime=nil, updatetime=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
          @ApplicationId = applicationid
          @RunGroupId = rungroupid
          @EnvironmentId = environmentid
          @UserDefinedId = userdefinedid
          @TableId = tableid
          @TableRowUuid = tablerowuuid
          @Status = status
          @Input = input
          @Option = option
          @ExecutionTime = executiontime
          @Cache = cache
          @ErrorMessage = errormessage
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
          @ApplicationId = params['ApplicationId']
          @RunGroupId = params['RunGroupId']
          @EnvironmentId = params['EnvironmentId']
          @UserDefinedId = params['UserDefinedId']
          @TableId = params['TableId']
          @TableRowUuid = params['TableRowUuid']
          @Status = params['Status']
          @Input = params['Input']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          unless params['ExecutionTime'].nil?
            @ExecutionTime = ExecutionTime.new
            @ExecutionTime.deserialize(params['ExecutionTime'])
          end
          unless params['Cache'].nil?
            @Cache = CacheInfo.new
            @Cache.deserialize(params['Cache'])
          end
          @ErrorMessage = params['ErrorMessage']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # RunApplication请求参数结构体
      class RunApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param Name: 任务批次名称。
        # @type Name: String
        # @param EnvironmentId: 投递环境ID。
        # @type EnvironmentId: String
        # @param InputBase64: 任务输入JSON。需要进行base64编码。
        # @type InputBase64: String
        # @param ProjectId: 项目ID。（不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param Description: 任务批次描述。
        # @type Description: String
        # @param TableId: 批量投递表格ID，不填表示单例投递。
        # @type TableId: String
        # @param TableRowUuids: 批量投递表格行UUID。不填表示表格全部行。
        # @type TableRowUuids: Array
        # @param CacheClearDelay: 任务缓存清理时间（小时）。不填或0表示不清理。
        # @type CacheClearDelay: Integer
        # @param ApplicationVersionId: 应用版本ID。不填表示使用当前最新版本。
        # @type ApplicationVersionId: String
        # @param Option: WDL运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param NFOption: Nextflow运行选项。
        # @type NFOption: :class:`Tencentcloud::Omics.v20221128.models.NFOption`
        # @param WorkDir: 工作目录，使用缓存卷内的相对路径 (暂时仅支持Nextflow)
        # @type WorkDir: String

        attr_accessor :ApplicationId, :Name, :EnvironmentId, :InputBase64, :ProjectId, :Description, :TableId, :TableRowUuids, :CacheClearDelay, :ApplicationVersionId, :Option, :NFOption, :WorkDir

        def initialize(applicationid=nil, name=nil, environmentid=nil, inputbase64=nil, projectid=nil, description=nil, tableid=nil, tablerowuuids=nil, cachecleardelay=nil, applicationversionid=nil, option=nil, nfoption=nil, workdir=nil)
          @ApplicationId = applicationid
          @Name = name
          @EnvironmentId = environmentid
          @InputBase64 = inputbase64
          @ProjectId = projectid
          @Description = description
          @TableId = tableid
          @TableRowUuids = tablerowuuids
          @CacheClearDelay = cachecleardelay
          @ApplicationVersionId = applicationversionid
          @Option = option
          @NFOption = nfoption
          @WorkDir = workdir
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Name = params['Name']
          @EnvironmentId = params['EnvironmentId']
          @InputBase64 = params['InputBase64']
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          @TableId = params['TableId']
          @TableRowUuids = params['TableRowUuids']
          @CacheClearDelay = params['CacheClearDelay']
          @ApplicationVersionId = params['ApplicationVersionId']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          unless params['NFOption'].nil?
            @NFOption = NFOption.new
            @NFOption.deserialize(params['NFOption'])
          end
          @WorkDir = params['WorkDir']
        end
      end

      # RunApplication返回参数结构体
      class RunApplicationResponse < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RunGroupId, :RequestId

        def initialize(rungroupid=nil, requestid=nil)
          @RunGroupId = rungroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 任务。
      class RunGroup < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param ProjectName: 项目名称。
        # @type ProjectName: String
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称。
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型。
        # @type ApplicationType: String
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param EnvironmentName: 环境名称。
        # @type EnvironmentName: String
        # @param TableId: 表格ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param Name: 任务名称。
        # @type Name: String
        # @param Description: 任务描述。
        # @type Description: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Input: 任务输入。
        # @type Input: String
        # @param Option: WDL运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param NFOption: Nextflow运行选项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFOption: :class:`Tencentcloud::Omics.v20221128.models.NFOption`
        # @param TotalRun: 任务总数量。
        # @type TotalRun: Integer
        # @param RunStatusCounts: 各状态任务的数量。
        # @type RunStatusCounts: Array
        # @param ExecutionTime: 执行时间。
        # @type ExecutionTime: :class:`Tencentcloud::Omics.v20221128.models.ExecutionTime`
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param Creator: 创建者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param CreatorId: 创建者ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorId: String
        # @param ResultNotify: 运行结果通知方式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNotify: String
        # @param ApplicationVersion: 应用版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationVersion: :class:`Tencentcloud::Omics.v20221128.models.ApplicationVersion`

        attr_accessor :RunGroupId, :ProjectId, :ProjectName, :ApplicationId, :ApplicationName, :ApplicationType, :EnvironmentId, :EnvironmentName, :TableId, :Name, :Description, :Status, :Input, :Option, :NFOption, :TotalRun, :RunStatusCounts, :ExecutionTime, :ErrorMessage, :CreateTime, :UpdateTime, :Creator, :CreatorId, :ResultNotify, :ApplicationVersion

        def initialize(rungroupid=nil, projectid=nil, projectname=nil, applicationid=nil, applicationname=nil, applicationtype=nil, environmentid=nil, environmentname=nil, tableid=nil, name=nil, description=nil, status=nil, input=nil, option=nil, nfoption=nil, totalrun=nil, runstatuscounts=nil, executiontime=nil, errormessage=nil, createtime=nil, updatetime=nil, creator=nil, creatorid=nil, resultnotify=nil, applicationversion=nil)
          @RunGroupId = rungroupid
          @ProjectId = projectid
          @ProjectName = projectname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @TableId = tableid
          @Name = name
          @Description = description
          @Status = status
          @Input = input
          @Option = option
          @NFOption = nfoption
          @TotalRun = totalrun
          @RunStatusCounts = runstatuscounts
          @ExecutionTime = executiontime
          @ErrorMessage = errormessage
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Creator = creator
          @CreatorId = creatorid
          @ResultNotify = resultnotify
          @ApplicationVersion = applicationversion
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @TableId = params['TableId']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          @Input = params['Input']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          unless params['NFOption'].nil?
            @NFOption = NFOption.new
            @NFOption.deserialize(params['NFOption'])
          end
          @TotalRun = params['TotalRun']
          unless params['RunStatusCounts'].nil?
            @RunStatusCounts = []
            params['RunStatusCounts'].each do |i|
              runstatuscount_tmp = RunStatusCount.new
              runstatuscount_tmp.deserialize(i)
              @RunStatusCounts << runstatuscount_tmp
            end
          end
          unless params['ExecutionTime'].nil?
            @ExecutionTime = ExecutionTime.new
            @ExecutionTime.deserialize(params['ExecutionTime'])
          end
          @ErrorMessage = params['ErrorMessage']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Creator = params['Creator']
          @CreatorId = params['CreatorId']
          @ResultNotify = params['ResultNotify']
          unless params['ApplicationVersion'].nil?
            @ApplicationVersion = ApplicationVersion.new
            @ApplicationVersion.deserialize(params['ApplicationVersion'])
          end
        end
      end

      # 任务作业详情。
      class RunMetadata < TencentCloud::Common::AbstractModel
        # @param RunType: 任务类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunType: String
        # @param RunId: 任务ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunId: String
        # @param ParentId: 父层ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param JobId: 作业ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CallName: 作业名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallName: String
        # @param ScatterIndex: Scatter索引。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScatterIndex: String
        # @param Input: 输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: 输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrorMessage: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param SubmitTime: 提交时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitTime: String
        # @param EndTime: 结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Command: 命令行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String
        # @param Runtime: 运行时。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param Preprocess: 预处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preprocess: Boolean
        # @param PostProcess: 后处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostProcess: Boolean
        # @param CallCached: Cache命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallCached: Boolean
        # @param Stdout: 标准输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stdout: String
        # @param Stderr: 错误输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stderr: String
        # @param Meta: 其他信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Meta: String

        attr_accessor :RunType, :RunId, :ParentId, :JobId, :CallName, :ScatterIndex, :Input, :Output, :Status, :ErrorMessage, :StartTime, :SubmitTime, :EndTime, :Command, :Runtime, :Preprocess, :PostProcess, :CallCached, :Stdout, :Stderr, :Meta

        def initialize(runtype=nil, runid=nil, parentid=nil, jobid=nil, callname=nil, scatterindex=nil, input=nil, output=nil, status=nil, errormessage=nil, starttime=nil, submittime=nil, endtime=nil, command=nil, runtime=nil, preprocess=nil, postprocess=nil, callcached=nil, stdout=nil, stderr=nil, meta=nil)
          @RunType = runtype
          @RunId = runid
          @ParentId = parentid
          @JobId = jobid
          @CallName = callname
          @ScatterIndex = scatterindex
          @Input = input
          @Output = output
          @Status = status
          @ErrorMessage = errormessage
          @StartTime = starttime
          @SubmitTime = submittime
          @EndTime = endtime
          @Command = command
          @Runtime = runtime
          @Preprocess = preprocess
          @PostProcess = postprocess
          @CallCached = callcached
          @Stdout = stdout
          @Stderr = stderr
          @Meta = meta
        end

        def deserialize(params)
          @RunType = params['RunType']
          @RunId = params['RunId']
          @ParentId = params['ParentId']
          @JobId = params['JobId']
          @CallName = params['CallName']
          @ScatterIndex = params['ScatterIndex']
          @Input = params['Input']
          @Output = params['Output']
          @Status = params['Status']
          @ErrorMessage = params['ErrorMessage']
          @StartTime = params['StartTime']
          @SubmitTime = params['SubmitTime']
          @EndTime = params['EndTime']
          @Command = params['Command']
          @Runtime = params['Runtime']
          @Preprocess = params['Preprocess']
          @PostProcess = params['PostProcess']
          @CallCached = params['CallCached']
          @Stdout = params['Stdout']
          @Stderr = params['Stderr']
          @Meta = params['Meta']
        end
      end

      # 运行应用选项。
      class RunOption < TencentCloud::Common::AbstractModel
        # @param FailureMode: 运行失败模式，取值范围：
        # - ContinueWhilePossible
        # - NoNewCalls
        # @type FailureMode: String
        # @param UseCallCache: 是否使用Call-Caching功能。
        # @type UseCallCache: Boolean
        # @param UseErrorOnHold: 是否使用错误挂起功能。
        # @type UseErrorOnHold: Boolean
        # @param FinalWorkflowOutputsDir: 输出归档COS路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalWorkflowOutputsDir: String
        # @param UseRelativeOutputPaths: 是否使用相对目录归档输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseRelativeOutputPaths: Boolean

        attr_accessor :FailureMode, :UseCallCache, :UseErrorOnHold, :FinalWorkflowOutputsDir, :UseRelativeOutputPaths

        def initialize(failuremode=nil, usecallcache=nil, useerroronhold=nil, finalworkflowoutputsdir=nil, userelativeoutputpaths=nil)
          @FailureMode = failuremode
          @UseCallCache = usecallcache
          @UseErrorOnHold = useerroronhold
          @FinalWorkflowOutputsDir = finalworkflowoutputsdir
          @UseRelativeOutputPaths = userelativeoutputpaths
        end

        def deserialize(params)
          @FailureMode = params['FailureMode']
          @UseCallCache = params['UseCallCache']
          @UseErrorOnHold = params['UseErrorOnHold']
          @FinalWorkflowOutputsDir = params['FinalWorkflowOutputsDir']
          @UseRelativeOutputPaths = params['UseRelativeOutputPaths']
        end
      end

      # 任务运行状态。
      class RunStatusCount < TencentCloud::Common::AbstractModel
        # @param Status: 状态。
        # @type Status: String
        # @param Count: 数量。
        # @type Count: Integer

        attr_accessor :Status, :Count

        def initialize(status=nil, count=nil)
          @Status = status
          @Count = count
        end

        def deserialize(params)
          @Status = params['Status']
          @Count = params['Count']
        end
      end

      # RunWorkflow请求参数结构体
      class RunWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务批次名称。
        # @type Name: String
        # @param EnvironmentId: 投递环境ID。
        # @type EnvironmentId: String
        # @param GitSource: 工作流Git仓库信息。
        # @type GitSource: :class:`Tencentcloud::Omics.v20221128.models.GitInfo`
        # @param Type: 工作流类型。

        # 支持类型：
        # - NEXTFLOW
        # @type Type: String
        # @param NFOption: Nextflow选项。
        # @type NFOption: :class:`Tencentcloud::Omics.v20221128.models.NFOption`
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String
        # @param Description: 任务批次描述。
        # @type Description: String
        # @param InputBase64: 任务输入JSON。需要进行base64编码。
        # （InputBase64和InputCosUri必选其一）
        # @type InputBase64: String
        # @param InputCosUri: 任务输入COS地址。
        # （InputBase64和InputCosUri必选其一）
        # @type InputCosUri: String
        # @param CacheClearDelay: 任务缓存清理时间（小时）。不填或0表示不清理。
        # @type CacheClearDelay: Integer
        # @param WorkDir: 工作目录，使用缓存卷内的相对路径 (暂时仅支持Nextflow)
        # @type WorkDir: String

        attr_accessor :Name, :EnvironmentId, :GitSource, :Type, :NFOption, :ProjectId, :Description, :InputBase64, :InputCosUri, :CacheClearDelay, :WorkDir

        def initialize(name=nil, environmentid=nil, gitsource=nil, type=nil, nfoption=nil, projectid=nil, description=nil, inputbase64=nil, inputcosuri=nil, cachecleardelay=nil, workdir=nil)
          @Name = name
          @EnvironmentId = environmentid
          @GitSource = gitsource
          @Type = type
          @NFOption = nfoption
          @ProjectId = projectid
          @Description = description
          @InputBase64 = inputbase64
          @InputCosUri = inputcosuri
          @CacheClearDelay = cachecleardelay
          @WorkDir = workdir
        end

        def deserialize(params)
          @Name = params['Name']
          @EnvironmentId = params['EnvironmentId']
          unless params['GitSource'].nil?
            @GitSource = GitInfo.new
            @GitSource.deserialize(params['GitSource'])
          end
          @Type = params['Type']
          unless params['NFOption'].nil?
            @NFOption = NFOption.new
            @NFOption.deserialize(params['NFOption'])
          end
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          @InputBase64 = params['InputBase64']
          @InputCosUri = params['InputCosUri']
          @CacheClearDelay = params['CacheClearDelay']
          @WorkDir = params['WorkDir']
        end
      end

      # RunWorkflow返回参数结构体
      class RunWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RunGroupId, :RequestId

        def initialize(rungroupid=nil, requestid=nil)
          @RunGroupId = rungroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 安全组配置。
      class SecurityGroupOption < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组ID。
        # @type SecurityGroupId: String

        attr_accessor :SecurityGroupId

        def initialize(securitygroupid=nil)
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # 文件存储配置。
      class StorageOption < TencentCloud::Common::AbstractModel
        # @param StorageType: 文件存储类型，取值范围：
        # - SD：通用标准型
        # - HP：通用性能型
        # - TB：turbo标准型
        # - TP：turbo性能型
        # @type StorageType: String
        # @param Zone: 文件存储可用区。
        # @type Zone: String
        # @param Capacity: 文件系统容量，turbo系列必填，单位为GiB。
        # - turbo标准型起售40TiB，即40960GiB；扩容步长20TiB，即20480 GiB。
        # - turbo性能型起售20TiB，即20480 GiB；扩容步长10TiB，即10240 GiB。
        # @type Capacity: Integer

        attr_accessor :StorageType, :Zone, :Capacity

        def initialize(storagetype=nil, zone=nil, capacity=nil)
          @StorageType = storagetype
          @Zone = zone
          @Capacity = capacity
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @Zone = params['Zone']
          @Capacity = params['Capacity']
        end
      end

      # 表格。
      class Table < TencentCloud::Common::AbstractModel
        # @param TableId: 表格ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param ProjectId: 关联项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Name: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 表格描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Columns: 表格列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Creator: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String

        attr_accessor :TableId, :ProjectId, :Name, :Description, :Columns, :CreateTime, :Creator

        def initialize(tableid=nil, projectid=nil, name=nil, description=nil, columns=nil, createtime=nil, creator=nil)
          @TableId = tableid
          @ProjectId = projectid
          @Name = name
          @Description = description
          @Columns = columns
          @CreateTime = createtime
          @Creator = creator
        end

        def deserialize(params)
          @TableId = params['TableId']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              tablecolumn_tmp = TableColumn.new
              tablecolumn_tmp.deserialize(i)
              @Columns << tablecolumn_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @Creator = params['Creator']
        end
      end

      # 表格列。
      class TableColumn < TencentCloud::Common::AbstractModel
        # @param Header: 列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: String
        # @param DataType: 列数据类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataType: String

        attr_accessor :Header, :DataType

        def initialize(header=nil, datatype=nil)
          @Header = header
          @DataType = datatype
        end

        def deserialize(params)
          @Header = params['Header']
          @DataType = params['DataType']
        end
      end

      # 表格行。
      class TableRow < TencentCloud::Common::AbstractModel
        # @param TableRowUuid: 表格行UUID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableRowUuid: String
        # @param Content: 表格行内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TableRowUuid, :Content

        def initialize(tablerowuuid=nil, content=nil)
          @TableRowUuid = tablerowuuid
          @Content = content
        end

        def deserialize(params)
          @TableRowUuid = params['TableRowUuid']
          @Content = params['Content']
        end
      end

      # TerminateRunGroup请求参数结构体
      class TerminateRunGroupRequest < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param ProjectId: 项目ID。
        # （不填使用指定地域下的默认项目）
        # @type ProjectId: String

        attr_accessor :RunGroupId, :ProjectId

        def initialize(rungroupid=nil, projectid=nil)
          @RunGroupId = rungroupid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @ProjectId = params['ProjectId']
        end
      end

      # TerminateRunGroup返回参数结构体
      class TerminateRunGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 私有网络配置。
      class VPCOption < TencentCloud::Common::AbstractModel
        # @param VPCId: 私有网络ID（VPCId和VPCCIDRBlock必选其一。若使用VPCId，则使用现用私有网络；若使用VPCCIDRBlock，则创建新的私有网络）
        # @type VPCId: String
        # @param SubnetId: 子网ID（SubnetId和SubnetZone&SubnetCIDRBlock必选其一。若使用SubnetId，则使用现用子网；若使用SubnetZone&SubnetCIDRBlock，则创建新的子网）
        # @type SubnetId: String
        # @param SubnetZone: 子网可用区。
        # @type SubnetZone: String
        # @param VPCCIDRBlock: 私有网络CIDR。
        # @type VPCCIDRBlock: String
        # @param SubnetCIDRBlock: 子网CIDR。
        # @type SubnetCIDRBlock: String

        attr_accessor :VPCId, :SubnetId, :SubnetZone, :VPCCIDRBlock, :SubnetCIDRBlock

        def initialize(vpcid=nil, subnetid=nil, subnetzone=nil, vpccidrblock=nil, subnetcidrblock=nil)
          @VPCId = vpcid
          @SubnetId = subnetid
          @SubnetZone = subnetzone
          @VPCCIDRBlock = vpccidrblock
          @SubnetCIDRBlock = subnetcidrblock
        end

        def deserialize(params)
          @VPCId = params['VPCId']
          @SubnetId = params['SubnetId']
          @SubnetZone = params['SubnetZone']
          @VPCCIDRBlock = params['VPCCIDRBlock']
          @SubnetCIDRBlock = params['SubnetCIDRBlock']
        end
      end

      # 缓存卷。
      class Volume < TencentCloud::Common::AbstractModel
        # @param VolumeId: 缓存卷ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeId: String
        # @param Name: 名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param EnvironmentId: 环境ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentId: String
        # @param Type: 缓存卷类型，取值范围：
        # * SHARED：多点挂载共享存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Spec: 缓存卷规格，取值范围：

        # - SD：通用标准型
        # - HP：通用性能型
        # - TB：turbo标准型
        # - TP：turbo性能型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param Capacity: 缓存卷大小（GB）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Capacity: Integer
        # @param Usage: 缓存卷使用量（Byte）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usage: Integer
        # @param BandwidthLimit: 缓存卷吞吐上限（MiB/s）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthLimit: Float
        # @param DefaultMountPath: 默认挂载路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultMountPath: String
        # @param IsDefault: 是否为默认缓存卷。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Boolean
        # @param Status: 状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :VolumeId, :Name, :Description, :EnvironmentId, :Type, :Spec, :Capacity, :Usage, :BandwidthLimit, :DefaultMountPath, :IsDefault, :Status

        def initialize(volumeid=nil, name=nil, description=nil, environmentid=nil, type=nil, spec=nil, capacity=nil, usage=nil, bandwidthlimit=nil, defaultmountpath=nil, isdefault=nil, status=nil)
          @VolumeId = volumeid
          @Name = name
          @Description = description
          @EnvironmentId = environmentid
          @Type = type
          @Spec = spec
          @Capacity = capacity
          @Usage = usage
          @BandwidthLimit = bandwidthlimit
          @DefaultMountPath = defaultmountpath
          @IsDefault = isdefault
          @Status = status
        end

        def deserialize(params)
          @VolumeId = params['VolumeId']
          @Name = params['Name']
          @Description = params['Description']
          @EnvironmentId = params['EnvironmentId']
          @Type = params['Type']
          @Spec = params['Spec']
          @Capacity = params['Capacity']
          @Usage = params['Usage']
          @BandwidthLimit = params['BandwidthLimit']
          @DefaultMountPath = params['DefaultMountPath']
          @IsDefault = params['IsDefault']
          @Status = params['Status']
        end
      end

    end
  end
end

