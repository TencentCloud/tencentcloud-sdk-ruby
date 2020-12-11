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
  module Tcaplusdb
    module V20190823
      # ClearTables请求参数结构体
      class ClearTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待清理表信息列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # ClearTables返回参数结构体
      class ClearTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 清除表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 清除表结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # 集群详细信息
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Region: 集群所在地域
        # @type Region: String
        # @param IdlType: 集群数据描述语言类型，如：`PROTO`,`TDR`
        # @type IdlType: String
        # @param NetworkType: 网络类型
        # @type NetworkType: String
        # @param VpcId: 集群关联的用户私有网络实例ID
        # @type VpcId: String
        # @param SubnetId: 集群关联的用户子网实例ID
        # @type SubnetId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Password: 集群密码
        # @type Password: String
        # @param PasswordStatus: 密码状态
        # @type PasswordStatus: String
        # @param ApiAccessId: TcaplusDB SDK连接参数，接入ID
        # @type ApiAccessId: String
        # @param ApiAccessIp: TcaplusDB SDK连接参数，接入地址
        # @type ApiAccessIp: String
        # @param ApiAccessPort: TcaplusDB SDK连接参数，接入端口
        # @type ApiAccessPort: Integer
        # @param OldPasswordExpireTime: 如果PasswordStatus是unmodifiable说明有旧密码还未过期，此字段将显示旧密码过期的时间，否则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldPasswordExpireTime: String
        # @param ApiAccessIpv6: TcaplusDB SDK连接参数，接入ipv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAccessIpv6: String

        attr_accessor :ClusterName, :ClusterId, :Region, :IdlType, :NetworkType, :VpcId, :SubnetId, :CreatedTime, :Password, :PasswordStatus, :ApiAccessId, :ApiAccessIp, :ApiAccessPort, :OldPasswordExpireTime, :ApiAccessIpv6
        
        def initialize(clustername=nil, clusterid=nil, region=nil, idltype=nil, networktype=nil, vpcid=nil, subnetid=nil, createdtime=nil, password=nil, passwordstatus=nil, apiaccessid=nil, apiaccessip=nil, apiaccessport=nil, oldpasswordexpiretime=nil, apiaccessipv6=nil)
          @ClusterName = clustername
          @ClusterId = clusterid
          @Region = region
          @IdlType = idltype
          @NetworkType = networktype
          @VpcId = vpcid
          @SubnetId = subnetid
          @CreatedTime = createdtime
          @Password = password
          @PasswordStatus = passwordstatus
          @ApiAccessId = apiaccessid
          @ApiAccessIp = apiaccessip
          @ApiAccessPort = apiaccessport
          @OldPasswordExpireTime = oldpasswordexpiretime
          @ApiAccessIpv6 = apiaccessipv6
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @ClusterId = params['ClusterId']
          @Region = params['Region']
          @IdlType = params['IdlType']
          @NetworkType = params['NetworkType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CreatedTime = params['CreatedTime']
          @Password = params['Password']
          @PasswordStatus = params['PasswordStatus']
          @ApiAccessId = params['ApiAccessId']
          @ApiAccessIp = params['ApiAccessIp']
          @ApiAccessPort = params['ApiAccessPort']
          @OldPasswordExpireTime = params['OldPasswordExpireTime']
          @ApiAccessIpv6 = params['ApiAccessIpv6']
        end
      end

      # CompareIdlFiles请求参数结构体
      class CompareIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改表格所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待修改表格列表
        # @type SelectedTables: Array
        # @param ExistingIdlFiles: 选中的已上传IDL文件列表，与NewIdlFiles必选其一
        # @type ExistingIdlFiles: Array
        # @param NewIdlFiles: 本次上传IDL文件列表，与ExistingIdlFiles必选其一
        # @type NewIdlFiles: Array

        attr_accessor :ClusterId, :SelectedTables, :ExistingIdlFiles, :NewIdlFiles
        
        def initialize(clusterid=nil, selectedtables=nil, existingidlfiles=nil, newidlfiles=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @ExistingIdlFiles = existingidlfiles
          @NewIdlFiles = newidlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
          @ExistingIdlFiles = params['ExistingIdlFiles']
          @NewIdlFiles = params['NewIdlFiles']
        end
      end

      # CompareIdlFiles返回参数结构体
      class CompareIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param IdlFiles: 本次上传校验所有的IDL文件信息列表
        # @type IdlFiles: Array
        # @param TotalCount: 本次校验合法的表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 读取IDL描述文件后,根据用户指示的所选中表格解析校验结果
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdlFiles, :TotalCount, :TableInfos, :RequestId
        
        def initialize(idlfiles=nil, totalcount=nil, tableinfos=nil, requestid=nil)
          @IdlFiles = idlfiles
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @IdlFiles = params['IdlFiles']
          @TotalCount = params['TotalCount']
          @TableInfos = params['TableInfos']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackup请求参数结构体
      class CreateBackupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建备份表所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待创建备份表信息列表
        # @type SelectedTables: Array
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :ClusterId, :SelectedTables, :Remark
        
        def initialize(clusterid=nil, selectedtables=nil, remark=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
          @Remark = params['Remark']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param TaskIds: 创建的备份任务ID列表
        # @type TaskIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskIds, :RequestId
        
        def initialize(taskids=nil, requestid=nil)
          @TaskIds = taskids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param IdlType: 集群数据描述语言类型，如：`PROTO`，`TDR`或`MIX`
        # @type IdlType: String
        # @param ClusterName: 集群名称，可使用中文或英文字符，最大长度32个字符
        # @type ClusterName: String
        # @param VpcId: 集群所绑定的私有网络实例ID，形如：vpc-f49l6u0z
        # @type VpcId: String
        # @param SubnetId: 集群所绑定的子网实例ID，形如：subnet-pxir56ns
        # @type SubnetId: String
        # @param Password: 集群访问密码，必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        # @type Password: String
        # @param ResourceTags: 集群标签列表
        # @type ResourceTags: Array
        # @param Ipv6Enable: 集群是否开启IPv6功能
        # @type Ipv6Enable: Integer

        attr_accessor :IdlType, :ClusterName, :VpcId, :SubnetId, :Password, :ResourceTags, :Ipv6Enable
        
        def initialize(idltype=nil, clustername=nil, vpcid=nil, subnetid=nil, password=nil, resourcetags=nil, ipv6enable=nil)
          @IdlType = idltype
          @ClusterName = clustername
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @ResourceTags = resourcetags
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @IdlType = params['IdlType']
          @ClusterName = params['ClusterName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @ResourceTags = params['ResourceTags']
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTableGroup请求参数结构体
      class CreateTableGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupName: 表格组名称，可以采用中文、英文或数字字符，最大长度32个字符
        # @type TableGroupName: String
        # @param TableGroupId: 表格组ID，可以由用户指定，但在同一个集群内不能重复，如果不指定则采用自增的模式
        # @type TableGroupId: String
        # @param ResourceTags: 表格组标签列表
        # @type ResourceTags: Array

        attr_accessor :ClusterId, :TableGroupName, :TableGroupId, :ResourceTags
        
        def initialize(clusterid=nil, tablegroupname=nil, tablegroupid=nil, resourcetags=nil)
          @ClusterId = clusterid
          @TableGroupName = tablegroupname
          @TableGroupId = tablegroupid
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupName = params['TableGroupName']
          @TableGroupId = params['TableGroupId']
          @ResourceTags = params['ResourceTags']
        end
      end

      # CreateTableGroup返回参数结构体
      class CreateTableGroupResponse < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 创建成功的表格组ID
        # @type TableGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableGroupId, :RequestId
        
        def initialize(tablegroupid=nil, requestid=nil)
          @TableGroupId = tablegroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTables请求参数结构体
      class CreateTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建表格所属集群ID
        # @type ClusterId: String
        # @param IdlFiles: 用户选定的建表格IDL文件列表
        # @type IdlFiles: Array
        # @param SelectedTables: 待创建表格信息列表
        # @type SelectedTables: Array
        # @param ResourceTags: 表格标签列表
        # @type ResourceTags: Array

        attr_accessor :ClusterId, :IdlFiles, :SelectedTables, :ResourceTags
        
        def initialize(clusterid=nil, idlfiles=nil, selectedtables=nil, resourcetags=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
          @SelectedTables = selectedtables
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IdlFiles = params['IdlFiles']
          @SelectedTables = params['SelectedTables']
          @ResourceTags = params['ResourceTags']
        end
      end

      # CreateTables返回参数结构体
      class CreateTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量创建表格结果数量
        # @type TotalCount: Integer
        # @param TableResults: 批量创建表格结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除的集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 删除集群生成的任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteIdlFiles请求参数结构体
      class DeleteIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: IDL所属集群ID
        # @type ClusterId: String
        # @param IdlFiles: 待删除的IDL文件信息列表
        # @type IdlFiles: Array

        attr_accessor :ClusterId, :IdlFiles
        
        def initialize(clusterid=nil, idlfiles=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IdlFiles = params['IdlFiles']
        end
      end

      # DeleteIdlFiles返回参数结构体
      class DeleteIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果记录数量
        # @type TotalCount: Integer
        # @param IdlFileInfos: 删除结果
        # @type IdlFileInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdlFileInfos, :RequestId
        
        def initialize(totalcount=nil, idlfileinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @IdlFileInfos = idlfileinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @IdlFileInfos = params['IdlFileInfos']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTableGroup请求参数结构体
      class DeleteTableGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 表格组ID
        # @type TableGroupId: String

        attr_accessor :ClusterId, :TableGroupId
        
        def initialize(clusterid=nil, tablegroupid=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
        end
      end

      # DeleteTableGroup返回参数结构体
      class DeleteTableGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 删除表格组所创建的任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteTableIndex请求参数结构体
      class DeleteTableIndexRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待删除分布式索引的表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # DeleteTableIndex返回参数结构体
      class DeleteTableIndexResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 删除表格分布式索引结果数量
        # @type TotalCount: Integer
        # @param TableResults: 删除表格分布式索引结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTables请求参数结构体
      class DeleteTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除表所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待删除表信息列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # DeleteTables返回参数结构体
      class DeleteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 删除表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 删除表结果详情列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterTags请求参数结构体
      class DescribeClusterTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表
        # @type ClusterIds: Array

        attr_accessor :ClusterIds
        
        def initialize(clusterids=nil)
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
        end
      end

      # DescribeClusterTags返回参数结构体
      class DescribeClusterTagsResponse < TencentCloud::Common::AbstractModel
        # @param Rows: 集群标签信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 返回结果个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rows, :TotalCount, :RequestId
        
        def initialize(rows=nil, totalcount=nil, requestid=nil)
          @Rows = rows
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Rows = params['Rows']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 指定查询的集群ID列表
        # @type ClusterIds: Array
        # @param Filters: 查询过滤条件
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数，默认值20
        # @type Limit: Integer
        # @param Ipv6Enable: 是否启用Ipv6
        # @type Ipv6Enable: Integer

        attr_accessor :ClusterIds, :Filters, :Offset, :Limit, :Ipv6Enable
        
        def initialize(clusterids=nil, filters=nil, offset=nil, limit=nil, ipv6enable=nil)
          @ClusterIds = clusterids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群实例数
        # @type TotalCount: Integer
        # @param Clusters: 集群实例列表
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Clusters, :RequestId
        
        def initialize(totalcount=nil, clusters=nil, requestid=nil)
          @TotalCount = totalcount
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Clusters = params['Clusters']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdlFileInfos请求参数结构体
      class DescribeIdlFileInfosRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 文件所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 文件所属表格组ID
        # @type TableGroupIds: Array
        # @param IdlFileIds: 指定文件ID列表
        # @type IdlFileIds: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :IdlFileIds, :Offset, :Limit
        
        def initialize(clusterid=nil, tablegroupids=nil, idlfileids=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @IdlFileIds = idlfileids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          @IdlFileIds = params['IdlFileIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeIdlFileInfos返回参数结构体
      class DescribeIdlFileInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 文件数量
        # @type TotalCount: Integer
        # @param IdlFileInfos: 文件详情列表
        # @type IdlFileInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdlFileInfos, :RequestId
        
        def initialize(totalcount=nil, idlfileinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @IdlFileInfos = idlfileinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @IdlFileInfos = params['IdlFileInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用区详情结果数量
        # @type TotalCount: Integer
        # @param RegionInfos: 可用区详情结果列表
        # @type RegionInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionInfos, :RequestId
        
        def initialize(totalcount=nil, regioninfos=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionInfos = regioninfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RegionInfos = params['RegionInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableGroupTags请求参数结构体
      class DescribeTableGroupTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询标签表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询标签表格组ID列表
        # @type TableGroupIds: Array

        attr_accessor :ClusterId, :TableGroupIds
        
        def initialize(clusterid=nil, tablegroupids=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
        end
      end

      # DescribeTableGroupTags返回参数结构体
      class DescribeTableGroupTagsResponse < TencentCloud::Common::AbstractModel
        # @param Rows: 表格组标签信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 返回结果个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rows, :TotalCount, :RequestId
        
        def initialize(rows=nil, totalcount=nil, requestid=nil)
          @Rows = rows
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Rows = params['Rows']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableGroups请求参数结构体
      class DescribeTableGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 表格组ID列表
        # @type TableGroupIds: Array
        # @param Filters: 过滤条件，本接口支持：TableGroupName，TableGroupId
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :Filters, :Offset, :Limit
        
        def initialize(clusterid=nil, tablegroupids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTableGroups返回参数结构体
      class DescribeTableGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格组数量
        # @type TotalCount: Integer
        # @param TableGroups: 表格组信息列表
        # @type TableGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableGroups, :RequestId
        
        def initialize(totalcount=nil, tablegroups=nil, requestid=nil)
          @TotalCount = totalcount
          @TableGroups = tablegroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableGroups = params['TableGroups']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableTags请求参数结构体
      class DescribeTableTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # DescribeTableTags返回参数结构体
      class DescribeTableTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回结果总数
        # @type TotalCount: Integer
        # @param Rows: 表格标签信息列表
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
          @Rows = params['Rows']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTablesInRecycle请求参数结构体
      class DescribeTablesInRecycleRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询表格所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询表格所属表格组ID列表
        # @type TableGroupIds: Array
        # @param Filters: 过滤条件，本接口支持：TableName，TableInstanceId
        # @type Filters: Array
        # @param Offset: 查询结果偏移量
        # @type Offset: Integer
        # @param Limit: 查询结果返回记录数量
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :Filters, :Offset, :Limit
        
        def initialize(clusterid=nil, tablegroupids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTablesInRecycle返回参数结构体
      class DescribeTablesInRecycleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 表格详情结果列表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableInfos, :RequestId
        
        def initialize(totalcount=nil, tableinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableInfos = params['TableInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询表格所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询表格所属表格组ID列表
        # @type TableGroupIds: Array
        # @param SelectedTables: 待查询表格信息列表
        # @type SelectedTables: Array
        # @param Filters: 过滤条件，本接口支持：TableName，TableInstanceId
        # @type Filters: Array
        # @param Offset: 查询结果偏移量
        # @type Offset: Integer
        # @param Limit: 查询结果返回记录数量
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :SelectedTables, :Filters, :Offset, :Limit
        
        def initialize(clusterid=nil, tablegroupids=nil, selectedtables=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @SelectedTables = selectedtables
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          @SelectedTables = params['SelectedTables']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 表格详情结果列表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableInfos, :RequestId
        
        def initialize(totalcount=nil, tableinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableInfos = params['TableInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 需要查询任务所属的集群ID列表
        # @type ClusterIds: Array
        # @param TaskIds: 需要查询的任务ID列表
        # @type TaskIds: Array
        # @param Filters: 过滤条件，本接口支持：Content，TaskType, Operator, Time
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterIds, :TaskIds, :Filters, :Offset, :Limit
        
        def initialize(clusterids=nil, taskids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterIds = clusterids
          @TaskIds = taskids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @TaskIds = params['TaskIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务数量
        # @type TotalCount: Integer
        # @param TaskInfos: 查询到的任务详情列表
        # @type TaskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInfos, :RequestId
        
        def initialize(totalcount=nil, taskinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInfos = taskinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TaskInfos = params['TaskInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUinInWhitelist请求参数结构体
      class DescribeUinInWhitelistRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUinInWhitelist返回参数结构体
      class DescribeUinInWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果：`FALSE` 否；`TRUE` 是
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 描述每个实例（应用，大区或表）处理过程中可能出现的错误详情。
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :Code, :Message
        
        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 表格字段信息列表
      class FieldInfo < TencentCloud::Common::AbstractModel
        # @param FieldName: 表格字段名称
        # @type FieldName: String
        # @param IsPrimaryKey: 字段是否是主键字段
        # @type IsPrimaryKey: String
        # @param FieldType: 字段类型
        # @type FieldType: String
        # @param FieldSize: 字段长度
        # @type FieldSize: Integer

        attr_accessor :FieldName, :IsPrimaryKey, :FieldType, :FieldSize
        
        def initialize(fieldname=nil, isprimarykey=nil, fieldtype=nil, fieldsize=nil)
          @FieldName = fieldname
          @IsPrimaryKey = isprimarykey
          @FieldType = fieldtype
          @FieldSize = fieldsize
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @IsPrimaryKey = params['IsPrimaryKey']
          @FieldType = params['FieldType']
          @FieldSize = params['FieldSize']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名
        # @type Name: String
        # @param Value: 过滤字段值
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 表定义描述文件详情，包含文件内容
      class IdlFileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，不包含扩展名
        # @type FileName: String
        # @param FileType: 数据描述语言（IDL）类型
        # @type FileType: String
        # @param FileExtType: 文件扩展名
        # @type FileExtType: String
        # @param FileSize: 文件大小（Bytes）
        # @type FileSize: Integer
        # @param FileId: 文件ID，对于已上传的文件有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: Integer
        # @param FileContent: 文件内容，对于本次新上传的文件有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileContent: String

        attr_accessor :FileName, :FileType, :FileExtType, :FileSize, :FileId, :FileContent
        
        def initialize(filename=nil, filetype=nil, fileexttype=nil, filesize=nil, fileid=nil, filecontent=nil)
          @FileName = filename
          @FileType = filetype
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileId = fileid
          @FileContent = filecontent
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileId = params['FileId']
          @FileContent = params['FileContent']
        end
      end

      # 表定义描述文件详情，不包含文件内容
      class IdlFileInfoWithoutContent < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，不包含扩展名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileType: 数据描述语言（IDL）类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param FileExtType: 文件扩展名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtType: String
        # @param FileSize: 文件大小（Bytes）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param FileId: 文件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: Integer
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :FileName, :FileType, :FileExtType, :FileSize, :FileId, :Error
        
        def initialize(filename=nil, filetype=nil, fileexttype=nil, filesize=nil, fileid=nil, error=nil)
          @FileName = filename
          @FileType = filetype
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileId = fileid
          @Error = error
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileId = params['FileId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
        end
      end

      # ModifyClusterName请求参数结构体
      class ModifyClusterNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 需要修改名称的集群ID
        # @type ClusterId: String
        # @param ClusterName: 需要修改的集群名称，可使用中文或英文字符，最大长度32个字符
        # @type ClusterName: String

        attr_accessor :ClusterId, :ClusterName
        
        def initialize(clusterid=nil, clustername=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
        end
      end

      # ModifyClusterName返回参数结构体
      class ModifyClusterNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterPassword请求参数结构体
      class ModifyClusterPasswordRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 需要修改密码的集群ID
        # @type ClusterId: String
        # @param OldPassword: 集群旧密码
        # @type OldPassword: String
        # @param OldPasswordExpireTime: 集群旧密码预期失效时间
        # @type OldPasswordExpireTime: String
        # @param NewPassword: 集群新密码，密码必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        # @type NewPassword: String
        # @param Mode: 更新模式： `1` 更新密码；`2` 更新旧密码失效时间，默认为`1` 模式
        # @type Mode: String

        attr_accessor :ClusterId, :OldPassword, :OldPasswordExpireTime, :NewPassword, :Mode
        
        def initialize(clusterid=nil, oldpassword=nil, oldpasswordexpiretime=nil, newpassword=nil, mode=nil)
          @ClusterId = clusterid
          @OldPassword = oldpassword
          @OldPasswordExpireTime = oldpasswordexpiretime
          @NewPassword = newpassword
          @Mode = mode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @OldPassword = params['OldPassword']
          @OldPasswordExpireTime = params['OldPasswordExpireTime']
          @NewPassword = params['NewPassword']
          @Mode = params['Mode']
        end
      end

      # ModifyClusterPassword返回参数结构体
      class ModifyClusterPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterTags请求参数结构体
      class ModifyClusterTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签的集群ID
        # @type ClusterId: String
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :ReplaceTags, :DeleteTags
        
        def initialize(clusterid=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ReplaceTags = params['ReplaceTags']
          @DeleteTags = params['DeleteTags']
        end
      end

      # ModifyClusterTags返回参数结构体
      class ModifyClusterTagsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyTableGroupName请求参数结构体
      class ModifyTableGroupNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待修改名称的表格组ID
        # @type TableGroupId: String
        # @param TableGroupName: 新的表格组名称，可以使用中英文字符和符号
        # @type TableGroupName: String

        attr_accessor :ClusterId, :TableGroupId, :TableGroupName
        
        def initialize(clusterid=nil, tablegroupid=nil, tablegroupname=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
        end
      end

      # ModifyTableGroupName返回参数结构体
      class ModifyTableGroupNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTableGroupTags请求参数结构体
      class ModifyTableGroupTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待修改标签表格组ID
        # @type TableGroupId: String
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :TableGroupId, :ReplaceTags, :DeleteTags
        
        def initialize(clusterid=nil, tablegroupid=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @ReplaceTags = params['ReplaceTags']
          @DeleteTags = params['DeleteTags']
        end
      end

      # ModifyTableGroupTags返回参数结构体
      class ModifyTableGroupTagsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyTableMemos请求参数结构体
      class ModifyTableMemosRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param TableMemos: 选定表详情列表
        # @type TableMemos: Array

        attr_accessor :ClusterId, :TableMemos
        
        def initialize(clusterid=nil, tablememos=nil)
          @ClusterId = clusterid
          @TableMemos = tablememos
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableMemos = params['TableMemos']
        end
      end

      # ModifyTableMemos返回参数结构体
      class ModifyTableMemosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表备注修改结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表备注修改结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableQuotas请求参数结构体
      class ModifyTableQuotasRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 带扩缩容表所属集群ID
        # @type ClusterId: String
        # @param TableQuotas: 已选中待修改的表配额列表
        # @type TableQuotas: Array

        attr_accessor :ClusterId, :TableQuotas
        
        def initialize(clusterid=nil, tablequotas=nil)
          @ClusterId = clusterid
          @TableQuotas = tablequotas
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableQuotas = params['TableQuotas']
        end
      end

      # ModifyTableQuotas返回参数结构体
      class ModifyTableQuotasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 扩缩容结果数量
        # @type TotalCount: Integer
        # @param TableResults: 扩缩容结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableTags请求参数结构体
      class ModifyTableTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签表格所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待修改标签表格列表
        # @type SelectedTables: Array
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签列表
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :SelectedTables, :ReplaceTags, :DeleteTags
        
        def initialize(clusterid=nil, selectedtables=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
          @ReplaceTags = params['ReplaceTags']
          @DeleteTags = params['DeleteTags']
        end
      end

      # ModifyTableTags返回参数结构体
      class ModifyTableTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回结果总数
        # @type TotalCount: Integer
        # @param TableResults: 返回结果
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTables请求参数结构体
      class ModifyTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改表格所在集群ID
        # @type ClusterId: String
        # @param IdlFiles: 选中的改表IDL文件
        # @type IdlFiles: Array
        # @param SelectedTables: 待改表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :IdlFiles, :SelectedTables
        
        def initialize(clusterid=nil, idlfiles=nil, selectedtables=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @IdlFiles = params['IdlFiles']
          @SelectedTables = params['SelectedTables']
        end
      end

      # ModifyTables返回参数结构体
      class ModifyTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 修改表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 修改表结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # 从IDL表描述文件中解析出来的表信息
      class ParsedTableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param KeyFields: 主键字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyFields: String
        # @param OldKeyFields: 原主键字段信息，改表校验时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldKeyFields: String
        # @param ValueFields: 非主键字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueFields: String
        # @param OldValueFields: 原非主键字段信息，改表校验时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldValueFields: String
        # @param TableGroupId: 所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param SumKeyFieldSize: 主键字段总大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumKeyFieldSize: Integer
        # @param SumValueFieldSize: 非主键字段总大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumValueFieldSize: Integer
        # @param IndexKeySet: 索引键集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexKeySet: String
        # @param ShardingKeySet: 分表因子集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardingKeySet: String
        # @param TdrVersion: TDR版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TdrVersion: Integer
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param ListElementNum: LIST类型表格元素个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListElementNum: Integer
        # @param SortFieldNum: SORTLIST类型表格排序字段个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortFieldNum: Integer
        # @param SortRule: SORTLIST类型表格排序顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortRule: Integer

        attr_accessor :TableIdlType, :TableInstanceId, :TableName, :TableType, :KeyFields, :OldKeyFields, :ValueFields, :OldValueFields, :TableGroupId, :SumKeyFieldSize, :SumValueFieldSize, :IndexKeySet, :ShardingKeySet, :TdrVersion, :Error, :ListElementNum, :SortFieldNum, :SortRule
        
        def initialize(tableidltype=nil, tableinstanceid=nil, tablename=nil, tabletype=nil, keyfields=nil, oldkeyfields=nil, valuefields=nil, oldvaluefields=nil, tablegroupid=nil, sumkeyfieldsize=nil, sumvaluefieldsize=nil, indexkeyset=nil, shardingkeyset=nil, tdrversion=nil, error=nil, listelementnum=nil, sortfieldnum=nil, sortrule=nil)
          @TableIdlType = tableidltype
          @TableInstanceId = tableinstanceid
          @TableName = tablename
          @TableType = tabletype
          @KeyFields = keyfields
          @OldKeyFields = oldkeyfields
          @ValueFields = valuefields
          @OldValueFields = oldvaluefields
          @TableGroupId = tablegroupid
          @SumKeyFieldSize = sumkeyfieldsize
          @SumValueFieldSize = sumvaluefieldsize
          @IndexKeySet = indexkeyset
          @ShardingKeySet = shardingkeyset
          @TdrVersion = tdrversion
          @Error = error
          @ListElementNum = listelementnum
          @SortFieldNum = sortfieldnum
          @SortRule = sortrule
        end

        def deserialize(params)
          @TableIdlType = params['TableIdlType']
          @TableInstanceId = params['TableInstanceId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @KeyFields = params['KeyFields']
          @OldKeyFields = params['OldKeyFields']
          @ValueFields = params['ValueFields']
          @OldValueFields = params['OldValueFields']
          @TableGroupId = params['TableGroupId']
          @SumKeyFieldSize = params['SumKeyFieldSize']
          @SumValueFieldSize = params['SumValueFieldSize']
          @IndexKeySet = params['IndexKeySet']
          @ShardingKeySet = params['ShardingKeySet']
          @TdrVersion = params['TdrVersion']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
          @ListElementNum = params['ListElementNum']
          @SortFieldNum = params['SortFieldNum']
          @SortRule = params['SortRule']
        end
      end

      # RecoverRecycleTables请求参数结构体
      class RecoverRecycleTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待恢复表信息
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # RecoverRecycleTables返回参数结构体
      class RecoverRecycleTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 恢复表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 恢复表信息列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # TcaplusDB服务地域信息详情
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域Ap-Code
        # @type RegionName: String
        # @param RegionAbbr: 地域缩写
        # @type RegionAbbr: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Ipv6Enable: 是否支持ipv6，0:不支持，1:支持
        # @type Ipv6Enable: Integer

        attr_accessor :RegionName, :RegionAbbr, :RegionId, :Ipv6Enable
        
        def initialize(regionname=nil, regionabbr=nil, regionid=nil, ipv6enable=nil)
          @RegionName = regionname
          @RegionAbbr = regionabbr
          @RegionId = regionid
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @RegionAbbr = params['RegionAbbr']
          @RegionId = params['RegionId']
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # RollbackTables请求参数结构体
      class RollbackTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待回档表格所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待回档表格列表
        # @type SelectedTables: Array
        # @param RollbackTime: 待回档时间
        # @type RollbackTime: String
        # @param Mode: 回档模式，支持：`KEYS`
        # @type Mode: String

        attr_accessor :ClusterId, :SelectedTables, :RollbackTime, :Mode
        
        def initialize(clusterid=nil, selectedtables=nil, rollbacktime=nil, mode=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @RollbackTime = rollbacktime
          @Mode = mode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
          @RollbackTime = params['RollbackTime']
          @Mode = params['Mode']
        end
      end

      # RollbackTables返回参数结构体
      class RollbackTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格回档任务结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表格回档任务结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # 被选中的表信息
      class SelectedTableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表格名称
        # @type TableName: String
        # @param TableInstanceId: 表实例ID
        # @type TableInstanceId: String
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # @type TableIdlType: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # @type TableType: String
        # @param ListElementNum: LIST表元素个数
        # @type ListElementNum: Integer
        # @param ReservedVolume: 表格预留容量（GB）
        # @type ReservedVolume: Integer
        # @param ReservedReadQps: 表格预留读CU
        # @type ReservedReadQps: Integer
        # @param ReservedWriteQps: 表格预留写CU
        # @type ReservedWriteQps: Integer
        # @param Memo: 表格备注信息
        # @type Memo: String
        # @param FileName: Key回档文件名，回档专用
        # @type FileName: String
        # @param FileExtType: Key回档文件扩展名，回档专用
        # @type FileExtType: String
        # @param FileSize: Key回档文件大小，回档专用
        # @type FileSize: Integer
        # @param FileContent: Key回档文件内容，回档专用
        # @type FileContent: String

        attr_accessor :TableGroupId, :TableName, :TableInstanceId, :TableIdlType, :TableType, :ListElementNum, :ReservedVolume, :ReservedReadQps, :ReservedWriteQps, :Memo, :FileName, :FileExtType, :FileSize, :FileContent
        
        def initialize(tablegroupid=nil, tablename=nil, tableinstanceid=nil, tableidltype=nil, tabletype=nil, listelementnum=nil, reservedvolume=nil, reservedreadqps=nil, reservedwriteqps=nil, memo=nil, filename=nil, fileexttype=nil, filesize=nil, filecontent=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableIdlType = tableidltype
          @TableType = tabletype
          @ListElementNum = listelementnum
          @ReservedVolume = reservedvolume
          @ReservedReadQps = reservedreadqps
          @ReservedWriteQps = reservedwriteqps
          @Memo = memo
          @FileName = filename
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileContent = filecontent
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableIdlType = params['TableIdlType']
          @TableType = params['TableType']
          @ListElementNum = params['ListElementNum']
          @ReservedVolume = params['ReservedVolume']
          @ReservedReadQps = params['ReservedReadQps']
          @ReservedWriteQps = params['ReservedWriteQps']
          @Memo = params['Memo']
          @FileName = params['FileName']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileContent = params['FileContent']
        end
      end

      # 附带被选中字段信息的表格列表
      class SelectedTableWithField < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表格名称
        # @type TableName: String
        # @param TableInstanceId: 表实例ID
        # @type TableInstanceId: String
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # @type TableIdlType: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # @type TableType: String
        # @param SelectedFields: 待创建索引的字段列表
        # @type SelectedFields: Array
        # @param ShardNum: 索引分片数
        # @type ShardNum: Integer

        attr_accessor :TableGroupId, :TableName, :TableInstanceId, :TableIdlType, :TableType, :SelectedFields, :ShardNum
        
        def initialize(tablegroupid=nil, tablename=nil, tableinstanceid=nil, tableidltype=nil, tabletype=nil, selectedfields=nil, shardnum=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableIdlType = tableidltype
          @TableType = tabletype
          @SelectedFields = selectedfields
          @ShardNum = shardnum
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableIdlType = params['TableIdlType']
          @TableType = params['TableType']
          @SelectedFields = params['SelectedFields']
          @ShardNum = params['ShardNum']
        end
      end

      # SetTableIndex请求参数结构体
      class SetTableIndexRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待创建分布式索引表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables
        
        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SelectedTables = params['SelectedTables']
        end
      end

      # SetTableIndex返回参数结构体
      class SetTableIndexResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格分布式索引创建结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表格分布式索引创建结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId
        
        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TableResults = params['TableResults']
          @RequestId = params['RequestId']
        end
      end

      # 表格组详细信息
      class TableGroupInfo < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表格组ID
        # @type TableGroupId: String
        # @param TableGroupName: 表格组名称
        # @type TableGroupName: String
        # @param CreatedTime: 表格组创建时间
        # @type CreatedTime: String
        # @param TableCount: 表格组包含的表格数量
        # @type TableCount: Integer
        # @param TotalSize: 表格组包含的表格存储总量（MB）
        # @type TotalSize: Integer

        attr_accessor :TableGroupId, :TableGroupName, :CreatedTime, :TableCount, :TotalSize
        
        def initialize(tablegroupid=nil, tablegroupname=nil, createdtime=nil, tablecount=nil, totalsize=nil)
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
          @CreatedTime = createdtime
          @TableCount = tablecount
          @TotalSize = totalsize
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
          @CreatedTime = params['CreatedTime']
          @TableCount = params['TableCount']
          @TotalSize = params['TotalSize']
        end
      end

      # 表格详情信息
      class TableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表格数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param ClusterId: 表格所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 表格所属集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param TableGroupName: 表格所属表格组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupName: String
        # @param KeyStruct: 表格主键字段结构json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyStruct: String
        # @param ValueStruct: 表格非主键字段结构json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueStruct: String
        # @param ShardingKeySet: 表格分表因子集合，对PROTO类型表格有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardingKeySet: String
        # @param IndexStruct: 表格索引键字段集合，对PROTO类型表格有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStruct: String
        # @param ListElementNum: LIST类型表格元素个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListElementNum: Integer
        # @param IdlFiles: 表格所关联IDL文件信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdlFiles: Array
        # @param ReservedVolume: 表格预留容量（GB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedVolume: Integer
        # @param ReservedReadQps: 表格预留读CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedReadQps: Integer
        # @param ReservedWriteQps: 表格预留写CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedWriteQps: Integer
        # @param TableSize: 表格实际数据量大小（MB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableSize: Integer
        # @param Status: 表格状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreatedTime: 表格创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 表格最后一次修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param Memo: 表格备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memo: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param ApiAccessId: TcaplusDB SDK数据访问接入ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAccessId: String
        # @param SortFieldNum: SORTLIST类型表格排序字段个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortFieldNum: Integer
        # @param SortRule: SORTLIST类型表格排序顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortRule: Integer
        # @param DbClusterInfoStruct: 表格分布式索引信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbClusterInfoStruct: String

        attr_accessor :TableName, :TableInstanceId, :TableType, :TableIdlType, :ClusterId, :ClusterName, :TableGroupId, :TableGroupName, :KeyStruct, :ValueStruct, :ShardingKeySet, :IndexStruct, :ListElementNum, :IdlFiles, :ReservedVolume, :ReservedReadQps, :ReservedWriteQps, :TableSize, :Status, :CreatedTime, :UpdatedTime, :Memo, :Error, :ApiAccessId, :SortFieldNum, :SortRule, :DbClusterInfoStruct
        
        def initialize(tablename=nil, tableinstanceid=nil, tabletype=nil, tableidltype=nil, clusterid=nil, clustername=nil, tablegroupid=nil, tablegroupname=nil, keystruct=nil, valuestruct=nil, shardingkeyset=nil, indexstruct=nil, listelementnum=nil, idlfiles=nil, reservedvolume=nil, reservedreadqps=nil, reservedwriteqps=nil, tablesize=nil, status=nil, createdtime=nil, updatedtime=nil, memo=nil, error=nil, apiaccessid=nil, sortfieldnum=nil, sortrule=nil, dbclusterinfostruct=nil)
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableType = tabletype
          @TableIdlType = tableidltype
          @ClusterId = clusterid
          @ClusterName = clustername
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
          @KeyStruct = keystruct
          @ValueStruct = valuestruct
          @ShardingKeySet = shardingkeyset
          @IndexStruct = indexstruct
          @ListElementNum = listelementnum
          @IdlFiles = idlfiles
          @ReservedVolume = reservedvolume
          @ReservedReadQps = reservedreadqps
          @ReservedWriteQps = reservedwriteqps
          @TableSize = tablesize
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @Memo = memo
          @Error = error
          @ApiAccessId = apiaccessid
          @SortFieldNum = sortfieldnum
          @SortRule = sortrule
          @DbClusterInfoStruct = dbclusterinfostruct
        end

        def deserialize(params)
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
          @KeyStruct = params['KeyStruct']
          @ValueStruct = params['ValueStruct']
          @ShardingKeySet = params['ShardingKeySet']
          @IndexStruct = params['IndexStruct']
          @ListElementNum = params['ListElementNum']
          @IdlFiles = params['IdlFiles']
          @ReservedVolume = params['ReservedVolume']
          @ReservedReadQps = params['ReservedReadQps']
          @ReservedWriteQps = params['ReservedWriteQps']
          @TableSize = params['TableSize']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @Memo = params['Memo']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
          @ApiAccessId = params['ApiAccessId']
          @SortFieldNum = params['SortFieldNum']
          @SortRule = params['SortRule']
          @DbClusterInfoStruct = params['DbClusterInfoStruct']
        end
      end

      # 表处理结果信息
      class TableResultNew < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID，形如：tcaplus-3be64cbb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TaskId: 任务ID，对于创建单任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param TaskIds: 任务ID列表，对于创建多任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array

        attr_accessor :TableInstanceId, :TaskId, :TableName, :TableType, :TableIdlType, :TableGroupId, :Error, :TaskIds
        
        def initialize(tableinstanceid=nil, taskid=nil, tablename=nil, tabletype=nil, tableidltype=nil, tablegroupid=nil, error=nil, taskids=nil)
          @TableInstanceId = tableinstanceid
          @TaskId = taskid
          @TableName = tablename
          @TableType = tabletype
          @TableIdlType = tableidltype
          @TableGroupId = tablegroupid
          @Error = error
          @TaskIds = taskids
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TaskId = params['TaskId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @TableGroupId = params['TableGroupId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
          @TaskIds = params['TaskIds']
        end
      end

      # 表格回档结果信息
      class TableRollbackResultNew < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID，形如：tcaplus-3be64cbb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TaskId: 任务ID，对于创建单任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表格数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param TaskIds: 任务ID列表，对于创建多任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param FileId: 上传的key文件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param SuccKeyNum: 校验成功Key数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccKeyNum: Integer
        # @param TotalKeyNum: Key文件中包含总的Key数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalKeyNum: Integer

        attr_accessor :TableInstanceId, :TaskId, :TableName, :TableType, :TableIdlType, :TableGroupId, :Error, :TaskIds, :FileId, :SuccKeyNum, :TotalKeyNum
        
        def initialize(tableinstanceid=nil, taskid=nil, tablename=nil, tabletype=nil, tableidltype=nil, tablegroupid=nil, error=nil, taskids=nil, fileid=nil, succkeynum=nil, totalkeynum=nil)
          @TableInstanceId = tableinstanceid
          @TaskId = taskid
          @TableName = tablename
          @TableType = tabletype
          @TableIdlType = tableidltype
          @TableGroupId = tablegroupid
          @Error = error
          @TaskIds = taskids
          @FileId = fileid
          @SuccKeyNum = succkeynum
          @TotalKeyNum = totalkeynum
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TaskId = params['TaskId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @TableGroupId = params['TableGroupId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
          @TaskIds = params['TaskIds']
          @FileId = params['FileId']
          @SuccKeyNum = params['SuccKeyNum']
          @TotalKeyNum = params['TotalKeyNum']
        end
      end

      # 标签信息单元
      class TagInfoUnit < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 集群的标签信息
      class TagsInfoOfCluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :ClusterId, :Tags, :Error
        
        def initialize(clusterid=nil, tags=nil, error=nil)
          @ClusterId = clusterid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Tags = params['Tags']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
        end
      end

      # 表格标签信息
      class TagsInfoOfTable < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableGroupId: 表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :TableInstanceId, :TableName, :TableGroupId, :Tags, :Error
        
        def initialize(tableinstanceid=nil, tablename=nil, tablegroupid=nil, tags=nil, error=nil)
          @TableInstanceId = tableinstanceid
          @TableName = tablename
          @TableGroupId = tablegroupid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TableName = params['TableName']
          @TableGroupId = params['TableGroupId']
          @Tags = params['Tags']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
        end
      end

      # 表格组标签信息
      class TagsInfoOfTableGroup < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param TableGroupId: 表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :ClusterId, :TableGroupId, :Tags, :Error
        
        def initialize(clusterid=nil, tablegroupid=nil, tags=nil, error=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @Tags = params['Tags']
          unless params['Error'].nil?
            @Error = ErrorInfo.new.deserialize(params[Error])
          end
        end
      end

      # 任务信息详情
      class TaskInfoNew < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param TransId: 任务所关联的TcaplusDB内部事务ID
        # @type TransId: String
        # @param ClusterId: 任务所属集群ID
        # @type ClusterId: String
        # @param ClusterName: 任务所属集群名称
        # @type ClusterName: String
        # @param Progress: 任务进度
        # @type Progress: Integer
        # @param StartTime: 任务创建时间
        # @type StartTime: String
        # @param UpdateTime: 任务最后更新时间
        # @type UpdateTime: String
        # @param Operator: 操作者
        # @type Operator: String
        # @param Content: 任务详情
        # @type Content: String

        attr_accessor :TaskId, :TaskType, :TransId, :ClusterId, :ClusterName, :Progress, :StartTime, :UpdateTime, :Operator, :Content
        
        def initialize(taskid=nil, tasktype=nil, transid=nil, clusterid=nil, clustername=nil, progress=nil, starttime=nil, updatetime=nil, operator=nil, content=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @TransId = transid
          @ClusterId = clusterid
          @ClusterName = clustername
          @Progress = progress
          @StartTime = starttime
          @UpdateTime = updatetime
          @Operator = operator
          @Content = content
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TransId = params['TransId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Progress = params['Progress']
          @StartTime = params['StartTime']
          @UpdateTime = params['UpdateTime']
          @Operator = params['Operator']
          @Content = params['Content']
        end
      end

      # VerifyIdlFiles请求参数结构体
      class VerifyIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建表格的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待创建表格的表格组ID
        # @type TableGroupId: String
        # @param ExistingIdlFiles: 曾经上传过的IDL文件信息列表，与NewIdlFiles至少有一者
        # @type ExistingIdlFiles: Array
        # @param NewIdlFiles: 待上传的IDL文件信息列表，与ExistingIdlFiles至少有一者
        # @type NewIdlFiles: Array

        attr_accessor :ClusterId, :TableGroupId, :ExistingIdlFiles, :NewIdlFiles
        
        def initialize(clusterid=nil, tablegroupid=nil, existingidlfiles=nil, newidlfiles=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @ExistingIdlFiles = existingidlfiles
          @NewIdlFiles = newidlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @ExistingIdlFiles = params['ExistingIdlFiles']
          @NewIdlFiles = params['NewIdlFiles']
        end
      end

      # VerifyIdlFiles返回参数结构体
      class VerifyIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param IdlFiles: 本次上传校验所有的IDL文件信息列表
        # @type IdlFiles: Array
        # @param TotalCount: 读取IDL描述文件后解析出的合法表数量，不包含已经创建的表
        # @type TotalCount: Integer
        # @param TableInfos: 读取IDL描述文件后解析出的合法表列表，不包含已经创建的表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdlFiles, :TotalCount, :TableInfos, :RequestId
        
        def initialize(idlfiles=nil, totalcount=nil, tableinfos=nil, requestid=nil)
          @IdlFiles = idlfiles
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @IdlFiles = params['IdlFiles']
          @TotalCount = params['TotalCount']
          @TableInfos = params['TableInfos']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

