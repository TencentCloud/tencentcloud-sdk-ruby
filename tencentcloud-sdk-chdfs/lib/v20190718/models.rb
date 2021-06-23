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
  module Chdfs
    module V20190718
      # 权限组
      class AccessGroup < TencentCloud::Common::AbstractModel
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param AccessGroupName: 权限组名称
        # @type AccessGroupName: String
        # @param Description: 权限组描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AccessGroupId, :AccessGroupName, :Description, :CreateTime
        
        def initialize(accessgroupid=nil, accessgroupname=nil, description=nil, createtime=nil)
          @AccessGroupId = accessgroupid
          @AccessGroupName = accessgroupname
          @Description = description
          @CreateTime = createtime
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
          @AccessGroupName = params['AccessGroupName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
        end
      end

      # 权限规则
      class AccessRule < TencentCloud::Common::AbstractModel
        # @param AccessRuleId: 权限规则ID
        # @type AccessRuleId: Integer
        # @param Address: 权限规则地址（网段或IP）
        # @type Address: String
        # @param AccessMode: 权限规则访问模式（1：只读；2：读写）
        # @type AccessMode: Integer
        # @param Priority: 优先级（取值范围1~100，值越小优先级越高）
        # @type Priority: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AccessRuleId, :Address, :AccessMode, :Priority, :CreateTime
        
        def initialize(accessruleid=nil, address=nil, accessmode=nil, priority=nil, createtime=nil)
          @AccessRuleId = accessruleid
          @Address = address
          @AccessMode = accessmode
          @Priority = priority
          @CreateTime = createtime
        end

        def deserialize(params)
          @AccessRuleId = params['AccessRuleId']
          @Address = params['Address']
          @AccessMode = params['AccessMode']
          @Priority = params['Priority']
          @CreateTime = params['CreateTime']
        end
      end

      # CreateAccessGroup请求参数结构体
      class CreateAccessGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccessGroupName: 权限组名称
        # @type AccessGroupName: String
        # @param Description: 权限组描述
        # @type Description: String

        attr_accessor :AccessGroupName, :Description
        
        def initialize(accessgroupname=nil, description=nil)
          @AccessGroupName = accessgroupname
          @Description = description
        end

        def deserialize(params)
          @AccessGroupName = params['AccessGroupName']
          @Description = params['Description']
        end
      end

      # CreateAccessGroup返回参数结构体
      class CreateAccessGroupResponse < TencentCloud::Common::AbstractModel
        # @param AccessGroup: 权限组
        # @type AccessGroup: :class:`Tencentcloud::Chdfs.v20190718.models.AccessGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessGroup, :RequestId
        
        def initialize(accessgroup=nil, requestid=nil)
          @AccessGroup = accessgroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessGroup'].nil?
            @AccessGroup = AccessGroup.new
            @AccessGroup.deserialize(params['AccessGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAccessRules请求参数结构体
      class CreateAccessRulesRequest < TencentCloud::Common::AbstractModel
        # @param AccessRules: 多个权限规则，上限为10
        # @type AccessRules: Array
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String

        attr_accessor :AccessRules, :AccessGroupId
        
        def initialize(accessrules=nil, accessgroupid=nil)
          @AccessRules = accessrules
          @AccessGroupId = accessgroupid
        end

        def deserialize(params)
          unless params['AccessRules'].nil?
            @AccessRules = []
            params['AccessRules'].each do |i|
              accessrule_tmp = AccessRule.new
              accessrule_tmp.deserialize(i)
              @AccessRules << accessrule_tmp
            end
          end
          @AccessGroupId = params['AccessGroupId']
        end
      end

      # CreateAccessRules返回参数结构体
      class CreateAccessRulesResponse < TencentCloud::Common::AbstractModel
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

      # CreateFileSystem请求参数结构体
      class CreateFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemName: 文件系统名称
        # @type FileSystemName: String
        # @param CapacityQuota: 文件系统容量（byte），下限为1G，上限为1P，且必须是1G的整数倍
        # @type CapacityQuota: Integer
        # @param Description: 文件系统描述
        # @type Description: String

        attr_accessor :FileSystemName, :CapacityQuota, :Description
        
        def initialize(filesystemname=nil, capacityquota=nil, description=nil)
          @FileSystemName = filesystemname
          @CapacityQuota = capacityquota
          @Description = description
        end

        def deserialize(params)
          @FileSystemName = params['FileSystemName']
          @CapacityQuota = params['CapacityQuota']
          @Description = params['Description']
        end
      end

      # CreateFileSystem返回参数结构体
      class CreateFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param FileSystem: 文件系统
        # @type FileSystem: :class:`Tencentcloud::Chdfs.v20190718.models.FileSystem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystem, :RequestId
        
        def initialize(filesystem=nil, requestid=nil)
          @FileSystem = filesystem
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystem'].nil?
            @FileSystem = FileSystem.new
            @FileSystem.deserialize(params['FileSystem'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLifeCycleRules请求参数结构体
      class CreateLifeCycleRulesRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param LifeCycleRules: 多个生命周期规则，上限为10
        # @type LifeCycleRules: Array

        attr_accessor :FileSystemId, :LifeCycleRules
        
        def initialize(filesystemid=nil, lifecyclerules=nil)
          @FileSystemId = filesystemid
          @LifeCycleRules = lifecyclerules
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['LifeCycleRules'].nil?
            @LifeCycleRules = []
            params['LifeCycleRules'].each do |i|
              lifecyclerule_tmp = LifeCycleRule.new
              lifecyclerule_tmp.deserialize(i)
              @LifeCycleRules << lifecyclerule_tmp
            end
          end
        end
      end

      # CreateLifeCycleRules返回参数结构体
      class CreateLifeCycleRulesResponse < TencentCloud::Common::AbstractModel
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

      # CreateMountPoint请求参数结构体
      class CreateMountPointRequest < TencentCloud::Common::AbstractModel
        # @param MountPointName: 挂载点名称
        # @type MountPointName: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param MountPointStatus: 挂载点状态（1：打开；2：关闭）
        # @type MountPointStatus: Integer
        # @param VpcType: VPC网络类型（1：CVM；2：黑石1.0；3：黑石2.0）
        # @type VpcType: Integer

        attr_accessor :MountPointName, :FileSystemId, :AccessGroupId, :VpcId, :MountPointStatus, :VpcType
        
        def initialize(mountpointname=nil, filesystemid=nil, accessgroupid=nil, vpcid=nil, mountpointstatus=nil, vpctype=nil)
          @MountPointName = mountpointname
          @FileSystemId = filesystemid
          @AccessGroupId = accessgroupid
          @VpcId = vpcid
          @MountPointStatus = mountpointstatus
          @VpcType = vpctype
        end

        def deserialize(params)
          @MountPointName = params['MountPointName']
          @FileSystemId = params['FileSystemId']
          @AccessGroupId = params['AccessGroupId']
          @VpcId = params['VpcId']
          @MountPointStatus = params['MountPointStatus']
          @VpcType = params['VpcType']
        end
      end

      # CreateMountPoint返回参数结构体
      class CreateMountPointResponse < TencentCloud::Common::AbstractModel
        # @param MountPoint: 挂载点
        # @type MountPoint: :class:`Tencentcloud::Chdfs.v20190718.models.MountPoint`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MountPoint, :RequestId
        
        def initialize(mountpoint=nil, requestid=nil)
          @MountPoint = mountpoint
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MountPoint'].nil?
            @MountPoint = MountPoint.new
            @MountPoint.deserialize(params['MountPoint'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRestoreTasks请求参数结构体
      class CreateRestoreTasksRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param RestoreTasks: 多个回热任务，上限为10
        # @type RestoreTasks: Array

        attr_accessor :FileSystemId, :RestoreTasks
        
        def initialize(filesystemid=nil, restoretasks=nil)
          @FileSystemId = filesystemid
          @RestoreTasks = restoretasks
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['RestoreTasks'].nil?
            @RestoreTasks = []
            params['RestoreTasks'].each do |i|
              restoretask_tmp = RestoreTask.new
              restoretask_tmp.deserialize(i)
              @RestoreTasks << restoretask_tmp
            end
          end
        end
      end

      # CreateRestoreTasks返回参数结构体
      class CreateRestoreTasksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAccessGroup请求参数结构体
      class DeleteAccessGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String

        attr_accessor :AccessGroupId
        
        def initialize(accessgroupid=nil)
          @AccessGroupId = accessgroupid
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
        end
      end

      # DeleteAccessGroup返回参数结构体
      class DeleteAccessGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAccessRules请求参数结构体
      class DeleteAccessRulesRequest < TencentCloud::Common::AbstractModel
        # @param AccessRuleIds: 多个权限规则ID，上限为10
        # @type AccessRuleIds: Array

        attr_accessor :AccessRuleIds
        
        def initialize(accessruleids=nil)
          @AccessRuleIds = accessruleids
        end

        def deserialize(params)
          @AccessRuleIds = params['AccessRuleIds']
        end
      end

      # DeleteAccessRules返回参数结构体
      class DeleteAccessRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFileSystem请求参数结构体
      class DeleteFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DeleteFileSystem返回参数结构体
      class DeleteFileSystemResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLifeCycleRules请求参数结构体
      class DeleteLifeCycleRulesRequest < TencentCloud::Common::AbstractModel
        # @param LifeCycleRuleIds: 多个生命周期规则ID，上限为10
        # @type LifeCycleRuleIds: Array

        attr_accessor :LifeCycleRuleIds
        
        def initialize(lifecycleruleids=nil)
          @LifeCycleRuleIds = lifecycleruleids
        end

        def deserialize(params)
          @LifeCycleRuleIds = params['LifeCycleRuleIds']
        end
      end

      # DeleteLifeCycleRules返回参数结构体
      class DeleteLifeCycleRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMountPoint请求参数结构体
      class DeleteMountPointRequest < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String

        attr_accessor :MountPointId
        
        def initialize(mountpointid=nil)
          @MountPointId = mountpointid
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
        end
      end

      # DeleteMountPoint返回参数结构体
      class DeleteMountPointResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccessGroups请求参数结构体
      class DescribeAccessGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，Name可选“AccessGroupId“和“AccessGroupName”，Values上限为10
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为所有
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
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

      # DescribeAccessGroups返回参数结构体
      class DescribeAccessGroupsResponse < TencentCloud::Common::AbstractModel
        # @param AccessGroups: 权限组列表
        # @type AccessGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessGroups, :RequestId
        
        def initialize(accessgroups=nil, requestid=nil)
          @AccessGroups = accessgroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessGroups'].nil?
            @AccessGroups = []
            params['AccessGroups'].each do |i|
              accessgroup_tmp = AccessGroup.new
              accessgroup_tmp.deserialize(i)
              @AccessGroups << accessgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessRules请求参数结构体
      class DescribeAccessRulesRequest < TencentCloud::Common::AbstractModel
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为所有
        # @type Limit: Integer

        attr_accessor :AccessGroupId, :Offset, :Limit
        
        def initialize(accessgroupid=nil, offset=nil, limit=nil)
          @AccessGroupId = accessgroupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccessRules返回参数结构体
      class DescribeAccessRulesResponse < TencentCloud::Common::AbstractModel
        # @param AccessRules: 权限规则列表
        # @type AccessRules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessRules, :RequestId
        
        def initialize(accessrules=nil, requestid=nil)
          @AccessRules = accessrules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessRules'].nil?
            @AccessRules = []
            params['AccessRules'].each do |i|
              accessrule_tmp = AccessRule.new
              accessrule_tmp.deserialize(i)
              @AccessRules << accessrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSystem请求参数结构体
      class DescribeFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeFileSystem返回参数结构体
      class DescribeFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param FileSystem: 文件系统
        # @type FileSystem: :class:`Tencentcloud::Chdfs.v20190718.models.FileSystem`
        # @param FileSystemCapacityUsed: 文件系统已使用容量（已弃用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSystemCapacityUsed: Integer
        # @param CapacityUsed: 已使用容量（byte），包括标准和归档存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapacityUsed: Integer
        # @param ArchiveCapacityUsed: 已使用归档存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArchiveCapacityUsed: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystem, :FileSystemCapacityUsed, :CapacityUsed, :ArchiveCapacityUsed, :RequestId
        
        def initialize(filesystem=nil, filesystemcapacityused=nil, capacityused=nil, archivecapacityused=nil, requestid=nil)
          @FileSystem = filesystem
          @FileSystemCapacityUsed = filesystemcapacityused
          @CapacityUsed = capacityused
          @ArchiveCapacityUsed = archivecapacityused
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystem'].nil?
            @FileSystem = FileSystem.new
            @FileSystem.deserialize(params['FileSystem'])
          end
          @FileSystemCapacityUsed = params['FileSystemCapacityUsed']
          @CapacityUsed = params['CapacityUsed']
          @ArchiveCapacityUsed = params['ArchiveCapacityUsed']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSystems请求参数结构体
      class DescribeFileSystemsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为所有
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFileSystems返回参数结构体
      class DescribeFileSystemsResponse < TencentCloud::Common::AbstractModel
        # @param FileSystems: 文件系统列表
        # @type FileSystems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystems, :RequestId
        
        def initialize(filesystems=nil, requestid=nil)
          @FileSystems = filesystems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystems'].nil?
            @FileSystems = []
            params['FileSystems'].each do |i|
              filesystem_tmp = FileSystem.new
              filesystem_tmp.deserialize(i)
              @FileSystems << filesystem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLifeCycleRules请求参数结构体
      class DescribeLifeCycleRulesRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeLifeCycleRules返回参数结构体
      class DescribeLifeCycleRulesResponse < TencentCloud::Common::AbstractModel
        # @param LifeCycleRules: 生命周期规则列表
        # @type LifeCycleRules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LifeCycleRules, :RequestId
        
        def initialize(lifecyclerules=nil, requestid=nil)
          @LifeCycleRules = lifecyclerules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LifeCycleRules'].nil?
            @LifeCycleRules = []
            params['LifeCycleRules'].each do |i|
              lifecyclerule_tmp = LifeCycleRule.new
              lifecyclerule_tmp.deserialize(i)
              @LifeCycleRules << lifecyclerule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMountPoint请求参数结构体
      class DescribeMountPointRequest < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String

        attr_accessor :MountPointId
        
        def initialize(mountpointid=nil)
          @MountPointId = mountpointid
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
        end
      end

      # DescribeMountPoint返回参数结构体
      class DescribeMountPointResponse < TencentCloud::Common::AbstractModel
        # @param MountPoint: 挂载点
        # @type MountPoint: :class:`Tencentcloud::Chdfs.v20190718.models.MountPoint`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MountPoint, :RequestId
        
        def initialize(mountpoint=nil, requestid=nil)
          @MountPoint = mountpoint
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MountPoint'].nil?
            @MountPoint = MountPoint.new
            @MountPoint.deserialize(params['MountPoint'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMountPoints请求参数结构体
      class DescribeMountPointsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # 注意：若根据AccessGroupId查看挂载点列表，则无需设置FileSystemId
        # @type FileSystemId: String
        # @param AccessGroupId: 权限组ID
        # 注意：若根据FileSystemId查看挂载点列表，则无需设置AccessGroupId
        # @type AccessGroupId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为所有
        # @type Limit: Integer

        attr_accessor :FileSystemId, :AccessGroupId, :Offset, :Limit
        
        def initialize(filesystemid=nil, accessgroupid=nil, offset=nil, limit=nil)
          @FileSystemId = filesystemid
          @AccessGroupId = accessgroupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @AccessGroupId = params['AccessGroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMountPoints返回参数结构体
      class DescribeMountPointsResponse < TencentCloud::Common::AbstractModel
        # @param MountPoints: 挂载点列表
        # @type MountPoints: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MountPoints, :RequestId
        
        def initialize(mountpoints=nil, requestid=nil)
          @MountPoints = mountpoints
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MountPoints'].nil?
            @MountPoints = []
            params['MountPoints'].each do |i|
              mountpoint_tmp = MountPoint.new
              mountpoint_tmp.deserialize(i)
              @MountPoints << mountpoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTags请求参数结构体
      class DescribeResourceTagsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeResourceTags返回参数结构体
      class DescribeResourceTagsResponse < TencentCloud::Common::AbstractModel
        # @param Tags: 资源标签列表
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tags, :RequestId
        
        def initialize(tags=nil, requestid=nil)
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRestoreTasks请求参数结构体
      class DescribeRestoreTasksRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeRestoreTasks返回参数结构体
      class DescribeRestoreTasksResponse < TencentCloud::Common::AbstractModel
        # @param RestoreTasks: 回热任务列表
        # @type RestoreTasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RestoreTasks, :RequestId
        
        def initialize(restoretasks=nil, requestid=nil)
          @RestoreTasks = restoretasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RestoreTasks'].nil?
            @RestoreTasks = []
            params['RestoreTasks'].each do |i|
              restoretask_tmp = RestoreTask.new
              restoretask_tmp.deserialize(i)
              @RestoreTasks << restoretask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件系统
      class FileSystem < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: Integer
        # @param FileSystemName: 文件系统名称
        # @type FileSystemName: String
        # @param Description: 文件系统描述
        # @type Description: String
        # @param Region: 地域
        # @type Region: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param BlockSize: 文件系统块大小（byte）
        # @type BlockSize: Integer
        # @param CapacityQuota: 文件系统容量（byte）
        # @type CapacityQuota: Integer
        # @param Status: 文件系统状态（1：创建中；2：创建成功；3：创建失败）
        # @type Status: Integer

        attr_accessor :AppId, :FileSystemName, :Description, :Region, :FileSystemId, :CreateTime, :BlockSize, :CapacityQuota, :Status
        
        def initialize(appid=nil, filesystemname=nil, description=nil, region=nil, filesystemid=nil, createtime=nil, blocksize=nil, capacityquota=nil, status=nil)
          @AppId = appid
          @FileSystemName = filesystemname
          @Description = description
          @Region = region
          @FileSystemId = filesystemid
          @CreateTime = createtime
          @BlockSize = blocksize
          @CapacityQuota = capacityquota
          @Status = status
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FileSystemName = params['FileSystemName']
          @Description = params['Description']
          @Region = params['Region']
          @FileSystemId = params['FileSystemId']
          @CreateTime = params['CreateTime']
          @BlockSize = params['BlockSize']
          @CapacityQuota = params['CapacityQuota']
          @Status = params['Status']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段
        # @type Name: String
        # @param Values: 过滤值
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

      # 生命周期规则
      class LifeCycleRule < TencentCloud::Common::AbstractModel
        # @param LifeCycleRuleId: 生命周期规则ID
        # @type LifeCycleRuleId: Integer
        # @param LifeCycleRuleName: 生命周期规则名称
        # @type LifeCycleRuleName: String
        # @param Path: 生命周期规则路径（目录或文件）
        # @type Path: String
        # @param Transitions: 生命周期规则转换列表
        # @type Transitions: Array
        # @param Status: 生命周期规则状态（1：打开；2：关闭）
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :LifeCycleRuleId, :LifeCycleRuleName, :Path, :Transitions, :Status, :CreateTime
        
        def initialize(lifecycleruleid=nil, lifecyclerulename=nil, path=nil, transitions=nil, status=nil, createtime=nil)
          @LifeCycleRuleId = lifecycleruleid
          @LifeCycleRuleName = lifecyclerulename
          @Path = path
          @Transitions = transitions
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @LifeCycleRuleId = params['LifeCycleRuleId']
          @LifeCycleRuleName = params['LifeCycleRuleName']
          @Path = params['Path']
          unless params['Transitions'].nil?
            @Transitions = []
            params['Transitions'].each do |i|
              transition_tmp = Transition.new
              transition_tmp.deserialize(i)
              @Transitions << transition_tmp
            end
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # ModifyAccessGroup请求参数结构体
      class ModifyAccessGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param AccessGroupName: 权限组名称
        # @type AccessGroupName: String
        # @param Description: 权限组描述
        # @type Description: String

        attr_accessor :AccessGroupId, :AccessGroupName, :Description
        
        def initialize(accessgroupid=nil, accessgroupname=nil, description=nil)
          @AccessGroupId = accessgroupid
          @AccessGroupName = accessgroupname
          @Description = description
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
          @AccessGroupName = params['AccessGroupName']
          @Description = params['Description']
        end
      end

      # ModifyAccessGroup返回参数结构体
      class ModifyAccessGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccessRules请求参数结构体
      class ModifyAccessRulesRequest < TencentCloud::Common::AbstractModel
        # @param AccessRules: 多个权限规则，上限为10
        # @type AccessRules: Array

        attr_accessor :AccessRules
        
        def initialize(accessrules=nil)
          @AccessRules = accessrules
        end

        def deserialize(params)
          unless params['AccessRules'].nil?
            @AccessRules = []
            params['AccessRules'].each do |i|
              accessrule_tmp = AccessRule.new
              accessrule_tmp.deserialize(i)
              @AccessRules << accessrule_tmp
            end
          end
        end
      end

      # ModifyAccessRules返回参数结构体
      class ModifyAccessRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFileSystem请求参数结构体
      class ModifyFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param FileSystemName: 文件系统名称
        # @type FileSystemName: String
        # @param Description: 文件系统描述
        # @type Description: String
        # @param CapacityQuota: 文件系统容量（byte），下限为1G，上限为1P，且必须是1G的整数倍
        # 注意：修改的文件系统容量不能小于当前使用量
        # @type CapacityQuota: Integer

        attr_accessor :FileSystemId, :FileSystemName, :Description, :CapacityQuota
        
        def initialize(filesystemid=nil, filesystemname=nil, description=nil, capacityquota=nil)
          @FileSystemId = filesystemid
          @FileSystemName = filesystemname
          @Description = description
          @CapacityQuota = capacityquota
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FileSystemName = params['FileSystemName']
          @Description = params['Description']
          @CapacityQuota = params['CapacityQuota']
        end
      end

      # ModifyFileSystem返回参数结构体
      class ModifyFileSystemResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLifeCycleRules请求参数结构体
      class ModifyLifeCycleRulesRequest < TencentCloud::Common::AbstractModel
        # @param LifeCycleRules: 多个生命周期规则，上限为10
        # @type LifeCycleRules: Array

        attr_accessor :LifeCycleRules
        
        def initialize(lifecyclerules=nil)
          @LifeCycleRules = lifecyclerules
        end

        def deserialize(params)
          unless params['LifeCycleRules'].nil?
            @LifeCycleRules = []
            params['LifeCycleRules'].each do |i|
              lifecyclerule_tmp = LifeCycleRule.new
              lifecyclerule_tmp.deserialize(i)
              @LifeCycleRules << lifecyclerule_tmp
            end
          end
        end
      end

      # ModifyLifeCycleRules返回参数结构体
      class ModifyLifeCycleRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMountPoint请求参数结构体
      class ModifyMountPointRequest < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String
        # @param MountPointName: 挂载点名称
        # @type MountPointName: String
        # @param MountPointStatus: 挂载点状态
        # @type MountPointStatus: Integer
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String

        attr_accessor :MountPointId, :MountPointName, :MountPointStatus, :AccessGroupId
        
        def initialize(mountpointid=nil, mountpointname=nil, mountpointstatus=nil, accessgroupid=nil)
          @MountPointId = mountpointid
          @MountPointName = mountpointname
          @MountPointStatus = mountpointstatus
          @AccessGroupId = accessgroupid
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @MountPointName = params['MountPointName']
          @MountPointStatus = params['MountPointStatus']
          @AccessGroupId = params['AccessGroupId']
        end
      end

      # ModifyMountPoint返回参数结构体
      class ModifyMountPointResponse < TencentCloud::Common::AbstractModel
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

      # ModifyResourceTags请求参数结构体
      class ModifyResourceTagsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param Tags: 多个资源标签，可以为空数组
        # @type Tags: Array

        attr_accessor :FileSystemId, :Tags
        
        def initialize(filesystemid=nil, tags=nil)
          @FileSystemId = filesystemid
          @Tags = tags
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # ModifyResourceTags返回参数结构体
      class ModifyResourceTagsResponse < TencentCloud::Common::AbstractModel
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

      # 挂载点
      class MountPoint < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String
        # @param MountPointName: 挂载点名称
        # @type MountPointName: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param Status: 挂载点状态（1：打开；2：关闭）
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpcType: VPC网络类型
        # @type VpcType: Integer

        attr_accessor :MountPointId, :MountPointName, :FileSystemId, :AccessGroupId, :VpcId, :Status, :CreateTime, :VpcType
        
        def initialize(mountpointid=nil, mountpointname=nil, filesystemid=nil, accessgroupid=nil, vpcid=nil, status=nil, createtime=nil, vpctype=nil)
          @MountPointId = mountpointid
          @MountPointName = mountpointname
          @FileSystemId = filesystemid
          @AccessGroupId = accessgroupid
          @VpcId = vpcid
          @Status = status
          @CreateTime = createtime
          @VpcType = vpctype
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @MountPointName = params['MountPointName']
          @FileSystemId = params['FileSystemId']
          @AccessGroupId = params['AccessGroupId']
          @VpcId = params['VpcId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @VpcType = params['VpcType']
        end
      end

      # 回热任务
      class RestoreTask < TencentCloud::Common::AbstractModel
        # @param RestoreTaskId: 回热任务ID
        # @type RestoreTaskId: Integer
        # @param FilePath: 回热任务文件路径
        # @type FilePath: String
        # @param Type: 回热任务类型（1：标准；2：极速；3：批量）
        # @type Type: Integer
        # @param Days: 指定恢复出的临时副本的有效时长（单位天）
        # @type Days: Integer
        # @param Status: 回热任务状态（1：绑定文件中；2：绑定文件完成；3：文件回热中；4：文件回热完成）
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :RestoreTaskId, :FilePath, :Type, :Days, :Status, :CreateTime
        
        def initialize(restoretaskid=nil, filepath=nil, type=nil, days=nil, status=nil, createtime=nil)
          @RestoreTaskId = restoretaskid
          @FilePath = filepath
          @Type = type
          @Days = days
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @RestoreTaskId = params['RestoreTaskId']
          @FilePath = params['FilePath']
          @Type = params['Type']
          @Days = params['Days']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 资源标签。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 生命周期规则转换属性
      class Transition < TencentCloud::Common::AbstractModel
        # @param Days: 触发时间（单位天）
        # @type Days: Integer
        # @param Type: 转换类型（1：归档；2：删除）
        # @type Type: Integer

        attr_accessor :Days, :Type
        
        def initialize(days=nil, type=nil)
          @Days = days
          @Type = type
        end

        def deserialize(params)
          @Days = params['Days']
          @Type = params['Type']
        end
      end

    end
  end
end

