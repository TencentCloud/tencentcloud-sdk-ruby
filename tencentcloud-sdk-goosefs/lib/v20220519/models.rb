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
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param CustomMountDir: <p>自定义挂载目录的绝对路径, 如果未指定, 则会使用默认值, 格式/goosefsx/${fs_id}-proxy. 比如/goosefsx/x-c60-a2b3d4-proxy</p>
        # @type CustomMountDir: String
        # @param ClusterId: <p>客户端集群ID</p>
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
        # @param Command: <p>挂载命令</p>
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

      # BuildCustomerCluster请求参数结构体
      class BuildCustomerClusterRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统id</p>
        # @type FileSystemId: String
        # @param VpcId: <p>vpc网络ID</p>
        # @type VpcId: String
        # @param SubnetId: <p>子网id</p>
        # @type SubnetId: String
        # @param ClusterName: <p>集群名称</p>
        # @type ClusterName: String
        # @param Zone: <p>可用区</p>
        # @type Zone: String

        attr_accessor :FileSystemId, :VpcId, :SubnetId, :ClusterName, :Zone

        def initialize(filesystemid=nil, vpcid=nil, subnetid=nil, clustername=nil, zone=nil)
          @FileSystemId = filesystemid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ClusterName = clustername
          @Zone = zone
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ClusterName = params['ClusterName']
          @Zone = params['Zone']
        end
      end

      # BuildCustomerCluster返回参数结构体
      class BuildCustomerClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>客户端集群Id</p>
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId

        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
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

      # CancelPolicyRuleExecuteRecord请求参数结构体
      class CancelPolicyRuleExecuteRecordRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则id</p>
        # @type RuleId: String
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param RecordId: <p>执行记录id</p>
        # @type RecordId: String

        attr_accessor :RuleId, :FileSystemId, :RecordId

        def initialize(ruleid=nil, filesystemid=nil, recordid=nil)
          @RuleId = ruleid
          @FileSystemId = filesystemid
          @RecordId = recordid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @FileSystemId = params['FileSystemId']
          @RecordId = params['RecordId']
        end
      end

      # CancelPolicyRuleExecuteRecord返回参数结构体
      class CancelPolicyRuleExecuteRecordResponse < TencentCloud::Common::AbstractModel
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
        # @param ClientNodeIp: <p>客户端节点IP</p>
        # @type ClientNodeIp: String
        # @param Status: <p>客户端节点服务状态, Active(运行中), Adding(添加中), Destroying(销毁中), Down(已停止)</p>
        # @type Status: String
        # @param ClientType: <p>客户端节点类型，extend(扩展节点)，manager(管理节点)</p>
        # @type ClientType: String
        # @param VpcId: <p>节点所属vpcid</p>
        # @type VpcId: String
        # @param SubnetId: <p>节点所属子网id</p>
        # @type SubnetId: String
        # @param InstanceId: <p>cvmId</p>
        # @type InstanceId: String
        # @param MountPoint: <p>自定义挂载点</p>
        # @type MountPoint: String
        # @param ClusterId: <p>客户端集群id</p>
        # @type ClusterId: String
        # @param MountPoints: 
        # @type MountPoints: Array

        attr_accessor :ClientNodeIp, :Status, :ClientType, :VpcId, :SubnetId, :InstanceId, :MountPoint, :ClusterId, :MountPoints

        def initialize(clientnodeip=nil, status=nil, clienttype=nil, vpcid=nil, subnetid=nil, instanceid=nil, mountpoint=nil, clusterid=nil, mountpoints=nil)
          @ClientNodeIp = clientnodeip
          @Status = status
          @ClientType = clienttype
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceId = instanceid
          @MountPoint = mountpoint
          @ClusterId = clusterid
          @MountPoints = mountpoints
        end

        def deserialize(params)
          @ClientNodeIp = params['ClientNodeIp']
          @Status = params['Status']
          @ClientType = params['ClientType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceId = params['InstanceId']
          @MountPoint = params['MountPoint']
          @ClusterId = params['ClusterId']
          unless params['MountPoints'].nil?
            @MountPoints = []
            params['MountPoints'].each do |i|
              mountpointentry_tmp = MountPointEntry.new
              mountpointentry_tmp.deserialize(i)
              @MountPoints << mountpointentry_tmp
            end
          end
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

      # 客户端集群挂载信息
      class ClusterMountAttr < TencentCloud::Common::AbstractModel
        # @param StorageFileSystemId: 挂载的文件系统Id
        # @type StorageFileSystemId: String
        # @param MountPoint: 客户端集群挂载点。入参是节点的自定义挂载点，出参是集群的默认挂载点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountPoint: String

        attr_accessor :StorageFileSystemId, :MountPoint

        def initialize(storagefilesystemid=nil, mountpoint=nil)
          @StorageFileSystemId = storagefilesystemid
          @MountPoint = mountpoint
        end

        def deserialize(params)
          @StorageFileSystemId = params['StorageFileSystemId']
          @MountPoint = params['MountPoint']
        end
      end

      # CreateDataRepositoryTask请求参数结构体
      class CreateDataRepositoryTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: <p>数据流通任务类型, FS_TO_COS(文件系统到COS Bucket),或者COS_TO_FS(COS Bucket到文件系统)</p>
        # @type TaskType: String
        # @param Bucket: <p>COS存储桶名</p>
        # @type Bucket: String
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param TaskPath: <p>对于FS_TO_COS, TaskPath是Bucket映射目录的相对路径, 对于COS_TO_FS是COS上的路径。如果置为空, 则表示全部数据</p>
        # @type TaskPath: String
        # @param TaskName: <p>任务名称</p>
        # @type TaskName: String
        # @param IsTaskPathAbsolute: <p>任务路径是否表示绝对路径（暂时仅支持沉降使用）</p>
        # @type IsTaskPathAbsolute: Boolean
        # @param RepositoryType: <p>数据流通方式 MSP_AFM 手动加载  RAW_AFM 按需加载</p>
        # @type RepositoryType: String
        # @param TextLocation: <p>文件列表下载地址，以http开头</p>
        # @type TextLocation: String
        # @param EnableDataFlowSubPath: <p>是否开启自定义路径(暂时仅供预热使用)</p>
        # @type EnableDataFlowSubPath: Boolean
        # @param DataFlowSubPath: <p>自定义路径(暂时仅供预热使用)</p>
        # @type DataFlowSubPath: String
        # @param EnableCustomDestPath: <p>是否开启自定义目的路径（预热任务表示本地路径，沉降任务表示COS桶前缀）</p>
        # @type EnableCustomDestPath: Boolean
        # @param CustomDestPath: <p>自定义目的路径（预热任务表示本地路径，沉降任务表示COS桶前缀）</p>
        # @type CustomDestPath: String
        # @param OutputBucket: <p>输出的COS桶，用于存放任务执行的相关结果（当前用于存放任务失败时的失败文件列表）</p>
        # @type OutputBucket: String
        # @param OutputPrefix: <p>输出的COS桶的前缀，用于存放任务执行的相关结果（当前用于存放任务失败时的失败文件列表）</p>
        # @type OutputPrefix: String
        # @param EnableCustomSrcPath: <p>是否支持自定义数据源路径(暂时仅支持清单过滤使用)</p>
        # @type EnableCustomSrcPath: Boolean
        # @param CustomSrcPath: <p>自定义数据源路径(暂时仅支持清单过滤使用)</p>
        # @type CustomSrcPath: String

        attr_accessor :TaskType, :Bucket, :FileSystemId, :TaskPath, :TaskName, :IsTaskPathAbsolute, :RepositoryType, :TextLocation, :EnableDataFlowSubPath, :DataFlowSubPath, :EnableCustomDestPath, :CustomDestPath, :OutputBucket, :OutputPrefix, :EnableCustomSrcPath, :CustomSrcPath
        extend Gem::Deprecate
        deprecate :EnableDataFlowSubPath, :none, 2026, 10
        deprecate :EnableDataFlowSubPath=, :none, 2026, 10
        deprecate :DataFlowSubPath, :none, 2026, 10
        deprecate :DataFlowSubPath=, :none, 2026, 10

        def initialize(tasktype=nil, bucket=nil, filesystemid=nil, taskpath=nil, taskname=nil, istaskpathabsolute=nil, repositorytype=nil, textlocation=nil, enabledataflowsubpath=nil, dataflowsubpath=nil, enablecustomdestpath=nil, customdestpath=nil, outputbucket=nil, outputprefix=nil, enablecustomsrcpath=nil, customsrcpath=nil)
          @TaskType = tasktype
          @Bucket = bucket
          @FileSystemId = filesystemid
          @TaskPath = taskpath
          @TaskName = taskname
          @IsTaskPathAbsolute = istaskpathabsolute
          @RepositoryType = repositorytype
          @TextLocation = textlocation
          @EnableDataFlowSubPath = enabledataflowsubpath
          @DataFlowSubPath = dataflowsubpath
          @EnableCustomDestPath = enablecustomdestpath
          @CustomDestPath = customdestpath
          @OutputBucket = outputbucket
          @OutputPrefix = outputprefix
          @EnableCustomSrcPath = enablecustomsrcpath
          @CustomSrcPath = customsrcpath
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Bucket = params['Bucket']
          @FileSystemId = params['FileSystemId']
          @TaskPath = params['TaskPath']
          @TaskName = params['TaskName']
          @IsTaskPathAbsolute = params['IsTaskPathAbsolute']
          @RepositoryType = params['RepositoryType']
          @TextLocation = params['TextLocation']
          @EnableDataFlowSubPath = params['EnableDataFlowSubPath']
          @DataFlowSubPath = params['DataFlowSubPath']
          @EnableCustomDestPath = params['EnableCustomDestPath']
          @CustomDestPath = params['CustomDestPath']
          @OutputBucket = params['OutputBucket']
          @OutputPrefix = params['OutputPrefix']
          @EnableCustomSrcPath = params['EnableCustomSrcPath']
          @CustomSrcPath = params['CustomSrcPath']
        end
      end

      # CreateDataRepositoryTask返回参数结构体
      class CreateDataRepositoryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID</p>
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
        deprecate :Type, :none, 2026, 10
        deprecate :Type=, :none, 2026, 10

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
        # @param ClusterId: <p>集群 ID</p>
        # @type ClusterId: String
        # @param LoadTaskCreationAttrs: <p>创建预热任务参数</p>
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
        # @param TaskId: <p>预热任务 ID</p>
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

      # CreatePolicyRule请求参数结构体
      class CreatePolicyRuleRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统id</p>
        # @type FileSystemId: String
        # @param ScanDir: <p>扫描目录</p>
        # @type ScanDir: String
        # @param Name: <p>规则名称</p>
        # @type Name: String
        # @param Execution: <p>执行计划</p>
        # @type Execution: :class:`Tencentcloud::Goosefs.v20220519.models.ExecutionPlan`
        # @param PolicyRuleSet: <p>过滤规则</p>
        # @type PolicyRuleSet: Array
        # @param EnableManifest: <p>是否输出清单</p>
        # @type EnableManifest: Boolean
        # @param Manifest: <p>清单配置</p>
        # @type Manifest: :class:`Tencentcloud::Goosefs.v20220519.models.ManifestAttr`

        attr_accessor :FileSystemId, :ScanDir, :Name, :Execution, :PolicyRuleSet, :EnableManifest, :Manifest

        def initialize(filesystemid=nil, scandir=nil, name=nil, execution=nil, policyruleset=nil, enablemanifest=nil, manifest=nil)
          @FileSystemId = filesystemid
          @ScanDir = scandir
          @Name = name
          @Execution = execution
          @PolicyRuleSet = policyruleset
          @EnableManifest = enablemanifest
          @Manifest = manifest
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @ScanDir = params['ScanDir']
          @Name = params['Name']
          unless params['Execution'].nil?
            @Execution = ExecutionPlan.new
            @Execution.deserialize(params['Execution'])
          end
          unless params['PolicyRuleSet'].nil?
            @PolicyRuleSet = []
            params['PolicyRuleSet'].each do |i|
              policyruleoperator_tmp = PolicyRuleOperator.new
              policyruleoperator_tmp.deserialize(i)
              @PolicyRuleSet << policyruleoperator_tmp
            end
          end
          @EnableManifest = params['EnableManifest']
          unless params['Manifest'].nil?
            @Manifest = ManifestAttr.new
            @Manifest.deserialize(params['Manifest'])
          end
        end
      end

      # CreatePolicyRule返回参数结构体
      class CreatePolicyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则id</p>
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserQuota请求参数结构体
      class CreateUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param QuotaType: 配额类型，UID或GID
        # @type QuotaType: String
        # @param QuotaObjectName: 配额对象名称，对应UID或者GID的值
        # @type QuotaObjectName: String
        # @param QuotaSizeLimit: 容量配额（需带单位G）
        # @type QuotaSizeLimit: String
        # @param QuotaFilesLimit: 文件数配额
        # @type QuotaFilesLimit: String

        attr_accessor :FileSystemId, :QuotaType, :QuotaObjectName, :QuotaSizeLimit, :QuotaFilesLimit

        def initialize(filesystemid=nil, quotatype=nil, quotaobjectname=nil, quotasizelimit=nil, quotafileslimit=nil)
          @FileSystemId = filesystemid
          @QuotaType = quotatype
          @QuotaObjectName = quotaobjectname
          @QuotaSizeLimit = quotasizelimit
          @QuotaFilesLimit = quotafileslimit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @QuotaType = params['QuotaType']
          @QuotaObjectName = params['QuotaObjectName']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaFilesLimit = params['QuotaFilesLimit']
        end
      end

      # CreateUserQuota返回参数结构体
      class CreateUserQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额id
        # @type QuotaId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaId, :RequestId

        def initialize(quotaid=nil, requestid=nil)
          @QuotaId = quotaid
          @RequestId = requestid
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @RequestId = params['RequestId']
        end
      end

      # goosefsx客户端集群信息
      class CustomerClusterAttr < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param VpcId: vpc网络id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param ClientNum: 客户端数量
        # @type ClientNum: Integer
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterType: 集群类型：0: 默认集群（文件系统创建时构建，不可销毁）；1: 扩展集群（客户端数量为0时可销毁）
        # @type ClusterType: Integer
        # @param ManagerNodes: 管理节点信息
        # @type ManagerNodes: Array
        # @param Status: 集群状态：0:creating 创建中；1: created 创建完成; 2: deleting 删除中； 3: deleted 删除完成； 4:  failed 创建失败
        # @type Status: Integer
        # @param ClusterMountSet: 客户端集群挂载存储集合
        # @type ClusterMountSet: Array
        # @param Zone: 
        # @type Zone: String
        # @param MountStorageNum: 
        # @type MountStorageNum: Integer
        # @param StorageFileSystemId: 
        # @type StorageFileSystemId: String

        attr_accessor :ClusterId, :VpcId, :SubnetId, :ClientNum, :ClusterName, :ClusterType, :ManagerNodes, :Status, :ClusterMountSet, :Zone, :MountStorageNum, :StorageFileSystemId

        def initialize(clusterid=nil, vpcid=nil, subnetid=nil, clientnum=nil, clustername=nil, clustertype=nil, managernodes=nil, status=nil, clustermountset=nil, zone=nil, mountstoragenum=nil, storagefilesystemid=nil)
          @ClusterId = clusterid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ClientNum = clientnum
          @ClusterName = clustername
          @ClusterType = clustertype
          @ManagerNodes = managernodes
          @Status = status
          @ClusterMountSet = clustermountset
          @Zone = zone
          @MountStorageNum = mountstoragenum
          @StorageFileSystemId = storagefilesystemid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ClientNum = params['ClientNum']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          unless params['ManagerNodes'].nil?
            @ManagerNodes = []
            params['ManagerNodes'].each do |i|
              clientclustermanagernodeinfo_tmp = ClientClusterManagerNodeInfo.new
              clientclustermanagernodeinfo_tmp.deserialize(i)
              @ManagerNodes << clientclustermanagernodeinfo_tmp
            end
          end
          @Status = params['Status']
          unless params['ClusterMountSet'].nil?
            @ClusterMountSet = []
            params['ClusterMountSet'].each do |i|
              clustermountattr_tmp = ClusterMountAttr.new
              clustermountattr_tmp.deserialize(i)
              @ClusterMountSet << clustermountattr_tmp
            end
          end
          @Zone = params['Zone']
          @MountStorageNum = params['MountStorageNum']
          @StorageFileSystemId = params['StorageFileSystemId']
        end
      end

      # 数据流通任务属性
      class DataRepositoryTaskAttribute < TencentCloud::Common::AbstractModel
        # @param TaskType: <p>数据流通任务类型, FS_TO_COS(文件系统到COS Bucket),或者Bucket到文件系统(COS_TO_FS)</p>
        # @type TaskType: String
        # @param Bucket: <p>bucket名</p>
        # @type Bucket: String
        # @param TaskPath: <p>bucket路径</p>
        # @type TaskPath: String
        # @param TotalCapacity: <p>总的容量(单位Byte)</p>
        # @type TotalCapacity: Integer
        # @param FinishedCapacity: <p>已完成的数据量(单位Byte)</p>
        # @type FinishedCapacity: Integer
        # @param TaskCreateTime: <p>任务创建时间</p>
        # @type TaskCreateTime: String
        # @param TaskStartTime: <p>任务开始执行时间</p>
        # @type TaskStartTime: String
        # @param TaskEndTime: <p>任务结束时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskEndTime: String
        # @param TaskStatus: <p>INIT(任务初始化中) RUNNING(任务执行中) SUCCESS(任务已完成) FAIL(任务失败)</p>
        # @type TaskStatus: String
        # @param TaskId: <p>任务ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名</p>
        # @type TaskName: String
        # @param TaskFailMsg: <p>任务失败原因</p>
        # @type TaskFailMsg: String
        # @param TotalFileNumber: <p>总共的文件个数</p>
        # @type TotalFileNumber: Integer
        # @param FinishedFileNumber: <p>已完成的文件个数</p>
        # @type FinishedFileNumber: Integer
        # @param TextLocation: <p>列表地址</p>
        # @type TextLocation: String
        # @param RepositoryType: <p>执行器类型</p>
        # @type RepositoryType: String
        # @param EnableDataFlowSubPath: <p>是否自定义路径</p>
        # @type EnableDataFlowSubPath: Boolean
        # @param DataFlowSubPath: <p>自定义路径</p>
        # @type DataFlowSubPath: String
        # @param EnableCustomDestPath: <p>是否支持自定义目的路径（沉降表示桶前缀，预热表示本地路径）</p>
        # @type EnableCustomDestPath: Boolean
        # @param CustomDestPath: <p>自定义目的路径（沉降表示桶前缀，预热表示本地路径）</p>
        # @type CustomDestPath: String
        # @param IsTaskPathAbsolute: <p>任务路径是否表示绝对路径（暂时仅支持沉降使用）</p>
        # @type IsTaskPathAbsolute: Boolean
        # @param OutputBucket: <p>任务内容输出桶</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputBucket: String
        # @param OutputPrefix: <p>任务内容输出桶前缀</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputPrefix: String
        # @param EnableCustomSrcPath: <p>是否支持自定义数据源路径(暂时仅支持清单过滤使用)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCustomSrcPath: Boolean
        # @param CustomSrcPath: <p>自定义数据源路径(暂时仅支持清单过滤使用)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomSrcPath: String

        attr_accessor :TaskType, :Bucket, :TaskPath, :TotalCapacity, :FinishedCapacity, :TaskCreateTime, :TaskStartTime, :TaskEndTime, :TaskStatus, :TaskId, :TaskName, :TaskFailMsg, :TotalFileNumber, :FinishedFileNumber, :TextLocation, :RepositoryType, :EnableDataFlowSubPath, :DataFlowSubPath, :EnableCustomDestPath, :CustomDestPath, :IsTaskPathAbsolute, :OutputBucket, :OutputPrefix, :EnableCustomSrcPath, :CustomSrcPath
        extend Gem::Deprecate
        deprecate :EnableDataFlowSubPath, :none, 2026, 10
        deprecate :EnableDataFlowSubPath=, :none, 2026, 10
        deprecate :DataFlowSubPath, :none, 2026, 10
        deprecate :DataFlowSubPath=, :none, 2026, 10

        def initialize(tasktype=nil, bucket=nil, taskpath=nil, totalcapacity=nil, finishedcapacity=nil, taskcreatetime=nil, taskstarttime=nil, taskendtime=nil, taskstatus=nil, taskid=nil, taskname=nil, taskfailmsg=nil, totalfilenumber=nil, finishedfilenumber=nil, textlocation=nil, repositorytype=nil, enabledataflowsubpath=nil, dataflowsubpath=nil, enablecustomdestpath=nil, customdestpath=nil, istaskpathabsolute=nil, outputbucket=nil, outputprefix=nil, enablecustomsrcpath=nil, customsrcpath=nil)
          @TaskType = tasktype
          @Bucket = bucket
          @TaskPath = taskpath
          @TotalCapacity = totalcapacity
          @FinishedCapacity = finishedcapacity
          @TaskCreateTime = taskcreatetime
          @TaskStartTime = taskstarttime
          @TaskEndTime = taskendtime
          @TaskStatus = taskstatus
          @TaskId = taskid
          @TaskName = taskname
          @TaskFailMsg = taskfailmsg
          @TotalFileNumber = totalfilenumber
          @FinishedFileNumber = finishedfilenumber
          @TextLocation = textlocation
          @RepositoryType = repositorytype
          @EnableDataFlowSubPath = enabledataflowsubpath
          @DataFlowSubPath = dataflowsubpath
          @EnableCustomDestPath = enablecustomdestpath
          @CustomDestPath = customdestpath
          @IsTaskPathAbsolute = istaskpathabsolute
          @OutputBucket = outputbucket
          @OutputPrefix = outputprefix
          @EnableCustomSrcPath = enablecustomsrcpath
          @CustomSrcPath = customsrcpath
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Bucket = params['Bucket']
          @TaskPath = params['TaskPath']
          @TotalCapacity = params['TotalCapacity']
          @FinishedCapacity = params['FinishedCapacity']
          @TaskCreateTime = params['TaskCreateTime']
          @TaskStartTime = params['TaskStartTime']
          @TaskEndTime = params['TaskEndTime']
          @TaskStatus = params['TaskStatus']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskFailMsg = params['TaskFailMsg']
          @TotalFileNumber = params['TotalFileNumber']
          @FinishedFileNumber = params['FinishedFileNumber']
          @TextLocation = params['TextLocation']
          @RepositoryType = params['RepositoryType']
          @EnableDataFlowSubPath = params['EnableDataFlowSubPath']
          @DataFlowSubPath = params['DataFlowSubPath']
          @EnableCustomDestPath = params['EnableCustomDestPath']
          @CustomDestPath = params['CustomDestPath']
          @IsTaskPathAbsolute = params['IsTaskPathAbsolute']
          @OutputBucket = params['OutputBucket']
          @OutputPrefix = params['OutputPrefix']
          @EnableCustomSrcPath = params['EnableCustomSrcPath']
          @CustomSrcPath = params['CustomSrcPath']
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

      # DeleteCustomerCluster请求参数结构体
      class DeleteCustomerClusterRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param ClusterId: 客户端集群ID
        # @type ClusterId: String

        attr_accessor :FileSystemId, :ClusterId

        def initialize(filesystemid=nil, clusterid=nil)
          @FileSystemId = filesystemid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCustomerCluster返回参数结构体
      class DeleteCustomerClusterResponse < TencentCloud::Common::AbstractModel
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

      # DeletePolicyRule请求参数结构体
      class DeletePolicyRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则id</p>
        # @type RuleId: String
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String

        attr_accessor :RuleId, :FileSystemId

        def initialize(ruleid=nil, filesystemid=nil)
          @RuleId = ruleid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # DeletePolicyRule返回参数结构体
      class DeletePolicyRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserQuota请求参数结构体
      class DeleteUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param QuotaId: 配额id
        # @type QuotaId: String

        attr_accessor :FileSystemId, :QuotaId

        def initialize(filesystemid=nil, quotaid=nil)
          @FileSystemId = filesystemid
          @QuotaId = quotaid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @QuotaId = params['QuotaId']
        end
      end

      # DeleteUserQuota返回参数结构体
      class DeleteUserQuotaResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCustomerCluster请求参数结构体
      class DescribeCustomerClusterRequest < TencentCloud::Common::AbstractModel
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

      # DescribeCustomerCluster返回参数结构体
      class DescribeCustomerClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterSet: 客户端集群列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterSet, :RequestId

        def initialize(clusterset=nil, requestid=nil)
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              customerclusterattr_tmp = CustomerClusterAttr.new
              customerclusterattr_tmp.deserialize(i)
              @ClusterSet << customerclusterattr_tmp
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

      # DescribeDataRepositoryTasks请求参数结构体
      class DescribeDataRepositoryTasksRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 最大返回数量
        # @type Limit: Integer

        attr_accessor :FileSystemId, :Offset, :Limit

        def initialize(filesystemid=nil, offset=nil, limit=nil)
          @FileSystemId = filesystemid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDataRepositoryTasks返回参数结构体
      class DescribeDataRepositoryTasksResponse < TencentCloud::Common::AbstractModel
        # @param DataRepositoryTaskList: 数据流通任务列表
        # @type DataRepositoryTaskList: Array
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataRepositoryTaskList, :TotalCount, :RequestId

        def initialize(datarepositorytasklist=nil, totalcount=nil, requestid=nil)
          @DataRepositoryTaskList = datarepositorytasklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataRepositoryTaskList'].nil?
            @DataRepositoryTaskList = []
            params['DataRepositoryTaskList'].each do |i|
              datarepositorytaskattribute_tmp = DataRepositoryTaskAttribute.new
              datarepositorytaskattribute_tmp.deserialize(i)
              @DataRepositoryTaskList << datarepositorytaskattribute_tmp
            end
          end
          @TotalCount = params['TotalCount']
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

      # DescribePolicyRuleExecuteRecord请求参数结构体
      class DescribePolicyRuleExecuteRecordRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>最大返回数量</p>
        # @type Limit: Integer
        # @param RuleId: <p>规则id</p>
        # @type RuleId: String

        attr_accessor :FileSystemId, :Offset, :Limit, :RuleId

        def initialize(filesystemid=nil, offset=nil, limit=nil, ruleid=nil)
          @FileSystemId = filesystemid
          @Offset = offset
          @Limit = limit
          @RuleId = ruleid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RuleId = params['RuleId']
        end
      end

      # DescribePolicyRuleExecuteRecord返回参数结构体
      class DescribePolicyRuleExecuteRecordResponse < TencentCloud::Common::AbstractModel
        # @param RuleExecuteList: <p>执行记录详情</p>
        # @type RuleExecuteList: Array
        # @param TotalCount: <p>任务总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleExecuteList, :TotalCount, :RequestId

        def initialize(ruleexecutelist=nil, totalcount=nil, requestid=nil)
          @RuleExecuteList = ruleexecutelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleExecuteList'].nil?
            @RuleExecuteList = []
            params['RuleExecuteList'].each do |i|
              ruleexecuteattribute_tmp = RuleExecuteAttribute.new
              ruleexecuteattribute_tmp.deserialize(i)
              @RuleExecuteList << ruleexecuteattribute_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyRule请求参数结构体
      class DescribePolicyRuleRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>最大返回数量</p>
        # @type Limit: Integer

        attr_accessor :FileSystemId, :Offset, :Limit

        def initialize(filesystemid=nil, offset=nil, limit=nil)
          @FileSystemId = filesystemid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePolicyRule返回参数结构体
      class DescribePolicyRuleResponse < TencentCloud::Common::AbstractModel
        # @param PolicyRuleTaskList: <p>规则任务详情</p>
        # @type PolicyRuleTaskList: Array
        # @param TotalCount: <p>任务总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyRuleTaskList, :TotalCount, :RequestId

        def initialize(policyruletasklist=nil, totalcount=nil, requestid=nil)
          @PolicyRuleTaskList = policyruletasklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyRuleTaskList'].nil?
            @PolicyRuleTaskList = []
            params['PolicyRuleTaskList'].each do |i|
              policyruletaskattribute_tmp = PolicyRuleTaskAttribute.new
              policyruletaskattribute_tmp.deserialize(i)
              @PolicyRuleTaskList << policyruletaskattribute_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserQuota请求参数结构体
      class DescribeUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统id</p>
        # @type FileSystemId: String
        # @param QuotaIds: <p>QuotaId列表</p>
        # @type QuotaIds: Array
        # @param QuotaType: <p>配额类型</p>
        # @type QuotaType: String
        # @param QuotaObjectNames: <p>配额对象名称列表</p>
        # @type QuotaObjectNames: Array

        attr_accessor :FileSystemId, :QuotaIds, :QuotaType, :QuotaObjectNames

        def initialize(filesystemid=nil, quotaids=nil, quotatype=nil, quotaobjectnames=nil)
          @FileSystemId = filesystemid
          @QuotaIds = quotaids
          @QuotaType = quotatype
          @QuotaObjectNames = quotaobjectnames
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @QuotaIds = params['QuotaIds']
          @QuotaType = params['QuotaType']
          @QuotaObjectNames = params['QuotaObjectNames']
        end
      end

      # DescribeUserQuota返回参数结构体
      class DescribeUserQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaList: <p>配额信息列表</p>
        # @type QuotaList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaList, :RequestId

        def initialize(quotalist=nil, requestid=nil)
          @QuotaList = quotalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaList'].nil?
            @QuotaList = []
            params['QuotaList'].each do |i|
              userquotainfo_tmp = UserQuotaInfo.new
              userquotainfo_tmp.deserialize(i)
              @QuotaList << userquotainfo_tmp
            end
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

      # DisablePolicyRule请求参数结构体
      class DisablePolicyRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则ID</p>
        # @type RuleId: String
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String

        attr_accessor :RuleId, :FileSystemId

        def initialize(ruleid=nil, filesystemid=nil)
          @RuleId = ruleid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # DisablePolicyRule返回参数结构体
      class DisablePolicyRuleResponse < TencentCloud::Common::AbstractModel
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

      # EnablePolicyRule请求参数结构体
      class EnablePolicyRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则ID</p>
        # @type RuleId: String
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String

        attr_accessor :RuleId, :FileSystemId

        def initialize(ruleid=nil, filesystemid=nil)
          @RuleId = ruleid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # EnablePolicyRule返回参数结构体
      class EnablePolicyRuleResponse < TencentCloud::Common::AbstractModel
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

      # 周期执行启动配置
      class ExecutePeriodAttribute < TencentCloud::Common::AbstractModel
        # @param PeriodType: <p>选择的周期类型</p><p>枚举值：</p><ul><li>DAY： 每天执行 </li><li>WEEK： 每周执行</li><li>MONTH： 每月执行</li></ul>
        # @type PeriodType: String
        # @param StartWeekday: <p>选择每周执行时必填，需要选择周几,0-6 分别是周日到周六</p><p>取值范围：[0, 6]</p><p>默认值：0</p>
        # @type StartWeekday: Integer
        # @param StartDate: <p>选择每月执行时必填，1-28日选择一天</p><p>取值范围：[1, 28]</p><p>默认值：1</p>
        # @type StartDate: Integer
        # @param StartMinute: <p>周期中的时间点，取值0~59</p><p>取值范围：[0, 59]</p>
        # @type StartMinute: Integer
        # @param StartHour: <p>24小时周期开始的小时数，取值0~23</p><p>取值范围：[0, 23]</p><p>默认值：1</p>
        # @type StartHour: Integer

        attr_accessor :PeriodType, :StartWeekday, :StartDate, :StartMinute, :StartHour

        def initialize(periodtype=nil, startweekday=nil, startdate=nil, startminute=nil, starthour=nil)
          @PeriodType = periodtype
          @StartWeekday = startweekday
          @StartDate = startdate
          @StartMinute = startminute
          @StartHour = starthour
        end

        def deserialize(params)
          @PeriodType = params['PeriodType']
          @StartWeekday = params['StartWeekday']
          @StartDate = params['StartDate']
          @StartMinute = params['StartMinute']
          @StartHour = params['StartHour']
        end
      end

      # 执行时间
      class ExecutionPlan < TencentCloud::Common::AbstractModel
        # @param ExecuteMode: <p>执行类型</p><p>枚举值：</p><ul><li>scheduled： 指定时间执行</li><li>periodic： 周期执行</li></ul>
        # @type ExecuteMode: String
        # @param ExecuteAt: <p>任务执行时间</p><p>参数格式：2026-07-23 08:30</p><p>入参限制：只有立即执行或者指定时间执行时设置，周期执行不需要设置</p><p>默认值：当前时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteAt: String
        # @param ExecutePeriod: <p>周期执行的时间设置</p><p>入参限制：选择周期执行时必填</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutePeriod: :class:`Tencentcloud::Goosefs.v20220519.models.ExecutePeriodAttribute`
        # @param WaitTime: <p>任务等待时间</p><p>取值范围：[1, 500]</p><p>单位：H</p><p>默认值：12</p><p>任务执行的等待时间，超过时间任务未启动，自动取消</p>
        # @type WaitTime: Integer

        attr_accessor :ExecuteMode, :ExecuteAt, :ExecutePeriod, :WaitTime

        def initialize(executemode=nil, executeat=nil, executeperiod=nil, waittime=nil)
          @ExecuteMode = executemode
          @ExecuteAt = executeat
          @ExecutePeriod = executeperiod
          @WaitTime = waittime
        end

        def deserialize(params)
          @ExecuteMode = params['ExecuteMode']
          @ExecuteAt = params['ExecuteAt']
          unless params['ExecutePeriod'].nil?
            @ExecutePeriod = ExecutePeriodAttribute.new
            @ExecutePeriod.deserialize(params['ExecutePeriod'])
          end
          @WaitTime = params['WaitTime']
        end
      end

      # ExpandCapacity请求参数结构体
      class ExpandCapacityRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param ExpandedCapacity: 新增扩容的系统容量(单位 GiB)
        # @type ExpandedCapacity: Integer
        # @param ModifyType: 容量修改类型：add/sub
        # @type ModifyType: String
        # @param RapidExpansion: 是否是快速扩容,只针对部分model有效
        # @type RapidExpansion: Boolean

        attr_accessor :FileSystemId, :ExpandedCapacity, :ModifyType, :RapidExpansion

        def initialize(filesystemid=nil, expandedcapacity=nil, modifytype=nil, rapidexpansion=nil)
          @FileSystemId = filesystemid
          @ExpandedCapacity = expandedcapacity
          @ModifyType = modifytype
          @RapidExpansion = rapidexpansion
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @ExpandedCapacity = params['ExpandedCapacity']
          @ModifyType = params['ModifyType']
          @RapidExpansion = params['RapidExpansion']
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
        deprecate :MappedBucketList, :none, 2026, 10
        deprecate :MappedBucketList=, :none, 2026, 10

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

      # 数据预热任务参数
      class LoadDataAttrs < TencentCloud::Common::AbstractModel
        # @param LoadType: <p>预热类型，枚举值 LoadByPath｜LoadByList</p>
        # @type LoadType: String
        # @param SkipIfExists: <p>是否跳过相同文件，默认为 true</p>
        # @type SkipIfExists: Boolean
        # @param LoadByPath: <p>预热路径，入参单条挂载路径。入参数LoadType为LoadByPath，该参数不应为空</p>
        # @type LoadByPath: String
        # @param LoadByList: <p>通过文件列表批量预热，入参为 cos://bucket-appid/ 开头的 COS 路径，且仅支持 txt 格式文件，长度不能超过255个字符。入参数LoadType为LoadByList，该参数不应为空</p>
        # @type LoadByList: String
        # @param Replica: <p>副本数配置，枚举值，可选值 SingleReplica（单副本，默认）｜MaxReplica（最大副本）</p>
        # @type Replica: String

        attr_accessor :LoadType, :SkipIfExists, :LoadByPath, :LoadByList, :Replica

        def initialize(loadtype=nil, skipifexists=nil, loadbypath=nil, loadbylist=nil, replica=nil)
          @LoadType = loadtype
          @SkipIfExists = skipifexists
          @LoadByPath = loadbypath
          @LoadByList = loadbylist
          @Replica = replica
        end

        def deserialize(params)
          @LoadType = params['LoadType']
          @SkipIfExists = params['SkipIfExists']
          @LoadByPath = params['LoadByPath']
          @LoadByList = params['LoadByList']
          @Replica = params['Replica']
        end
      end

      # 预热任务参数
      class LoadTaskAttrs < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>预热任务 ID</p>
        # @type TaskId: String
        # @param TaskType: <p>预热任务类型，枚举值，MetadataLoad｜DistributedLoad</p>
        # @type TaskType: String
        # @param Description: <p>任务描述，支持中文</p>
        # @type Description: String
        # @param Priority: <p>任务优先级，数值越高代表优先级越高，边界值 1-9999，默认值为 1</p>
        # @type Priority: Integer
        # @param MetadataLoadAttrs: <p>元数据预热任务参数，用于仅预热元数据时入参。入参数TaskType为MetadataLoad时，该参数不应为空。</p>
        # @type MetadataLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.MetadataLoadAttrs`
        # @param DistributedLoadAttrs: <p>数据预热任务参数。入参数TaskType为DistributedLoad时，该参数不应为空。</p>
        # @type DistributedLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.DistributedLoadAttrs`
        # @param LoadDataAttrs: <p>仅预热数据参数。入参数TaskType为LoadData时，该参数不应为空。</p>
        # @type LoadDataAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.LoadDataAttrs`
        # @param ReportPath: <p>将任务执行报告写入 COS 的路径，如果不需要报告则入参空</p>
        # @type ReportPath: String
        # @param State: <p>枚举，Completed，Running，Waiting，Cancelled</p>
        # @type State: String
        # @param TaskMessage: <p>任务执行信息，打印预热文件成功个数，失败个数，预热耗时信息</p>
        # @type TaskMessage: String
        # @param CreateTime: <p>预热任务创建时间</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>预热任务变更时间</p>
        # @type ModifyTime: String
        # @param Requester: <p>任务提交账号，子账号或服务角色 ID</p>
        # @type Requester: String

        attr_accessor :TaskId, :TaskType, :Description, :Priority, :MetadataLoadAttrs, :DistributedLoadAttrs, :LoadDataAttrs, :ReportPath, :State, :TaskMessage, :CreateTime, :ModifyTime, :Requester

        def initialize(taskid=nil, tasktype=nil, description=nil, priority=nil, metadataloadattrs=nil, distributedloadattrs=nil, loaddataattrs=nil, reportpath=nil, state=nil, taskmessage=nil, createtime=nil, modifytime=nil, requester=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @Description = description
          @Priority = priority
          @MetadataLoadAttrs = metadataloadattrs
          @DistributedLoadAttrs = distributedloadattrs
          @LoadDataAttrs = loaddataattrs
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
          unless params['LoadDataAttrs'].nil?
            @LoadDataAttrs = LoadDataAttrs.new
            @LoadDataAttrs.deserialize(params['LoadDataAttrs'])
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
        # @param TaskType: <p>预热任务类型，枚举值，MetadataLoad｜DistributedLoad。</p>
        # @type TaskType: String
        # @param Priority: <p>任务优先级，数值越高代表优先级越高，边界值 1-9999，默认值为 1</p>
        # @type Priority: Integer
        # @param Description: <p>任务描述，支持中文</p>
        # @type Description: String
        # @param MetadataLoadAttrs: <p>元数据预热任务参数，用于仅预热元数据时入参。入参数TaskType为MetadataLoad时，该参数不应为空。</p>
        # @type MetadataLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.MetadataLoadAttrs`
        # @param DistributedLoadAttrs: <p>数据预热任务参数。入参数TaskType为DistributedLoad时，该参数不应为空。</p>
        # @type DistributedLoadAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.DistributedLoadAttrs`
        # @param ReportPath: <p>将任务执行报告写入 COS 的路径，如果不需要报告则入参空</p>
        # @type ReportPath: String
        # @param LoadDataAttrs: <p>仅预热数据任务参数。入参数TaskType为LoadData时，该参数不应为空。</p>
        # @type LoadDataAttrs: :class:`Tencentcloud::Goosefs.v20220519.models.LoadDataAttrs`

        attr_accessor :TaskType, :Priority, :Description, :MetadataLoadAttrs, :DistributedLoadAttrs, :ReportPath, :LoadDataAttrs

        def initialize(tasktype=nil, priority=nil, description=nil, metadataloadattrs=nil, distributedloadattrs=nil, reportpath=nil, loaddataattrs=nil)
          @TaskType = tasktype
          @Priority = priority
          @Description = description
          @MetadataLoadAttrs = metadataloadattrs
          @DistributedLoadAttrs = distributedloadattrs
          @ReportPath = reportpath
          @LoadDataAttrs = loaddataattrs
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
          unless params['LoadDataAttrs'].nil?
            @LoadDataAttrs = LoadDataAttrs.new
            @LoadDataAttrs.deserialize(params['LoadDataAttrs'])
          end
        end
      end

      # 清单配置
      class ManifestAttr < TencentCloud::Common::AbstractModel
        # @param Bucket: <p>桶名字</p>
        # @type Bucket: String
        # @param Prefix: <p>目录前缀</p>
        # @type Prefix: String
        # @param Attributes: <p>文件属性</p>
        # @type Attributes: Array
        # @param Region: <p>桶所在地域</p><p>桶所在的地域，可以不填，认为是实例所在地域</p>
        # @type Region: String

        attr_accessor :Bucket, :Prefix, :Attributes, :Region

        def initialize(bucket=nil, prefix=nil, attributes=nil, region=nil)
          @Bucket = bucket
          @Prefix = prefix
          @Attributes = attributes
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Prefix = params['Prefix']
          @Attributes = params['Attributes']
          @Region = params['Region']
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

      # ModifyDataRepositoryTaskStatus请求参数结构体
      class ModifyDataRepositoryTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: <p>文件系统ID</p>
        # @type FileSystemId: String
        # @param TaskId: <p>数据流动任务ID</p>
        # @type TaskId: String
        # @param ModifyType: <p>修改数据流动任务目标状态对应的类型，仅支持任务暂停和恢复（暂停对应pause，恢复对应resume）</p><p>枚举值：</p><ul><li>pause： 暂停</li><li>resume： 恢复</li></ul>
        # @type ModifyType: String

        attr_accessor :FileSystemId, :TaskId, :ModifyType

        def initialize(filesystemid=nil, taskid=nil, modifytype=nil)
          @FileSystemId = filesystemid
          @TaskId = taskid
          @ModifyType = modifytype
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @TaskId = params['TaskId']
          @ModifyType = params['ModifyType']
        end
      end

      # ModifyDataRepositoryTaskStatus返回参数结构体
      class ModifyDataRepositoryTaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # MountMultipleStorageFileSystem请求参数结构体
      class MountMultipleStorageFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 客户端集群所属的文件系统id
        # @type FileSystemId: String
        # @param CustomerClusterId: 客户端集群Id
        # @type CustomerClusterId: String
        # @param StorageFileSystemId: 挂载的存储集群的id
        # @type StorageFileSystemId: String

        attr_accessor :FileSystemId, :CustomerClusterId, :StorageFileSystemId

        def initialize(filesystemid=nil, customerclusterid=nil, storagefilesystemid=nil)
          @FileSystemId = filesystemid
          @CustomerClusterId = customerclusterid
          @StorageFileSystemId = storagefilesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @CustomerClusterId = params['CustomerClusterId']
          @StorageFileSystemId = params['StorageFileSystemId']
        end
      end

      # MountMultipleStorageFileSystem返回参数结构体
      class MountMultipleStorageFileSystemResponse < TencentCloud::Common::AbstractModel
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

      # 客户端挂载点
      class MountPointEntry < TencentCloud::Common::AbstractModel
        # @param StorageFileSystemId: 
        # @type StorageFileSystemId: String
        # @param MountDir: 
        # @type MountDir: String

        attr_accessor :StorageFileSystemId, :MountDir

        def initialize(storagefilesystemid=nil, mountdir=nil)
          @StorageFileSystemId = storagefilesystemid
          @MountDir = mountdir
        end

        def deserialize(params)
          @StorageFileSystemId = params['StorageFileSystemId']
          @MountDir = params['MountDir']
        end
      end

      # Policy扫描规则
      class PolicyRuleOperator < TencentCloud::Common::AbstractModel
        # @param Key: <p>规则名</p><p>枚举值：</p><ul><li>CREATION_TIME_DAYS： 创建时间，比较的value 是days，数字整数。判断条件均为与“今天”相差。例如 CREATION_TIME &gt; 5，指的是创建时间-今天大于5天，即5天前（以及更早）创建的文件</li><li>CHANGE_TIME_DAYS： 元数据修改时间，比较的value 是days，数字整数。判断条件均为与“今天”相差。例如 CHANGE_TIME &gt; 5，指的是元数据修改时间-今天大于5天，即5天前以及更早修改元数据的文件</li><li>MODIFICATION_TIME_DAYS： 数据修改时间，比较的value 是days，数字整数。判断条件均为与“今天”相差。例如 MODIFICATION_TIME &gt; 5，指的是数据修改时间-今天大于5天，即5天前（以及更早）修改的文件</li><li>ACCESS_TIME_DAYS： 访问时间，比较的value 是days，数字整数。判断条件均为与“今天”相差。例如 ACCESS_TIME &gt; 5，指的是访问时间-今天大于5天，即5天前（以及更早）访问的文件</li><li>CREATION_TIME_DATE： 创建时间，比较的value 是date,日期，格式为YYYY-MM-DD。判断条件均为与value对应的日期的对比。例如 CREATION_TIME &gt; 2026-06-01，指的是创建时间晚于2026年6月1日</li><li>CHANGE_TIME_DATE： 元数据修改时间，比较的value 是date,日期，格式为YYYY-MM-DD。判断条件均为与value对应的日期的对比。例如 CHANGE_TIME &gt; 2026-06-01，指的是元数据修改晚于2026年6月1日</li><li>MODIFICATION_TIME_DATE： 数据修改时间，比较的value 是date,日期，格式为YYYY-MM-DD。判断条件均为与value对应的日期的对比。例如 MODIFICATION_TIME &gt; 2026-06-01，指的是数据修改时间晚于2026年6月1日</li><li>ACCESS_TIME_DATE： 访问时间，比较的value 是date,日期，格式为YYYY-MM-DD。判断条件均为与value对应的日期的对比。例如 ACCESS_TIME &gt; 2026-06-01，指的是访问时间晚于2026年6月1日</li><li>FILE_SIZE： 文件大小，数字，单位byte，整数，0 ～ 64位整数最大值</li></ul>
        # @type Key: String
        # @param Operator: <p>比较关系</p><p>枚举值：</p><ul><li>&gt;：  大于</li><li>&gt;=： 大于等于</li><li>=： 相等</li><li>&lt;： 小于</li><li>&lt;=： 小于等于</li></ul>
        # @type Operator: String
        # @param Value: <p>比较值</p><p>如果Key是CREATION_TIME_DAYS、CHANGE_TIME_DAYS、MODIFICATION_TIME_DAYS、ACCESS_TIME_DAYS时，值是整数；<br>如果Key是CREATION_TIME_DATE、CHANGE_TIME_DATE、MODIFICATION_TIME_DATE、ACCESS_TIME_DATE时，值是日期，格式是YYYY-MM-DD；<br>如果Key是FILE_SIZE，值是整数，单位是byte</p>
        # @type Value: String

        attr_accessor :Key, :Operator, :Value

        def initialize(key=nil, operator=nil, value=nil)
          @Key = key
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
        end
      end

      # 扫描规则信息
      class PolicyRuleTaskAttribute < TencentCloud::Common::AbstractModel
        # @param RuleId: <p>规则id</p>
        # @type RuleId: String
        # @param Name: <p>规则名称</p>
        # @type Name: String
        # @param ScanDir: <p>扫描目录</p>
        # @type ScanDir: String
        # @param Execution: <p>执行计划</p>
        # @type Execution: :class:`Tencentcloud::Goosefs.v20220519.models.ExecutionPlan`
        # @param PolicyRuleSet: <p>扫描规则</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyRuleSet: Array
        # @param EnableManifest: <p>是否输出清单</p>
        # @type EnableManifest: Boolean
        # @param Manifest: <p>输出清单配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manifest: :class:`Tencentcloud::Goosefs.v20220519.models.ManifestAttr`
        # @param Status: <p>任务状态</p><p>枚举值：</p><ul><li>0： 启用（enable）</li><li>1： 禁用（disable）</li></ul><p>默认值：0</p>
        # @type Status: Integer
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param ModifyTime: <p>修改时间</p>
        # @type ModifyTime: String

        attr_accessor :RuleId, :Name, :ScanDir, :Execution, :PolicyRuleSet, :EnableManifest, :Manifest, :Status, :CreateTime, :ModifyTime

        def initialize(ruleid=nil, name=nil, scandir=nil, execution=nil, policyruleset=nil, enablemanifest=nil, manifest=nil, status=nil, createtime=nil, modifytime=nil)
          @RuleId = ruleid
          @Name = name
          @ScanDir = scandir
          @Execution = execution
          @PolicyRuleSet = policyruleset
          @EnableManifest = enablemanifest
          @Manifest = manifest
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @ScanDir = params['ScanDir']
          unless params['Execution'].nil?
            @Execution = ExecutionPlan.new
            @Execution.deserialize(params['Execution'])
          end
          unless params['PolicyRuleSet'].nil?
            @PolicyRuleSet = []
            params['PolicyRuleSet'].each do |i|
              policyruleoperator_tmp = PolicyRuleOperator.new
              policyruleoperator_tmp.deserialize(i)
              @PolicyRuleSet << policyruleoperator_tmp
            end
          end
          @EnableManifest = params['EnableManifest']
          unless params['Manifest'].nil?
            @Manifest = ManifestAttr.new
            @Manifest.deserialize(params['Manifest'])
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # QueryClientNodeMountCommand请求参数结构体
      class QueryClientNodeMountCommandRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 客户端集群ID
        # @type ClusterId: String
        # @param ClusterMountInfo: 集群挂载信息
        # @type ClusterMountInfo: Array
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String

        attr_accessor :ClusterId, :ClusterMountInfo, :FileSystemId

        def initialize(clusterid=nil, clustermountinfo=nil, filesystemid=nil)
          @ClusterId = clusterid
          @ClusterMountInfo = clustermountinfo
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ClusterMountInfo'].nil?
            @ClusterMountInfo = []
            params['ClusterMountInfo'].each do |i|
              clustermountattr_tmp = ClusterMountAttr.new
              clustermountattr_tmp.deserialize(i)
              @ClusterMountInfo << clustermountattr_tmp
            end
          end
          @FileSystemId = params['FileSystemId']
        end
      end

      # QueryClientNodeMountCommand返回参数结构体
      class QueryClientNodeMountCommandResponse < TencentCloud::Common::AbstractModel
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

      # 扫描规则执行信息
      class RuleExecuteAttribute < TencentCloud::Common::AbstractModel
        # @param RecordId: <p>执行id</p>
        # @type RecordId: String
        # @param StartTime: <p>开始执行时间</p>
        # @type StartTime: String
        # @param EndTime: <p>执行结束时间</p>
        # @type EndTime: String
        # @param Status: <p>执行状态</p><p>枚举值：</p><ul><li>0： 等待中</li><li>1： 执行中</li><li>2： 已完成</li><li>3： 已跳过</li></ul><p>默认值：0</p><p>已跳过是指任务排队超过了任务的等待时间会自动跳过</p>
        # @type Status: Integer
        # @param Capacity: <p>存储量</p><p>单位：GB</p><p>默认值：0</p><p>不足1G按照1G 统计</p>
        # @type Capacity: Integer
        # @param FileCount: <p>文件数</p>
        # @type FileCount: Integer
        # @param ManifestUrl: <p>文件清单路径</p><p>参数格式：http://xxx/xxx/xx</p>
        # @type ManifestUrl: String

        attr_accessor :RecordId, :StartTime, :EndTime, :Status, :Capacity, :FileCount, :ManifestUrl

        def initialize(recordid=nil, starttime=nil, endtime=nil, status=nil, capacity=nil, filecount=nil, manifesturl=nil)
          @RecordId = recordid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Capacity = capacity
          @FileCount = filecount
          @ManifestUrl = manifesturl
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Capacity = params['Capacity']
          @FileCount = params['FileCount']
          @ManifestUrl = params['ManifestUrl']
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

      # UpdateUserQuota请求参数结构体
      class UpdateUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param QuotaId: 配额id
        # @type QuotaId: String
        # @param QuotaSizeLimit: 容量配额限定值
        # @type QuotaSizeLimit: String
        # @param QuotaFilesLimit: 文件数配额限定值
        # @type QuotaFilesLimit: String

        attr_accessor :FileSystemId, :QuotaId, :QuotaSizeLimit, :QuotaFilesLimit

        def initialize(filesystemid=nil, quotaid=nil, quotasizelimit=nil, quotafileslimit=nil)
          @FileSystemId = filesystemid
          @QuotaId = quotaid
          @QuotaSizeLimit = quotasizelimit
          @QuotaFilesLimit = quotafileslimit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @QuotaId = params['QuotaId']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaFilesLimit = params['QuotaFilesLimit']
        end
      end

      # UpdateUserQuota返回参数结构体
      class UpdateUserQuotaResponse < TencentCloud::Common::AbstractModel
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

      # 用户配额信息
      class UserQuotaInfo < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额id
        # @type QuotaId: String
        # @param QuotaType: 配额类型
        # @type QuotaType: String
        # @param QuotaObjectName: 配额对象名称，对应UID/GID的值
        # @type QuotaObjectName: String
        # @param QuotaSizeLimit: 容量配额限定值
        # @type QuotaSizeLimit: String
        # @param QuotaSizeUsed: 已使用容量配额
        # @type QuotaSizeUsed: String
        # @param QuotaSizeUsedPercent: 容量配额使用占比
        # @type QuotaSizeUsedPercent: String
        # @param QuotaFilesLimit: 文件数配额限定值
        # @type QuotaFilesLimit: String
        # @param QuotaFilesUsed: 已使用文件数配额
        # @type QuotaFilesUsed: String
        # @param QuotaFilesUsedPercent: 文件数配额使用占比
        # @type QuotaFilesUsedPercent: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Status: 配额状态：creating 配置中 active 已生效 modify 修改中
        # @type Status: String

        attr_accessor :QuotaId, :QuotaType, :QuotaObjectName, :QuotaSizeLimit, :QuotaSizeUsed, :QuotaSizeUsedPercent, :QuotaFilesLimit, :QuotaFilesUsed, :QuotaFilesUsedPercent, :CreateTime, :ModifyTime, :Status

        def initialize(quotaid=nil, quotatype=nil, quotaobjectname=nil, quotasizelimit=nil, quotasizeused=nil, quotasizeusedpercent=nil, quotafileslimit=nil, quotafilesused=nil, quotafilesusedpercent=nil, createtime=nil, modifytime=nil, status=nil)
          @QuotaId = quotaid
          @QuotaType = quotatype
          @QuotaObjectName = quotaobjectname
          @QuotaSizeLimit = quotasizelimit
          @QuotaSizeUsed = quotasizeused
          @QuotaSizeUsedPercent = quotasizeusedpercent
          @QuotaFilesLimit = quotafileslimit
          @QuotaFilesUsed = quotafilesused
          @QuotaFilesUsedPercent = quotafilesusedpercent
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Status = status
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaType = params['QuotaType']
          @QuotaObjectName = params['QuotaObjectName']
          @QuotaSizeLimit = params['QuotaSizeLimit']
          @QuotaSizeUsed = params['QuotaSizeUsed']
          @QuotaSizeUsedPercent = params['QuotaSizeUsedPercent']
          @QuotaFilesLimit = params['QuotaFilesLimit']
          @QuotaFilesUsed = params['QuotaFilesUsed']
          @QuotaFilesUsedPercent = params['QuotaFilesUsedPercent']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Status = params['Status']
        end
      end

    end
  end
end

