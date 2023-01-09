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
    module V20201112
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
        # @param VpcType: VPC网络类型（1：CVM；2：黑石1.0）
        # @type VpcType: Integer
        # @param VpcId: VPC网络ID
        # @type VpcId: String

        attr_accessor :AccessGroupId, :AccessGroupName, :Description, :CreateTime, :VpcType, :VpcId
        
        def initialize(accessgroupid=nil, accessgroupname=nil, description=nil, createtime=nil, vpctype=nil, vpcid=nil)
          @AccessGroupId = accessgroupid
          @AccessGroupName = accessgroupname
          @Description = description
          @CreateTime = createtime
          @VpcType = vpctype
          @VpcId = vpcid
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
          @AccessGroupName = params['AccessGroupName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @VpcType = params['VpcType']
          @VpcId = params['VpcId']
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

      # AssociateAccessGroups请求参数结构体
      class AssociateAccessGroupsRequest < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String
        # @param AccessGroupIds: 权限组ID列表
        # @type AccessGroupIds: Array

        attr_accessor :MountPointId, :AccessGroupIds
        
        def initialize(mountpointid=nil, accessgroupids=nil)
          @MountPointId = mountpointid
          @AccessGroupIds = accessgroupids
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @AccessGroupIds = params['AccessGroupIds']
        end
      end

      # AssociateAccessGroups返回参数结构体
      class AssociateAccessGroupsResponse < TencentCloud::Common::AbstractModel
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

      # CreateAccessGroup请求参数结构体
      class CreateAccessGroupRequest < TencentCloud::Common::AbstractModel
        # @param AccessGroupName: 权限组名称
        # @type AccessGroupName: String
        # @param VpcType: VPC网络类型（1：CVM；2：黑石1.0）
        # @type VpcType: Integer
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param Description: 权限组描述，默认为空字符串
        # @type Description: String

        attr_accessor :AccessGroupName, :VpcType, :VpcId, :Description
        
        def initialize(accessgroupname=nil, vpctype=nil, vpcid=nil, description=nil)
          @AccessGroupName = accessgroupname
          @VpcType = vpctype
          @VpcId = vpcid
          @Description = description
        end

        def deserialize(params)
          @AccessGroupName = params['AccessGroupName']
          @VpcType = params['VpcType']
          @VpcId = params['VpcId']
          @Description = params['Description']
        end
      end

      # CreateAccessGroup返回参数结构体
      class CreateAccessGroupResponse < TencentCloud::Common::AbstractModel
        # @param AccessGroup: 权限组
        # @type AccessGroup: :class:`Tencentcloud::Chdfs.v20201112.models.AccessGroup`
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
        # @param AccessRules: 权限规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateFileSystem请求参数结构体
      class CreateFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemName: 文件系统名称
        # @type FileSystemName: String
        # @param CapacityQuota: 文件系统容量（byte），下限为1GB，上限为1PB，且必须是1GB的整数倍
        # @type CapacityQuota: Integer
        # @param PosixAcl: 是否校验POSIX ACL
        # @type PosixAcl: Boolean
        # @param Description: 文件系统描述，默认为空字符串
        # @type Description: String
        # @param SuperUsers: 超级用户名列表，默认为空数组
        # @type SuperUsers: Array
        # @param RootInodeUser: 根目录Inode用户名，默认为hadoop
        # @type RootInodeUser: String
        # @param RootInodeGroup: 根目录Inode组名，默认为supergroup
        # @type RootInodeGroup: String
        # @param EnableRanger: 是否打开Ranger地址校验
        # @type EnableRanger: Boolean
        # @param RangerServiceAddresses: Ranger地址列表，默认为空数组
        # @type RangerServiceAddresses: Array
        # @param Tags: 多个资源标签，可以为空数组
        # @type Tags: Array

        attr_accessor :FileSystemName, :CapacityQuota, :PosixAcl, :Description, :SuperUsers, :RootInodeUser, :RootInodeGroup, :EnableRanger, :RangerServiceAddresses, :Tags
        
        def initialize(filesystemname=nil, capacityquota=nil, posixacl=nil, description=nil, superusers=nil, rootinodeuser=nil, rootinodegroup=nil, enableranger=nil, rangerserviceaddresses=nil, tags=nil)
          @FileSystemName = filesystemname
          @CapacityQuota = capacityquota
          @PosixAcl = posixacl
          @Description = description
          @SuperUsers = superusers
          @RootInodeUser = rootinodeuser
          @RootInodeGroup = rootinodegroup
          @EnableRanger = enableranger
          @RangerServiceAddresses = rangerserviceaddresses
          @Tags = tags
        end

        def deserialize(params)
          @FileSystemName = params['FileSystemName']
          @CapacityQuota = params['CapacityQuota']
          @PosixAcl = params['PosixAcl']
          @Description = params['Description']
          @SuperUsers = params['SuperUsers']
          @RootInodeUser = params['RootInodeUser']
          @RootInodeGroup = params['RootInodeGroup']
          @EnableRanger = params['EnableRanger']
          @RangerServiceAddresses = params['RangerServiceAddresses']
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

      # CreateFileSystem返回参数结构体
      class CreateFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param FileSystem: 文件系统
        # @type FileSystem: :class:`Tencentcloud::Chdfs.v20201112.models.FileSystem`
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
        # @param MountPointStatus: 挂载点状态（1：打开；2：关闭）
        # @type MountPointStatus: Integer

        attr_accessor :MountPointName, :FileSystemId, :MountPointStatus
        
        def initialize(mountpointname=nil, filesystemid=nil, mountpointstatus=nil)
          @MountPointName = mountpointname
          @FileSystemId = filesystemid
          @MountPointStatus = mountpointstatus
        end

        def deserialize(params)
          @MountPointName = params['MountPointName']
          @FileSystemId = params['FileSystemId']
          @MountPointStatus = params['MountPointStatus']
        end
      end

      # CreateMountPoint返回参数结构体
      class CreateMountPointResponse < TencentCloud::Common::AbstractModel
        # @param MountPoint: 挂载点
        # @type MountPoint: :class:`Tencentcloud::Chdfs.v20201112.models.MountPoint`
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

      # DescribeAccessGroup请求参数结构体
      class DescribeAccessGroupRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAccessGroup返回参数结构体
      class DescribeAccessGroupResponse < TencentCloud::Common::AbstractModel
        # @param AccessGroup: 权限组
        # @type AccessGroup: :class:`Tencentcloud::Chdfs.v20201112.models.AccessGroup`
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

      # DescribeAccessGroups请求参数结构体
      class DescribeAccessGroupsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC网络ID
        # 备注：入参只能指定VpcId和OwnerUin的其中一个
        # @type VpcId: String
        # @param OwnerUin: 资源所属者Uin
        # @type OwnerUin: Integer

        attr_accessor :VpcId, :OwnerUin
        
        def initialize(vpcid=nil, owneruin=nil)
          @VpcId = vpcid
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @OwnerUin = params['OwnerUin']
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

        attr_accessor :AccessGroupId
        
        def initialize(accessgroupid=nil)
          @AccessGroupId = accessgroupid
        end

        def deserialize(params)
          @AccessGroupId = params['AccessGroupId']
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
        # @type FileSystem: :class:`Tencentcloud::Chdfs.v20201112.models.FileSystem`
        # @param CapacityUsed: 文件系统已使用容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CapacityUsed: Integer
        # @param ArchiveCapacityUsed: 已使用COS归档存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArchiveCapacityUsed: Integer
        # @param StandardCapacityUsed: 已使用COS标准存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardCapacityUsed: Integer
        # @param DegradeCapacityUsed: 已使用COS低频存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DegradeCapacityUsed: Integer
        # @param DeepArchiveCapacityUsed: 已使用COS深度归档存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeepArchiveCapacityUsed: Integer
        # @param IntelligentCapacityUsed: 已使用COS智能分层存储容量（byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntelligentCapacityUsed: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystem, :CapacityUsed, :ArchiveCapacityUsed, :StandardCapacityUsed, :DegradeCapacityUsed, :DeepArchiveCapacityUsed, :IntelligentCapacityUsed, :RequestId
        
        def initialize(filesystem=nil, capacityused=nil, archivecapacityused=nil, standardcapacityused=nil, degradecapacityused=nil, deeparchivecapacityused=nil, intelligentcapacityused=nil, requestid=nil)
          @FileSystem = filesystem
          @CapacityUsed = capacityused
          @ArchiveCapacityUsed = archivecapacityused
          @StandardCapacityUsed = standardcapacityused
          @DegradeCapacityUsed = degradecapacityused
          @DeepArchiveCapacityUsed = deeparchivecapacityused
          @IntelligentCapacityUsed = intelligentcapacityused
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystem'].nil?
            @FileSystem = FileSystem.new
            @FileSystem.deserialize(params['FileSystem'])
          end
          @CapacityUsed = params['CapacityUsed']
          @ArchiveCapacityUsed = params['ArchiveCapacityUsed']
          @StandardCapacityUsed = params['StandardCapacityUsed']
          @DegradeCapacityUsed = params['DegradeCapacityUsed']
          @DeepArchiveCapacityUsed = params['DeepArchiveCapacityUsed']
          @IntelligentCapacityUsed = params['IntelligentCapacityUsed']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSystems请求参数结构体
      class DescribeFileSystemsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
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
        # @type MountPoint: :class:`Tencentcloud::Chdfs.v20201112.models.MountPoint`
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
        # 备注：入参只能指定AccessGroupId、FileSystemId和OwnerUin的其中一个
        # @type FileSystemId: String
        # @param AccessGroupId: 权限组ID
        # @type AccessGroupId: String
        # @param OwnerUin: 资源所属者Uin
        # @type OwnerUin: Integer

        attr_accessor :FileSystemId, :AccessGroupId, :OwnerUin
        
        def initialize(filesystemid=nil, accessgroupid=nil, owneruin=nil)
          @FileSystemId = filesystemid
          @AccessGroupId = accessgroupid
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @AccessGroupId = params['AccessGroupId']
          @OwnerUin = params['OwnerUin']
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

      # DisassociateAccessGroups请求参数结构体
      class DisassociateAccessGroupsRequest < TencentCloud::Common::AbstractModel
        # @param MountPointId: 挂载点ID
        # @type MountPointId: String
        # @param AccessGroupIds: 权限组ID列表
        # @type AccessGroupIds: Array

        attr_accessor :MountPointId, :AccessGroupIds
        
        def initialize(mountpointid=nil, accessgroupids=nil)
          @MountPointId = mountpointid
          @AccessGroupIds = accessgroupids
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @AccessGroupIds = params['AccessGroupIds']
        end
      end

      # DisassociateAccessGroups返回参数结构体
      class DisassociateAccessGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 文件系统
      class FileSystem < TencentCloud::Common::AbstractModel
        # @param AppId: 资源所属用户AppId
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
        # @param SuperUsers: 超级用户名列表
        # @type SuperUsers: Array
        # @param PosixAcl: POSIX权限控制
        # @type PosixAcl: Boolean
        # @param EnableRanger: 是否打开Ranger地址校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRanger: Boolean
        # @param RangerServiceAddresses: Ranger地址列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangerServiceAddresses: Array

        attr_accessor :AppId, :FileSystemName, :Description, :Region, :FileSystemId, :CreateTime, :BlockSize, :CapacityQuota, :Status, :SuperUsers, :PosixAcl, :EnableRanger, :RangerServiceAddresses
        
        def initialize(appid=nil, filesystemname=nil, description=nil, region=nil, filesystemid=nil, createtime=nil, blocksize=nil, capacityquota=nil, status=nil, superusers=nil, posixacl=nil, enableranger=nil, rangerserviceaddresses=nil)
          @AppId = appid
          @FileSystemName = filesystemname
          @Description = description
          @Region = region
          @FileSystemId = filesystemid
          @CreateTime = createtime
          @BlockSize = blocksize
          @CapacityQuota = capacityquota
          @Status = status
          @SuperUsers = superusers
          @PosixAcl = posixacl
          @EnableRanger = enableranger
          @RangerServiceAddresses = rangerserviceaddresses
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
          @SuperUsers = params['SuperUsers']
          @PosixAcl = params['PosixAcl']
          @EnableRanger = params['EnableRanger']
          @RangerServiceAddresses = params['RangerServiceAddresses']
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
        # @param CapacityQuota: 文件系统容量（byte），下限为1GB，上限为1PB，且必须是1GB的整数倍
        # 注意：修改的文件系统容量不能小于当前使用量
        # @type CapacityQuota: Integer
        # @param SuperUsers: 超级用户名列表，可以为空数组
        # @type SuperUsers: Array
        # @param PosixAcl: 是否校验POSIX ACL
        # @type PosixAcl: Boolean
        # @param EnableRanger: 是否打开Ranger地址校验
        # @type EnableRanger: Boolean
        # @param RangerServiceAddresses: Ranger地址列表，可以为空数组
        # @type RangerServiceAddresses: Array

        attr_accessor :FileSystemId, :FileSystemName, :Description, :CapacityQuota, :SuperUsers, :PosixAcl, :EnableRanger, :RangerServiceAddresses
        
        def initialize(filesystemid=nil, filesystemname=nil, description=nil, capacityquota=nil, superusers=nil, posixacl=nil, enableranger=nil, rangerserviceaddresses=nil)
          @FileSystemId = filesystemid
          @FileSystemName = filesystemname
          @Description = description
          @CapacityQuota = capacityquota
          @SuperUsers = superusers
          @PosixAcl = posixacl
          @EnableRanger = enableranger
          @RangerServiceAddresses = rangerserviceaddresses
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FileSystemName = params['FileSystemName']
          @Description = params['Description']
          @CapacityQuota = params['CapacityQuota']
          @SuperUsers = params['SuperUsers']
          @PosixAcl = params['PosixAcl']
          @EnableRanger = params['EnableRanger']
          @RangerServiceAddresses = params['RangerServiceAddresses']
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

        attr_accessor :MountPointId, :MountPointName, :MountPointStatus
        
        def initialize(mountpointid=nil, mountpointname=nil, mountpointstatus=nil)
          @MountPointId = mountpointid
          @MountPointName = mountpointname
          @MountPointStatus = mountpointstatus
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @MountPointName = params['MountPointName']
          @MountPointStatus = params['MountPointStatus']
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
        # @param Status: 挂载点状态（1：打开；2：关闭）
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AccessGroupIds: 绑定的权限组ID列表
        # @type AccessGroupIds: Array

        attr_accessor :MountPointId, :MountPointName, :FileSystemId, :Status, :CreateTime, :AccessGroupIds
        
        def initialize(mountpointid=nil, mountpointname=nil, filesystemid=nil, status=nil, createtime=nil, accessgroupids=nil)
          @MountPointId = mountpointid
          @MountPointName = mountpointname
          @FileSystemId = filesystemid
          @Status = status
          @CreateTime = createtime
          @AccessGroupIds = accessgroupids
        end

        def deserialize(params)
          @MountPointId = params['MountPointId']
          @MountPointName = params['MountPointName']
          @FileSystemId = params['FileSystemId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @AccessGroupIds = params['AccessGroupIds']
        end
      end

      # 回热任务
      class RestoreTask < TencentCloud::Common::AbstractModel
        # @param RestoreTaskId: 回热任务ID
        # @type RestoreTaskId: Integer
        # @param FilePath: 回热任务文件路径
        # @type FilePath: String
        # @param Type: 回热任务类型（1：标准；2：极速；3：批量，暂时仅支持极速）
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
        # @param Type: 转换类型（1：归档；2：删除；3：低频；4：深度归档；5：智能分层）
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

