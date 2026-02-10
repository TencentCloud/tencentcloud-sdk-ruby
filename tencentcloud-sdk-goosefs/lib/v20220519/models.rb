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
  module Goosefs
    module V20220519
      # AddCrossVpcSubnetSupportForClientNode请求参数结构体
      class AddCrossVpcSubnetSupportForClientNodeRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param SubnetInfo: 子网信息
        # @type SubnetInfo: :class:`Tencentcloud::Goosefs.v20220519.models.SubnetInfo`

        attr_accessor :FileSystemId, :SubnetInfo

        def initialize(filesystemid=nil, subnetinfo=nil)
          @FileSystemId = filesystemid
          @SubnetInfo = subnetinfo
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['SubnetInfo'].nil?
            @SubnetInfo = SubnetInfo.new
            @SubnetInfo.deserialize(params['SubnetInfo'])
          end
        end
      end

      # AddCrossVpcSubnetSupportForClientNode返回参数结构体
      class AddCrossVpcSubnetSupportForClientNodeResponse < TencentCloud::Common::AbstractModel
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

      # AttachFileSystemBucket请求参数结构体
      class AttachFileSystemBucketRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 无
        # @type FileSystemId: String
        # @param Bucket: 关联新Bucket
        # @type Bucket: :class:`Tencentcloud::Goosefs.v20220519.models.MappedBucket`

        attr_accessor :FileSystemId, :Bucket

        def initialize(filesystemid=nil, bucket=nil)
          @FileSystemId = filesystemid
          @Bucket = bucket
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['Bucket'].nil?
            @Bucket = MappedBucket.new
            @Bucket.deserialize(params['Bucket'])
          end
        end
      end

      # AttachFileSystemBucket返回参数结构体
      class AttachFileSystemBucketResponse < TencentCloud::Common::AbstractModel
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

      # BatchAddClientNodes请求参数结构体
      class BatchAddClientNodesRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param ClientNodes: 添加客户端节点列表
        # @type ClientNodes: Array
        # @param SingleClusterFlag: 是否单集群默认是false
        # @type SingleClusterFlag: Boolean
        # @param ClusterId: 客户端集群id
        # @type ClusterId: String

        attr_accessor :FileSystemId, :ClientNodes, :SingleClusterFlag, :ClusterId

        def initialize(filesystemid=nil, clientnodes=nil, singleclusterflag=nil, clusterid=nil)
          @FileSystemId = filesystemid
          @ClientNodes = clientnodes
          @SingleClusterFlag = singleclusterflag
          @ClusterId = clusterid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['ClientNodes'].nil?
            @ClientNodes = []
            params['ClientNodes'].each do |i|
              linuxnodeattribute_tmp = LinuxNodeAttribute.new
              linuxnodeattribute_tmp.deserialize(i)
              @ClientNodes << linuxnodeattribute_tmp
            end
          end
          @SingleClusterFlag = params['SingleClusterFlag']
          @ClusterId = params['ClusterId']
        end
      end

      # BatchAddClientNodes返回参数结构体
      class BatchAddClientNodesResponse < TencentCloud::Common::AbstractModel
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

      # BatchDeleteClientNodes请求参数结构体
      class BatchDeleteClientNodesRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param ClientNodes: 删除的客户端节点列表
        # @type ClientNodes: Array
        # @param SingleClusterFlag: 是否单集群，默认是false
        # @type SingleClusterFlag: Boolean
        # @param ClusterId: 客户端集群id
        # @type ClusterId: String

        attr_accessor :FileSystemId, :ClientNodes, :SingleClusterFlag, :ClusterId

        def initialize(filesystemid=nil, clientnodes=nil, singleclusterflag=nil, clusterid=nil)
          @FileSystemId = filesystemid
          @ClientNodes = clientnodes
          @SingleClusterFlag = singleclusterflag
          @ClusterId = clusterid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['ClientNodes'].nil?
            @ClientNodes = []
            params['ClientNodes'].each do |i|
              linuxnodeattribute_tmp = LinuxNodeAttribute.new
              linuxnodeattribute_tmp.deserialize(i)
              @ClientNodes << linuxnodeattribute_tmp
            end
          end
          @SingleClusterFlag = params['SingleClusterFlag']
          @ClusterId = params['ClusterId']
        end
      end

      # BatchDeleteClientNodes返回参数结构体
      class BatchDeleteClientNodesResponse < TencentCloud::Common::AbstractModel
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

      # BuildClientNodeMountCommand请求参数结构体
      class BuildClientNodeMountCommandRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param CustomMountDir: 自定义挂载目录的绝对路径, 如果未指定, 则会使用默认值, 格式/goosefsx/${fs_id}-proxy. 比如/goosefsx/x-c60-a2b3d4-proxy
        # @type CustomMountDir: String
        # @param ClusterId: 客户端集群ID
        # @type ClusterId: String

        attr_accessor :FileSystemId, :CustomMountDir, :ClusterId

        def initialize(filesystemid=nil, custommountdir=nil, clusterid=nil)
          @FileSystemId = filesystemid
          @CustomMountDir = custommountdir
          @ClusterId = clusterid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @CustomMountDir = params['CustomMountDir']
          @ClusterId = params['ClusterId']
        end
      end

      # BuildClientNodeMountCommand返回参数结构体
      class BuildClientNodeMountCommandResponse < TencentCloud::Common::AbstractModel
        # @param Command: 挂载命令
        # @type Command: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Command, :RequestId

        def initialize(command=nil, requestid=nil)
          @Command = command
          @RequestId = requestid
        end

        def deserialize(params)
          @Command = params['Command']
          @RequestId = params['RequestId']
        end
      end

      # CancelLoadTask请求参数结构体
      class CancelLoadTaskRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param TaskId: 预热任务 ID
        # @type TaskId: String

        attr_accessor :ClusterId, :TaskId

        def initialize(clusterid=nil, taskid=nil)
          @ClusterId = clusterid
          @TaskId = taskid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TaskId = params['TaskId']
        end
      end

      # CancelLoadTask返回参数结构体
      class CancelLoadTaskResponse < TencentCloud::Common::AbstractModel
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

      # 付费信息详情
      class ChargeAttribute < TencentCloud::Common::AbstractModel
        # @param CurDeadline: 到期时间
        # @type CurDeadline: String
        # @param PayMode: 付费方式
        # @type PayMode: String
        # @param AutoRenewFlag: 自动付费标识：0:默认未设置 1:自动续费 2 不自动续费
        # @type AutoRenewFlag: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String

        attr_accessor :CurDeadline, :PayMode, :AutoRenewFlag, :ResourceId

        def initialize(curdeadline=nil, paymode=nil, autorenewflag=nil, resourceid=nil)
          @CurDeadline = curdeadline
          @PayMode = paymode
          @AutoRenewFlag = autorenewflag
          @ResourceId = resourceid
        end

        def deserialize(params)
          @CurDeadline = params['CurDeadline']
          @PayMode = params['PayMode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ResourceId = params['ResourceId']
        end
      end

      # 客户侧集群管理节点信息
      class ClientClusterManagerNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeIp: 客户端节点IP
        # @type NodeIp: String
        # @param NodeInstanceId: 节点Instance Id
        # @type NodeInstanceId: String
        # @param InitialPassword: 初始密码
        # @type InitialPassword: String
        # @param ClusterId: 所属集群id
        # @type ClusterId: String

        attr_accessor :NodeIp, :NodeInstanceId, :InitialPassword, :ClusterId

        def initialize(nodeip=nil, nodeinstanceid=nil, initialpassword=nil, clusterid=nil)
          @NodeIp = nodeip
          @NodeInstanceId = nodeinstanceid
          @InitialPassword = initialpassword
          @ClusterId = clusterid
        end

        def deserialize(params)
          @NodeIp = params['NodeIp']
          @NodeInstanceId = params['NodeInstanceId']
          @InitialPassword = params['InitialPassword']
          @ClusterId = params['ClusterId']
        end
      end

      # 客户端节点属性
      class ClientNodeAttribute < TencentCloud::Common::AbstractModel
        # @param ClientNodeIp: 客户端节点IP
        # @type ClientNodeIp: String
        # @param Status: 客户端节点服务状态, Active(运行中), Adding(添加中), Destroying(销毁中), Down(已停止)
        # @type Status: String
        # @param ClientType: 客户端节点类型，extend(扩展节点)，manager(管理节点)
        # @type ClientType: String
        # @param VpcId: 节点所属vpcid
        # @type VpcId: String
        # @param SubnetId: 节点所属子网id
        # @type SubnetId: String
        # @param InstanceId: cvmId
        # @type InstanceId: String
        # @param MountPoint: 自定义挂载点
        # @type MountPoint: String

        attr_accessor :ClientNodeIp, :Status, :ClientType, :VpcId, :SubnetId, :InstanceId, :MountPoint

        def initialize(clientnodeip=nil, status=nil, clienttype=nil, vpcid=nil, subnetid=nil, instanceid=nil, mountpoint=nil)
          @ClientNodeIp = clientnodeip
          @Status = status
          @ClientType = clienttype
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceId = instanceid
          @MountPoint = mountpoint
        end

        def deserialize(params)
          @ClientNodeIp = params['ClientNodeIp']
          @Status = params['Status']
          @ClientType = params['ClientType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceId = params['InstanceId']
          @MountPoint = params['MountPoint']
        end
      end

      # 查询Client Token
      class ClientToken < TencentCloud::Common::AbstractModel
        # @param NodeIp: 节点 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeIp: String
        # @param LocalDirectory: 挂载点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDirectory: String
        # @param GooseFSDirectory: 可以访问的 GooseFS 目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GooseFSDirectory: String
        # @param Token: token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String

        attr_accessor :NodeIp, :LocalDirectory, :GooseFSDirectory, :Token

        def initialize(nodeip=nil, localdirectory=nil, goosefsdirectory=nil, token=nil)
          @NodeIp = nodeip
          @LocalDirectory = localdirectory
          @GooseFSDirectory = goosefsdirectory
          @Token = token
        end

        def deserialize(params)
          @NodeIp = params['NodeIp']
          @LocalDirectory = params['LocalDirectory']
          @GooseFSDirectory = params['GooseFSDirectory']
          @Token = params['Token']
        end
      end

      # CreateDataRepositoryTask请求参数结构体
      class CreateDataRepositoryTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 数据流通任务类型, FS_TO_COS(文件系统到COS Bucket),或者COS_TO_FS(COS Bucket到文件系统)
        # @type TaskType: String
        # @param Bucket: COS存储桶名
        # @type Bucket: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param TaskPath: 对于FS_TO_COS, TaskPath是Bucket映射目录的相对路径, 对于COS_TO_FS是COS上的路径。如果置为空, 则表示全部数据
        # @type TaskPath: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param RepositoryType: 数据流通方式 MSP_AFM 手动加载  RAW_AFM 按需加载
        # @type RepositoryType: String
        # @param TextLocation: 文件列表下载地址，以http开头
        # @type TextLocation: String
        # @param EnableDataFlowSubPath: 是否开启自定义路径(暂时仅供预热使用)
        # @type EnableDataFlowSubPath: Boolean
        # @param DataFlowSubPath: 自定义路径(暂时仅供预热使用)
        # @type DataFlowSubPath: String

        attr_accessor :TaskType, :Bucket, :FileSystemId, :TaskPath, :TaskName, :RepositoryType, :TextLocation, :EnableDataFlowSubPath, :DataFlowSubPath

        def initialize(tasktype=nil, bucket=nil, filesystemid=nil, taskpath=nil, taskname=nil, repositorytype=nil, textlocation=nil, enabledataflowsubpath=nil, dataflowsubpath=nil)
          @TaskType = tasktype
          @Bucket = bucket
          @FileSystemId = filesystemid
          @TaskPath = taskpath
          @TaskName = taskname
          @RepositoryType = repositorytype
          @TextLocation = textlocation
          @EnableDataFlowSubPath = enabledataflowsubpath
          @DataFlowSubPath = dataflowsubpath
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Bucket = params['Bucket']
          @FileSystemId = params['FileSystemId']
          @TaskPath = params['TaskPath']
          @TaskName = params['TaskName']
          @RepositoryType = params['RepositoryType']
          @TextLocation = params['TextLocation']
          @EnableDataFlowSubPath = params['EnableDataFlowSubPath']
          @DataFlowSubPath = params['DataFlowSubPath']
        end
      end

      # CreateDataRepositoryTask返回参数结构体
      class CreateDataRepositoryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFileSystem请求参数结构体
      class CreateFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param Name: 文件系统名
        # @type Name: String
        # @param Description: 文件系统备注描述
        # @type Description: String
        # @param VpcId: vpc网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Zone: 子网所在的可用区
        # @type Zone: String
        # @param Type: 文件系统类型, 可填goosefs和goosefsx
        # @type Type: String
        # @param Tag: 文件系统关联的tag
        # @type Tag: Array
        # @param GooseFSxBuildElements: GooseFSx构建时要传递的参数
        # @type GooseFSxBuildElements: :class:`Tencentcloud::Goosefs.v20220519.models.GooseFSxBuildElement`
        # @param SecurityGroupId: 客户端集群所属的安全组
        # @type SecurityGroupId: String
        # @param ClusterPort: 集群ssh通信端口，默认是22
        # @type ClusterPort: Integer

        attr_accessor :Name, :Description, :VpcId, :SubnetId, :Zone, :Type, :Tag, :GooseFSxBuildElements, :SecurityGroupId, :ClusterPort
        extend Gem::Deprecate
        deprecate :Type, :none, 2026, 2
        deprecate :Type=, :none, 2026, 2

        def initialize(name=nil, description=nil, vpcid=nil, subnetid=nil, zone=nil, type=nil, tag=nil, goosefsxbuildelements=nil, securitygroupid=nil, clusterport=nil)
          @Name = name
          @Description = description
          @VpcId = vpcid
          @SubnetId = subnetid
          @Zone = zone
          @Type = type
          @Tag = tag
          @GooseFSxBuildElements = goosefsxbuildelements
          @SecurityGroupId = securitygroupid
          @ClusterPort = clusterport
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          @Type = params['Type']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          unless params['GooseFSxBuildElements'].nil?
            @GooseFSxBuildElements = GooseFSxBuildElement.new
            @GooseFSxBuildElements.deserialize(params['GooseFSxBuildElements'])
          end
          @SecurityGroupId = params['SecurityGroupId']
          @ClusterPort = params['ClusterPort']
        end
      end

      # CreateFileSystem返回参数结构体
      class CreateFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 创建成功返回的文件系统ID：
        # @type FileSystemId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystemId, :RequestId

        def initialize(filesystemid=nil, requestid=nil)
          @FileSystemId = filesystemid
          @RequestId = requestid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFileset请求参数结构体
      class CreateFilesetRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param FsetName: Fileset名称
        # @type FsetName: String
        # @param FsetDir: Fileset目录
        # @type FsetDir: String
        # @param QuotaSizeLimit: Fileset容量配额（需带单位G）
        # @type QuotaSizeLimit: String
        # @param QuotaFilesLimit: Fileset文件数配额
        # @type QuotaFilesLimit: String
        # @param AuditState: Fileset文件删除操作审计
        # @type AuditState: String

        attr_accessor :FileSystemId, :FsetName, :FsetDir, :QuotaSizeLimit, :QuotaFilesLimit, :AuditState

        def initialize(filesystemid=nil, fsetname=nil, fsetdir=nil, quotasizelimit=nil, quotafileslimit=nil, auditstate=nil)
          @FileSystemId = filesystemid
          @FsetName = fsetname
          @FsetDir = fsetdir
          @QuotaSizeLimit = quotasizelimit
          @QuotaFilesLimit = quotafileslimit
          @AuditState = auditstate
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FsetName = params['FsetName']
          @FsetDir = params['FsetDir']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaFilesLimit = params['QuotaFilesLimit']
          @AuditState = params['AuditState']
        end
      end

      # CreateFileset返回参数结构体
      class CreateFilesetResponse < TencentCloud::Common::AbstractModel
        # @param FsetId: Fileset id
        # @type FsetId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FsetId, :RequestId

        def initialize(fsetid=nil, requestid=nil)
          @FsetId = fsetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FsetId = params['FsetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadTask请求参数结构体
      class CreateLoadTaskRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param LoadTaskCreationAttrs: 创建预热任务参数
        # @type LoadTaskCreationAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.LoadTaskCreationAttrs`

        attr_accessor :ClusterId, :LoadTaskCreationAttrs

        def initialize(clusterid=nil, loadtaskcreationattrs=nil)
          @ClusterId = clusterid
          @LoadTaskCreationAttrs = loadtaskcreationattrs
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['LoadTaskCreationAttrs'].nil?
            @LoadTaskCreationAttrs = LoadTaskCreationAttrs.new
            @LoadTaskCreationAttrs.deserialize(params['LoadTaskCreationAttrs'])
          end
        end
      end

      # CreateLoadTask返回参数结构体
      class CreateLoadTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 预热任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCrossVpcSubnetSupportForClientNode请求参数结构体
      class DeleteCrossVpcSubnetSupportForClientNodeRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param SubnetInfo: 子网信息
        # @type SubnetInfo: :class:`Tencentcloud::Goosefs.v20220519.models.SubnetInfo`

        attr_accessor :FileSystemId, :SubnetInfo

        def initialize(filesystemid=nil, subnetinfo=nil)
          @FileSystemId = filesystemid
          @SubnetInfo = subnetinfo
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          unless params['SubnetInfo'].nil?
            @SubnetInfo = SubnetInfo.new
            @SubnetInfo.deserialize(params['SubnetInfo'])
          end
        end
      end

      # DeleteCrossVpcSubnetSupportForClientNode返回参数结构体
      class DeleteCrossVpcSubnetSupportForClientNodeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFileset请求参数结构体
      class DeleteFilesetRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param FsetId: Fileset id
        # @type FsetId: String

        attr_accessor :FileSystemId, :FsetId

        def initialize(filesystemid=nil, fsetid=nil)
          @FileSystemId = filesystemid
          @FsetId = fsetid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FsetId = params['FsetId']
        end
      end

      # DeleteFileset返回参数结构体
      class DeleteFilesetResponse < TencentCloud::Common::AbstractModel
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

      # DescribeClientNodes请求参数结构体
      class DescribeClientNodesRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统Id
        # @type FileSystemId: String

        attr_accessor :FileSystemId

        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeClientNodes返回参数结构体
      class DescribeClientNodesResponse < TencentCloud::Common::AbstractModel
        # @param ClientNodes: 客户端节点数组
        # @type ClientNodes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientNodes, :RequestId

        def initialize(clientnodes=nil, requestid=nil)
          @ClientNodes = clientnodes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientNodes'].nil?
            @ClientNodes = []
            params['ClientNodes'].each do |i|
              clientnodeattribute_tmp = ClientNodeAttribute.new
              clientnodeattribute_tmp.deserialize(i)
              @ClientNodes << clientnodeattribute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterClientToken请求参数结构体
      class DescribeClusterClientTokenRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterClientToken返回参数结构体
      class DescribeClusterClientTokenResponse < TencentCloud::Common::AbstractModel
        # @param ClientTokens: 客户端凭证
        # @type ClientTokens: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientTokens, :RequestId

        def initialize(clienttokens=nil, requestid=nil)
          @ClientTokens = clienttokens
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientTokens'].nil?
            @ClientTokens = []
            params['ClientTokens'].each do |i|
              clienttoken_tmp = ClientToken.new
              clienttoken_tmp.deserialize(i)
              @ClientTokens << clienttoken_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterRoleToken请求参数结构体
      class DescribeClusterRoleTokenRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RoleName: 角色名
        # @type RoleName: String

        attr_accessor :ClusterId, :RoleName

        def initialize(clusterid=nil, rolename=nil)
          @ClusterId = clusterid
          @RoleName = rolename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RoleName = params['RoleName']
        end
      end

      # DescribeClusterRoleToken返回参数结构体
      class DescribeClusterRoleTokenResponse < TencentCloud::Common::AbstractModel
        # @param RoleTokens: 角色凭证
        # @type RoleTokens: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleTokens, :RequestId

        def initialize(roletokens=nil, requestid=nil)
          @RoleTokens = roletokens
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleTokens'].nil?
            @RoleTokens = []
            params['RoleTokens'].each do |i|
              roletoken_tmp = RoleToken.new
              roletoken_tmp.deserialize(i)
              @RoleTokens << roletoken_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataRepositoryTaskStatus请求参数结构体
      class DescribeDataRepositoryTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: task id
        # @type TaskId: String
        # @param FileSystemId: file system id
        # @type FileSystemId: String

        attr_accessor :TaskId, :FileSystemId

        def initialize(taskid=nil, filesystemid=nil)
          @TaskId = taskid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeDataRepositoryTaskStatus返回参数结构体
      class DescribeDataRepositoryTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 任务状态 0(初始化中), 1(运行中), 2(已完成), 3(任务失败)
        # @type Status: Integer
        # @param FinishedFileNumber: 已完成的文件数量
        # @type FinishedFileNumber: Integer
        # @param FinishedCapacity: 已完成的数据量
        # @type FinishedCapacity: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :FinishedFileNumber, :FinishedCapacity, :RequestId

        def initialize(taskid=nil, status=nil, finishedfilenumber=nil, finishedcapacity=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @FinishedFileNumber = finishedfilenumber
          @FinishedCapacity = finishedcapacity
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FinishedFileNumber = params['FinishedFileNumber']
          @FinishedCapacity = params['FinishedCapacity']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSystemBuckets请求参数结构体
      class DescribeFileSystemBucketsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeFileSystemBuckets返回参数结构体
      class DescribeFileSystemBucketsResponse < TencentCloud::Common::AbstractModel
        # @param BucketList: bucket列表
        # @type BucketList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BucketList, :RequestId

        def initialize(bucketlist=nil, requestid=nil)
          @BucketList = bucketlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BucketList'].nil?
            @BucketList = []
            params['BucketList'].each do |i|
              mappedbucket_tmp = MappedBucket.new
              mappedbucket_tmp.deserialize(i)
              @BucketList << mappedbucket_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSystems请求参数结构体
      class DescribeFileSystemsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页的数量
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
        # @param FSAttributeList: 文件系统列表
        # @type FSAttributeList: Array
        # @param TotalCount: 总共的文件系统数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FSAttributeList, :TotalCount, :RequestId

        def initialize(fsattributelist=nil, totalcount=nil, requestid=nil)
          @FSAttributeList = fsattributelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FSAttributeList'].nil?
            @FSAttributeList = []
            params['FSAttributeList'].each do |i|
              fsattribute_tmp = FSAttribute.new
              fsattribute_tmp.deserialize(i)
              @FSAttributeList << fsattribute_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFilesetGeneralConfig请求参数结构体
      class DescribeFilesetGeneralConfigRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String

        attr_accessor :FileSystemId

        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeFilesetGeneralConfig返回参数结构体
      class DescribeFilesetGeneralConfigResponse < TencentCloud::Common::AbstractModel
        # @param EnforceQuotaOnRoot: 配额对root用户生效
        # @type EnforceQuotaOnRoot: String
        # @param Status: 配置状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnforceQuotaOnRoot, :Status, :RequestId

        def initialize(enforcequotaonroot=nil, status=nil, requestid=nil)
          @EnforceQuotaOnRoot = enforcequotaonroot
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @EnforceQuotaOnRoot = params['EnforceQuotaOnRoot']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFilesets请求参数结构体
      class DescribeFilesetsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param FilesetIds: FsetId列表
        # @type FilesetIds: Array
        # @param FilesetDirs: FsetDir列表
        # @type FilesetDirs: Array

        attr_accessor :FileSystemId, :FilesetIds, :FilesetDirs

        def initialize(filesystemid=nil, filesetids=nil, filesetdirs=nil)
          @FileSystemId = filesystemid
          @FilesetIds = filesetids
          @FilesetDirs = filesetdirs
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FilesetIds = params['FilesetIds']
          @FilesetDirs = params['FilesetDirs']
        end
      end

      # DescribeFilesets返回参数结构体
      class DescribeFilesetsResponse < TencentCloud::Common::AbstractModel
        # @param FilesetList: Fileset列表
        # @type FilesetList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilesetList, :RequestId

        def initialize(filesetlist=nil, requestid=nil)
          @FilesetList = filesetlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FilesetList'].nil?
            @FilesetList = []
            params['FilesetList'].each do |i|
              filesetinfo_tmp = FilesetInfo.new
              filesetinfo_tmp.deserialize(i)
              @FilesetList << filesetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadTask请求参数结构体
      class DescribeLoadTaskRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param TaskId: 预热任务 ID
        # @type TaskId: String

        attr_accessor :ClusterId, :TaskId

        def initialize(clusterid=nil, taskid=nil)
          @ClusterId = clusterid
          @TaskId = taskid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeLoadTask返回参数结构体
      class DescribeLoadTaskResponse < TencentCloud::Common::AbstractModel
        # @param LoadTaskAttrs: 预热任务参数
        # @type LoadTaskAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.LoadTaskAttrs`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadTaskAttrs, :RequestId

        def initialize(loadtaskattrs=nil, requestid=nil)
          @LoadTaskAttrs = loadtaskattrs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadTaskAttrs'].nil?
            @LoadTaskAttrs = LoadTaskAttrs.new
            @LoadTaskAttrs.deserialize(params['LoadTaskAttrs'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachFileSystemBucket请求参数结构体
      class DetachFileSystemBucketRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param BucketName: 要解绑的Bucket名
        # @type BucketName: String

        attr_accessor :FileSystemId, :BucketName

        def initialize(filesystemid=nil, bucketname=nil)
          @FileSystemId = filesystemid
          @BucketName = bucketname
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @BucketName = params['BucketName']
        end
      end

      # DetachFileSystemBucket返回参数结构体
      class DetachFileSystemBucketResponse < TencentCloud::Common::AbstractModel
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

      # 数据预热任务参数
      class DistributedLoadAttrs < TencentCloud::Common::AbstractModel
        # @param LoadType: 预热类型，枚举值 LoadByPath｜LoadByList
        # @type LoadType: String
        # @param SkipIfExists: 是否跳过相同文件，默认为 true
        # @type SkipIfExists: Boolean
        # @param LoadByPath: 预热路径，入参单条挂载路径。入参数LoadType为LoadByPath，该参数不应为空
        # @type LoadByPath: String
        # @param LoadByList: 通过文件列表批量预热，入参为 cos://bucket-appid/ 开头的 COS 路径，且仅支持 txt 格式文件，长度不能超过255个字符。入参数LoadType为LoadByList，该参数不应为空
        # @type LoadByList: String
        # @param Replica: 副本数配置，枚举值，可选值 SingleReplica（单副本，默认）｜MaxReplica（最大副本）
        # @type Replica: String
        # @param MetadataSync: 同步执行元数据预热，并基于预热后的元数据执行 DistributedLoad。默认为 false
        # @type MetadataSync: Boolean

        attr_accessor :LoadType, :SkipIfExists, :LoadByPath, :LoadByList, :Replica, :MetadataSync

        def initialize(loadtype=nil, skipifexists=nil, loadbypath=nil, loadbylist=nil, replica=nil, metadatasync=nil)
          @LoadType = loadtype
          @SkipIfExists = skipifexists
          @LoadByPath = loadbypath
          @LoadByList = loadbylist
          @Replica = replica
          @MetadataSync = metadatasync
        end

        def deserialize(params)
          @LoadType = params['LoadType']
          @SkipIfExists = params['SkipIfExists']
          @LoadByPath = params['LoadByPath']
          @LoadByList = params['LoadByList']
          @Replica = params['Replica']
          @MetadataSync = params['MetadataSync']
        end
      end

      # ExpandCapacity请求参数结构体
      class ExpandCapacityRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param ExpandedCapacity: 新增扩容的系统容量
        # @type ExpandedCapacity: Integer
        # @param ModifyType: 容量修改类型：add/sub
        # @type ModifyType: String

        attr_accessor :FileSystemId, :ExpandedCapacity, :ModifyType

        def initialize(filesystemid=nil, expandedcapacity=nil, modifytype=nil)
          @FileSystemId = filesystemid
          @ExpandedCapacity = expandedcapacity
          @ModifyType = modifytype
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @ExpandedCapacity = params['ExpandedCapacity']
          @ModifyType = params['ModifyType']
        end
      end

      # ExpandCapacity返回参数结构体
      class ExpandCapacityResponse < TencentCloud::Common::AbstractModel
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

      # 文件系统属性
      class FSAttribute < TencentCloud::Common::AbstractModel
        # @param Type: 文件系统类型, 可填goosefs和goosefsx
        # @type Type: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param GooseFSxAttribute: GooseFSx文件系统属性
        # @type GooseFSxAttribute: :class:`Tencentcloud::Goosefs.v20220519.models.GooseFSxAttribute`
        # @param Status: 文件系统状态 ACTIVE(运行中), CREATING(创建中), DESTROYING(销毁中), FAIL(创建失败),EXPANDING(扩容中),PROBING(容灾中)
        # @type Status: String
        # @param Name: 文件系统名
        # @type Name: String
        # @param Description: 文件系统备注描述
        # @type Description: String
        # @param VpcId: vpc ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Zone: 子网所在的可用区
        # @type Zone: String
        # @param Tag: Tag数组
        # @type Tag: Array
        # @param ModifyTime: 更新属性时间
        # @type ModifyTime: String
        # @param ChargeAttribute: 文件系统付费信息
        # @type ChargeAttribute: :class:`Tencentcloud::Goosefs.v20220519.models.ChargeAttribute`

        attr_accessor :Type, :FileSystemId, :CreateTime, :GooseFSxAttribute, :Status, :Name, :Description, :VpcId, :SubnetId, :Zone, :Tag, :ModifyTime, :ChargeAttribute

        def initialize(type=nil, filesystemid=nil, createtime=nil, goosefsxattribute=nil, status=nil, name=nil, description=nil, vpcid=nil, subnetid=nil, zone=nil, tag=nil, modifytime=nil, chargeattribute=nil)
          @Type = type
          @FileSystemId = filesystemid
          @CreateTime = createtime
          @GooseFSxAttribute = goosefsxattribute
          @Status = status
          @Name = name
          @Description = description
          @VpcId = vpcid
          @SubnetId = subnetid
          @Zone = zone
          @Tag = tag
          @ModifyTime = modifytime
          @ChargeAttribute = chargeattribute
        end

        def deserialize(params)
          @Type = params['Type']
          @FileSystemId = params['FileSystemId']
          @CreateTime = params['CreateTime']
          unless params['GooseFSxAttribute'].nil?
            @GooseFSxAttribute = GooseFSxAttribute.new
            @GooseFSxAttribute.deserialize(params['GooseFSxAttribute'])
          end
          @Status = params['Status']
          @Name = params['Name']
          @Description = params['Description']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @ModifyTime = params['ModifyTime']
          unless params['ChargeAttribute'].nil?
            @ChargeAttribute = ChargeAttribute.new
            @ChargeAttribute.deserialize(params['ChargeAttribute'])
          end
        end
      end

      # Fileset信息
      class FilesetInfo < TencentCloud::Common::AbstractModel
        # @param FsetId: Fileset id
        # @type FsetId: String
        # @param FsetName: Fileset名称
        # @type FsetName: String
        # @param FsetDir: Fileset目录
        # @type FsetDir: String
        # @param QuotaSizeLimit: Fileset容量配额限定值
        # @type QuotaSizeLimit: String
        # @param QuotaSizeUsed: 已使用容量配额
        # @type QuotaSizeUsed: String
        # @param QuotaSizeUsedPercent: 容量配额使用占比
        # @type QuotaSizeUsedPercent: String
        # @param QuotaFilesLimit: Fileset文件数配额限定值
        # @type QuotaFilesLimit: String
        # @param QuotaFilesUsed: 已使用文件数配额
        # @type QuotaFilesUsed: String
        # @param QuotaFilesUsedPercent: 文件数配额使用占比
        # @type QuotaFilesUsedPercent: String
        # @param AuditState: Fileset审计
        # @type AuditState: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Status: Fileset状态：creating 配置中 active 已生效 modify 修改中
        # @type Status: String

        attr_accessor :FsetId, :FsetName, :FsetDir, :QuotaSizeLimit, :QuotaSizeUsed, :QuotaSizeUsedPercent, :QuotaFilesLimit, :QuotaFilesUsed, :QuotaFilesUsedPercent, :AuditState, :CreateTime, :ModifyTime, :Status

        def initialize(fsetid=nil, fsetname=nil, fsetdir=nil, quotasizelimit=nil, quotasizeused=nil, quotasizeusedpercent=nil, quotafileslimit=nil, quotafilesused=nil, quotafilesusedpercent=nil, auditstate=nil, createtime=nil, modifytime=nil, status=nil)
          @FsetId = fsetid
          @FsetName = fsetname
          @FsetDir = fsetdir
          @QuotaSizeLimit = quotasizelimit
          @QuotaSizeUsed = quotasizeused
          @QuotaSizeUsedPercent = quotasizeusedpercent
          @QuotaFilesLimit = quotafileslimit
          @QuotaFilesUsed = quotafilesused
          @QuotaFilesUsedPercent = quotafilesusedpercent
          @AuditState = auditstate
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Status = status
        end

        def deserialize(params)
          @FsetId = params['FsetId']
          @FsetName = params['FsetName']
          @FsetDir = params['FsetDir']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaSizeUsed = params['QuotaSizeUsed']
          @QuotaSizeUsedPercent = params['QuotaSizeUsedPercent']
          @QuotaFilesLimit = params['QuotaFilesLimit']
          @QuotaFilesUsed = params['QuotaFilesUsed']
          @QuotaFilesUsedPercent = params['QuotaFilesUsedPercent']
          @AuditState = params['AuditState']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Status = params['Status']
        end
      end

      # GooseFSx文件系统的属性
      class GooseFSxAttribute < TencentCloud::Common::AbstractModel
        # @param Model: GooseFSx的型号
        # @type Model: String
        # @param Capacity: 容量单位是GB, 例如4608(4.5TB)
        # @type Capacity: Integer
        # @param MappedBucketList: 要关联映射的bucket列表
        # @type MappedBucketList: Array
        # @param ClientManagerNodeList: 客户侧管理节点信息
        # @type ClientManagerNodeList: Array

        attr_accessor :Model, :Capacity, :MappedBucketList, :ClientManagerNodeList

        def initialize(model=nil, capacity=nil, mappedbucketlist=nil, clientmanagernodelist=nil)
          @Model = model
          @Capacity = capacity
          @MappedBucketList = mappedbucketlist
          @ClientManagerNodeList = clientmanagernodelist
        end

        def deserialize(params)
          @Model = params['Model']
          @Capacity = params['Capacity']
          unless params['MappedBucketList'].nil?
            @MappedBucketList = []
            params['MappedBucketList'].each do |i|
              mappedbucket_tmp = MappedBucket.new
              mappedbucket_tmp.deserialize(i)
              @MappedBucketList << mappedbucket_tmp
            end
          end
          unless params['ClientManagerNodeList'].nil?
            @ClientManagerNodeList = []
            params['ClientManagerNodeList'].each do |i|
              clientclustermanagernodeinfo_tmp = ClientClusterManagerNodeInfo.new
              clientclustermanagernodeinfo_tmp.deserialize(i)
              @ClientManagerNodeList << clientclustermanagernodeinfo_tmp
            end
          end
        end
      end

      # GooseFSx创建时候的属性
      class GooseFSxBuildElement < TencentCloud::Common::AbstractModel
        # @param Model: GooseFSx的型号
        # @type Model: String
        # @param Capacity: 容量单位是GB, 例如4608(4.5TB)
        # @type Capacity: Integer
        # @param MappedBucketList: 要关联映射的bucket列表
        # @type MappedBucketList: Array

        attr_accessor :Model, :Capacity, :MappedBucketList
        extend Gem::Deprecate
        deprecate :MappedBucketList, :none, 2026, 2
        deprecate :MappedBucketList=, :none, 2026, 2

        def initialize(model=nil, capacity=nil, mappedbucketlist=nil)
          @Model = model
          @Capacity = capacity
          @MappedBucketList = mappedbucketlist
        end

        def deserialize(params)
          @Model = params['Model']
          @Capacity = params['Capacity']
          unless params['MappedBucketList'].nil?
            @MappedBucketList = []
            params['MappedBucketList'].each do |i|
              mappedbucket_tmp = MappedBucket.new
              mappedbucket_tmp.deserialize(i)
              @MappedBucketList << mappedbucket_tmp
            end
          end
        end
      end

      # 添加删除客户端节点列表
      class LinuxNodeAttribute < TencentCloud::Common::AbstractModel
        # @param InstanceId: cvmId
        # @type InstanceId: String
        # @param VpcId: 节点所属vpcid
        # @type VpcId: String
        # @param SubnetId: 节点所属子网id
        # @type SubnetId: String
        # @param LinuxClientNodeIp: linux客户端节点地址
        # @type LinuxClientNodeIp: String
        # @param MountPoint: 自定义挂载点
        # @type MountPoint: String

        attr_accessor :InstanceId, :VpcId, :SubnetId, :LinuxClientNodeIp, :MountPoint

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, linuxclientnodeip=nil, mountpoint=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @LinuxClientNodeIp = linuxclientnodeip
          @MountPoint = mountpoint
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LinuxClientNodeIp = params['LinuxClientNodeIp']
          @MountPoint = params['MountPoint']
        end
      end

      # ListLoadTasks请求参数结构体
      class ListLoadTasksRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 偏移量
        # @type Limit: Integer
        # @param StartTimestamp: 任务创建起始时间戳，默认为3天前：当前时间戳-86400*3
        # @type StartTimestamp: Integer
        # @param EndTimestamp: 任务变更时间戳
        # @type EndTimestamp: Integer
        # @param State: 筛选任务状态，枚举Waiting,Running,Canceled,Completed。默认返回所有任务
        # @type State: String
        # @param Priority: 筛选优先级任务，默认返回所有任务
        # @type Priority: Integer

        attr_accessor :ClusterId, :Offset, :Limit, :StartTimestamp, :EndTimestamp, :State, :Priority

        def initialize(clusterid=nil, offset=nil, limit=nil, starttimestamp=nil, endtimestamp=nil, state=nil, priority=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @StartTimestamp = starttimestamp
          @EndTimestamp = endtimestamp
          @State = state
          @Priority = priority
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTimestamp = params['StartTimestamp']
          @EndTimestamp = params['EndTimestamp']
          @State = params['State']
          @Priority = params['Priority']
        end
      end

      # ListLoadTasks返回参数结构体
      class ListLoadTasksResponse < TencentCloud::Common::AbstractModel
        # @param LoadTaskList: 预热任务参数
        # @type LoadTaskList: Array
        # @param TotalCount: 任务数总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadTaskList, :TotalCount, :RequestId

        def initialize(loadtasklist=nil, totalcount=nil, requestid=nil)
          @LoadTaskList = loadtasklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadTaskList'].nil?
            @LoadTaskList = []
            params['LoadTaskList'].each do |i|
              loadtaskattrs_tmp = LoadTaskAttrs.new
              loadtaskattrs_tmp.deserialize(i)
              @LoadTaskList << loadtaskattrs_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 预热任务参数
      class LoadTaskAttrs < TencentCloud::Common::AbstractModel
        # @param TaskId: 预热任务 ID
        # @type TaskId: String
        # @param TaskType: 预热任务类型，枚举值，MetadataLoad｜DistributedLoad
        # @type TaskType: String
        # @param Description: 任务描述，支持中文
        # @type Description: String
        # @param Priority: 任务优先级，数值越高代表优先级越高，边界值 1-9999，默认值为 1
        # @type Priority: Integer
        # @param MetadataLoadAttrs: 元数据预热任务参数，用于仅预热元数据时入参。入参数TaskType为MetadataLoad时，该参数不应为空。
        # @type MetadataLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.MetadataLoadAttrs`
        # @param DistributedLoadAttrs: 数据预热任务参数。入参数TaskType为DistributedLoad时，该参数不应为空。
        # @type DistributedLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.DistributedLoadAttrs`
        # @param ReportPath: 将任务执行报告写入 COS 的路径，如果不需要报告则入参空
        # @type ReportPath: String
        # @param State: 枚举，Completed，Running，Waiting，Cancelled
        # @type State: String
        # @param TaskMessage: 任务执行信息，打印预热文件成功个数，失败个数，预热耗时信息
        # @type TaskMessage: String
        # @param CreateTime: 预热任务创建时间
        # @type CreateTime: String
        # @param ModifyTime: 预热任务变更时间
        # @type ModifyTime: String
        # @param Requester: 任务提交账号，子账号或服务角色 ID
        # @type Requester: String

        attr_accessor :TaskId, :TaskType, :Description, :Priority, :MetadataLoadAttrs, :DistributedLoadAttrs, :ReportPath, :State, :TaskMessage, :CreateTime, :ModifyTime, :Requester

        def initialize(taskid=nil, tasktype=nil, description=nil, priority=nil, metadataloadattrs=nil, distributedloadattrs=nil, reportpath=nil, state=nil, taskmessage=nil, createtime=nil, modifytime=nil, requester=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @Description = description
          @Priority = priority
          @MetadataLoadAttrs = metadataloadattrs
          @DistributedLoadAttrs = distributedloadattrs
          @ReportPath = reportpath
          @State = state
          @TaskMessage = taskmessage
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Requester = requester
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @Description = params['Description']
          @Priority = params['Priority']
          unless params['MetadataLoadAttrs'].nil?
            @MetadataLoadAttrs = MetadataLoadAttrs.new
            @MetadataLoadAttrs.deserialize(params['MetadataLoadAttrs'])
          end
          unless params['DistributedLoadAttrs'].nil?
            @DistributedLoadAttrs = DistributedLoadAttrs.new
            @DistributedLoadAttrs.deserialize(params['DistributedLoadAttrs'])
          end
          @ReportPath = params['ReportPath']
          @State = params['State']
          @TaskMessage = params['TaskMessage']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Requester = params['Requester']
        end
      end

      # 创建预热任务
      class LoadTaskCreationAttrs < TencentCloud::Common::AbstractModel
        # @param TaskType: 预热任务类型，枚举值，MetadataLoad｜DistributedLoad。
        # @type TaskType: String
        # @param Priority: 任务优先级，数值越高代表优先级越高，边界值 1-9999，默认值为 1
        # @type Priority: Integer
        # @param Description: 任务描述，支持中文
        # @type Description: String
        # @param MetadataLoadAttrs: 元数据预热任务参数，用于仅预热元数据时入参。入参数TaskType为MetadataLoad时，该参数不应为空。
        # @type MetadataLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.MetadataLoadAttrs`
        # @param DistributedLoadAttrs: 数据预热任务参数。入参数TaskType为DistributedLoad时，该参数不应为空。
        # @type DistributedLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.DistributedLoadAttrs`
        # @param ReportPath: 将任务执行报告写入 COS 的路径，如果不需要报告则入参空
        # @type ReportPath: String

        attr_accessor :TaskType, :Priority, :Description, :MetadataLoadAttrs, :DistributedLoadAttrs, :ReportPath

        def initialize(tasktype=nil, priority=nil, description=nil, metadataloadattrs=nil, distributedloadattrs=nil, reportpath=nil)
          @TaskType = tasktype
          @Priority = priority
          @Description = description
          @MetadataLoadAttrs = metadataloadattrs
          @DistributedLoadAttrs = distributedloadattrs
          @ReportPath = reportpath
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Priority = params['Priority']
          @Description = params['Description']
          unless params['MetadataLoadAttrs'].nil?
            @MetadataLoadAttrs = MetadataLoadAttrs.new
            @MetadataLoadAttrs.deserialize(params['MetadataLoadAttrs'])
          end
          unless params['DistributedLoadAttrs'].nil?
            @DistributedLoadAttrs = DistributedLoadAttrs.new
            @DistributedLoadAttrs.deserialize(params['DistributedLoadAttrs'])
          end
          @ReportPath = params['ReportPath']
        end
      end

      # 关联的对象Bucket, 并将其映射到文件系统某个路径上
      class MappedBucket < TencentCloud::Common::AbstractModel
        # @param BucketName: 对象存储Bucket名
        # @type BucketName: String
        # @param FileSystemPath: 映射到的文件系统路径, 默认为/
        # @type FileSystemPath: String
        # @param DataRepositoryTaskAutoStrategy: 数据流动的自动策略, 包含加载与沉降。策略可以是多种的组合
        # 按需加载(OnDemandImport)
        # 自动加载元数据(AutoImportMeta)
        # 自动加载数据(AutoImportData)
        # 周期加载(PeriodImport)

        # 周期沉降(PeriodExport)
        # 立即沉降(ImmediateExport)
        # @type DataRepositoryTaskAutoStrategy: Array
        # @param RuleId: 绑定bucket的数据流动策略ID
        # @type RuleId: String
        # @param RuleDescription: 规则备注与描述
        # @type RuleDescription: String
        # @param Status: 桶关联状态 0：关联中 1：关联完成
        # @type Status: Integer
        # @param AccelerateFlag: 是否使用全球加速域名
        # @type AccelerateFlag: Boolean
        # @param BucketRegion: 桶所在的园区
        # @type BucketRegion: String
        # @param Endpoint: 自定义Endpoint
        # @type Endpoint: String

        attr_accessor :BucketName, :FileSystemPath, :DataRepositoryTaskAutoStrategy, :RuleId, :RuleDescription, :Status, :AccelerateFlag, :BucketRegion, :Endpoint

        def initialize(bucketname=nil, filesystempath=nil, datarepositorytaskautostrategy=nil, ruleid=nil, ruledescription=nil, status=nil, accelerateflag=nil, bucketregion=nil, endpoint=nil)
          @BucketName = bucketname
          @FileSystemPath = filesystempath
          @DataRepositoryTaskAutoStrategy = datarepositorytaskautostrategy
          @RuleId = ruleid
          @RuleDescription = ruledescription
          @Status = status
          @AccelerateFlag = accelerateflag
          @BucketRegion = bucketregion
          @Endpoint = endpoint
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @FileSystemPath = params['FileSystemPath']
          @DataRepositoryTaskAutoStrategy = params['DataRepositoryTaskAutoStrategy']
          @RuleId = params['RuleId']
          @RuleDescription = params['RuleDescription']
          @Status = params['Status']
          @AccelerateFlag = params['AccelerateFlag']
          @BucketRegion = params['BucketRegion']
          @Endpoint = params['Endpoint']
        end
      end

      # 元数据预热参数
      class MetadataLoadAttrs < TencentCloud::Common::AbstractModel
        # @param LoadType: 预热类型，枚举值 LoadByPath｜LoadByList
        # @type LoadType: String
        # @param SkipIfExists: 是否跳过相同文件，默认为 true
        # @type SkipIfExists: Boolean
        # @param LoadByPath: 预热路径，入参单条挂载路径，长度不能超过255个字符。入参数LoadType为LoadByPath，该参数不应为空
        # @type LoadByPath: String
        # @param LoadByList: 通过文件列表批量预热，入参为 cos://bucket-appid/ 开头的 COS 路径，且仅支持 txt 格式文件，长度不能超过255个字符。入参数LoadType为LoadByList，该参数不应为空
        # @type LoadByList: String

        attr_accessor :LoadType, :SkipIfExists, :LoadByPath, :LoadByList

        def initialize(loadtype=nil, skipifexists=nil, loadbypath=nil, loadbylist=nil)
          @LoadType = loadtype
          @SkipIfExists = skipifexists
          @LoadByPath = loadbypath
          @LoadByList = loadbylist
        end

        def deserialize(params)
          @LoadType = params['LoadType']
          @SkipIfExists = params['SkipIfExists']
          @LoadByPath = params['LoadByPath']
          @LoadByList = params['LoadByList']
        end
      end

      # ModifyDataRepositoryBandwidth请求参数结构体
      class ModifyDataRepositoryBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param Bandwidth: 带宽, 单位MB/S
        # @type Bandwidth: Integer

        attr_accessor :FileSystemId, :Bandwidth

        def initialize(filesystemid=nil, bandwidth=nil)
          @FileSystemId = filesystemid
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Bandwidth = params['Bandwidth']
        end
      end

      # ModifyDataRepositoryBandwidth返回参数结构体
      class ModifyDataRepositoryBandwidthResponse < TencentCloud::Common::AbstractModel
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

      # QueryCrossVpcSubnetSupportForClientNode请求参数结构体
      class QueryCrossVpcSubnetSupportForClientNodeRequest < TencentCloud::Common::AbstractModel
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

      # QueryCrossVpcSubnetSupportForClientNode返回参数结构体
      class QueryCrossVpcSubnetSupportForClientNodeResponse < TencentCloud::Common::AbstractModel
        # @param SubnetInfoCollection: 支持的子网信息集合
        # @type SubnetInfoCollection: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubnetInfoCollection, :RequestId

        def initialize(subnetinfocollection=nil, requestid=nil)
          @SubnetInfoCollection = subnetinfocollection
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubnetInfoCollection'].nil?
            @SubnetInfoCollection = []
            params['SubnetInfoCollection'].each do |i|
              subnetinfo_tmp = SubnetInfo.new
              subnetinfo_tmp.deserialize(i)
              @SubnetInfoCollection << subnetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryDataRepositoryBandwidth请求参数结构体
      class QueryDataRepositoryBandwidthRequest < TencentCloud::Common::AbstractModel
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

      # QueryDataRepositoryBandwidth返回参数结构体
      class QueryDataRepositoryBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param Bandwidth: 数据流动带宽, 单位MB/s
        # @type Bandwidth: Integer
        # @param BandwidthStatus: 带宽状态。1:待扩容;2:运行中;3:扩容中
        # @type BandwidthStatus: Integer
        # @param MinBandwidth: 能设置的最小带宽, 单位MB/s
        # @type MinBandwidth: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Bandwidth, :BandwidthStatus, :MinBandwidth, :RequestId

        def initialize(bandwidth=nil, bandwidthstatus=nil, minbandwidth=nil, requestid=nil)
          @Bandwidth = bandwidth
          @BandwidthStatus = bandwidthstatus
          @MinBandwidth = minbandwidth
          @RequestId = requestid
        end

        def deserialize(params)
          @Bandwidth = params['Bandwidth']
          @BandwidthStatus = params['BandwidthStatus']
          @MinBandwidth = params['MinBandwidth']
          @RequestId = params['RequestId']
        end
      end

      # 角色凭证
      class RoleToken < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名
        # @type RoleName: String
        # @param Token: 用于goosefs client/sdk等
        # @type Token: String

        attr_accessor :RoleName, :Token

        def initialize(rolename=nil, token=nil)
          @RoleName = rolename
          @Token = token
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @Token = params['Token']
        end
      end

      # vpc子网信息
      class SubnetInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param UsedCluster: 应用的集群；可以是集群id,也可以是All
        # @type UsedCluster: String
        # @param CIDR: cidr，只有当IsDirectConnect为true时才生效
        # @type CIDR: String
        # @param IsDirectConnect: 是否为专线接入场景
        # @type IsDirectConnect: Boolean

        attr_accessor :VpcId, :SubnetId, :UsedCluster, :CIDR, :IsDirectConnect

        def initialize(vpcid=nil, subnetid=nil, usedcluster=nil, cidr=nil, isdirectconnect=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @UsedCluster = usedcluster
          @CIDR = cidr
          @IsDirectConnect = isdirectconnect
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @UsedCluster = params['UsedCluster']
          @CIDR = params['CIDR']
          @IsDirectConnect = params['IsDirectConnect']
        end
      end

      # 文件系统关联的标签
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

      # UpdateFilesetGeneralConfig请求参数结构体
      class UpdateFilesetGeneralConfigRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param EnforceQuotaOnRoot: 配额对root用户生效
        # @type EnforceQuotaOnRoot: String

        attr_accessor :FileSystemId, :EnforceQuotaOnRoot

        def initialize(filesystemid=nil, enforcequotaonroot=nil)
          @FileSystemId = filesystemid
          @EnforceQuotaOnRoot = enforcequotaonroot
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @EnforceQuotaOnRoot = params['EnforceQuotaOnRoot']
        end
      end

      # UpdateFilesetGeneralConfig返回参数结构体
      class UpdateFilesetGeneralConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateFileset请求参数结构体
      class UpdateFilesetRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param FsetId: Fileset id
        # @type FsetId: String
        # @param QuotaSizeLimit: 容量配额限定值
        # @type QuotaSizeLimit: String
        # @param QuotaFilesLimit: 文件数配额限定值
        # @type QuotaFilesLimit: String
        # @param AuditState: Fileset文件删除操作审计
        # @type AuditState: String

        attr_accessor :FileSystemId, :FsetId, :QuotaSizeLimit, :QuotaFilesLimit, :AuditState

        def initialize(filesystemid=nil, fsetid=nil, quotasizelimit=nil, quotafileslimit=nil, auditstate=nil)
          @FileSystemId = filesystemid
          @FsetId = fsetid
          @QuotaSizeLimit = quotasizelimit
          @QuotaFilesLimit = quotafileslimit
          @AuditState = auditstate
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FsetId = params['FsetId']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaFilesLimit = params['QuotaFilesLimit']
          @AuditState = params['AuditState']
        end
      end

      # UpdateFileset返回参数结构体
      class UpdateFilesetResponse < TencentCloud::Common::AbstractModel
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

      # UpdateLoadTaskPriority请求参数结构体
      class UpdateLoadTaskPriorityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param TaskId: 预热任务 ID
        # @type TaskId: String
        # @param Priority: 任务优先级，数值越高代表优先级越高，边界值 1-9999，默认值为 1
        # @type Priority: Integer

        attr_accessor :ClusterId, :TaskId, :Priority

        def initialize(clusterid=nil, taskid=nil, priority=nil)
          @ClusterId = clusterid
          @TaskId = taskid
          @Priority = priority
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TaskId = params['TaskId']
          @Priority = params['Priority']
        end
      end

      # UpdateLoadTaskPriority返回参数结构体
      class UpdateLoadTaskPriorityResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

