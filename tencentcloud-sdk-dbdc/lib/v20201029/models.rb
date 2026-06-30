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
  module Dbdc
    module V20201029
      # AddNodesToDBCustomCluster请求参数结构体
      class AddNodesToDBCustomClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>集群ID</p>
        # @type ClusterId: String
        # @param NodeIds: <p>需上架的节点 ID 列表</p>
        # @type NodeIds: Array
        # @param ImageId: <p>节点上架后重设的操作系统镜像ID</p><p>取值参考：可通过&quot;DescribeDBCustomImages&quot;接口获取支持的镜像。</p>
        # @type ImageId: String
        # @param LoginSettings: <p>实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。</p><p>入参限制：若选择密钥方式，KeyIds 仅支持单个 ID。三种方式必须且仅可以设置其中一种。</p>
        # @type LoginSettings: :class:`Tencentcloud::Dbdc.v20201029.models.LoginSettings`

        attr_accessor :ClusterId, :NodeIds, :ImageId, :LoginSettings

        def initialize(clusterid=nil, nodeids=nil, imageid=nil, loginsettings=nil)
          @ClusterId = clusterid
          @NodeIds = nodeids
          @ImageId = imageid
          @LoginSettings = loginsettings
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodeIds = params['NodeIds']
          @ImageId = params['ImageId']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
        end
      end

      # AddNodesToDBCustomCluster返回参数结构体
      class AddNodesToDBCustomClusterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>上架节点的任务ID</p>
        # @type TaskId: Integer
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

      # 连通 DB Custom 集群 API Server 的网络配置。
      class ApiServerNetwork < TencentCloud::Common::AbstractModel
        # @param VpcId: <p>API Server的访问私有网络ID</p>
        # @type VpcId: String
        # @param SubnetId: <p>API Server的访问私有网络子网ID</p>
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CheckRoleAuthorized请求参数结构体
      class CheckRoleAuthorizedRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: <p>待检测的角色名字</p>
        # @type RoleName: String

        attr_accessor :RoleName

        def initialize(rolename=nil)
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleName = params['RoleName']
        end
      end

      # CheckRoleAuthorized返回参数结构体
      class CheckRoleAuthorizedResponse < TencentCloud::Common::AbstractModel
        # @param Status: <p>角色权限状态</p><p>枚举值：</p><ul><li>AUTHORIZED： 已经创建授权</li><li>NEED_GRANT： 未授权</li><li>ERROR： 报错</li></ul>
        # @type Status: String
        # @param Message: <p>出错的错误信息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Message, :RequestId

        def initialize(status=nil, message=nil, requestid=nil)
          @Status = status
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # 联通 DB Custom 集群中容器的网络配置。
      class ContainerNetwork < TencentCloud::Common::AbstractModel
        # @param VpcId: <p>容器网络的虚拟网络ID</p>
        # @type VpcId: String
        # @param SubnetIds: <p>容器网络的虚拟网络子网列表</p>
        # @type SubnetIds: Array

        attr_accessor :VpcId, :SubnetIds

        def initialize(vpcid=nil, subnetids=nil)
          @VpcId = vpcid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # CreateDBCustomCluster请求参数结构体
      class CreateDBCustomClusterRequest < TencentCloud::Common::AbstractModel
        # @param ContainerNetwork: <p>容器网络，在此集群的所有 POD 与此网络连通</p>
        # @type ContainerNetwork: :class:`Tencentcloud::Dbdc.v20201029.models.ContainerNetwork`
        # @param ClusterName: <p>集群名称</p><p>入参限制：最长128个字符，只能为中文，英文，下划线。</p>
        # @type ClusterName: String
        # @param ApiServerNetwork: <p>集群的API Server的网络信息</p><p>入参限制：必须为此账号下拥有的网络地址，可以与容器网络保持一致。</p>
        # @type ApiServerNetwork: :class:`Tencentcloud::Dbdc.v20201029.models.ApiServerNetwork`
        # @param ClusterDescription: <p>集群描述</p>
        # @type ClusterDescription: String
        # @param Tags: <p>集群标签</p>
        # @type Tags: Array
        # @param ClientToken: <p>客户端Token</p>
        # @type ClientToken: String

        attr_accessor :ContainerNetwork, :ClusterName, :ApiServerNetwork, :ClusterDescription, :Tags, :ClientToken

        def initialize(containernetwork=nil, clustername=nil, apiservernetwork=nil, clusterdescription=nil, tags=nil, clienttoken=nil)
          @ContainerNetwork = containernetwork
          @ClusterName = clustername
          @ApiServerNetwork = apiservernetwork
          @ClusterDescription = clusterdescription
          @Tags = tags
          @ClientToken = clienttoken
        end

        def deserialize(params)
          unless params['ContainerNetwork'].nil?
            @ContainerNetwork = ContainerNetwork.new
            @ContainerNetwork.deserialize(params['ContainerNetwork'])
          end
          @ClusterName = params['ClusterName']
          unless params['ApiServerNetwork'].nil?
            @ApiServerNetwork = ApiServerNetwork.new
            @ApiServerNetwork.deserialize(params['ApiServerNetwork'])
          end
          @ClusterDescription = params['ClusterDescription']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateDBCustomCluster返回参数结构体
      class CreateDBCustomClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>本次创建的集群ID</p>
        # @type ClusterId: String
        # @param TaskId: <p>本次创建集群的任务ID</p>
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :TaskId, :RequestId

        def initialize(clusterid=nil, taskid=nil, requestid=nil)
          @ClusterId = clusterid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBCustomNodes请求参数结构体
      class CreateDBCustomNodesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: <p>产品支持的可用区</p><p>枚举值：</p><ul><li>ap-shanghai-5： 上海五区</li><li>ap-shanghai-8： 上海八区</li><li>ap-nanjing-3： 南京三区</li></ul>
        # @type Zone: String
        # @param ImageId: <p>镜像ID</p><p>参数格式：img-xxxxxxx</p><p>入参限制：必须为当前账号下DB Custom 产品拥有的镜像</p><p>取值参考：可通过&quot;DescribeDBCustomImages&quot;接口获取支持的镜像。</p>
        # @type ImageId: String
        # @param VpcId: <p>为节点打通SSH连接的VPC 网络ID。</p><p>参数格式：vpc-b4zgtest</p><p>入参限制：必须是当前账号下拥有的VPC 网络ID，且不能跨地域。</p><p>取值参考：可通过【查询VPC列表】接口获取：https://cloud.tencent.com/document/product/215/15778</p>
        # @type VpcId: String
        # @param SubnetId: <p>为节点打通SSH连接的VPC 子网 ID。 </p><p>参数格式：subnet-t13dtest</p><p>入参限制：必须是VPC之下的子网，子网必须与可用区对应。</p><p>取值参考：可通过【查询子网列表】接口获取：https://cloud.tencent.com/document/product/215/15784</p>
        # @type SubnetId: String
        # @param Period: <p>购买时长(月): 1/2/3/4/5/6/7/8/9/10/11/12/24/36</p><p>取值范围：[1, 36]</p><p>单位：月</p><p>默认值：1</p>
        # @type Period: Integer
        # @param NodeType: <p>节点机型</p><p>枚举值：</p><ul><li>DB.AT5.32XLARGE512： 高IO型服务器：128核心512GB内存，8*7180GB本地NvME SSDB。</li><li>DB.AT5.64XLARGE1152： 高IO型服务器：256核心1152GB内存，12*7180GB本地NvME SSDB。</li><li>DB.AT5.128XLARGE2304： 高IO型服务器：512核心2304GB内存，24*7180GB本地NvME SSDB。</li><li>DB.AT5.16XLARGE256： 高IO型服务器：64核心256GB内存，4*7180GB本地NvME SSDB。</li><li>DB.AT5.8XLARGE128： 高IO型服务器：32核心128GB内存，2*7180GB本地NvME SSDB。</li></ul>
        # @type NodeType: String
        # @param NodeCount: <p>购买的节点数量</p><p>取值范围：[1, 20]</p>
        # @type NodeCount: Integer
        # @param LoginSettings: <p>实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。</p><p>入参限制：若选择密钥方式，KeyIds 仅支持单个 ID。三种方式必须且仅可以设置其中一种。</p>
        # @type LoginSettings: :class:`Tencentcloud::Dbdc.v20201029.models.LoginSettings`
        # @param AutoRenew: <p>自动续费配置</p><p>枚举值：</p><ul><li>1： 自动续费</li><li>2： 不自动续费</li></ul><p>默认值：不自动续费</p>
        # @type AutoRenew: Integer
        # @param NodeName: <p>节点名称</p><p>入参限制：最多128个字符</p>
        # @type NodeName: String
        # @param AutoVoucher: <p>是否使用代金券自动抵扣</p><p>枚举值：</p><ul><li>1： 使用</li><li>0： 不使用</li></ul><p>默认值：0</p>
        # @type AutoVoucher: Integer
        # @param VoucherIds: <p>代金券ID</p><p>入参限制：必须为当前账号下拥有的未抵扣的代金券ID。</p>
        # @type VoucherIds: Array
        # @param Tags: <p>标签</p>
        # @type Tags: Array
        # @param ClientToken: <p>用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。</p>
        # @type ClientToken: String

        attr_accessor :Zone, :ImageId, :VpcId, :SubnetId, :Period, :NodeType, :NodeCount, :LoginSettings, :AutoRenew, :NodeName, :AutoVoucher, :VoucherIds, :Tags, :ClientToken

        def initialize(zone=nil, imageid=nil, vpcid=nil, subnetid=nil, period=nil, nodetype=nil, nodecount=nil, loginsettings=nil, autorenew=nil, nodename=nil, autovoucher=nil, voucherids=nil, tags=nil, clienttoken=nil)
          @Zone = zone
          @ImageId = imageid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Period = period
          @NodeType = nodetype
          @NodeCount = nodecount
          @LoginSettings = loginsettings
          @AutoRenew = autorenew
          @NodeName = nodename
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @Tags = tags
          @ClientToken = clienttoken
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ImageId = params['ImageId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Period = params['Period']
          @NodeType = params['NodeType']
          @NodeCount = params['NodeCount']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @AutoRenew = params['AutoRenew']
          @NodeName = params['NodeName']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ClientToken = params['ClientToken']
        end
      end

      # CreateDBCustomNodes返回参数结构体
      class CreateDBCustomNodesResponse < TencentCloud::Common::AbstractModel
        # @param NodeIds: <p>节点ID列表</p>
        # @type NodeIds: Array
        # @param TaskId: <p>创建节点的任务ID</p>
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeIds, :TaskId, :RequestId

        def initialize(nodeids=nil, taskid=nil, requestid=nil)
          @NodeIds = nodeids
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @NodeIds = params['NodeIds']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DB Custom 集群信息。
      class DBCustomCluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>集群ID</p>
        # @type ClusterId: String
        # @param ClusterName: <p>集群名称</p>
        # @type ClusterName: String
        # @param Region: <p>集群支持的地域</p>
        # @type Region: String
        # @param ClusterLevel: <p>集群规模</p><p>默认值：L500</p>
        # @type ClusterLevel: String
        # @param ClusterStatus: <p>DB Custom 集群状态</p><p>枚举值：</p><ul><li>Creating： 创建中</li><li>Running： 运行中</li><li>Destroying： 销毁中</li></ul>
        # @type ClusterStatus: String
        # @param ClusterVersion: <p>集群版本号</p>
        # @type ClusterVersion: String
        # @param ClusterNodeNum: <p>集群中的节点数量</p><p>单位：台</p>
        # @type ClusterNodeNum: Integer
        # @param ClusterDescription: <p>集群描述</p>
        # @type ClusterDescription: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param Tags: <p>集群的标签信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ClusterId, :ClusterName, :Region, :ClusterLevel, :ClusterStatus, :ClusterVersion, :ClusterNodeNum, :ClusterDescription, :CreatedTime, :Tags

        def initialize(clusterid=nil, clustername=nil, region=nil, clusterlevel=nil, clusterstatus=nil, clusterversion=nil, clusternodenum=nil, clusterdescription=nil, createdtime=nil, tags=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @ClusterLevel = clusterlevel
          @ClusterStatus = clusterstatus
          @ClusterVersion = clusterversion
          @ClusterNodeNum = clusternodenum
          @ClusterDescription = clusterdescription
          @CreatedTime = createdtime
          @Tags = tags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @ClusterLevel = params['ClusterLevel']
          @ClusterStatus = params['ClusterStatus']
          @ClusterVersion = params['ClusterVersion']
          @ClusterNodeNum = params['ClusterNodeNum']
          @ClusterDescription = params['ClusterDescription']
          @CreatedTime = params['CreatedTime']
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

      # DB Custom 集群节点信息。
      class DBCustomClusterNode < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>节点ID</p>
        # @type NodeId: String
        # @param NodeName: <p>节点名称</p>
        # @type NodeName: String
        # @param LanIP: <p>节点内网IP地址</p>
        # @type LanIP: String
        # @param SSHEndpoint: <p>节点SSH 访问的Endpoint。格式为IP:Port.</p>
        # @type SSHEndpoint: String
        # @param Status: <p>节点在集群中的实例状态</p>
        # @type Status: String
        # @param Zone: <p>节点所属的地域</p>
        # @type Zone: String
        # @param NodeType: <p>节点类型</p><p>枚举值：</p><ul><li>DB.AT5.32XLARGE512： 高IO型服务器：128核心512GB内存，8*7180GB本地NvME SSDB。</li><li>DB.AT5.64XLARGE1152： 高IO型服务器：256核心1152GB内存，12*7180GB本地NvME SSDB。</li><li>DB.AT5.128XLARGE2304： 高IO型服务器：512核心2304GB内存，24*7180GB本地NvME SSDB。</li><li>DB.AT5.16XLARGE256： 高IO型服务器：64核心256GB内存，4*7180GB本地NvME SSDB。</li><li>DB.AT5.8XLARGE128： 高IO型服务器：32核心128GB内存，2*7180GB本地NvME SSDB。</li></ul>
        # @type NodeType: String

        attr_accessor :NodeId, :NodeName, :LanIP, :SSHEndpoint, :Status, :Zone, :NodeType

        def initialize(nodeid=nil, nodename=nil, lanip=nil, sshendpoint=nil, status=nil, zone=nil, nodetype=nil)
          @NodeId = nodeid
          @NodeName = nodename
          @LanIP = lanip
          @SSHEndpoint = sshendpoint
          @Status = status
          @Zone = zone
          @NodeType = nodetype
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @LanIP = params['LanIP']
          @SSHEndpoint = params['SSHEndpoint']
          @Status = params['Status']
          @Zone = params['Zone']
          @NodeType = params['NodeType']
        end
      end

      # DB Custom 可选的镜像信息。
      class DBCustomImage < TencentCloud::Common::AbstractModel
        # @param ImageId: <p>镜像ID</p>
        # @type ImageId: String
        # @param OsName: <p>操作系统名称</p>
        # @type OsName: String
        # @param ImageType: <p>镜像类型</p><p>枚举值：</p><ul><li>PUBLIC_IMAGE： 公共镜像 (腾讯云官方镜像)</li><li>PRIVATE_IMAGE： 私有镜像 (客户专属镜像)</li></ul>
        # @type ImageType: String
        # @param Architecture: <p>操作系统架构</p><p>枚举值：</p><ul><li>x86_64： X86 64位架构</li><li>arm64： ARM 64位机构</li></ul>
        # @type Architecture: String

        attr_accessor :ImageId, :OsName, :ImageType, :Architecture

        def initialize(imageid=nil, osname=nil, imagetype=nil, architecture=nil)
          @ImageId = imageid
          @OsName = osname
          @ImageType = imagetype
          @Architecture = architecture
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @OsName = params['OsName']
          @ImageType = params['ImageType']
          @Architecture = params['Architecture']
        end
      end

      # DB Custom 节点信息。
      class DBCustomNode < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>节点ID</p>
        # @type NodeId: String
        # @param NodeName: <p>节点名称</p>
        # @type NodeName: String
        # @param SSHEndpoint: <p>访问此节点的SSH Endpoint，格式为IP:Port</p>
        # @type SSHEndpoint: String
        # @param LanIP: <p>节点的内网通信IP地址</p>
        # @type LanIP: String
        # @param ClusterId: <p>节点所属的集群ID</p>
        # @type ClusterId: String
        # @param Zone: <p>节点所属的可用区</p>
        # @type Zone: String
        # @param NodeType: <p>节点类型</p><p>枚举值：</p><ul><li>DB.AT5.32XLARGE512： 高IO型服务器：128核心512GB内存，8*7180GB本地NvME SSDB。</li><li>DB.AT5.64XLARGE1152： 高IO型服务器：256核心1152GB内存，12*7180GB本地NvME SSDB。</li><li>DB.AT5.128XLARGE2304： 高IO型服务器：512核心2304GB内存，24*7180GB本地NvME SSDB。</li><li>DB.AT5.16XLARGE256： 高IO型服务器：64核心256GB内存，4*7180GB本地NvME SSDB。</li><li>DB.AT5.8XLARGE128： 高IO型服务器：32核心128GB内存，2*7180GB本地NvME SSDB。</li></ul>
        # @type NodeType: String
        # @param CPU: <p>节点CPU大小</p><p>单位：核</p>
        # @type CPU: Integer
        # @param Memory: <p>节点内存</p><p>单位：GiB</p>
        # @type Memory: Integer
        # @param SystemDisk: <p>系统盘信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDisk: :class:`Tencentcloud::Dbdc.v20201029.models.SystemDisk`
        # @param DataDisks: <p>数据盘信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param OsName: <p>节点的操作系统名称</p>
        # @type OsName: String
        # @param ImageId: <p>节点的操作系统镜像ID</p>
        # @type ImageId: String
        # @param VpcId: <p>节点SSH Endpoint 所属的VPC ID</p>
        # @type VpcId: String
        # @param SubnetId: <p>节点SSH Endpoint 所属的VPC 子网ID</p>
        # @type SubnetId: String
        # @param Status: <p>节点状态</p><p>枚举值：</p><ul><li>Creating： 创建中</li><li>Running： 运行中</li><li>Isolating： 隔离中</li><li>Isolated： 已隔离</li><li>Activating： 解除隔离中</li><li>Destroying： 销毁中</li></ul>
        # @type Status: String
        # @param ChargeType: <p>付费类型</p><p>枚举值：</p><ul><li>PREPAID： 包年包月</li></ul>
        # @type ChargeType: String
        # @param ExpireTime: <p>节点到期时间</p>
        # @type ExpireTime: String
        # @param CreatedTime: <p>节点创建时间</p>
        # @type CreatedTime: String
        # @param IsolatedTime: <p>节点隔离时间</p>
        # @type IsolatedTime: String
        # @param Tags: <p>节点标签信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoRenew: <p>节点是否自动续费标记</p><p>枚举值：</p><ul><li>1： 自动续费</li><li>2： 不自动续费</li></ul>
        # @type AutoRenew: Integer
        # @param SwitchId: <p>交换机ID（已加密）</p>
        # @type SwitchId: String
        # @param RackId: <p>机架ID（已加密）</p>
        # @type RackId: String
        # @param HostIp: <p>底层物理机IP（已加密）</p>
        # @type HostIp: String

        attr_accessor :NodeId, :NodeName, :SSHEndpoint, :LanIP, :ClusterId, :Zone, :NodeType, :CPU, :Memory, :SystemDisk, :DataDisks, :OsName, :ImageId, :VpcId, :SubnetId, :Status, :ChargeType, :ExpireTime, :CreatedTime, :IsolatedTime, :Tags, :AutoRenew, :SwitchId, :RackId, :HostIp

        def initialize(nodeid=nil, nodename=nil, sshendpoint=nil, lanip=nil, clusterid=nil, zone=nil, nodetype=nil, cpu=nil, memory=nil, systemdisk=nil, datadisks=nil, osname=nil, imageid=nil, vpcid=nil, subnetid=nil, status=nil, chargetype=nil, expiretime=nil, createdtime=nil, isolatedtime=nil, tags=nil, autorenew=nil, switchid=nil, rackid=nil, hostip=nil)
          @NodeId = nodeid
          @NodeName = nodename
          @SSHEndpoint = sshendpoint
          @LanIP = lanip
          @ClusterId = clusterid
          @Zone = zone
          @NodeType = nodetype
          @CPU = cpu
          @Memory = memory
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @OsName = osname
          @ImageId = imageid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @ChargeType = chargetype
          @ExpireTime = expiretime
          @CreatedTime = createdtime
          @IsolatedTime = isolatedtime
          @Tags = tags
          @AutoRenew = autorenew
          @SwitchId = switchid
          @RackId = rackid
          @HostIp = hostip
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @SSHEndpoint = params['SSHEndpoint']
          @LanIP = params['LanIP']
          @ClusterId = params['ClusterId']
          @Zone = params['Zone']
          @NodeType = params['NodeType']
          @CPU = params['CPU']
          @Memory = params['Memory']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @OsName = params['OsName']
          @ImageId = params['ImageId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @ChargeType = params['ChargeType']
          @ExpireTime = params['ExpireTime']
          @CreatedTime = params['CreatedTime']
          @IsolatedTime = params['IsolatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoRenew = params['AutoRenew']
          @SwitchId = params['SwitchId']
          @RackId = params['RackId']
          @HostIp = params['HostIp']
        end
      end

      # DB实例详情
      class DBInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: DB实例Id
        # @type InstanceId: String
        # @param InstanceName: DB实例名称
        # @type InstanceName: String
        # @param Status: DB实例状态,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        # @type Status: Integer
        # @param StatusDesc: DB实例状态描述,-1:已隔离, 0:创建中, 1:流程中, 2:运行中, 3:未初始化
        # @type StatusDesc: String
        # @param DbVersion: DB实例版本
        # @type DbVersion: String
        # @param Vip: Vip信息
        # @type Vip: String
        # @param Vport: Vip使用的端口号
        # @type Vport: Integer
        # @param UniqueVpcId: 字符串型的私有网络ID
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 字符串型的私有网络子网ID
        # @type UniqueSubnetId: String
        # @param Shard: 是否为分布式版本,0:否,1:是
        # @type Shard: Integer
        # @param NodeNum: DB实例节点数
        # @type NodeNum: Integer
        # @param Cpu: CPU规格(单位:核数)
        # @type Cpu: Integer
        # @param Memory: 内存规格(单位:GB)
        # @type Memory: Integer
        # @param Disk: 磁盘规格(单位:GB)
        # @type Disk: Integer
        # @param ShardNum: 分布式类型的实例的分片数
        # @type ShardNum: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param DbHosts: Db所在主机列表, 格式: m1,s1|m2,s2
        # @type DbHosts: String
        # @param HostRole: 主机角色, 1:主, 2:从, 3:主+从
        # @type HostRole: Integer
        # @param DbEngine: DB引擎，MySQL,Percona,MariaDB
        # @type DbEngine: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Zones: 可用区列表
        # @type Zones: Array

        attr_accessor :InstanceId, :InstanceName, :Status, :StatusDesc, :DbVersion, :Vip, :Vport, :UniqueVpcId, :UniqueSubnetId, :Shard, :NodeNum, :Cpu, :Memory, :Disk, :ShardNum, :Region, :Zone, :DbHosts, :HostRole, :DbEngine, :CreateTime, :Zones

        def initialize(instanceid=nil, instancename=nil, status=nil, statusdesc=nil, dbversion=nil, vip=nil, vport=nil, uniquevpcid=nil, uniquesubnetid=nil, shard=nil, nodenum=nil, cpu=nil, memory=nil, disk=nil, shardnum=nil, region=nil, zone=nil, dbhosts=nil, hostrole=nil, dbengine=nil, createtime=nil, zones=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @DbVersion = dbversion
          @Vip = vip
          @Vport = vport
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @Shard = shard
          @NodeNum = nodenum
          @Cpu = cpu
          @Memory = memory
          @Disk = disk
          @ShardNum = shardnum
          @Region = region
          @Zone = zone
          @DbHosts = dbhosts
          @HostRole = hostrole
          @DbEngine = dbengine
          @CreateTime = createtime
          @Zones = zones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbVersion = params['DbVersion']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @Shard = params['Shard']
          @NodeNum = params['NodeNum']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @ShardNum = params['ShardNum']
          @Region = params['Region']
          @Zone = params['Zone']
          @DbHosts = params['DbHosts']
          @HostRole = params['HostRole']
          @DbEngine = params['DbEngine']
          @CreateTime = params['CreateTime']
          @Zones = params['Zones']
        end
      end

      # DB Custom 节点数据盘信息。
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: <p>磁盘类型</p><p>枚举值：</p><ul><li>CLOUD_HSSD： 增强型云硬盘</li><li>LOCAL_NVME： 本地硬盘</li></ul>
        # @type DiskType: String
        # @param DiskSize: <p>磁盘大小</p><p>单位：GiB</p>
        # @type DiskSize: Integer
        # @param DiskName: <p>磁盘名称</p>
        # @type DiskName: String

        attr_accessor :DiskType, :DiskSize, :DiskName

        def initialize(disktype=nil, disksize=nil, diskname=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskName = params['DiskName']
        end
      end

      # DescribeDBCustomClusterDetail请求参数结构体
      class DescribeDBCustomClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>DB Custom 集群ID</p><p>入参限制：必须为此账号拥有的DB Custom集群</p>
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeDBCustomClusterDetail返回参数结构体
      class DescribeDBCustomClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>集群ID</p>
        # @type ClusterId: String
        # @param ClusterName: <p>集群名称</p>
        # @type ClusterName: String
        # @param ClusterDescription: <p>集群描述</p>
        # @type ClusterDescription: String
        # @param Region: <p>集群所属地域</p><p>枚举值：</p><ul><li>ap-shanghai： 上海地域</li><li>ap-nanjing： 南京地域</li></ul>
        # @type Region: String
        # @param ClusterStatus: <p>DB Custom 集群状态</p><p>枚举值：</p><ul><li>Creating： 创建中</li><li>Running： 运行中</li><li>Destroying： 销毁中</li><li>Initializing： 初始化中</li></ul>
        # @type ClusterStatus: String
        # @param ClusterVersion: <p>集群版本</p><p>枚举值：</p><ul><li>1.34.1： 集群版本1.34.1</li></ul><p>默认值：1.34.1</p>
        # @type ClusterVersion: String
        # @param ClusterNodeNum: <p>集群下的节点数量</p>
        # @type ClusterNodeNum: Integer
        # @param ClusterLevel: <p>集群规模</p>
        # @type ClusterLevel: String
        # @param CreatedTime: <p>创建时间</p>
        # @type CreatedTime: String
        # @param Tags: <p>集群标签信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ApiServerNetwork: <p>集群的API Server的网络信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiServerNetwork: :class:`Tencentcloud::Dbdc.v20201029.models.ApiServerNetwork`
        # @param ContainerNetwork: <p>容器网络，在此集群中的所有Pod将与此网络连通</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerNetwork: :class:`Tencentcloud::Dbdc.v20201029.models.ContainerNetwork`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDescription, :Region, :ClusterStatus, :ClusterVersion, :ClusterNodeNum, :ClusterLevel, :CreatedTime, :Tags, :ApiServerNetwork, :ContainerNetwork, :RequestId

        def initialize(clusterid=nil, clustername=nil, clusterdescription=nil, region=nil, clusterstatus=nil, clusterversion=nil, clusternodenum=nil, clusterlevel=nil, createdtime=nil, tags=nil, apiservernetwork=nil, containernetwork=nil, requestid=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDescription = clusterdescription
          @Region = region
          @ClusterStatus = clusterstatus
          @ClusterVersion = clusterversion
          @ClusterNodeNum = clusternodenum
          @ClusterLevel = clusterlevel
          @CreatedTime = createdtime
          @Tags = tags
          @ApiServerNetwork = apiservernetwork
          @ContainerNetwork = containernetwork
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDescription = params['ClusterDescription']
          @Region = params['Region']
          @ClusterStatus = params['ClusterStatus']
          @ClusterVersion = params['ClusterVersion']
          @ClusterNodeNum = params['ClusterNodeNum']
          @ClusterLevel = params['ClusterLevel']
          @CreatedTime = params['CreatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ApiServerNetwork'].nil?
            @ApiServerNetwork = ApiServerNetwork.new
            @ApiServerNetwork.deserialize(params['ApiServerNetwork'])
          end
          unless params['ContainerNetwork'].nil?
            @ContainerNetwork = ContainerNetwork.new
            @ContainerNetwork.deserialize(params['ContainerNetwork'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomClusterKubeconfig请求参数结构体
      class DescribeDBCustomClusterKubeconfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>集群ID</p><p>入参限制：必须为当前节点拥有的DB Custom 集群</p>
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeDBCustomClusterKubeconfig返回参数结构体
      class DescribeDBCustomClusterKubeconfigResponse < TencentCloud::Common::AbstractModel
        # @param Kubeconfig: <p>集群APIServer信息</p>
        # @type Kubeconfig: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kubeconfig, :RequestId

        def initialize(kubeconfig=nil, requestid=nil)
          @Kubeconfig = kubeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @Kubeconfig = params['Kubeconfig']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomClusterNodes请求参数结构体
      class DescribeDBCustomClusterNodesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>DB Custom 集群ID</p>
        # @type ClusterId: String
        # @param Filters: <p>查询筛选条件。支持的条件有：</p><ul><li>node-name：DB Custom 节点名称。</li></ul>
        # @type Filters: Array
        # @param Offset: <p>分页偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer

        attr_accessor :ClusterId, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
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

      # DescribeDBCustomClusterNodes返回参数结构体
      class DescribeDBCustomClusterNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>集群下总的节点数量</p>
        # @type TotalCount: Integer
        # @param NodeSet: <p>分页后节点列表信息</p>
        # @type NodeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodeSet, :RequestId

        def initialize(totalcount=nil, nodeset=nil, requestid=nil)
          @TotalCount = totalcount
          @NodeSet = nodeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              dbcustomclusternode_tmp = DBCustomClusterNode.new
              dbcustomclusternode_tmp.deserialize(i)
              @NodeSet << dbcustomclusternode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomClusters请求参数结构体
      class DescribeDBCustomClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: <p>按照一个或者多个 ClusterId 查询。</p><p>入参限制：每次请求的数量上限为100</p>
        # @type ClusterIds: Array
        # @param Filters: <p>查询筛选条件。支持的筛选条件包括：</p><ul><li>cluster-name：DB Custom 集群名称，精确匹配。</li><li>cluster-status：DB Custom 集群状态（Creating，Running，Destroying）。</li></ul>
        # @type Filters: Array
        # @param Tags: <p>根据标签的 Key 和 Value 筛选 DB Custom 集群</p>
        # @type Tags: Array
        # @param Offset: <p>集群列表分页偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer

        attr_accessor :ClusterIds, :Filters, :Tags, :Offset, :Limit

        def initialize(clusterids=nil, filters=nil, tags=nil, offset=nil, limit=nil)
          @ClusterIds = clusterids
          @Filters = filters
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBCustomClusters返回参数结构体
      class DescribeDBCustomClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总集群数量</p>
        # @type TotalCount: Integer
        # @param ClusterSet: <p>集群列表信息</p>
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId

        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              dbcustomcluster_tmp = DBCustomCluster.new
              dbcustomcluster_tmp.deserialize(i)
              @ClusterSet << dbcustomcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomImages请求参数结构体
      class DescribeDBCustomImagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>偏移量</p><p>默认值：0</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
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

      # DescribeDBCustomImages返回参数结构体
      class DescribeDBCustomImagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总镜像数量</p>
        # @type TotalCount: Integer
        # @param ImageSet: <p>支持的镜像列表信息</p>
        # @type ImageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageSet, :RequestId

        def initialize(totalcount=nil, imageset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageSet = imageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageSet'].nil?
            @ImageSet = []
            params['ImageSet'].each do |i|
              dbcustomimage_tmp = DBCustomImage.new
              dbcustomimage_tmp.deserialize(i)
              @ImageSet << dbcustomimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomNodes请求参数结构体
      class DescribeDBCustomNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeIds: <p>按照一个或者多个 NodeId 查询。</p><p>入参限制：每次请求的数量上限为100</p>
        # @type NodeIds: Array
        # @param Filters: <p>查询筛选条件。支持的筛选条件包括：</p><ul><li>cluster-id：按 DB Custom 集群进行过滤。</li><li>node-name：按 DB Custom 节点名称进行过滤，精确匹配。</li><li>status：按 DB Custom 节点状态进行过滤。（可选值：Creating，Running，Isolating，Isolated，Activating（解除隔离中），Destroying）</li><li>zone：按 DB Custom 节点所在可用区进行过滤。</li></ul>
        # @type Filters: Array
        # @param Tags: <p>根据标签的 Key 和 Value 筛选 DB Custom 节点</p>
        # @type Tags: Array
        # @param Offset: <p>分页偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量</p><p>取值范围：[1, 100]</p><p>默认值：20</p>
        # @type Limit: Integer

        attr_accessor :NodeIds, :Filters, :Tags, :Offset, :Limit

        def initialize(nodeids=nil, filters=nil, tags=nil, offset=nil, limit=nil)
          @NodeIds = nodeids
          @Filters = filters
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NodeIds = params['NodeIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBCustomNodes返回参数结构体
      class DescribeDBCustomNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>当前账号下拥有的DB Custom 节点总数</p>
        # @type TotalCount: Integer
        # @param NodeSet: <p>当前账号下拥有的DB Custom 节点列表信息</p>
        # @type NodeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodeSet, :RequestId

        def initialize(totalcount=nil, nodeset=nil, requestid=nil)
          @TotalCount = totalcount
          @NodeSet = nodeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              dbcustomnode_tmp = DBCustomNode.new
              dbcustomnode_tmp.deserialize(i)
              @NodeSet << dbcustomnode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCustomTaskStatus请求参数结构体
      class DescribeDBCustomTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>DB Custom 任务ID</p>
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeDBCustomTaskStatus返回参数结构体
      class DescribeDBCustomTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: <p>任务 ID</p><p>枚举值：</p><ul><li>Running： 运行中</li><li>Succeeded： 成功</li><li>Failed： 失败</li></ul>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param HostId: 独享集群主机Id
        # @type HostId: String
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param ShardType: 实例类型,0:mariadb, 1:tdsql
        # @type ShardType: Array

        attr_accessor :InstanceId, :HostId, :Limit, :Offset, :ShardType

        def initialize(instanceid=nil, hostid=nil, limit=nil, offset=nil, shardtype=nil)
          @InstanceId = instanceid
          @HostId = hostid
          @Limit = limit
          @Offset = offset
          @ShardType = shardtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @HostId = params['HostId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ShardType = params['ShardType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 独享集群内的DB实例列表
        # @type Instances: Array
        # @param TotalCount: 独享集群内的DB实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              dbinstancedetail_tmp = DBInstanceDetail.new
              dbinstancedetail_tmp.deserialize(i)
              @Instances << dbinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostList请求参数结构体
      class DescribeHostListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param AssignStatus: 分配状态过滤，0-可分配，1-禁止分配
        # @type AssignStatus: Array

        attr_accessor :InstanceId, :Limit, :Offset, :AssignStatus

        def initialize(instanceid=nil, limit=nil, offset=nil, assignstatus=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @AssignStatus = assignstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AssignStatus = params['AssignStatus']
        end
      end

      # DescribeHostList返回参数结构体
      class DescribeHostListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主机总数
        # @type TotalCount: Integer
        # @param Hosts: 主机详情
        # @type Hosts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Hosts, :RequestId

        def initialize(totalcount=nil, hosts=nil, requestid=nil)
          @TotalCount = totalcount
          @Hosts = hosts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Hosts'].nil?
            @Hosts = []
            params['Hosts'].each do |i|
              hostdetail_tmp = HostDetail.new
              hostdetail_tmp.deserialize(i)
              @Hosts << hostdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 独享集群详情
      class DescribeInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param ProductId: 产品ID, 0:CDB, 1:TDSQL
        # @type ProductId: Integer
        # @param Type: 集群类型, 0:公有云, 1:金融围笼, 2:CDC集群
        # @type Type: Integer
        # @param HostType: 主机类型, 0:物理机, 1:CVM机型, 2:CDC机型
        # @type HostType: Integer
        # @param AutoRenewFlag: 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        # @type AutoRenewFlag: Integer
        # @param Status: 集群状态
        # @type Status: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param HostNum: 主机数
        # @type HostNum: Integer
        # @param DbNum: DB实例数
        # @type DbNum: Integer
        # @param AssignStrategy: 分配策略, 0:紧凑, 1:均匀
        # @type AssignStrategy: Integer
        # @param CpuSpec: 总主机CPU(单位:核数)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 总已分配CPU(单位:核数)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 总可分配CPU(单位:核数)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 总主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 总已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 总可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 总机器磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 总已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 总可分配磁盘(单位:GB)
        # @type DiskAssignable: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param FenceId: 金融围笼ID
        # @type FenceId: String
        # @param ClusterId: 所属集群ID(默认集群为空)
        # @type ClusterId: String
        # @param ResourceTags: 实例标签
        # @type ResourceTags: Array
        # @param CpuType: CPU类型：Intel/AMD,Hygon
        # @type CpuType: String
        # @param Zones: 可用区列表
        # @type Zones: Array

        attr_accessor :InstanceId, :InstanceName, :Region, :ProductId, :Type, :HostType, :AutoRenewFlag, :Status, :StatusDesc, :CreateTime, :PeriodEndTime, :HostNum, :DbNum, :AssignStrategy, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :Zone, :FenceId, :ClusterId, :ResourceTags, :CpuType, :Zones

        def initialize(instanceid=nil, instancename=nil, region=nil, productid=nil, type=nil, hosttype=nil, autorenewflag=nil, status=nil, statusdesc=nil, createtime=nil, periodendtime=nil, hostnum=nil, dbnum=nil, assignstrategy=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, zone=nil, fenceid=nil, clusterid=nil, resourcetags=nil, cputype=nil, zones=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @ProductId = productid
          @Type = type
          @HostType = hosttype
          @AutoRenewFlag = autorenewflag
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @HostNum = hostnum
          @DbNum = dbnum
          @AssignStrategy = assignstrategy
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @Zone = zone
          @FenceId = fenceid
          @ClusterId = clusterid
          @ResourceTags = resourcetags
          @CpuType = cputype
          @Zones = zones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @ProductId = params['ProductId']
          @Type = params['Type']
          @HostType = params['HostType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @HostNum = params['HostNum']
          @DbNum = params['DbNum']
          @AssignStrategy = params['AssignStrategy']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @Zone = params['Zone']
          @FenceId = params['FenceId']
          @ClusterId = params['ClusterId']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @CpuType = params['CpuType']
          @Zones = params['Zones']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param ProductId: 产品ID, 0:CDB, 1:TDSQL
        # @type ProductId: Integer
        # @param Type: 集群类型, 0:公有云, 1:金融围笼
        # @type Type: Integer
        # @param HostType: 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        # @type HostType: Integer
        # @param AutoRenewFlag: 自动续费标志, 0:未设置, 1:自动续费, 2:到期不续费
        # @type AutoRenewFlag: Integer
        # @param Status: 集群状态
        # @type Status: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param HostNum: 主机数
        # @type HostNum: Integer
        # @param DbNum: Db实例数
        # @type DbNum: Integer
        # @param AssignStrategy: 分配策略, 0:紧凑, 1:均匀
        # @type AssignStrategy: Integer
        # @param CpuSpec: 总主机CPU(单位:核)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 总已分配CPU(单位:核)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 总可分配CPU(单位:核)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 总主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 总已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 总可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 总机器磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 总已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 总可分配磁盘(单位:GB)
        # @type DiskAssignable: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param FenceId: 金融围笼ID
        # @type FenceId: String
        # @param ClusterId: 所属集群ID(默认集群为空)
        # @type ClusterId: String
        # @param ResourceTags: 独享集群的标签信息
        # @type ResourceTags: Array
        # @param CpuType: CPU类型，Intel/AMD,Hygon
        # @type CpuType: String
        # @param Zones: 可用区列表
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :Region, :ProductId, :Type, :HostType, :AutoRenewFlag, :Status, :StatusDesc, :CreateTime, :PeriodEndTime, :HostNum, :DbNum, :AssignStrategy, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :Zone, :FenceId, :ClusterId, :ResourceTags, :CpuType, :Zones, :RequestId

        def initialize(instanceid=nil, instancename=nil, region=nil, productid=nil, type=nil, hosttype=nil, autorenewflag=nil, status=nil, statusdesc=nil, createtime=nil, periodendtime=nil, hostnum=nil, dbnum=nil, assignstrategy=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, zone=nil, fenceid=nil, clusterid=nil, resourcetags=nil, cputype=nil, zones=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @ProductId = productid
          @Type = type
          @HostType = hosttype
          @AutoRenewFlag = autorenewflag
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @HostNum = hostnum
          @DbNum = dbnum
          @AssignStrategy = assignstrategy
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @Zone = zone
          @FenceId = fenceid
          @ClusterId = clusterid
          @ResourceTags = resourcetags
          @CpuType = cputype
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @ProductId = params['ProductId']
          @Type = params['Type']
          @HostType = params['HostType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @HostNum = params['HostNum']
          @DbNum = params['DbNum']
          @AssignStrategy = params['AssignStrategy']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @Zone = params['Zone']
          @FenceId = params['FenceId']
          @ClusterId = params['ClusterId']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @CpuType = params['CpuType']
          @Zones = params['Zones']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceList请求参数结构体
      class DescribeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页返回数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param OrderBy: 排序字段，createTime,instancename两者之一
        # @type OrderBy: String
        # @param SortBy: 排序规则，desc,asc两者之一
        # @type SortBy: String
        # @param ProductId: 按产品过滤，0:CDB, 1:TDSQL
        # @type ProductId: Array
        # @param InstanceId: 按实例ID过滤
        # @type InstanceId: Array
        # @param InstanceName: 按实例名称过滤
        # @type InstanceName: Array
        # @param FenceId: 按金融围笼ID过滤
        # @type FenceId: Array
        # @param Status: 按实例状态过滤, -1:已隔离, 0:创建中, 1:运行中, 2:扩容中, 3:删除中
        # @type Status: Array
        # @param ClusterId: 按所属集群ID过滤
        # @type ClusterId: Array

        attr_accessor :Limit, :Offset, :OrderBy, :SortBy, :ProductId, :InstanceId, :InstanceName, :FenceId, :Status, :ClusterId

        def initialize(limit=nil, offset=nil, orderby=nil, sortby=nil, productid=nil, instanceid=nil, instancename=nil, fenceid=nil, status=nil, clusterid=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @SortBy = sortby
          @ProductId = productid
          @InstanceId = instanceid
          @InstanceName = instancename
          @FenceId = fenceid
          @Status = status
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @SortBy = params['SortBy']
          @ProductId = params['ProductId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @FenceId = params['FenceId']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeInstanceList返回参数结构体
      class DescribeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 独享集群列表
        # @type Instances: Array
        # @param TotalCount: 独享集群实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              describeinstancedetail_tmp = DescribeInstanceDetail.new
              describeinstancedetail_tmp.deserialize(i)
              @Instances << describeinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceTypes: 集群类型: 0 一主一备, 1 一主两备...N-1 一主N备
        # @type InstanceTypes: Array
        # @param ProductIds: 产品ID:  0 MYSQL，1 TDSQL
        # @type ProductIds: Array
        # @param InstanceIds: 集群uuid: 如 dbdc-q810131s
        # @type InstanceIds: Array
        # @param FenceFlag: 是否按金融围笼标志搜索
        # @type FenceFlag: Boolean
        # @param InstanceName: 按实例名字模糊匹配
        # @type InstanceName: String
        # @param PageSize: 每页数目, 整型
        # @type PageSize: Integer
        # @param PageNumber: 页码, 整型
        # @type PageNumber: Integer
        # @param OrderBy: 排序字段，枚举：createtime,groupname
        # @type OrderBy: String
        # @param OrderByType: 排序方式: asc升序, desc降序
        # @type OrderByType: String
        # @param InstanceStatus: 集群状态: -2 已删除, -1 已隔离, 0 创建中, 1 运行中, 2 扩容中, 3 删除中
        # @type InstanceStatus: Integer

        attr_accessor :InstanceTypes, :ProductIds, :InstanceIds, :FenceFlag, :InstanceName, :PageSize, :PageNumber, :OrderBy, :OrderByType, :InstanceStatus

        def initialize(instancetypes=nil, productids=nil, instanceids=nil, fenceflag=nil, instancename=nil, pagesize=nil, pagenumber=nil, orderby=nil, orderbytype=nil, instancestatus=nil)
          @InstanceTypes = instancetypes
          @ProductIds = productids
          @InstanceIds = instanceids
          @FenceFlag = fenceflag
          @InstanceName = instancename
          @PageSize = pagesize
          @PageNumber = pagenumber
          @OrderBy = orderby
          @OrderByType = orderbytype
          @InstanceStatus = instancestatus
        end

        def deserialize(params)
          @InstanceTypes = params['InstanceTypes']
          @ProductIds = params['ProductIds']
          @InstanceIds = params['InstanceIds']
          @FenceFlag = params['FenceFlag']
          @InstanceName = params['InstanceName']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @InstanceStatus = params['InstanceStatus']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群数量
        # @type TotalCount: Integer
        # @param Instances: 集群扩展信息
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceexpand_tmp = InstanceExpand.new
              instanceexpand_tmp.deserialize(i)
              @Instances << instanceexpand_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyDBCustomCluster请求参数结构体
      class DestroyDBCustomClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>待销毁的集群ID</p><p>入参限制：待销毁的集群必须无任何节点在此集群中。</p>
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DestroyDBCustomCluster返回参数结构体
      class DestroyDBCustomClusterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>销毁集群的任务ID</p>
        # @type TaskId: Integer
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

      # DestroyDBCustomNode请求参数结构体
      class DestroyDBCustomNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>DB Custom 节点ID</p>
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # DestroyDBCustomNode返回参数结构体
      class DestroyDBCustomNodeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID</p>
        # @type TaskId: Integer
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

      # 设备信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: Integer
        # @param DeviceNo: 设备No
        # @type DeviceNo: String
        # @param DevClass: 设备类型
        # @type DevClass: String
        # @param MaxMemory: 设备总内存，单位GB
        # @type MaxMemory: Float
        # @param MaxDisk: 设备总磁盘，单位GB
        # @type MaxDisk: Float
        # @param RestMemory: 设备剩余内存，单位GB
        # @type RestMemory: Float
        # @param RestDisk: 设备剩余磁盘，单位GB
        # @type RestDisk: Float
        # @param RawDeviceNum: 设备机器个数
        # @type RawDeviceNum: Integer
        # @param InstanceNum: 数据库实例个数
        # @type InstanceNum: Integer

        attr_accessor :DeviceId, :DeviceNo, :DevClass, :MaxMemory, :MaxDisk, :RestMemory, :RestDisk, :RawDeviceNum, :InstanceNum

        def initialize(deviceid=nil, deviceno=nil, devclass=nil, maxmemory=nil, maxdisk=nil, restmemory=nil, restdisk=nil, rawdevicenum=nil, instancenum=nil)
          @DeviceId = deviceid
          @DeviceNo = deviceno
          @DevClass = devclass
          @MaxMemory = maxmemory
          @MaxDisk = maxdisk
          @RestMemory = restmemory
          @RestDisk = restdisk
          @RawDeviceNum = rawdevicenum
          @InstanceNum = instancenum
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceNo = params['DeviceNo']
          @DevClass = params['DevClass']
          @MaxMemory = params['MaxMemory']
          @MaxDisk = params['MaxDisk']
          @RestMemory = params['RestMemory']
          @RestDisk = params['RestDisk']
          @RawDeviceNum = params['RawDeviceNum']
          @InstanceNum = params['InstanceNum']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: <p>筛选条件</p>
        # @type Name: String
        # @param Values: <p>过滤字段对应的参数值</p>
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

      # 主机详情
      class HostDetail < TencentCloud::Common::AbstractModel
        # @param HostId: 主机Id
        # @type HostId: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 主机状态
        # @type Status: Integer
        # @param AssignStatus: 分配DB实例状态,0:可分配,1:不可分配
        # @type AssignStatus: Integer
        # @param HostType: 主机类型, 0:物理机, 1:cvm本地盘, 2:cvm云盘
        # @type HostType: Integer
        # @param DbNum: DB实例数
        # @type DbNum: Integer
        # @param CpuSpec: 主机CPU(单位:核数)
        # @type CpuSpec: Integer
        # @param CpuAssigned: 已分配CPU(单位:核数)
        # @type CpuAssigned: Integer
        # @param CpuAssignable: 可分配CPU(单位:核数)
        # @type CpuAssignable: Integer
        # @param MemorySpec: 主机内存(单位:GB)
        # @type MemorySpec: Integer
        # @param MemoryAssigned: 已分配内存(单位:GB)
        # @type MemoryAssigned: Integer
        # @param MemoryAssignable: 可分配内存(单位:GB)
        # @type MemoryAssignable: Integer
        # @param DiskSpec: 主机磁盘(单位:GB)
        # @type DiskSpec: Integer
        # @param DiskAssigned: 已分配磁盘(单位:GB)
        # @type DiskAssigned: Integer
        # @param DiskAssignable: 可分配磁盘(GB)
        # @type DiskAssignable: Integer
        # @param CpuRatio: CPU分配比
        # @type CpuRatio: Float
        # @param MemoryRatio: 内存分配比
        # @type MemoryRatio: Float
        # @param DiskRatio: 磁盘分配比
        # @type DiskRatio: Float
        # @param MachineName: 机型名称
        # @type MachineName: String
        # @param MachineType: 机型类别
        # @type MachineType: String
        # @param PidTag: 计费标签
        # @type PidTag: String
        # @param Pid: 计费ID
        # @type Pid: Integer
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param Zones: 可用区列表
        # @type Zones: Array

        attr_accessor :HostId, :HostName, :Zone, :Status, :AssignStatus, :HostType, :DbNum, :CpuSpec, :CpuAssigned, :CpuAssignable, :MemorySpec, :MemoryAssigned, :MemoryAssignable, :DiskSpec, :DiskAssigned, :DiskAssignable, :CpuRatio, :MemoryRatio, :DiskRatio, :MachineName, :MachineType, :PidTag, :Pid, :InstanceId, :Zones

        def initialize(hostid=nil, hostname=nil, zone=nil, status=nil, assignstatus=nil, hosttype=nil, dbnum=nil, cpuspec=nil, cpuassigned=nil, cpuassignable=nil, memoryspec=nil, memoryassigned=nil, memoryassignable=nil, diskspec=nil, diskassigned=nil, diskassignable=nil, cpuratio=nil, memoryratio=nil, diskratio=nil, machinename=nil, machinetype=nil, pidtag=nil, pid=nil, instanceid=nil, zones=nil)
          @HostId = hostid
          @HostName = hostname
          @Zone = zone
          @Status = status
          @AssignStatus = assignstatus
          @HostType = hosttype
          @DbNum = dbnum
          @CpuSpec = cpuspec
          @CpuAssigned = cpuassigned
          @CpuAssignable = cpuassignable
          @MemorySpec = memoryspec
          @MemoryAssigned = memoryassigned
          @MemoryAssignable = memoryassignable
          @DiskSpec = diskspec
          @DiskAssigned = diskassigned
          @DiskAssignable = diskassignable
          @CpuRatio = cpuratio
          @MemoryRatio = memoryratio
          @DiskRatio = diskratio
          @MachineName = machinename
          @MachineType = machinetype
          @PidTag = pidtag
          @Pid = pid
          @InstanceId = instanceid
          @Zones = zones
        end

        def deserialize(params)
          @HostId = params['HostId']
          @HostName = params['HostName']
          @Zone = params['Zone']
          @Status = params['Status']
          @AssignStatus = params['AssignStatus']
          @HostType = params['HostType']
          @DbNum = params['DbNum']
          @CpuSpec = params['CpuSpec']
          @CpuAssigned = params['CpuAssigned']
          @CpuAssignable = params['CpuAssignable']
          @MemorySpec = params['MemorySpec']
          @MemoryAssigned = params['MemoryAssigned']
          @MemoryAssignable = params['MemoryAssignable']
          @DiskSpec = params['DiskSpec']
          @DiskAssigned = params['DiskAssigned']
          @DiskAssignable = params['DiskAssignable']
          @CpuRatio = params['CpuRatio']
          @MemoryRatio = params['MemoryRatio']
          @DiskRatio = params['DiskRatio']
          @MachineName = params['MachineName']
          @MachineType = params['MachineType']
          @PidTag = params['PidTag']
          @Pid = params['Pid']
          @InstanceId = params['InstanceId']
          @Zones = params['Zones']
        end
      end

      # 集群容量信息。
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param Status: 集群状态，0：运行中，1：不在运行
        # @type Status: Integer
        # @param ReadWriteTotalLeaveMemory: 读写集群剩余内存容量，单位GB
        # @type ReadWriteTotalLeaveMemory: Float
        # @param ReadWriteTotalLeaveDisk: 读写集群剩余磁盘容量，单位GB
        # @type ReadWriteTotalLeaveDisk: Float
        # @param ReadWriteTotalMemory: 读写集群总内存容量，单位GB
        # @type ReadWriteTotalMemory: Float
        # @param ReadWriteTotalDisk: 读写集群总磁盘容量，单位GB
        # @type ReadWriteTotalDisk: Float
        # @param ReadOnlyTotalLeaveMemory: 只读集群剩余内存容量，单位GB
        # @type ReadOnlyTotalLeaveMemory: Float
        # @param ReadOnlyTotalLeaveDisk: 只读集群剩余磁盘容量，单位GB
        # @type ReadOnlyTotalLeaveDisk: Float
        # @param ReadOnlyTotalMemory: 只读集群总内存容量，单位GB
        # @type ReadOnlyTotalMemory: Float
        # @param ReadOnlyTotalDisk: 只读集群总磁盘容量，单位GB
        # @type ReadOnlyTotalDisk: Float
        # @param InstanceDeviceInfos: 集群设备详情
        # @type InstanceDeviceInfos: Array

        attr_accessor :Status, :ReadWriteTotalLeaveMemory, :ReadWriteTotalLeaveDisk, :ReadWriteTotalMemory, :ReadWriteTotalDisk, :ReadOnlyTotalLeaveMemory, :ReadOnlyTotalLeaveDisk, :ReadOnlyTotalMemory, :ReadOnlyTotalDisk, :InstanceDeviceInfos

        def initialize(status=nil, readwritetotalleavememory=nil, readwritetotalleavedisk=nil, readwritetotalmemory=nil, readwritetotaldisk=nil, readonlytotalleavememory=nil, readonlytotalleavedisk=nil, readonlytotalmemory=nil, readonlytotaldisk=nil, instancedeviceinfos=nil)
          @Status = status
          @ReadWriteTotalLeaveMemory = readwritetotalleavememory
          @ReadWriteTotalLeaveDisk = readwritetotalleavedisk
          @ReadWriteTotalMemory = readwritetotalmemory
          @ReadWriteTotalDisk = readwritetotaldisk
          @ReadOnlyTotalLeaveMemory = readonlytotalleavememory
          @ReadOnlyTotalLeaveDisk = readonlytotalleavedisk
          @ReadOnlyTotalMemory = readonlytotalmemory
          @ReadOnlyTotalDisk = readonlytotaldisk
          @InstanceDeviceInfos = instancedeviceinfos
        end

        def deserialize(params)
          @Status = params['Status']
          @ReadWriteTotalLeaveMemory = params['ReadWriteTotalLeaveMemory']
          @ReadWriteTotalLeaveDisk = params['ReadWriteTotalLeaveDisk']
          @ReadWriteTotalMemory = params['ReadWriteTotalMemory']
          @ReadWriteTotalDisk = params['ReadWriteTotalDisk']
          @ReadOnlyTotalLeaveMemory = params['ReadOnlyTotalLeaveMemory']
          @ReadOnlyTotalLeaveDisk = params['ReadOnlyTotalLeaveDisk']
          @ReadOnlyTotalMemory = params['ReadOnlyTotalMemory']
          @ReadOnlyTotalDisk = params['ReadOnlyTotalDisk']
          unless params['InstanceDeviceInfos'].nil?
            @InstanceDeviceInfos = []
            params['InstanceDeviceInfos'].each do |i|
              instancedeviceinfo_tmp = InstanceDeviceInfo.new
              instancedeviceinfo_tmp.deserialize(i)
              @InstanceDeviceInfos << instancedeviceinfo_tmp
            end
          end
        end
      end

      # 集群设备组信息。
      class InstanceDeviceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ReadWriteDevice: 读写设备组
        # @type ReadWriteDevice: Array
        # @param ReadOnlyDevice: 只读设备组
        # @type ReadOnlyDevice: Array
        # @param FreeDevice: 空闲设备组
        # @type FreeDevice: Array

        attr_accessor :InstanceId, :ReadWriteDevice, :ReadOnlyDevice, :FreeDevice

        def initialize(instanceid=nil, readwritedevice=nil, readonlydevice=nil, freedevice=nil)
          @InstanceId = instanceid
          @ReadWriteDevice = readwritedevice
          @ReadOnlyDevice = readonlydevice
          @FreeDevice = freedevice
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ReadWriteDevice'].nil?
            @ReadWriteDevice = []
            params['ReadWriteDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @ReadWriteDevice << deviceinfo_tmp
            end
          end
          unless params['ReadOnlyDevice'].nil?
            @ReadOnlyDevice = []
            params['ReadOnlyDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @ReadOnlyDevice << deviceinfo_tmp
            end
          end
          unless params['FreeDevice'].nil?
            @FreeDevice = []
            params['FreeDevice'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @FreeDevice << deviceinfo_tmp
            end
          end
        end
      end

      # 集群扩展信息。
      class InstanceExpand < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param InstanceName: 集群名称
        # @type InstanceName: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param InstanceType: 集群类型： 0：一主一备，1：一主两备
        # @type InstanceType: Integer
        # @param InstanceStatus: 集群状态: 0 集群创建中, 1 集群有效, 2 集群扩容中, 3 集群删除中, 4 集群缩容中 -1 集群已隔离 -2 集群已删除
        # @type InstanceStatus: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AutoRenewFlag: 实例自动续费标识： 0正常续费 1自动续费 2到期不续费
        # @type AutoRenewFlag: Integer
        # @param Machine: 机型
        # @type Machine: String
        # @param PeriodEndTime: 过期时间
        # @type PeriodEndTime: String
        # @param InstanceDetail: 集群信息
        # @type InstanceDetail: :class:`Tencentcloud::Dbdc.v20201029.models.InstanceDetail`
        # @param Pid: 计费侧的产品ID
        # @type Pid: Integer

        attr_accessor :InstanceId, :InstanceName, :AppId, :Region, :Zone, :InstanceType, :InstanceStatus, :CreateTime, :AutoRenewFlag, :Machine, :PeriodEndTime, :InstanceDetail, :Pid

        def initialize(instanceid=nil, instancename=nil, appid=nil, region=nil, zone=nil, instancetype=nil, instancestatus=nil, createtime=nil, autorenewflag=nil, machine=nil, periodendtime=nil, instancedetail=nil, pid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Region = region
          @Zone = zone
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @CreateTime = createtime
          @AutoRenewFlag = autorenewflag
          @Machine = machine
          @PeriodEndTime = periodendtime
          @InstanceDetail = instancedetail
          @Pid = pid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Region = params['Region']
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @CreateTime = params['CreateTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Machine = params['Machine']
          @PeriodEndTime = params['PeriodEndTime']
          unless params['InstanceDetail'].nil?
            @InstanceDetail = InstanceDetail.new
            @InstanceDetail.deserialize(params['InstanceDetail'])
          end
          @Pid = params['Pid']
        end
      end

      # IsolateDBCustomNode请求参数结构体
      class IsolateDBCustomNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>DB Custom 节点ID</p>
        # @type NodeId: String

        attr_accessor :NodeId

        def initialize(nodeid=nil)
          @NodeId = nodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
        end
      end

      # IsolateDBCustomNode返回参数结构体
      class IsolateDBCustomNodeResponse < TencentCloud::Common::AbstractModel
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

      # DB Custom 节点登录相关配置。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: <p>实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下： Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) <code>~ ! @ # $ % ^ &amp; * - + = | { } [ ] : ; &#39; , . ? / ]中的特殊符号。 Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( )</code> ~ ! @ # $ % ^ &amp; * - + = | { } [ ] : ; &#39; , . ? /]中的特殊符号。</p>
        # @type Password: String
        # @param KeyIds: <p>密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口 DescribeKeyPairs获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。</p><p>入参限制：当前仅支持设置单个 ID。</p>
        # @type KeyIds: Array
        # @param KeepImageLogin: <p>保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为true。</p><p>枚举值：</p><ul><li>true： 表示保持镜像的登录设置</li><li>false： 表示不保持镜像的登录设置</li></ul>
        # @type KeepImageLogin: String

        attr_accessor :Password, :KeyIds, :KeepImageLogin

        def initialize(password=nil, keyids=nil, keepimagelogin=nil)
          @Password = password
          @KeyIds = keyids
          @KeepImageLogin = keepimagelogin
        end

        def deserialize(params)
          @Password = params['Password']
          @KeyIds = params['KeyIds']
          @KeepImageLogin = params['KeepImageLogin']
        end
      end

      # ModifyDBCustomClusterTags请求参数结构体
      class ModifyDBCustomClusterTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>DB Custom 集群ID</p><p>参数格式：dbcc-xxxxxxxx</p>
        # @type ClusterId: String
        # @param AddTags: <p>为 DB Custom 集群绑定的标签信息</p><p>入参限制：参考标签平台的限制策略</p>
        # @type AddTags: Array
        # @param DeleteTagKeys: <p>为 DB Custom 集群删除的标签Key</p>
        # @type DeleteTagKeys: Array

        attr_accessor :ClusterId, :AddTags, :DeleteTagKeys

        def initialize(clusterid=nil, addtags=nil, deletetagkeys=nil)
          @ClusterId = clusterid
          @AddTags = addtags
          @DeleteTagKeys = deletetagkeys
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['AddTags'].nil?
            @AddTags = []
            params['AddTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @AddTags << tag_tmp
            end
          end
          @DeleteTagKeys = params['DeleteTagKeys']
        end
      end

      # ModifyDBCustomClusterTags返回参数结构体
      class ModifyDBCustomClusterTagsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBCustomNodeTags请求参数结构体
      class ModifyDBCustomNodeTagsRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>DB Custom 节点ID</p><p>参数格式：dbcn-0zan5xxk</p>
        # @type NodeId: String
        # @param AddTags: <p>为节点绑定的标签信息</p><p>入参限制：参考标签侧的限制</p>
        # @type AddTags: Array
        # @param DeleteTagKeys: <p>需要删除的标签Key</p>
        # @type DeleteTagKeys: Array

        attr_accessor :NodeId, :AddTags, :DeleteTagKeys

        def initialize(nodeid=nil, addtags=nil, deletetagkeys=nil)
          @NodeId = nodeid
          @AddTags = addtags
          @DeleteTagKeys = deletetagkeys
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          unless params['AddTags'].nil?
            @AddTags = []
            params['AddTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @AddTags << tag_tmp
            end
          end
          @DeleteTagKeys = params['DeleteTagKeys']
        end
      end

      # ModifyDBCustomNodeTags返回参数结构体
      class ModifyDBCustomNodeTagsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享集群实例Id
        # @type InstanceId: String
        # @param InstanceName: 独享集群实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyInstanceName返回参数结构体
      class ModifyInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # RemoveNodesFromDBCustomCluster请求参数结构体
      class RemoveNodesFromDBCustomClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: <p>DB Custom 集群ID</p>
        # @type ClusterId: String
        # @param NodeIds: <p>要下架的 DB Custom 节点ID列表</p>
        # @type NodeIds: Array

        attr_accessor :ClusterId, :NodeIds

        def initialize(clusterid=nil, nodeids=nil)
          @ClusterId = clusterid
          @NodeIds = nodeids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NodeIds = params['NodeIds']
        end
      end

      # RemoveNodesFromDBCustomCluster返回参数结构体
      class RemoveNodesFromDBCustomClusterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务ID</p>
        # @type TaskId: Integer
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

      # RenewDBCustomNode请求参数结构体
      class RenewDBCustomNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: <p>节点ID</p>
        # @type NodeId: String
        # @param Period: <p>续费周期</p><p>取值范围：[1, 36]</p><p>单位：月</p><p>默认值：1</p>
        # @type Period: Integer
        # @param AutoRenew: <p>是否开启自动续费</p><p>枚举值：</p><ul><li>0： 不自动续费</li><li>1： 自动续费</li></ul><p>默认值：1</p>
        # @type AutoRenew: Integer
        # @param AutoVoucher: <p>是否自动使用代金券</p>
        # @type AutoVoucher: Integer
        # @param VoucherIds: <p>代金券ID</p>
        # @type VoucherIds: Array

        attr_accessor :NodeId, :Period, :AutoRenew, :AutoVoucher, :VoucherIds

        def initialize(nodeid=nil, period=nil, autorenew=nil, autovoucher=nil, voucherids=nil)
          @NodeId = nodeid
          @Period = period
          @AutoRenew = autorenew
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Period = params['Period']
          @AutoRenew = params['AutoRenew']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # RenewDBCustomNode返回参数结构体
      class RenewDBCustomNodeResponse < TencentCloud::Common::AbstractModel
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

      # 标签对象，包含tagKey & tagValue
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # DB Custom 节点系统盘信息。
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: <p>磁盘类型</p><p>枚举值：</p><ul><li>CLOUD_HSSD： 增强型云硬盘</li></ul>
        # @type DiskType: String
        # @param DiskSize: <p>磁盘大小</p><p>单位：GiB</p>
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize

        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 标签键值对。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: <p>标签键</p>
        # @type Key: String
        # @param Value: <p>标签值</p>
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

    end
  end
end

