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
  module Dlc
    module V20210125
      # AddDMSPartitions请求参数结构体
      class AddDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区
        # @type Partitions: Array

        attr_accessor :Partitions

        def initialize(partitions=nil)
          @Partitions = partitions
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
        end
      end

      # AddDMSPartitions返回参数结构体
      class AddDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 成功数量
        # @type Total: Integer
        # @param Partitions: 分区值
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Partitions, :RequestId

        def initialize(total=nil, partitions=nil, requestid=nil)
          @Total = total
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AddUsersToWorkGroup请求参数结构体
      class AddUsersToWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 要操作的工作组和用户信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.UserIdSetOfWorkGroupId`

        attr_accessor :AddInfo

        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = UserIdSetOfWorkGroupId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # AddUsersToWorkGroup返回参数结构体
      class AddUsersToWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSDatabase请求参数结构体
      class AlterDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param CurrentName: 当前名称
        # @type CurrentName: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Location: 路径
        # @type Location: String
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`

        attr_accessor :CurrentName, :SchemaName, :Location, :Asset

        def initialize(currentname=nil, schemaname=nil, location=nil, asset=nil)
          @CurrentName = currentname
          @SchemaName = schemaname
          @Location = location
          @Asset = asset
        end

        def deserialize(params)
          @CurrentName = params['CurrentName']
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
        end
      end

      # AlterDMSDatabase返回参数结构体
      class AlterDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSPartition请求参数结构体
      class AlterDMSPartitionRequest < TencentCloud::Common::AbstractModel
        # @param CurrentDbName: 当前名称，变更前db名称
        # @type CurrentDbName: String
        # @param CurrentTableName: 当前名称，变更前table名称
        # @type CurrentTableName: String
        # @param CurrentValues: 当前名称，变更前Part名称
        # @type CurrentValues: String
        # @param Partition: 分区
        # @type Partition: :class:`Tencentcloud::Dlc.v20210125.models.DMSPartition`

        attr_accessor :CurrentDbName, :CurrentTableName, :CurrentValues, :Partition

        def initialize(currentdbname=nil, currenttablename=nil, currentvalues=nil, partition=nil)
          @CurrentDbName = currentdbname
          @CurrentTableName = currenttablename
          @CurrentValues = currentvalues
          @Partition = partition
        end

        def deserialize(params)
          @CurrentDbName = params['CurrentDbName']
          @CurrentTableName = params['CurrentTableName']
          @CurrentValues = params['CurrentValues']
          unless params['Partition'].nil?
            @Partition = DMSPartition.new
            @Partition.deserialize(params['Partition'])
          end
        end
      end

      # AlterDMSPartition返回参数结构体
      class AlterDMSPartitionResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSTable请求参数结构体
      class AlterDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param CurrentName: 当前名称
        # @type CurrentName: String
        # @param CurrentDbName: 当前数据库名称
        # @type CurrentDbName: String
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param Type: 表类型
        # @type Type: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # @type LifeTime: Integer
        # @param DataUpdateTime: 数据更新时间
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # @type StructUpdateTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param Columns: 列
        # @type Columns: Array
        # @param PartitionKeys: 分区键值
        # @type PartitionKeys: Array
        # @param ViewOriginalText: 视图文本
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # @type ViewExpandedText: String
        # @param Partitions: 分区
        # @type Partitions: Array
        # @param Name: 当前表名
        # @type Name: String

        attr_accessor :CurrentName, :CurrentDbName, :Asset, :Type, :DbName, :StorageSize, :RecordCount, :LifeTime, :DataUpdateTime, :StructUpdateTime, :LastAccessTime, :Sds, :Columns, :PartitionKeys, :ViewOriginalText, :ViewExpandedText, :Partitions, :Name

        def initialize(currentname=nil, currentdbname=nil, asset=nil, type=nil, dbname=nil, storagesize=nil, recordcount=nil, lifetime=nil, dataupdatetime=nil, structupdatetime=nil, lastaccesstime=nil, sds=nil, columns=nil, partitionkeys=nil, vieworiginaltext=nil, viewexpandedtext=nil, partitions=nil, name=nil)
          @CurrentName = currentname
          @CurrentDbName = currentdbname
          @Asset = asset
          @Type = type
          @DbName = dbname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @LastAccessTime = lastaccesstime
          @Sds = sds
          @Columns = columns
          @PartitionKeys = partitionkeys
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Partitions = partitions
          @Name = name
        end

        def deserialize(params)
          @CurrentName = params['CurrentName']
          @CurrentDbName = params['CurrentDbName']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # AlterDMSTable返回参数结构体
      class AlterDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # 元数据基本对象
      class Asset < TencentCloud::Common::AbstractModel
        # @param Id: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Guid: 对象GUID值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guid: String
        # @param Catalog: 数据目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param Description: 描述信息
        # @type Description: String
        # @param Owner: 对象owner
        # @type Owner: String
        # @param OwnerAccount: 对象owner账户
        # @type OwnerAccount: String
        # @param PermValues: 权限
        # @type PermValues: Array
        # @param Params: 附加属性
        # @type Params: Array
        # @param BizParams: 附加业务属性
        # @type BizParams: Array
        # @param DataVersion: 数据版本
        # @type DataVersion: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param DatasourceId: 数据源主键
        # @type DatasourceId: Integer

        attr_accessor :Id, :Name, :Guid, :Catalog, :Description, :Owner, :OwnerAccount, :PermValues, :Params, :BizParams, :DataVersion, :CreateTime, :ModifiedTime, :DatasourceId

        def initialize(id=nil, name=nil, guid=nil, catalog=nil, description=nil, owner=nil, owneraccount=nil, permvalues=nil, params=nil, bizparams=nil, dataversion=nil, createtime=nil, modifiedtime=nil, datasourceid=nil)
          @Id = id
          @Name = name
          @Guid = guid
          @Catalog = catalog
          @Description = description
          @Owner = owner
          @OwnerAccount = owneraccount
          @PermValues = permvalues
          @Params = params
          @BizParams = bizparams
          @DataVersion = dataversion
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Guid = params['Guid']
          @Catalog = params['Catalog']
          @Description = params['Description']
          @Owner = params['Owner']
          @OwnerAccount = params['OwnerAccount']
          unless params['PermValues'].nil?
            @PermValues = []
            params['PermValues'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @PermValues << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['BizParams'].nil?
            @BizParams = []
            params['BizParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @BizParams << kvpair_tmp
            end
          end
          @DataVersion = params['DataVersion']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @DatasourceId = params['DatasourceId']
        end
      end

      # AssignMangedTableProperties请求参数结构体
      class AssignMangedTablePropertiesRequest < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 表基本信息
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param Columns: 表字段信息
        # @type Columns: Array
        # @param Partitions: 表分区信息
        # @type Partitions: Array
        # @param Properties: 表属性信息
        # @type Properties: Array
        # @param UpsertKeys: V2 upsert表 upsert键
        # @type UpsertKeys: Array

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Properties, :UpsertKeys

        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, properties=nil, upsertkeys=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Properties = properties
          @UpsertKeys = upsertkeys
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              tcolumn_tmp = TColumn.new
              tcolumn_tmp.deserialize(i)
              @Columns << tcolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              tpartition_tmp = TPartition.new
              tpartition_tmp.deserialize(i)
              @Partitions << tpartition_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @UpsertKeys = params['UpsertKeys']
        end
      end

      # AssignMangedTableProperties返回参数结构体
      class AssignMangedTablePropertiesResponse < TencentCloud::Common::AbstractModel
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

      # AttachUserPolicy请求参数结构体
      class AttachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和子用户uin相同，需要先使用CreateUser接口创建用户。可以使用DescribeUsers接口查看。
        # @type UserId: String
        # @param PolicySet: 鉴权策略集合
        # @type PolicySet: Array

        attr_accessor :UserId, :PolicySet

        def initialize(userid=nil, policyset=nil)
          @UserId = userid
          @PolicySet = policyset
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # AttachUserPolicy返回参数结构体
      class AttachUserPolicyResponse < TencentCloud::Common::AbstractModel
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

      # AttachWorkGroupPolicy请求参数结构体
      class AttachWorkGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param PolicySet: 要绑定的策略集合
        # @type PolicySet: Array

        attr_accessor :WorkGroupId, :PolicySet

        def initialize(workgroupid=nil, policyset=nil)
          @WorkGroupId = workgroupid
          @PolicySet = policyset
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # AttachWorkGroupPolicy返回参数结构体
      class AttachWorkGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # SparkSQL批任务信息
      class BatchSqlTask < TencentCloud::Common::AbstractModel
        # @param TaskId: SQL子任务唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param ExecuteSQL: 运行SQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteSQL: String
        # @param Message: 任务信息，成功则返回：Task Success!，失败则返回异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :TaskId, :ExecuteSQL, :Message

        def initialize(taskid=nil, executesql=nil, message=nil)
          @TaskId = taskid
          @ExecuteSQL = executesql
          @Message = message
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ExecuteSQL = params['ExecuteSQL']
          @Message = params['Message']
        end
      end

      # BindWorkGroupsToUser请求参数结构体
      class BindWorkGroupsToUserRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 绑定的用户和工作组信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroupIdSetOfUserId`

        attr_accessor :AddInfo

        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = WorkGroupIdSetOfUserId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # BindWorkGroupsToUser返回参数结构体
      class BindWorkGroupsToUserResponse < TencentCloud::Common::AbstractModel
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

      # CSV类型数据格式
      class CSV < TencentCloud::Common::AbstractModel
        # @param CodeCompress: 压缩格式，["Snappy", "Gzip", "None"选一]。
        # @type CodeCompress: String
        # @param CSVSerde: CSV序列化及反序列化数据结构。
        # @type CSVSerde: :class:`Tencentcloud::Dlc.v20210125.models.CSVSerde`
        # @param HeadLines: 标题行，默认为0。
        # @type HeadLines: Integer
        # @param Format: 格式，默认值为CSV
        # @type Format: String

        attr_accessor :CodeCompress, :CSVSerde, :HeadLines, :Format

        def initialize(codecompress=nil, csvserde=nil, headlines=nil, format=nil)
          @CodeCompress = codecompress
          @CSVSerde = csvserde
          @HeadLines = headlines
          @Format = format
        end

        def deserialize(params)
          @CodeCompress = params['CodeCompress']
          unless params['CSVSerde'].nil?
            @CSVSerde = CSVSerde.new
            @CSVSerde.deserialize(params['CSVSerde'])
          end
          @HeadLines = params['HeadLines']
          @Format = params['Format']
        end
      end

      # CSV序列化及反序列化数据结构
      class CSVSerde < TencentCloud::Common::AbstractModel
        # @param Escape: CSV序列化转义符，默认为"\\"，最长8个字符，如 Escape: "/\"
        # @type Escape: String
        # @param Quote: CSV序列化字段域符，默认为"'"，最长8个字符, 如 Quote: "\""
        # @type Quote: String
        # @param Separator: CSV序列化分隔符，默认为"\t"，最长8个字符, 如 Separator: "\t"
        # @type Separator: String

        attr_accessor :Escape, :Quote, :Separator

        def initialize(escape=nil, quote=nil, separator=nil)
          @Escape = escape
          @Quote = quote
          @Separator = separator
        end

        def deserialize(params)
          @Escape = params['Escape']
          @Quote = params['Quote']
          @Separator = params['Separator']
        end
      end

      # CancelNotebookSessionStatementBatch请求参数结构体
      class CancelNotebookSessionStatementBatchRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param BatchId: 批任务唯一标识
        # @type BatchId: String

        attr_accessor :SessionId, :BatchId

        def initialize(sessionid=nil, batchid=nil)
          @SessionId = sessionid
          @BatchId = batchid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @BatchId = params['BatchId']
        end
      end

      # CancelNotebookSessionStatementBatch返回参数结构体
      class CancelNotebookSessionStatementBatchResponse < TencentCloud::Common::AbstractModel
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

      # CancelNotebookSessionStatement请求参数结构体
      class CancelNotebookSessionStatementRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param StatementId: Session Statement唯一标识
        # @type StatementId: String

        attr_accessor :SessionId, :StatementId

        def initialize(sessionid=nil, statementid=nil)
          @SessionId = sessionid
          @StatementId = statementid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @StatementId = params['StatementId']
        end
      end

      # CancelNotebookSessionStatement返回参数结构体
      class CancelNotebookSessionStatementResponse < TencentCloud::Common::AbstractModel
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

      # CancelSparkSessionBatchSQL请求参数结构体
      class CancelSparkSessionBatchSQLRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批任务唯一标识
        # @type BatchId: String
        # @param CustomKey: 用户自定义主键，若不为空，则使用该值进行查询
        # @type CustomKey: String

        attr_accessor :BatchId, :CustomKey

        def initialize(batchid=nil, customkey=nil)
          @BatchId = batchid
          @CustomKey = customkey
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CustomKey = params['CustomKey']
        end
      end

      # CancelSparkSessionBatchSQL返回参数结构体
      class CancelSparkSessionBatchSQLResponse < TencentCloud::Common::AbstractModel
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

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id，全局唯一
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
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

      # CheckDataEngineConfigPairsValidity请求参数结构体
      class CheckDataEngineConfigPairsValidityRequest < TencentCloud::Common::AbstractModel
        # @param ChildImageVersionId: 引擎小版本ID
        # @type ChildImageVersionId: String
        # @param DataEngineConfigPairs: 用户自定义参数
        # @type DataEngineConfigPairs: Array
        # @param ImageVersionId: 引擎大版本ID，存在小版本ID时仅需传入小版本ID，不存在时会获取当前大版本下最新的小版本ID。
        # @type ImageVersionId: String

        attr_accessor :ChildImageVersionId, :DataEngineConfigPairs, :ImageVersionId

        def initialize(childimageversionid=nil, dataengineconfigpairs=nil, imageversionid=nil)
          @ChildImageVersionId = childimageversionid
          @DataEngineConfigPairs = dataengineconfigpairs
          @ImageVersionId = imageversionid
        end

        def deserialize(params)
          @ChildImageVersionId = params['ChildImageVersionId']
          unless params['DataEngineConfigPairs'].nil?
            @DataEngineConfigPairs = []
            params['DataEngineConfigPairs'].each do |i|
              dataengineconfigpair_tmp = DataEngineConfigPair.new
              dataengineconfigpair_tmp.deserialize(i)
              @DataEngineConfigPairs << dataengineconfigpair_tmp
            end
          end
          @ImageVersionId = params['ImageVersionId']
        end
      end

      # CheckDataEngineConfigPairsValidity返回参数结构体
      class CheckDataEngineConfigPairsValidityResponse < TencentCloud::Common::AbstractModel
        # @param IsAvailable: 参数有效性：ture:有效，false:至少存在一个无效参数；
        # @type IsAvailable: Boolean
        # @param UnavailableConfig: 无效参数集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnavailableConfig: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsAvailable, :UnavailableConfig, :RequestId

        def initialize(isavailable=nil, unavailableconfig=nil, requestid=nil)
          @IsAvailable = isavailable
          @UnavailableConfig = unavailableconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @IsAvailable = params['IsAvailable']
          @UnavailableConfig = params['UnavailableConfig']
          @RequestId = params['RequestId']
        end
      end

      # CheckDataEngineImageCanBeRollback请求参数结构体
      class CheckDataEngineImageCanBeRollbackRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎唯一id
        # @type DataEngineId: String

        attr_accessor :DataEngineId

        def initialize(dataengineid=nil)
          @DataEngineId = dataengineid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
        end
      end

      # CheckDataEngineImageCanBeRollback返回参数结构体
      class CheckDataEngineImageCanBeRollbackResponse < TencentCloud::Common::AbstractModel
        # @param ToRecordId: 回滚后日志记录id
        # @type ToRecordId: String
        # @param FromRecordId: 回滚前日志记录id
        # @type FromRecordId: String
        # @param IsRollback: 是否能够回滚
        # @type IsRollback: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ToRecordId, :FromRecordId, :IsRollback, :RequestId

        def initialize(torecordid=nil, fromrecordid=nil, isrollback=nil, requestid=nil)
          @ToRecordId = torecordid
          @FromRecordId = fromrecordid
          @IsRollback = isrollback
          @RequestId = requestid
        end

        def deserialize(params)
          @ToRecordId = params['ToRecordId']
          @FromRecordId = params['FromRecordId']
          @IsRollback = params['IsRollback']
          @RequestId = params['RequestId']
        end
      end

      # CheckDataEngineImageCanBeUpgrade请求参数结构体
      class CheckDataEngineImageCanBeUpgradeRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 集群id
        # @type DataEngineId: String

        attr_accessor :DataEngineId

        def initialize(dataengineid=nil)
          @DataEngineId = dataengineid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
        end
      end

      # CheckDataEngineImageCanBeUpgrade返回参数结构体
      class CheckDataEngineImageCanBeUpgradeResponse < TencentCloud::Common::AbstractModel
        # @param ChildImageVersionId: 当前大版本下，可升级的集群镜像小版本id
        # @type ChildImageVersionId: String
        # @param IsUpgrade: 是否能够升级
        # @type IsUpgrade: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChildImageVersionId, :IsUpgrade, :RequestId

        def initialize(childimageversionid=nil, isupgrade=nil, requestid=nil)
          @ChildImageVersionId = childimageversionid
          @IsUpgrade = isupgrade
          @RequestId = requestid
        end

        def deserialize(params)
          @ChildImageVersionId = params['ChildImageVersionId']
          @IsUpgrade = params['IsUpgrade']
          @RequestId = params['RequestId']
        end
      end

      # CheckLockMetaData请求参数结构体
      class CheckLockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param TxnId: 事务ID
        # @type TxnId: Integer
        # @param ElapsedMs: 过期时间ms
        # @type ElapsedMs: Integer

        attr_accessor :LockId, :DatasourceConnectionName, :TxnId, :ElapsedMs

        def initialize(lockid=nil, datasourceconnectionname=nil, txnid=nil, elapsedms=nil)
          @LockId = lockid
          @DatasourceConnectionName = datasourceconnectionname
          @TxnId = txnid
          @ElapsedMs = elapsedms
        end

        def deserialize(params)
          @LockId = params['LockId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TxnId = params['TxnId']
          @ElapsedMs = params['ElapsedMs']
        end
      end

      # CheckLockMetaData返回参数结构体
      class CheckLockMetaDataResponse < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param LockState: 锁状态：ACQUIRED、WAITING、ABORT、NOT_ACQUIRED
        # @type LockState: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockId, :LockState, :RequestId

        def initialize(lockid=nil, lockstate=nil, requestid=nil)
          @LockId = lockid
          @LockState = lockstate
          @RequestId = requestid
        end

        def deserialize(params)
          @LockId = params['LockId']
          @LockState = params['LockState']
          @RequestId = params['RequestId']
        end
      end

      # 数据表列信息。
      class Column < TencentCloud::Common::AbstractModel
        # @param Name: 列名称，不区分大小写，最大支持25个字符。
        # @type Name: String
        # @param Type: 列类型，支持如下类型定义:
        # string|tinyint|smallint|int|bigint|boolean|float|double|decimal|timestamp|date|binary|array<data_type>|map<primitive_type, data_type>|struct<col_name : data_type [COMMENT col_comment], ...>|uniontype<data_type, data_type, ...>。
        # @type Type: String
        # @param Comment: 对该类的注释。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Precision: 表示整个 numeric 的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Precision: Integer
        # @param Scale: 表示小数部分的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scale: Integer
        # @param Nullable: 是否为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nullable: String
        # @param Position: 字段位置，小的在前
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param CreateTime: 字段创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifiedTime: 字段修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param IsPartition: 是否为分区字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPartition: Boolean

        attr_accessor :Name, :Type, :Comment, :Precision, :Scale, :Nullable, :Position, :CreateTime, :ModifiedTime, :IsPartition

        def initialize(name=nil, type=nil, comment=nil, precision=nil, scale=nil, nullable=nil, position=nil, createtime=nil, modifiedtime=nil, ispartition=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Precision = precision
          @Scale = scale
          @Nullable = nullable
          @Position = position
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @IsPartition = ispartition
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Precision = params['Precision']
          @Scale = params['Scale']
          @Nullable = params['Nullable']
          @Position = params['Position']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @IsPartition = params['IsPartition']
        end
      end

      # 任务公共指标
      class CommonMetrics < TencentCloud::Common::AbstractModel
        # @param CreateTaskTime: 创建任务时长，单位：ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTaskTime: Float
        # @param ProcessTime: 预处理总时长，单位：ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessTime: Float
        # @param QueueTime: 排队时长，单位：ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueTime: Float
        # @param ExecutionTime: 执行时长，单位：ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionTime: Float
        # @param IsResultCacheHit: 是否命中结果缓存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsResultCacheHit: Boolean
        # @param MatchedMVBytes: 匹配物化视图数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchedMVBytes: Integer
        # @param MatchedMVs: 匹配物化视图列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchedMVs: String
        # @param AffectedBytes: 结果数据量，单位：byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedBytes: String
        # @param AffectedRows: 	结果行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedRows: Integer
        # @param ProcessedBytes: 扫描数据量，单位：byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessedBytes: Integer
        # @param ProcessedRows: 	扫描行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessedRows: Integer

        attr_accessor :CreateTaskTime, :ProcessTime, :QueueTime, :ExecutionTime, :IsResultCacheHit, :MatchedMVBytes, :MatchedMVs, :AffectedBytes, :AffectedRows, :ProcessedBytes, :ProcessedRows

        def initialize(createtasktime=nil, processtime=nil, queuetime=nil, executiontime=nil, isresultcachehit=nil, matchedmvbytes=nil, matchedmvs=nil, affectedbytes=nil, affectedrows=nil, processedbytes=nil, processedrows=nil)
          @CreateTaskTime = createtasktime
          @ProcessTime = processtime
          @QueueTime = queuetime
          @ExecutionTime = executiontime
          @IsResultCacheHit = isresultcachehit
          @MatchedMVBytes = matchedmvbytes
          @MatchedMVs = matchedmvs
          @AffectedBytes = affectedbytes
          @AffectedRows = affectedrows
          @ProcessedBytes = processedbytes
          @ProcessedRows = processedrows
        end

        def deserialize(params)
          @CreateTaskTime = params['CreateTaskTime']
          @ProcessTime = params['ProcessTime']
          @QueueTime = params['QueueTime']
          @ExecutionTime = params['ExecutionTime']
          @IsResultCacheHit = params['IsResultCacheHit']
          @MatchedMVBytes = params['MatchedMVBytes']
          @MatchedMVs = params['MatchedMVs']
          @AffectedBytes = params['AffectedBytes']
          @AffectedRows = params['AffectedRows']
          @ProcessedBytes = params['ProcessedBytes']
          @ProcessedRows = params['ProcessedRows']
        end
      end

      # cos权限描述
      class CosPermission < TencentCloud::Common::AbstractModel
        # @param CosPath: cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPath: String
        # @param Permissions: 权限【"read","write"】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: Array

        attr_accessor :CosPath, :Permissions

        def initialize(cospath=nil, permissions=nil)
          @CosPath = cospath
          @Permissions = permissions
        end

        def deserialize(params)
          @CosPath = params['CosPath']
          @Permissions = params['Permissions']
        end
      end

      # CreateDMSDatabase请求参数结构体
      class CreateDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Asset: 基础元数据对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param SchemaName: Schema目录
        # @type SchemaName: String
        # @param Location: Db存储路径
        # @type Location: String
        # @param Name: 数据库名称
        # @type Name: String

        attr_accessor :Asset, :SchemaName, :Location, :Name

        def initialize(asset=nil, schemaname=nil, location=nil, name=nil)
          @Asset = asset
          @SchemaName = schemaname
          @Location = location
          @Name = name
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          @Name = params['Name']
        end
      end

      # CreateDMSDatabase返回参数结构体
      class CreateDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateDMSTable请求参数结构体
      class CreateDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param Type: 表类型
        # @type Type: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # @type LifeTime: Integer
        # @param DataUpdateTime: 数据更新时间
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # @type StructUpdateTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param Columns: 列
        # @type Columns: Array
        # @param PartitionKeys: 分区键值
        # @type PartitionKeys: Array
        # @param ViewOriginalText: 视图文本
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # @type ViewExpandedText: String
        # @param Partitions: 分区
        # @type Partitions: Array
        # @param Name: 表名称
        # @type Name: String

        attr_accessor :Asset, :Type, :DbName, :StorageSize, :RecordCount, :LifeTime, :DataUpdateTime, :StructUpdateTime, :LastAccessTime, :Sds, :Columns, :PartitionKeys, :ViewOriginalText, :ViewExpandedText, :Partitions, :Name

        def initialize(asset=nil, type=nil, dbname=nil, storagesize=nil, recordcount=nil, lifetime=nil, dataupdatetime=nil, structupdatetime=nil, lastaccesstime=nil, sds=nil, columns=nil, partitionkeys=nil, vieworiginaltext=nil, viewexpandedtext=nil, partitions=nil, name=nil)
          @Asset = asset
          @Type = type
          @DbName = dbname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @LastAccessTime = lastaccesstime
          @Sds = sds
          @Columns = columns
          @PartitionKeys = partitionkeys
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Partitions = partitions
          @Name = name
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # CreateDMSTable返回参数结构体
      class CreateDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # CreateDataEngine请求参数结构体
      class CreateDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎类型spark/presto
        # @type EngineType: String
        # @param DataEngineName: 虚拟集群名称
        # @type DataEngineName: String
        # @param ClusterType: 集群类型 spark_private/presto_private/presto_cu/spark_cu
        # @type ClusterType: String
        # @param Mode: 计费模式 0=共享模式 1=按量计费 2=包年包月
        # @type Mode: Integer
        # @param AutoResume: 是否自动启动集群
        # @type AutoResume: Boolean
        # @param MinClusters: 最小资源
        # @type MinClusters: Integer
        # @param MaxClusters: 最大资源
        # @type MaxClusters: Integer
        # @param DefaultDataEngine: 是否为默认虚拟集群
        # @type DefaultDataEngine: Boolean
        # @param CidrBlock: VPC网段
        # @type CidrBlock: String
        # @param Message: 描述信息
        # @type Message: String
        # @param Size: 集群规模
        # @type Size: Integer
        # @param PayMode: 计费类型，后付费：0，预付费：1。当前只支持后付费，不填默认为后付费。
        # @type PayMode: Integer
        # @param TimeSpan: 资源使用时长，后付费：固定填3600，预付费：最少填1，代表购买资源一个月，最长不超过120。默认1
        # @type TimeSpan: Integer
        # @param TimeUnit: 资源使用时长的单位，后付费：s，预付费：m。默认为s
        # @type TimeUnit: String
        # @param AutoRenew: 资源的自动续费标志。后付费无需续费，固定填0；预付费下：0表示手动续费、1代表自动续费、2代表不续费，在0下如果是大客户，会自动帮大客户续费。默认为0
        # @type AutoRenew: Integer
        # @param Tags: 创建资源的时候需要绑定的标签信息
        # @type Tags: Array
        # @param AutoSuspend: 是否自定挂起集群：false（默认）：不自动挂起、true：自动挂起
        # @type AutoSuspend: Boolean
        # @param CrontabResumeSuspend: 定时启停集群策略：0（默认）：关闭定时策略、1：开启定时策略（注：定时启停策略与自动挂起策略互斥）
        # @type CrontabResumeSuspend: Integer
        # @param CrontabResumeSuspendStrategy: 定时启停策略，复杂类型：包含启停时间、挂起集群策略
        # @type CrontabResumeSuspendStrategy: :class:`Tencentcloud::Dlc.v20210125.models.CrontabResumeSuspendStrategy`
        # @param EngineExecType: 引擎执行任务类型，有效值：SQL/BATCH，默认为SQL
        # @type EngineExecType: String
        # @param MaxConcurrency: 单个集群最大并发任务数，默认5
        # @type MaxConcurrency: Integer
        # @param TolerableQueueTime: 可容忍的排队时间，默认0。当任务排队的时间超过可容忍的时间时可能会触发扩容。如果该参数为0，则表示一旦有任务排队就可能立即触发扩容。
        # @type TolerableQueueTime: Integer
        # @param AutoSuspendTime: 集群自动挂起时间，默认10分钟
        # @type AutoSuspendTime: Integer
        # @param ResourceType: 资源类型。Standard_CU：标准型；Memory_CU：内存型
        # @type ResourceType: String
        # @param DataEngineConfigPairs: 集群高级配置
        # @type DataEngineConfigPairs: Array
        # @param ImageVersionName: 集群镜像版本名字。如SuperSQL-P 1.1;SuperSQL-S 3.2等,不传，默认创建最新镜像版本的集群
        # @type ImageVersionName: String
        # @param MainClusterName: 主集群名称，创建容灾集群时指定
        # @type MainClusterName: String
        # @param ElasticSwitch: spark jar 包年包月集群是否开启弹性
        # @type ElasticSwitch: Boolean
        # @param ElasticLimit: spark jar 包年包月集群弹性上限
        # @type ElasticLimit: Integer
        # @param SessionResourceTemplate: spark作业集群session资源配置模板
        # @type SessionResourceTemplate: :class:`Tencentcloud::Dlc.v20210125.models.SessionResourceTemplate`
        # @param AutoAuthorization: 自动授权
        # @type AutoAuthorization: Boolean
        # @param EngineNetworkId: 引擎网络ID
        # @type EngineNetworkId: String
        # @param EngineGeneration: 引擎世代，SuperSQL：代表supersql引擎，Native：代表标准引擎。默认值为SuperSQL
        # @type EngineGeneration: String

        attr_accessor :EngineType, :DataEngineName, :ClusterType, :Mode, :AutoResume, :MinClusters, :MaxClusters, :DefaultDataEngine, :CidrBlock, :Message, :Size, :PayMode, :TimeSpan, :TimeUnit, :AutoRenew, :Tags, :AutoSuspend, :CrontabResumeSuspend, :CrontabResumeSuspendStrategy, :EngineExecType, :MaxConcurrency, :TolerableQueueTime, :AutoSuspendTime, :ResourceType, :DataEngineConfigPairs, :ImageVersionName, :MainClusterName, :ElasticSwitch, :ElasticLimit, :SessionResourceTemplate, :AutoAuthorization, :EngineNetworkId, :EngineGeneration
        extend Gem::Deprecate
        deprecate :DefaultDataEngine, :none, 2024, 3
        deprecate :DefaultDataEngine=, :none, 2024, 3

        def initialize(enginetype=nil, dataenginename=nil, clustertype=nil, mode=nil, autoresume=nil, minclusters=nil, maxclusters=nil, defaultdataengine=nil, cidrblock=nil, message=nil, size=nil, paymode=nil, timespan=nil, timeunit=nil, autorenew=nil, tags=nil, autosuspend=nil, crontabresumesuspend=nil, crontabresumesuspendstrategy=nil, engineexectype=nil, maxconcurrency=nil, tolerablequeuetime=nil, autosuspendtime=nil, resourcetype=nil, dataengineconfigpairs=nil, imageversionname=nil, mainclustername=nil, elasticswitch=nil, elasticlimit=nil, sessionresourcetemplate=nil, autoauthorization=nil, enginenetworkid=nil, enginegeneration=nil)
          @EngineType = enginetype
          @DataEngineName = dataenginename
          @ClusterType = clustertype
          @Mode = mode
          @AutoResume = autoresume
          @MinClusters = minclusters
          @MaxClusters = maxclusters
          @DefaultDataEngine = defaultdataengine
          @CidrBlock = cidrblock
          @Message = message
          @Size = size
          @PayMode = paymode
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @AutoRenew = autorenew
          @Tags = tags
          @AutoSuspend = autosuspend
          @CrontabResumeSuspend = crontabresumesuspend
          @CrontabResumeSuspendStrategy = crontabresumesuspendstrategy
          @EngineExecType = engineexectype
          @MaxConcurrency = maxconcurrency
          @TolerableQueueTime = tolerablequeuetime
          @AutoSuspendTime = autosuspendtime
          @ResourceType = resourcetype
          @DataEngineConfigPairs = dataengineconfigpairs
          @ImageVersionName = imageversionname
          @MainClusterName = mainclustername
          @ElasticSwitch = elasticswitch
          @ElasticLimit = elasticlimit
          @SessionResourceTemplate = sessionresourcetemplate
          @AutoAuthorization = autoauthorization
          @EngineNetworkId = enginenetworkid
          @EngineGeneration = enginegeneration
        end

        def deserialize(params)
          @EngineType = params['EngineType']
          @DataEngineName = params['DataEngineName']
          @ClusterType = params['ClusterType']
          @Mode = params['Mode']
          @AutoResume = params['AutoResume']
          @MinClusters = params['MinClusters']
          @MaxClusters = params['MaxClusters']
          @DefaultDataEngine = params['DefaultDataEngine']
          @CidrBlock = params['CidrBlock']
          @Message = params['Message']
          @Size = params['Size']
          @PayMode = params['PayMode']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @AutoRenew = params['AutoRenew']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @AutoSuspend = params['AutoSuspend']
          @CrontabResumeSuspend = params['CrontabResumeSuspend']
          unless params['CrontabResumeSuspendStrategy'].nil?
            @CrontabResumeSuspendStrategy = CrontabResumeSuspendStrategy.new
            @CrontabResumeSuspendStrategy.deserialize(params['CrontabResumeSuspendStrategy'])
          end
          @EngineExecType = params['EngineExecType']
          @MaxConcurrency = params['MaxConcurrency']
          @TolerableQueueTime = params['TolerableQueueTime']
          @AutoSuspendTime = params['AutoSuspendTime']
          @ResourceType = params['ResourceType']
          unless params['DataEngineConfigPairs'].nil?
            @DataEngineConfigPairs = []
            params['DataEngineConfigPairs'].each do |i|
              dataengineconfigpair_tmp = DataEngineConfigPair.new
              dataengineconfigpair_tmp.deserialize(i)
              @DataEngineConfigPairs << dataengineconfigpair_tmp
            end
          end
          @ImageVersionName = params['ImageVersionName']
          @MainClusterName = params['MainClusterName']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticLimit = params['ElasticLimit']
          unless params['SessionResourceTemplate'].nil?
            @SessionResourceTemplate = SessionResourceTemplate.new
            @SessionResourceTemplate.deserialize(params['SessionResourceTemplate'])
          end
          @AutoAuthorization = params['AutoAuthorization']
          @EngineNetworkId = params['EngineNetworkId']
          @EngineGeneration = params['EngineGeneration']
        end
      end

      # CreateDataEngine返回参数结构体
      class CreateDataEngineResponse < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 虚拟引擎id
        # @type DataEngineId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngineId, :RequestId

        def initialize(dataengineid=nil, requestid=nil)
          @DataEngineId = dataengineid
          @RequestId = requestid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDatabase请求参数结构体
      class CreateDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseInfo: 数据库基础信息
        # @type DatabaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.DatabaseInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseInfo, :DatasourceConnectionName

        def initialize(databaseinfo=nil, datasourceconnectionname=nil)
          @DatabaseInfo = databaseinfo
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          unless params['DatabaseInfo'].nil?
            @DatabaseInfo = DatabaseInfo.new
            @DatabaseInfo.deserialize(params['DatabaseInfo'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # CreateDatabase返回参数结构体
      class CreateDatabaseResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 生成的建库执行语句对象。
        # @type Execution: :class:`Tencentcloud::Dlc.v20210125.models.Execution`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId

        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = Execution.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateExportTask请求参数结构体
      class CreateExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 数据来源，lakefsStorage、taskResult
        # @type InputType: String
        # @param InputConf: 导出任务输入配置
        # @type InputConf: Array
        # @param OutputConf: 导出任务输出配置
        # @type OutputConf: Array
        # @param OutputType: 目标数据源的类型，目前支持导出到cos
        # @type OutputType: String

        attr_accessor :InputType, :InputConf, :OutputConf, :OutputType

        def initialize(inputtype=nil, inputconf=nil, outputconf=nil, outputtype=nil)
          @InputType = inputtype
          @InputConf = inputconf
          @OutputConf = outputconf
          @OutputType = outputtype
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['InputConf'].nil?
            @InputConf = []
            params['InputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @InputConf << kvpair_tmp
            end
          end
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @OutputConf << kvpair_tmp
            end
          end
          @OutputType = params['OutputType']
        end
      end

      # CreateExportTask返回参数结构体
      class CreateExportTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
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

      # CreateImportTask请求参数结构体
      class CreateImportTaskRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 数据来源，cos
        # @type InputType: String
        # @param InputConf: 输入配置
        # @type InputConf: Array
        # @param OutputConf: 输出配置
        # @type OutputConf: Array
        # @param OutputType: 目标数据源的类型，目前支持导入到托管存储，即lakefsStorage
        # @type OutputType: String

        attr_accessor :InputType, :InputConf, :OutputConf, :OutputType

        def initialize(inputtype=nil, inputconf=nil, outputconf=nil, outputtype=nil)
          @InputType = inputtype
          @InputConf = inputconf
          @OutputConf = outputconf
          @OutputType = outputtype
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['InputConf'].nil?
            @InputConf = []
            params['InputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @InputConf << kvpair_tmp
            end
          end
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @OutputConf << kvpair_tmp
            end
          end
          @OutputType = params['OutputType']
        end
      end

      # CreateImportTask返回参数结构体
      class CreateImportTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
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

      # CreateInternalTable请求参数结构体
      class CreateInternalTableRequest < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 表基本信息
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param Columns: 表字段信息
        # @type Columns: Array
        # @param Partitions: 表分区信息
        # @type Partitions: Array
        # @param Properties: 表属性信息
        # @type Properties: Array

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Properties

        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, properties=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Properties = properties
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              tcolumn_tmp = TColumn.new
              tcolumn_tmp.deserialize(i)
              @Columns << tcolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              tpartition_tmp = TPartition.new
              tpartition_tmp.deserialize(i)
              @Partitions << tpartition_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
        end
      end

      # CreateInternalTable返回参数结构体
      class CreateInternalTableResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 创建托管存储内表sql语句描述
        # @type Execution: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId

        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          @Execution = params['Execution']
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebookSession请求参数结构体
      class CreateNotebookSessionRequest < TencentCloud::Common::AbstractModel
        # @param Name: Session名称
        # @type Name: String
        # @param Kind: 类型，当前支持：spark、pyspark、sparkr、sql
        # @type Kind: String
        # @param DataEngineName: DLC Spark作业引擎名称
        # @type DataEngineName: String
        # @param ProgramDependentFiles: session文件地址，当前支持：cosn://和lakefs://两种路径
        # @type ProgramDependentFiles: Array
        # @param ProgramDependentJars: 依赖的jar程序地址，当前支持：cosn://和lakefs://两种路径
        # @type ProgramDependentJars: Array
        # @param ProgramDependentPython: 依赖的python程序地址，当前支持：cosn://和lakefs://两种路径
        # @type ProgramDependentPython: Array
        # @param ProgramArchives: 依赖的pyspark虚拟环境地址，当前支持：cosn://和lakefs://两种路径
        # @type ProgramArchives: Array
        # @param DriverSize: 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type DriverSize: String
        # @param ExecutorSize: 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type ExecutorSize: String
        # @param ExecutorNumbers: 指定的Executor数量，默认为1
        # @type ExecutorNumbers: Integer
        # @param Arguments: Session相关配置，当前支持：
        # 1. dlc.eni: 用户配置的eni网关信息，可以通过该字段设置；
        # 2. dlc.role.arn: 用户配置的roleArn鉴权策略配置信息，可以通过该字段设置；
        # 3. dlc.sql.set.config: 用户配置的集群配置信息，可以通过该字段设置；
        # @type Arguments: Array
        # @param ProxyUser: 代理用户，默认为root
        # @type ProxyUser: String
        # @param TimeoutInSecond: 指定的Session超时时间，单位秒，默认3600秒
        # @type TimeoutInSecond: Integer
        # @param ExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于ExecutorNumbers
        # @type ExecutorMaxNumbers: Integer
        # @param SparkImage: 指定spark版本名称，当前任务使用该spark镜像运行
        # @type SparkImage: String
        # @param IsInherit: 是否继承集群的资源类配置：0：自定义（默认），1：继承集群；
        # @type IsInherit: Integer

        attr_accessor :Name, :Kind, :DataEngineName, :ProgramDependentFiles, :ProgramDependentJars, :ProgramDependentPython, :ProgramArchives, :DriverSize, :ExecutorSize, :ExecutorNumbers, :Arguments, :ProxyUser, :TimeoutInSecond, :ExecutorMaxNumbers, :SparkImage, :IsInherit

        def initialize(name=nil, kind=nil, dataenginename=nil, programdependentfiles=nil, programdependentjars=nil, programdependentpython=nil, programarchives=nil, driversize=nil, executorsize=nil, executornumbers=nil, arguments=nil, proxyuser=nil, timeoutinsecond=nil, executormaxnumbers=nil, sparkimage=nil, isinherit=nil)
          @Name = name
          @Kind = kind
          @DataEngineName = dataenginename
          @ProgramDependentFiles = programdependentfiles
          @ProgramDependentJars = programdependentjars
          @ProgramDependentPython = programdependentpython
          @ProgramArchives = programarchives
          @DriverSize = driversize
          @ExecutorSize = executorsize
          @ExecutorNumbers = executornumbers
          @Arguments = arguments
          @ProxyUser = proxyuser
          @TimeoutInSecond = timeoutinsecond
          @ExecutorMaxNumbers = executormaxnumbers
          @SparkImage = sparkimage
          @IsInherit = isinherit
        end

        def deserialize(params)
          @Name = params['Name']
          @Kind = params['Kind']
          @DataEngineName = params['DataEngineName']
          @ProgramDependentFiles = params['ProgramDependentFiles']
          @ProgramDependentJars = params['ProgramDependentJars']
          @ProgramDependentPython = params['ProgramDependentPython']
          @ProgramArchives = params['ProgramArchives']
          @DriverSize = params['DriverSize']
          @ExecutorSize = params['ExecutorSize']
          @ExecutorNumbers = params['ExecutorNumbers']
          unless params['Arguments'].nil?
            @Arguments = []
            params['Arguments'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Arguments << kvpair_tmp
            end
          end
          @ProxyUser = params['ProxyUser']
          @TimeoutInSecond = params['TimeoutInSecond']
          @ExecutorMaxNumbers = params['ExecutorMaxNumbers']
          @SparkImage = params['SparkImage']
          @IsInherit = params['IsInherit']
        end
      end

      # CreateNotebookSession返回参数结构体
      class CreateNotebookSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param SparkAppId: Spark任务返回的AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppId: String
        # @param State: Session状态，包含：not_started（未启动）、starting（已启动）、idle（等待输入）、busy(正在运行statement)、shutting_down（停止）、error（异常）、dead（已退出）、killed（被杀死）、success（正常停止）
        # @type State: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :SparkAppId, :State, :RequestId

        def initialize(sessionid=nil, sparkappid=nil, state=nil, requestid=nil)
          @SessionId = sessionid
          @SparkAppId = sparkappid
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @SparkAppId = params['SparkAppId']
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebookSessionStatement请求参数结构体
      class CreateNotebookSessionStatementRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param Code: 执行的代码
        # @type Code: String
        # @param Kind: 类型，当前支持：spark、pyspark、sparkr、sql
        # @type Kind: String

        attr_accessor :SessionId, :Code, :Kind

        def initialize(sessionid=nil, code=nil, kind=nil)
          @SessionId = sessionid
          @Code = code
          @Kind = kind
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Code = params['Code']
          @Kind = params['Kind']
        end
      end

      # CreateNotebookSessionStatement返回参数结构体
      class CreateNotebookSessionStatementResponse < TencentCloud::Common::AbstractModel
        # @param NotebookSessionStatement: Session Statement详情
        # @type NotebookSessionStatement: :class:`Tencentcloud::Dlc.v20210125.models.NotebookSessionStatementInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookSessionStatement, :RequestId

        def initialize(notebooksessionstatement=nil, requestid=nil)
          @NotebookSessionStatement = notebooksessionstatement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookSessionStatement'].nil?
            @NotebookSessionStatement = NotebookSessionStatementInfo.new
            @NotebookSessionStatement.deserialize(params['NotebookSessionStatement'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNotebookSessionStatementSupportBatchSQL请求参数结构体
      class CreateNotebookSessionStatementSupportBatchSQLRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param Code: 执行的代码
        # @type Code: String
        # @param Kind: 类型，当前支持：sql
        # @type Kind: String
        # @param SaveResult: 是否保存运行结果
        # @type SaveResult: Boolean

        attr_accessor :SessionId, :Code, :Kind, :SaveResult

        def initialize(sessionid=nil, code=nil, kind=nil, saveresult=nil)
          @SessionId = sessionid
          @Code = code
          @Kind = kind
          @SaveResult = saveresult
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Code = params['Code']
          @Kind = params['Kind']
          @SaveResult = params['SaveResult']
        end
      end

      # CreateNotebookSessionStatementSupportBatchSQL返回参数结构体
      class CreateNotebookSessionStatementSupportBatchSQLResponse < TencentCloud::Common::AbstractModel
        # @param NotebookSessionStatementBatches: Session Statement详情
        # @type NotebookSessionStatementBatches: :class:`Tencentcloud::Dlc.v20210125.models.NotebookSessionStatementBatchInformation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookSessionStatementBatches, :RequestId

        def initialize(notebooksessionstatementbatches=nil, requestid=nil)
          @NotebookSessionStatementBatches = notebooksessionstatementbatches
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookSessionStatementBatches'].nil?
            @NotebookSessionStatementBatches = NotebookSessionStatementBatchInformation.new
            @NotebookSessionStatementBatches.deserialize(params['NotebookSessionStatementBatches'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateResultDownload请求参数结构体
      class CreateResultDownloadRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 查询结果任务Id
        # @type TaskId: String
        # @param Format: 下载格式
        # @type Format: String
        # @param Force: 是否重新生成下载文件，仅当之前任务为 Timout | Error 时有效
        # @type Force: Boolean

        attr_accessor :TaskId, :Format, :Force

        def initialize(taskid=nil, format=nil, force=nil)
          @TaskId = taskid
          @Format = format
          @Force = force
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Format = params['Format']
          @Force = params['Force']
        end
      end

      # CreateResultDownload返回参数结构体
      class CreateResultDownloadResponse < TencentCloud::Common::AbstractModel
        # @param DownloadId: 下载任务Id
        # @type DownloadId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadId, :RequestId

        def initialize(downloadid=nil, requestid=nil)
          @DownloadId = downloadid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadId = params['DownloadId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScript请求参数结构体
      class CreateScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptName: 脚本名称，最大不能超过255个字符。
        # @type ScriptName: String
        # @param SQLStatement: base64编码后的sql语句
        # @type SQLStatement: String
        # @param ScriptDesc: 脚本描述， 不能超过50个字符
        # @type ScriptDesc: String
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String

        attr_accessor :ScriptName, :SQLStatement, :ScriptDesc, :DatabaseName

        def initialize(scriptname=nil, sqlstatement=nil, scriptdesc=nil, databasename=nil)
          @ScriptName = scriptname
          @SQLStatement = sqlstatement
          @ScriptDesc = scriptdesc
          @DatabaseName = databasename
        end

        def deserialize(params)
          @ScriptName = params['ScriptName']
          @SQLStatement = params['SQLStatement']
          @ScriptDesc = params['ScriptDesc']
          @DatabaseName = params['DatabaseName']
        end
      end

      # CreateScript返回参数结构体
      class CreateScriptResponse < TencentCloud::Common::AbstractModel
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

      # CreateSparkApp请求参数结构体
      class CreateSparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark作业名
        # @type AppName: String
        # @param AppType: spark作业类型，1代表spark jar作业，2代表spark streaming作业
        # @type AppType: Integer
        # @param DataEngine: 执行spark作业的数据引擎名称
        # @type DataEngine: String
        # @param AppFile: spark作业程序包文件路径
        # @type AppFile: String
        # @param RoleArn: 数据访问策略，CAM Role arn
        # @type RoleArn: Integer
        # @param AppDriverSize: 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type AppDriverSize: String
        # @param AppExecutorSize: 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type AppExecutorSize: String
        # @param AppExecutorNums: spark作业executor个数
        # @type AppExecutorNums: Integer
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: spark作业程序包是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocal: String
        # @param MainClass: spark作业主类
        # @type MainClass: String
        # @param AppConf: spark配置，以换行符分隔
        # @type AppConf: String
        # @param IsLocalJars: spark 作业依赖jar包是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalJars: String
        # @param AppJars: spark 作业依赖jar包（--jars），以逗号分隔
        # @type AppJars: String
        # @param IsLocalFiles: spark作业依赖文件资源是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalFiles: String
        # @param AppFiles: spark作业依赖文件资源（--files）（非jar、zip），以逗号分隔
        # @type AppFiles: String
        # @param CmdArgs: spark作业程序入参，空格分割
        # @type CmdArgs: String
        # @param MaxRetries: 最大重试次数，只对spark流任务生效
        # @type MaxRetries: Integer
        # @param DataSource: 数据源名称
        # @type DataSource: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: pyspark作业依赖python资源（--py-files），支持py/zip/egg等归档格式，多文件以逗号分隔
        # @type AppPythonFiles: String
        # @param IsLocalArchives: spark作业依赖archives资源是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalArchives: String
        # @param AppArchives: spark作业依赖archives资源（--archives），支持tar.gz/tgz/tar等归档格式，以逗号分隔
        # @type AppArchives: String
        # @param SparkImage: Spark Image 版本号
        # @type SparkImage: String
        # @param SparkImageVersion: Spark Image 版本名称
        # @type SparkImageVersion: String
        # @param AppExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于AppExecutorNums
        # @type AppExecutorMaxNumbers: Integer
        # @param SessionId: 关联dlc查询脚本id
        # @type SessionId: String
        # @param IsInherit: 任务资源配置是否继承集群模板，0（默认）不继承，1：继承
        # @type IsInherit: Integer
        # @param IsSessionStarted: 是否使用session脚本的sql运行任务：false：否，true：是
        # @type IsSessionStarted: Boolean

        attr_accessor :AppName, :AppType, :DataEngine, :AppFile, :RoleArn, :AppDriverSize, :AppExecutorSize, :AppExecutorNums, :Eni, :IsLocal, :MainClass, :AppConf, :IsLocalJars, :AppJars, :IsLocalFiles, :AppFiles, :CmdArgs, :MaxRetries, :DataSource, :IsLocalPythonFiles, :AppPythonFiles, :IsLocalArchives, :AppArchives, :SparkImage, :SparkImageVersion, :AppExecutorMaxNumbers, :SessionId, :IsInherit, :IsSessionStarted

        def initialize(appname=nil, apptype=nil, dataengine=nil, appfile=nil, rolearn=nil, appdriversize=nil, appexecutorsize=nil, appexecutornums=nil, eni=nil, islocal=nil, mainclass=nil, appconf=nil, islocaljars=nil, appjars=nil, islocalfiles=nil, appfiles=nil, cmdargs=nil, maxretries=nil, datasource=nil, islocalpythonfiles=nil, apppythonfiles=nil, islocalarchives=nil, apparchives=nil, sparkimage=nil, sparkimageversion=nil, appexecutormaxnumbers=nil, sessionid=nil, isinherit=nil, issessionstarted=nil)
          @AppName = appname
          @AppType = apptype
          @DataEngine = dataengine
          @AppFile = appfile
          @RoleArn = rolearn
          @AppDriverSize = appdriversize
          @AppExecutorSize = appexecutorsize
          @AppExecutorNums = appexecutornums
          @Eni = eni
          @IsLocal = islocal
          @MainClass = mainclass
          @AppConf = appconf
          @IsLocalJars = islocaljars
          @AppJars = appjars
          @IsLocalFiles = islocalfiles
          @AppFiles = appfiles
          @CmdArgs = cmdargs
          @MaxRetries = maxretries
          @DataSource = datasource
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @IsLocalArchives = islocalarchives
          @AppArchives = apparchives
          @SparkImage = sparkimage
          @SparkImageVersion = sparkimageversion
          @AppExecutorMaxNumbers = appexecutormaxnumbers
          @SessionId = sessionid
          @IsInherit = isinherit
          @IsSessionStarted = issessionstarted
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AppType = params['AppType']
          @DataEngine = params['DataEngine']
          @AppFile = params['AppFile']
          @RoleArn = params['RoleArn']
          @AppDriverSize = params['AppDriverSize']
          @AppExecutorSize = params['AppExecutorSize']
          @AppExecutorNums = params['AppExecutorNums']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @MainClass = params['MainClass']
          @AppConf = params['AppConf']
          @IsLocalJars = params['IsLocalJars']
          @AppJars = params['AppJars']
          @IsLocalFiles = params['IsLocalFiles']
          @AppFiles = params['AppFiles']
          @CmdArgs = params['CmdArgs']
          @MaxRetries = params['MaxRetries']
          @DataSource = params['DataSource']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @IsLocalArchives = params['IsLocalArchives']
          @AppArchives = params['AppArchives']
          @SparkImage = params['SparkImage']
          @SparkImageVersion = params['SparkImageVersion']
          @AppExecutorMaxNumbers = params['AppExecutorMaxNumbers']
          @SessionId = params['SessionId']
          @IsInherit = params['IsInherit']
          @IsSessionStarted = params['IsSessionStarted']
        end
      end

      # CreateSparkApp返回参数结构体
      class CreateSparkAppResponse < TencentCloud::Common::AbstractModel
        # @param SparkAppId: App唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SparkAppId, :RequestId

        def initialize(sparkappid=nil, requestid=nil)
          @SparkAppId = sparkappid
          @RequestId = requestid
        end

        def deserialize(params)
          @SparkAppId = params['SparkAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSparkAppTask请求参数结构体
      class CreateSparkAppTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobName: spark作业名
        # @type JobName: String
        # @param CmdArgs: spark作业程序入参，以空格分隔；一般用于周期性调用使用
        # @type CmdArgs: String

        attr_accessor :JobName, :CmdArgs

        def initialize(jobname=nil, cmdargs=nil)
          @JobName = jobname
          @CmdArgs = cmdargs
        end

        def deserialize(params)
          @JobName = params['JobName']
          @CmdArgs = params['CmdArgs']
        end
      end

      # CreateSparkAppTask返回参数结构体
      class CreateSparkAppTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批Id
        # @type BatchId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskId, :RequestId

        def initialize(batchid=nil, taskid=nil, requestid=nil)
          @BatchId = batchid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSparkSessionBatchSQL请求参数结构体
      class CreateSparkSessionBatchSQLRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: DLC Spark作业引擎名称
        # @type DataEngineName: String
        # @param ExecuteSQL: 运行sql，需要base64编码。
        # @type ExecuteSQL: String
        # @param DriverSize: 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type DriverSize: String
        # @param ExecutorSize: 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type ExecutorSize: String
        # @param ExecutorNumbers: 指定的Executor数量，默认为1
        # @type ExecutorNumbers: Integer
        # @param ExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于ExecutorNumbers
        # @type ExecutorMaxNumbers: Integer
        # @param TimeoutInSecond: 指定的Session超时时间，单位秒，默认3600秒
        # @type TimeoutInSecond: Integer
        # @param SessionId: Session唯一标识，当指定sessionid，则使用该session运行任务。
        # @type SessionId: String
        # @param SessionName: 指定要创建的session名称
        # @type SessionName: String
        # @param Arguments: Session相关配置，当前支持：1.dlc.eni：用户配置的eni网关信息，可以用过该字段设置；
        # 2.dlc.role.arn：用户配置的roleArn鉴权策略配置信息，可以用过该字段设置；
        # 3.dlc.sql.set.config：用户配置的集群配置信息，可以用过该字段设置；
        # @type Arguments: Array
        # @param IsInherit: 是否继承集群的资源类配置：0：不继承（默认），1：继承集群；
        # @type IsInherit: Integer
        # @param CustomKey: 用户自定义主键，需唯一
        # @type CustomKey: String

        attr_accessor :DataEngineName, :ExecuteSQL, :DriverSize, :ExecutorSize, :ExecutorNumbers, :ExecutorMaxNumbers, :TimeoutInSecond, :SessionId, :SessionName, :Arguments, :IsInherit, :CustomKey

        def initialize(dataenginename=nil, executesql=nil, driversize=nil, executorsize=nil, executornumbers=nil, executormaxnumbers=nil, timeoutinsecond=nil, sessionid=nil, sessionname=nil, arguments=nil, isinherit=nil, customkey=nil)
          @DataEngineName = dataenginename
          @ExecuteSQL = executesql
          @DriverSize = driversize
          @ExecutorSize = executorsize
          @ExecutorNumbers = executornumbers
          @ExecutorMaxNumbers = executormaxnumbers
          @TimeoutInSecond = timeoutinsecond
          @SessionId = sessionid
          @SessionName = sessionname
          @Arguments = arguments
          @IsInherit = isinherit
          @CustomKey = customkey
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @ExecuteSQL = params['ExecuteSQL']
          @DriverSize = params['DriverSize']
          @ExecutorSize = params['ExecutorSize']
          @ExecutorNumbers = params['ExecutorNumbers']
          @ExecutorMaxNumbers = params['ExecutorMaxNumbers']
          @TimeoutInSecond = params['TimeoutInSecond']
          @SessionId = params['SessionId']
          @SessionName = params['SessionName']
          unless params['Arguments'].nil?
            @Arguments = []
            params['Arguments'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Arguments << kvpair_tmp
            end
          end
          @IsInherit = params['IsInherit']
          @CustomKey = params['CustomKey']
        end
      end

      # CreateSparkSessionBatchSQL返回参数结构体
      class CreateSparkSessionBatchSQLResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批任务唯一标识
        # @type BatchId: String
        # @param Statements: Statement任务列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Statements: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :Statements, :RequestId

        def initialize(batchid=nil, statements=nil, requestid=nil)
          @BatchId = batchid
          @Statements = statements
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          unless params['Statements'].nil?
            @Statements = []
            params['Statements'].each do |i|
              statementinformation_tmp = StatementInformation.new
              statementinformation_tmp.deserialize(i)
              @Statements << statementinformation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStoreLocation请求参数结构体
      class CreateStoreLocationRequest < TencentCloud::Common::AbstractModel
        # @param StoreLocation: 计算结果存储cos路径，如：cosn://bucketname/
        # @type StoreLocation: String

        attr_accessor :StoreLocation

        def initialize(storelocation=nil)
          @StoreLocation = storelocation
        end

        def deserialize(params)
          @StoreLocation = params['StoreLocation']
        end
      end

      # CreateStoreLocation返回参数结构体
      class CreateStoreLocationResponse < TencentCloud::Common::AbstractModel
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

      # CreateTable请求参数结构体
      class CreateTableRequest < TencentCloud::Common::AbstractModel
        # @param TableInfo: 数据表配置信息
        # @type TableInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableInfo`

        attr_accessor :TableInfo

        def initialize(tableinfo=nil)
          @TableInfo = tableinfo
        end

        def deserialize(params)
          unless params['TableInfo'].nil?
            @TableInfo = TableInfo.new
            @TableInfo.deserialize(params['TableInfo'])
          end
        end
      end

      # CreateTable返回参数结构体
      class CreateTableResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 生成的建表执行语句对象。
        # @type Execution: :class:`Tencentcloud::Dlc.v20210125.models.Execution`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId

        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = Execution.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param Task: 计算任务，该参数中包含任务类型及其相关配置信息
        # @type Task: :class:`Tencentcloud::Dlc.v20210125.models.Task`
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库（注：当提交建库sql时，该字段传空字符串）。
        # @type DatabaseName: String
        # @param DatasourceConnectionName: 默认数据源名称。
        # @type DatasourceConnectionName: String
        # @param DataEngineName: 数据引擎名称，不填提交到默认集群
        # @type DataEngineName: String

        attr_accessor :Task, :DatabaseName, :DatasourceConnectionName, :DataEngineName

        def initialize(task=nil, databasename=nil, datasourceconnectionname=nil, dataenginename=nil)
          @Task = task
          @DatabaseName = databasename
          @DatasourceConnectionName = datasourceconnectionname
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @DatabaseName = params['DatabaseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DataEngineName = params['DataEngineName']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateTasksInOrder请求参数结构体
      class CreateTasksInOrderRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库。
        # @type DatabaseName: String
        # @param Tasks: SQL任务信息
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TasksInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为COSDataCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseName, :Tasks, :DatasourceConnectionName

        def initialize(databasename=nil, tasks=nil, datasourceconnectionname=nil)
          @DatabaseName = databasename
          @Tasks = tasks
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          unless params['Tasks'].nil?
            @Tasks = TasksInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # CreateTasksInOrder返回参数结构体
      class CreateTasksInOrderResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 本批次提交的任务的批次Id
        # @type BatchId: String
        # @param TaskIdSet: 任务Id集合，按照执行顺序排列
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskIdSet, :RequestId

        def initialize(batchid=nil, taskidset=nil, requestid=nil)
          @BatchId = batchid
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateTasks请求参数结构体
      class CreateTasksRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库（注：当提交建库sql时，该字段传空字符串）。
        # @type DatabaseName: String
        # @param Tasks: SQL任务信息
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TasksInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param DataEngineName: 计算引擎名称，不填任务提交到默认集群
        # @type DataEngineName: String

        attr_accessor :DatabaseName, :Tasks, :DatasourceConnectionName, :DataEngineName

        def initialize(databasename=nil, tasks=nil, datasourceconnectionname=nil, dataenginename=nil)
          @DatabaseName = databasename
          @Tasks = tasks
          @DatasourceConnectionName = datasourceconnectionname
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          unless params['Tasks'].nil?
            @Tasks = TasksInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DataEngineName = params['DataEngineName']
        end
      end

      # CreateTasks返回参数结构体
      class CreateTasksResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 本批次提交的任务的批次Id
        # @type BatchId: String
        # @param TaskIdSet: 任务Id集合，按照执行顺序排列
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskIdSet, :RequestId

        def initialize(batchid=nil, taskidset=nil, requestid=nil)
          @BatchId = batchid
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 需要授权的子用户uin，可以通过腾讯云控制台右上角 → “账号信息” → “账号ID进行查看”。
        # @type UserId: String
        # @param UserDescription: 用户描述信息，方便区分不同用户
        # @type UserDescription: String
        # @param PolicySet: 绑定到用户的权限集合
        # @type PolicySet: Array
        # @param UserType: 用户类型。ADMIN：管理员 COMMON：一般用户。当用户类型为管理员的时候，不能设置权限集合和绑定的工作组集合，管理员默认拥有所有权限。该参数不填默认为COMMON
        # @type UserType: String
        # @param WorkGroupIds: 绑定到用户的工作组ID集合。
        # @type WorkGroupIds: Array
        # @param UserAlias: 用户别名，字符长度小50
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :PolicySet, :UserType, :WorkGroupIds, :UserAlias

        def initialize(userid=nil, userdescription=nil, policyset=nil, usertype=nil, workgroupids=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
          @UserType = usertype
          @WorkGroupIds = workgroupids
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @UserType = params['UserType']
          @WorkGroupIds = params['WorkGroupIds']
          @UserAlias = params['UserAlias']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
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

      # CreateWorkGroup请求参数结构体
      class CreateWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # @type WorkGroupDescription: String
        # @param PolicySet: 工作组绑定的鉴权策略集合
        # @type PolicySet: Array
        # @param UserIds: 需要绑定到工作组的用户Id集合
        # @type UserIds: Array

        attr_accessor :WorkGroupName, :WorkGroupDescription, :PolicySet, :UserIds

        def initialize(workgroupname=nil, workgroupdescription=nil, policyset=nil, userids=nil)
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @PolicySet = policyset
          @UserIds = userids
        end

        def deserialize(params)
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @UserIds = params['UserIds']
        end
      end

      # CreateWorkGroup返回参数结构体
      class CreateWorkGroupResponse < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id，全局唯一
        # @type WorkGroupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkGroupId, :RequestId

        def initialize(workgroupid=nil, requestid=nil)
          @WorkGroupId = workgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 定时启停策略信息
      class CrontabResumeSuspendStrategy < TencentCloud::Common::AbstractModel
        # @param ResumeTime: 定时拉起时间：如：周一&周三8点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResumeTime: String
        # @param SuspendTime: 定时挂起时间：如：周一&周三20点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuspendTime: String
        # @param SuspendStrategy: 挂起配置：0（默认）：等待任务结束后挂起、1：强制挂起
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuspendStrategy: Integer

        attr_accessor :ResumeTime, :SuspendTime, :SuspendStrategy

        def initialize(resumetime=nil, suspendtime=nil, suspendstrategy=nil)
          @ResumeTime = resumetime
          @SuspendTime = suspendtime
          @SuspendStrategy = suspendstrategy
        end

        def deserialize(params)
          @ResumeTime = params['ResumeTime']
          @SuspendTime = params['SuspendTime']
          @SuspendStrategy = params['SuspendStrategy']
        end
      end

      # 迁移列对象
      class DMSColumn < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Position: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param Params: 附加参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param BizParams: 业务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParams: Array
        # @param IsPartition: 是否分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPartition: Boolean

        attr_accessor :Name, :Description, :Type, :Position, :Params, :BizParams, :IsPartition

        def initialize(name=nil, description=nil, type=nil, position=nil, params=nil, bizparams=nil, ispartition=nil)
          @Name = name
          @Description = description
          @Type = type
          @Position = position
          @Params = params
          @BizParams = bizparams
          @IsPartition = ispartition
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          @Position = params['Position']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['BizParams'].nil?
            @BizParams = []
            params['BizParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @BizParams << kvpair_tmp
            end
          end
          @IsPartition = params['IsPartition']
        end
      end

      # 列排序对象
      class DMSColumnOrder < TencentCloud::Common::AbstractModel
        # @param Col: 列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Col: String
        # @param Order: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: Integer

        attr_accessor :Col, :Order

        def initialize(col=nil, order=nil)
          @Col = col
          @Order = order
        end

        def deserialize(params)
          @Col = params['Col']
          @Order = params['Order']
        end
      end

      # 迁移元数据分区对象
      class DMSPartition < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param SchemaName: 数据目录名称
        # @type SchemaName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param DataVersion: 数据版本
        # @type DataVersion: Integer
        # @param Name: 分区名称
        # @type Name: String
        # @param Values: 值列表
        # @type Values: Array
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Params: 附件属性
        # @type Params: Array
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`

        attr_accessor :DatabaseName, :SchemaName, :TableName, :DataVersion, :Name, :Values, :StorageSize, :RecordCount, :CreateTime, :ModifiedTime, :LastAccessTime, :Params, :Sds

        def initialize(databasename=nil, schemaname=nil, tablename=nil, dataversion=nil, name=nil, values=nil, storagesize=nil, recordcount=nil, createtime=nil, modifiedtime=nil, lastaccesstime=nil, params=nil, sds=nil)
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @DataVersion = dataversion
          @Name = name
          @Values = values
          @StorageSize = storagesize
          @RecordCount = recordcount
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @LastAccessTime = lastaccesstime
          @Params = params
          @Sds = sds
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @DataVersion = params['DataVersion']
          @Name = params['Name']
          @Values = params['Values']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
        end
      end

      # 元数据存储描述属性
      class DMSSds < TencentCloud::Common::AbstractModel
        # @param Location: 存储地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param InputFormat: 输入格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputFormat: String
        # @param OutputFormat: 输出格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param NumBuckets: bucket数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumBuckets: Integer
        # @param Compressed: 是是否压缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compressed: Boolean
        # @param StoredAsSubDirectories: 是否有子目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoredAsSubDirectories: Boolean
        # @param SerdeLib: 序列化lib
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeLib: String
        # @param SerdeName: 序列化名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeName: String
        # @param BucketCols: 桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketCols: Array
        # @param SerdeParams: 序列化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeParams: Array
        # @param Params: 附加参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param SortCols: 列排序(Expired)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortCols: :class:`Tencentcloud::Dlc.v20210125.models.DMSColumnOrder`
        # @param Cols: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cols: Array
        # @param SortColumns: 列排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortColumns: Array

        attr_accessor :Location, :InputFormat, :OutputFormat, :NumBuckets, :Compressed, :StoredAsSubDirectories, :SerdeLib, :SerdeName, :BucketCols, :SerdeParams, :Params, :SortCols, :Cols, :SortColumns

        def initialize(location=nil, inputformat=nil, outputformat=nil, numbuckets=nil, compressed=nil, storedassubdirectories=nil, serdelib=nil, serdename=nil, bucketcols=nil, serdeparams=nil, params=nil, sortcols=nil, cols=nil, sortcolumns=nil)
          @Location = location
          @InputFormat = inputformat
          @OutputFormat = outputformat
          @NumBuckets = numbuckets
          @Compressed = compressed
          @StoredAsSubDirectories = storedassubdirectories
          @SerdeLib = serdelib
          @SerdeName = serdename
          @BucketCols = bucketcols
          @SerdeParams = serdeparams
          @Params = params
          @SortCols = sortcols
          @Cols = cols
          @SortColumns = sortcolumns
        end

        def deserialize(params)
          @Location = params['Location']
          @InputFormat = params['InputFormat']
          @OutputFormat = params['OutputFormat']
          @NumBuckets = params['NumBuckets']
          @Compressed = params['Compressed']
          @StoredAsSubDirectories = params['StoredAsSubDirectories']
          @SerdeLib = params['SerdeLib']
          @SerdeName = params['SerdeName']
          @BucketCols = params['BucketCols']
          unless params['SerdeParams'].nil?
            @SerdeParams = []
            params['SerdeParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @SerdeParams << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['SortCols'].nil?
            @SortCols = DMSColumnOrder.new
            @SortCols.deserialize(params['SortCols'])
          end
          unless params['Cols'].nil?
            @Cols = []
            params['Cols'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Cols << dmscolumn_tmp
            end
          end
          unless params['SortColumns'].nil?
            @SortColumns = []
            params['SortColumns'].each do |i|
              dmscolumnorder_tmp = DMSColumnOrder.new
              dmscolumnorder_tmp.deserialize(i)
              @SortColumns << dmscolumnorder_tmp
            end
          end
        end
      end

      # DMSTable基本信息
      class DMSTable < TencentCloud::Common::AbstractModel
        # @param ViewOriginalText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewExpandedText: String
        # @param Retention: hive维护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param Sds: 存储对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param PartitionKeys: 分区列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionKeys: Array
        # @param Partitions: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Type: 表类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SchemaName: Schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param StorageSize: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeTime: Integer
        # @param LastAccessTime: 最后访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAccessTime: String
        # @param DataUpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StructUpdateTime: String
        # @param Columns: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Name: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :ViewOriginalText, :ViewExpandedText, :Retention, :Sds, :PartitionKeys, :Partitions, :Type, :DbName, :SchemaName, :StorageSize, :RecordCount, :LifeTime, :LastAccessTime, :DataUpdateTime, :StructUpdateTime, :Columns, :Name

        def initialize(vieworiginaltext=nil, viewexpandedtext=nil, retention=nil, sds=nil, partitionkeys=nil, partitions=nil, type=nil, dbname=nil, schemaname=nil, storagesize=nil, recordcount=nil, lifetime=nil, lastaccesstime=nil, dataupdatetime=nil, structupdatetime=nil, columns=nil, name=nil)
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Retention = retention
          @Sds = sds
          @PartitionKeys = partitionkeys
          @Partitions = partitions
          @Type = type
          @DbName = dbname
          @SchemaName = schemaname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @LastAccessTime = lastaccesstime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @Columns = columns
          @Name = name
        end

        def deserialize(params)
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          @Retention = params['Retention']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @LastAccessTime = params['LastAccessTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # DMSTable信息
      class DMSTableInfo < TencentCloud::Common::AbstractModel
        # @param Table: DMS表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: :class:`Tencentcloud::Dlc.v20210125.models.DMSTable`
        # @param Asset: 基础对象信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`

        attr_accessor :Table, :Asset

        def initialize(table=nil, asset=nil)
          @Table = table
          @Asset = asset
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = DMSTable.new
            @Table.deserialize(params['Table'])
          end
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
        end
      end

      # DataEngine基本信息
      class DataEngineBasicInfo < TencentCloud::Common::AbstractModel
        # @param DataEngineName: DataEngine名称
        # @type DataEngineName: String
        # @param State: 数据引擎状态  -2已删除 -1失败 0初始化中 1挂起 2运行中 3准备删除 4删除中
        # @type State: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Message: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param DataEngineId: 引擎id
        # @type DataEngineId: String
        # @param DataEngineType: 引擎类型，有效值：PrestoSQL/SparkSQL/SparkBatch
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineType: String
        # @param AppId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param UserUin: 账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUin: String

        attr_accessor :DataEngineName, :State, :CreateTime, :UpdateTime, :Message, :DataEngineId, :DataEngineType, :AppId, :UserUin

        def initialize(dataenginename=nil, state=nil, createtime=nil, updatetime=nil, message=nil, dataengineid=nil, dataenginetype=nil, appid=nil, useruin=nil)
          @DataEngineName = dataenginename
          @State = state
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Message = message
          @DataEngineId = dataengineid
          @DataEngineType = dataenginetype
          @AppId = appid
          @UserUin = useruin
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Message = params['Message']
          @DataEngineId = params['DataEngineId']
          @DataEngineType = params['DataEngineType']
          @AppId = params['AppId']
          @UserUin = params['UserUin']
        end
      end

      # 引擎配置信息
      class DataEngineConfigInstanceInfo < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineId: String
        # @param DataEngineConfigPairs: 用户自定义配置项集合
        # @type DataEngineConfigPairs: Array
        # @param SessionResourceTemplate: 作业集群资源参数配置模板
        # @type SessionResourceTemplate: :class:`Tencentcloud::Dlc.v20210125.models.SessionResourceTemplate`

        attr_accessor :DataEngineId, :DataEngineConfigPairs, :SessionResourceTemplate

        def initialize(dataengineid=nil, dataengineconfigpairs=nil, sessionresourcetemplate=nil)
          @DataEngineId = dataengineid
          @DataEngineConfigPairs = dataengineconfigpairs
          @SessionResourceTemplate = sessionresourcetemplate
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          unless params['DataEngineConfigPairs'].nil?
            @DataEngineConfigPairs = []
            params['DataEngineConfigPairs'].each do |i|
              dataengineconfigpair_tmp = DataEngineConfigPair.new
              dataengineconfigpair_tmp.deserialize(i)
              @DataEngineConfigPairs << dataengineconfigpair_tmp
            end
          end
          unless params['SessionResourceTemplate'].nil?
            @SessionResourceTemplate = SessionResourceTemplate.new
            @SessionResourceTemplate.deserialize(params['SessionResourceTemplate'])
          end
        end
      end

      # 引擎配置
      class DataEngineConfigPair < TencentCloud::Common::AbstractModel
        # @param ConfigItem: 配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigItem: String
        # @param ConfigValue: 配置值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigValue: String

        attr_accessor :ConfigItem, :ConfigValue

        def initialize(configitem=nil, configvalue=nil)
          @ConfigItem = configitem
          @ConfigValue = configvalue
        end

        def deserialize(params)
          @ConfigItem = params['ConfigItem']
          @ConfigValue = params['ConfigValue']
        end
      end

      # 集群大版本镜像信息。
      class DataEngineImageVersion < TencentCloud::Common::AbstractModel
        # @param ImageVersionId: 镜像大版本ID
        # @type ImageVersionId: String
        # @param ImageVersion: 镜像大版本名称
        # @type ImageVersion: String
        # @param Description: 镜像大版本描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param IsPublic: 是否为公共版本：1：公共；2：私有
        # @type IsPublic: Integer
        # @param EngineType: 集群类型：SparkSQL/PrestoSQL/SparkBatch
        # @type EngineType: String
        # @param IsSharedEngine: 版本状态：1：初始化；2：上线；3：下线
        # @type IsSharedEngine: Integer
        # @param State: 版本状态：1：初始化；2：上线；3：下线
        # @type State: Integer
        # @param InsertTime: 插入时间
        # @type InsertTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :ImageVersionId, :ImageVersion, :Description, :IsPublic, :EngineType, :IsSharedEngine, :State, :InsertTime, :UpdateTime

        def initialize(imageversionid=nil, imageversion=nil, description=nil, ispublic=nil, enginetype=nil, issharedengine=nil, state=nil, inserttime=nil, updatetime=nil)
          @ImageVersionId = imageversionid
          @ImageVersion = imageversion
          @Description = description
          @IsPublic = ispublic
          @EngineType = enginetype
          @IsSharedEngine = issharedengine
          @State = state
          @InsertTime = inserttime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ImageVersionId = params['ImageVersionId']
          @ImageVersion = params['ImageVersion']
          @Description = params['Description']
          @IsPublic = params['IsPublic']
          @EngineType = params['EngineType']
          @IsSharedEngine = params['IsSharedEngine']
          @State = params['State']
          @InsertTime = params['InsertTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # DataEngine详细信息
      class DataEngineInfo < TencentCloud::Common::AbstractModel
        # @param DataEngineName: DataEngine名称
        # @type DataEngineName: String
        # @param EngineType: 引擎类型 spark/presto
        # @type EngineType: String
        # @param ClusterType: 集群资源类型 spark_private/presto_private/presto_cu/spark_cu
        # @type ClusterType: String
        # @param QuotaId: 引用ID
        # @type QuotaId: String
        # @param State: 数据引擎状态  -2已删除 -1失败 0初始化中 1挂起 2运行中 3准备删除 4删除中
        # @type State: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Size: 集群规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Mode: 计费模式 0共享模式 1按量计费 2包年包月
        # @type Mode: Integer
        # @param MinClusters: 最小集群数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinClusters: Integer
        # @param MaxClusters: 最大集群数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxClusters: Integer
        # @param AutoResume: 是否自动恢复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoResume: Boolean
        # @param SpendAfter: 自动恢复时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpendAfter: Integer
        # @param CidrBlock: 集群网段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CidrBlock: String
        # @param DefaultDataEngine: 是否为默认引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDataEngine: Boolean
        # @param Message: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param DataEngineId: 引擎id
        # @type DataEngineId: String
        # @param SubAccountUin: 操作者
        # @type SubAccountUin: String
        # @param ExpireTime: 到期时间
        # @type ExpireTime: String
        # @param IsolatedTime: 隔离时间
        # @type IsolatedTime: String
        # @param ReversalTime: 冲正时间
        # @type ReversalTime: String
        # @param UserAlias: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param TagList: 标签对集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param Permissions: 引擎拥有的权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: Array
        # @param AutoSuspend: 是否自定挂起集群：false（默认）：不自动挂起、true：自动挂起
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSuspend: Boolean
        # @param CrontabResumeSuspend: 定时启停集群策略：0（默认）：关闭定时策略、1：开启定时策略（注：定时启停策略与自动挂起策略互斥）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabResumeSuspend: Integer
        # @param CrontabResumeSuspendStrategy: 定时启停策略，复杂类型：包含启停时间、挂起集群策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabResumeSuspendStrategy: :class:`Tencentcloud::Dlc.v20210125.models.CrontabResumeSuspendStrategy`
        # @param EngineExecType: 引擎执行任务类型，有效值：SQL/BATCH
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineExecType: String
        # @param RenewFlag: 自动续费标志，0，初始状态，默认不自动续费，若用户有预付费不停服特权，自动续费。1：自动续费。2：明确不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param AutoSuspendTime: 集群自动挂起时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSuspendTime: Integer
        # @param NetworkConnectionSet: 网络连接配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConnectionSet: Array
        # @param UiURL: ui的跳转地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UiURL: String
        # @param ResourceType: 引擎的资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ImageVersionId: 集群镜像版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageVersionId: String
        # @param ChildImageVersionId: 集群镜像小版本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildImageVersionId: String
        # @param ImageVersionName: 集群镜像版本名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageVersionName: String
        # @param StartStandbyCluster: 是否开启备集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartStandbyCluster: Boolean
        # @param ElasticSwitch: spark jar 包年包月集群是否开启弹性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticSwitch: Boolean
        # @param ElasticLimit: spark jar 包年包月集群弹性上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElasticLimit: Integer
        # @param DefaultHouse: 是否为默认引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultHouse: Boolean
        # @param MaxConcurrency: 单个集群任务最大并发数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConcurrency: Integer
        # @param TolerableQueueTime: 任务排队上限时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TolerableQueueTime: Integer
        # @param UserAppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAppId: Integer
        # @param UserUin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserUin: String
        # @param SessionResourceTemplate: SessionResourceTemplate
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionResourceTemplate: :class:`Tencentcloud::Dlc.v20210125.models.SessionResourceTemplate`
        # @param AutoAuthorization: 自动授权开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoAuthorization: Boolean
        # @param EngineGeneration: 引擎版本，支持Native/SuperSQL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineGeneration: String
        # @param EngineTypeDetail: 引擎详细类型，支持：SparkSQL/SparkBatch/PrestoSQL/Kyuubi
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineTypeDetail: String
        # @param EngineNetworkId: 引擎网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineNetworkId: String

        attr_accessor :DataEngineName, :EngineType, :ClusterType, :QuotaId, :State, :CreateTime, :UpdateTime, :Size, :Mode, :MinClusters, :MaxClusters, :AutoResume, :SpendAfter, :CidrBlock, :DefaultDataEngine, :Message, :DataEngineId, :SubAccountUin, :ExpireTime, :IsolatedTime, :ReversalTime, :UserAlias, :TagList, :Permissions, :AutoSuspend, :CrontabResumeSuspend, :CrontabResumeSuspendStrategy, :EngineExecType, :RenewFlag, :AutoSuspendTime, :NetworkConnectionSet, :UiURL, :ResourceType, :ImageVersionId, :ChildImageVersionId, :ImageVersionName, :StartStandbyCluster, :ElasticSwitch, :ElasticLimit, :DefaultHouse, :MaxConcurrency, :TolerableQueueTime, :UserAppId, :UserUin, :SessionResourceTemplate, :AutoAuthorization, :EngineGeneration, :EngineTypeDetail, :EngineNetworkId

        def initialize(dataenginename=nil, enginetype=nil, clustertype=nil, quotaid=nil, state=nil, createtime=nil, updatetime=nil, size=nil, mode=nil, minclusters=nil, maxclusters=nil, autoresume=nil, spendafter=nil, cidrblock=nil, defaultdataengine=nil, message=nil, dataengineid=nil, subaccountuin=nil, expiretime=nil, isolatedtime=nil, reversaltime=nil, useralias=nil, taglist=nil, permissions=nil, autosuspend=nil, crontabresumesuspend=nil, crontabresumesuspendstrategy=nil, engineexectype=nil, renewflag=nil, autosuspendtime=nil, networkconnectionset=nil, uiurl=nil, resourcetype=nil, imageversionid=nil, childimageversionid=nil, imageversionname=nil, startstandbycluster=nil, elasticswitch=nil, elasticlimit=nil, defaulthouse=nil, maxconcurrency=nil, tolerablequeuetime=nil, userappid=nil, useruin=nil, sessionresourcetemplate=nil, autoauthorization=nil, enginegeneration=nil, enginetypedetail=nil, enginenetworkid=nil)
          @DataEngineName = dataenginename
          @EngineType = enginetype
          @ClusterType = clustertype
          @QuotaId = quotaid
          @State = state
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Size = size
          @Mode = mode
          @MinClusters = minclusters
          @MaxClusters = maxclusters
          @AutoResume = autoresume
          @SpendAfter = spendafter
          @CidrBlock = cidrblock
          @DefaultDataEngine = defaultdataengine
          @Message = message
          @DataEngineId = dataengineid
          @SubAccountUin = subaccountuin
          @ExpireTime = expiretime
          @IsolatedTime = isolatedtime
          @ReversalTime = reversaltime
          @UserAlias = useralias
          @TagList = taglist
          @Permissions = permissions
          @AutoSuspend = autosuspend
          @CrontabResumeSuspend = crontabresumesuspend
          @CrontabResumeSuspendStrategy = crontabresumesuspendstrategy
          @EngineExecType = engineexectype
          @RenewFlag = renewflag
          @AutoSuspendTime = autosuspendtime
          @NetworkConnectionSet = networkconnectionset
          @UiURL = uiurl
          @ResourceType = resourcetype
          @ImageVersionId = imageversionid
          @ChildImageVersionId = childimageversionid
          @ImageVersionName = imageversionname
          @StartStandbyCluster = startstandbycluster
          @ElasticSwitch = elasticswitch
          @ElasticLimit = elasticlimit
          @DefaultHouse = defaulthouse
          @MaxConcurrency = maxconcurrency
          @TolerableQueueTime = tolerablequeuetime
          @UserAppId = userappid
          @UserUin = useruin
          @SessionResourceTemplate = sessionresourcetemplate
          @AutoAuthorization = autoauthorization
          @EngineGeneration = enginegeneration
          @EngineTypeDetail = enginetypedetail
          @EngineNetworkId = enginenetworkid
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @EngineType = params['EngineType']
          @ClusterType = params['ClusterType']
          @QuotaId = params['QuotaId']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Size = params['Size']
          @Mode = params['Mode']
          @MinClusters = params['MinClusters']
          @MaxClusters = params['MaxClusters']
          @AutoResume = params['AutoResume']
          @SpendAfter = params['SpendAfter']
          @CidrBlock = params['CidrBlock']
          @DefaultDataEngine = params['DefaultDataEngine']
          @Message = params['Message']
          @DataEngineId = params['DataEngineId']
          @SubAccountUin = params['SubAccountUin']
          @ExpireTime = params['ExpireTime']
          @IsolatedTime = params['IsolatedTime']
          @ReversalTime = params['ReversalTime']
          @UserAlias = params['UserAlias']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
          @Permissions = params['Permissions']
          @AutoSuspend = params['AutoSuspend']
          @CrontabResumeSuspend = params['CrontabResumeSuspend']
          unless params['CrontabResumeSuspendStrategy'].nil?
            @CrontabResumeSuspendStrategy = CrontabResumeSuspendStrategy.new
            @CrontabResumeSuspendStrategy.deserialize(params['CrontabResumeSuspendStrategy'])
          end
          @EngineExecType = params['EngineExecType']
          @RenewFlag = params['RenewFlag']
          @AutoSuspendTime = params['AutoSuspendTime']
          unless params['NetworkConnectionSet'].nil?
            @NetworkConnectionSet = []
            params['NetworkConnectionSet'].each do |i|
              networkconnection_tmp = NetworkConnection.new
              networkconnection_tmp.deserialize(i)
              @NetworkConnectionSet << networkconnection_tmp
            end
          end
          @UiURL = params['UiURL']
          @ResourceType = params['ResourceType']
          @ImageVersionId = params['ImageVersionId']
          @ChildImageVersionId = params['ChildImageVersionId']
          @ImageVersionName = params['ImageVersionName']
          @StartStandbyCluster = params['StartStandbyCluster']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticLimit = params['ElasticLimit']
          @DefaultHouse = params['DefaultHouse']
          @MaxConcurrency = params['MaxConcurrency']
          @TolerableQueueTime = params['TolerableQueueTime']
          @UserAppId = params['UserAppId']
          @UserUin = params['UserUin']
          unless params['SessionResourceTemplate'].nil?
            @SessionResourceTemplate = SessionResourceTemplate.new
            @SessionResourceTemplate.deserialize(params['SessionResourceTemplate'])
          end
          @AutoAuthorization = params['AutoAuthorization']
          @EngineGeneration = params['EngineGeneration']
          @EngineTypeDetail = params['EngineTypeDetail']
          @EngineNetworkId = params['EngineNetworkId']
        end
      end

      # 数据表数据格式。
      class DataFormat < TencentCloud::Common::AbstractModel
        # @param TextFile: 文本格式，TextFile。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextFile: :class:`Tencentcloud::Dlc.v20210125.models.TextFile`
        # @param CSV: 文本格式，CSV。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSV: :class:`Tencentcloud::Dlc.v20210125.models.CSV`
        # @param Json: 文本格式，Json。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Json: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param Parquet: Parquet格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parquet: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param ORC: ORC格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ORC: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param AVRO: AVRO格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AVRO: :class:`Tencentcloud::Dlc.v20210125.models.Other`

        attr_accessor :TextFile, :CSV, :Json, :Parquet, :ORC, :AVRO

        def initialize(textfile=nil, csv=nil, json=nil, parquet=nil, orc=nil, avro=nil)
          @TextFile = textfile
          @CSV = csv
          @Json = json
          @Parquet = parquet
          @ORC = orc
          @AVRO = avro
        end

        def deserialize(params)
          unless params['TextFile'].nil?
            @TextFile = TextFile.new
            @TextFile.deserialize(params['TextFile'])
          end
          unless params['CSV'].nil?
            @CSV = CSV.new
            @CSV.deserialize(params['CSV'])
          end
          unless params['Json'].nil?
            @Json = Other.new
            @Json.deserialize(params['Json'])
          end
          unless params['Parquet'].nil?
            @Parquet = Other.new
            @Parquet.deserialize(params['Parquet'])
          end
          unless params['ORC'].nil?
            @ORC = Other.new
            @ORC.deserialize(params['ORC'])
          end
          unless params['AVRO'].nil?
            @AVRO = Other.new
            @AVRO.deserialize(params['AVRO'])
          end
        end
      end

      # 数据治理规则
      class DataGovernPolicy < TencentCloud::Common::AbstractModel
        # @param RuleType: 治理规则类型，Customize: 自定义；Intelligence: 智能治理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param GovernEngine: 治理引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GovernEngine: String

        attr_accessor :RuleType, :GovernEngine

        def initialize(ruletype=nil, governengine=nil)
          @RuleType = ruletype
          @GovernEngine = governengine
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @GovernEngine = params['GovernEngine']
        end
      end

      # 数据源详细信息
      class DataSourceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据源实例的唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 数据源的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param JdbcUrl: 数据源的JDBC访问链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JdbcUrl: String
        # @param User: 用于访问数据源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 数据源访问密码，需要base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Location: 数据源的VPC和子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`
        # @param DbName: 默认数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String

        attr_accessor :InstanceId, :InstanceName, :JdbcUrl, :User, :Password, :Location, :DbName

        def initialize(instanceid=nil, instancename=nil, jdbcurl=nil, user=nil, password=nil, location=nil, dbname=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @JdbcUrl = jdbcurl
          @User = user
          @Password = password
          @Location = location
          @DbName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @JdbcUrl = params['JdbcUrl']
          @User = params['User']
          @Password = params['Password']
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
          @DbName = params['DbName']
        end
      end

      # 数据库对象
      class DatabaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称，长度0~128，支持数字、字母下划线，不允许数字大头，统一转换为小写。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~500。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 数据库属性列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Location: 数据库cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String

        attr_accessor :DatabaseName, :Comment, :Properties, :Location

        def initialize(databasename=nil, comment=nil, properties=nil, location=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
          @Location = location
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @Location = params['Location']
        end
      end

      # 数据库对象
      class DatabaseResponseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~256。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 允许针对数据库的属性元数据信息进行指定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param CreateTime: 数据库创建时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifiedTime: 数据库更新时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param Location: cos存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param UserAlias: 建库用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param UserSubUin: 建库用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubUin: String
        # @param GovernPolicy: 数据治理配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GovernPolicy: :class:`Tencentcloud::Dlc.v20210125.models.DataGovernPolicy`
        # @param DatabaseId: 数据库ID（无效字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseId: String

        attr_accessor :DatabaseName, :Comment, :Properties, :CreateTime, :ModifiedTime, :Location, :UserAlias, :UserSubUin, :GovernPolicy, :DatabaseId

        def initialize(databasename=nil, comment=nil, properties=nil, createtime=nil, modifiedtime=nil, location=nil, useralias=nil, usersubuin=nil, governpolicy=nil, databaseid=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @Location = location
          @UserAlias = useralias
          @UserSubUin = usersubuin
          @GovernPolicy = governpolicy
          @DatabaseId = databaseid
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @Location = params['Location']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
          unless params['GovernPolicy'].nil?
            @GovernPolicy = DataGovernPolicy.new
            @GovernPolicy.deserialize(params['GovernPolicy'])
          end
          @DatabaseId = params['DatabaseId']
        end
      end

      # 数据源属性
      class DatasourceConnectionConfig < TencentCloud::Common::AbstractModel
        # @param Mysql: Mysql数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mysql: :class:`Tencentcloud::Dlc.v20210125.models.MysqlInfo`
        # @param Hive: Hive数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hive: :class:`Tencentcloud::Dlc.v20210125.models.HiveInfo`
        # @param Kafka: Kafka数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kafka: :class:`Tencentcloud::Dlc.v20210125.models.KafkaInfo`
        # @param OtherDatasourceConnection: 其他数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherDatasourceConnection: :class:`Tencentcloud::Dlc.v20210125.models.OtherDatasourceConnection`
        # @param PostgreSql: PostgreSQL数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostgreSql: :class:`Tencentcloud::Dlc.v20210125.models.DataSourceInfo`
        # @param SqlServer: SQLServer数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlServer: :class:`Tencentcloud::Dlc.v20210125.models.DataSourceInfo`
        # @param ClickHouse: ClickHouse数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClickHouse: :class:`Tencentcloud::Dlc.v20210125.models.DataSourceInfo`
        # @param Elasticsearch: Elasticsearch数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Elasticsearch: :class:`Tencentcloud::Dlc.v20210125.models.ElasticsearchInfo`
        # @param TDSQLPostgreSql: TDSQL-PostgreSQL数据源连接的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TDSQLPostgreSql: :class:`Tencentcloud::Dlc.v20210125.models.DataSourceInfo`

        attr_accessor :Mysql, :Hive, :Kafka, :OtherDatasourceConnection, :PostgreSql, :SqlServer, :ClickHouse, :Elasticsearch, :TDSQLPostgreSql

        def initialize(mysql=nil, hive=nil, kafka=nil, otherdatasourceconnection=nil, postgresql=nil, sqlserver=nil, clickhouse=nil, elasticsearch=nil, tdsqlpostgresql=nil)
          @Mysql = mysql
          @Hive = hive
          @Kafka = kafka
          @OtherDatasourceConnection = otherdatasourceconnection
          @PostgreSql = postgresql
          @SqlServer = sqlserver
          @ClickHouse = clickhouse
          @Elasticsearch = elasticsearch
          @TDSQLPostgreSql = tdsqlpostgresql
        end

        def deserialize(params)
          unless params['Mysql'].nil?
            @Mysql = MysqlInfo.new
            @Mysql.deserialize(params['Mysql'])
          end
          unless params['Hive'].nil?
            @Hive = HiveInfo.new
            @Hive.deserialize(params['Hive'])
          end
          unless params['Kafka'].nil?
            @Kafka = KafkaInfo.new
            @Kafka.deserialize(params['Kafka'])
          end
          unless params['OtherDatasourceConnection'].nil?
            @OtherDatasourceConnection = OtherDatasourceConnection.new
            @OtherDatasourceConnection.deserialize(params['OtherDatasourceConnection'])
          end
          unless params['PostgreSql'].nil?
            @PostgreSql = DataSourceInfo.new
            @PostgreSql.deserialize(params['PostgreSql'])
          end
          unless params['SqlServer'].nil?
            @SqlServer = DataSourceInfo.new
            @SqlServer.deserialize(params['SqlServer'])
          end
          unless params['ClickHouse'].nil?
            @ClickHouse = DataSourceInfo.new
            @ClickHouse.deserialize(params['ClickHouse'])
          end
          unless params['Elasticsearch'].nil?
            @Elasticsearch = ElasticsearchInfo.new
            @Elasticsearch.deserialize(params['Elasticsearch'])
          end
          unless params['TDSQLPostgreSql'].nil?
            @TDSQLPostgreSql = DataSourceInfo.new
            @TDSQLPostgreSql.deserialize(params['TDSQLPostgreSql'])
          end
        end
      end

      # 数据源信息
      class DatasourceConnectionInfo < TencentCloud::Common::AbstractModel
        # @param Id: 数据源数字Id
        # @type Id: Integer
        # @param DatasourceConnectionId: 数据源字符串Id
        # @type DatasourceConnectionId: String
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param DatasourceConnectionDesc: 数据源描述
        # @type DatasourceConnectionDesc: String
        # @param DatasourceConnectionType: 数据源类型，支持DataLakeCatalog、IcebergCatalog、Result、Mysql、HiveCos、HiveHdfs
        # @type DatasourceConnectionType: String
        # @param DatasourceConnectionConfig: 数据源属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionConfig: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionConfig`
        # @param State: 数据源状态：0（初始化）、1（成功）、-1（已删除）、-2（失败）、-3（删除中）
        # @type State: Integer
        # @param Region: 地域
        # @type Region: String
        # @param AppId: 用户AppId
        # @type AppId: String
        # @param CreateTime: 数据源创建时间
        # @type CreateTime: String
        # @param UpdateTime: 数据源最近一次更新时间
        # @type UpdateTime: String
        # @param Message: 数据源同步失败原因
        # @type Message: String
        # @param DataEngines: 数据源绑定的计算引擎信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngines: Array
        # @param UserAlias: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param NetworkConnectionSet: 网络配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConnectionSet: Array
        # @param ConnectivityState: 连通性状态：0（未测试，默认）、1（正常）、2（失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectivityState: Integer
        # @param ConnectivityTips: 连通性测试提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectivityTips: String

        attr_accessor :Id, :DatasourceConnectionId, :DatasourceConnectionName, :DatasourceConnectionDesc, :DatasourceConnectionType, :DatasourceConnectionConfig, :State, :Region, :AppId, :CreateTime, :UpdateTime, :Message, :DataEngines, :UserAlias, :NetworkConnectionSet, :ConnectivityState, :ConnectivityTips

        def initialize(id=nil, datasourceconnectionid=nil, datasourceconnectionname=nil, datasourceconnectiondesc=nil, datasourceconnectiontype=nil, datasourceconnectionconfig=nil, state=nil, region=nil, appid=nil, createtime=nil, updatetime=nil, message=nil, dataengines=nil, useralias=nil, networkconnectionset=nil, connectivitystate=nil, connectivitytips=nil)
          @Id = id
          @DatasourceConnectionId = datasourceconnectionid
          @DatasourceConnectionName = datasourceconnectionname
          @DatasourceConnectionDesc = datasourceconnectiondesc
          @DatasourceConnectionType = datasourceconnectiontype
          @DatasourceConnectionConfig = datasourceconnectionconfig
          @State = state
          @Region = region
          @AppId = appid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Message = message
          @DataEngines = dataengines
          @UserAlias = useralias
          @NetworkConnectionSet = networkconnectionset
          @ConnectivityState = connectivitystate
          @ConnectivityTips = connectivitytips
        end

        def deserialize(params)
          @Id = params['Id']
          @DatasourceConnectionId = params['DatasourceConnectionId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DatasourceConnectionDesc = params['DatasourceConnectionDesc']
          @DatasourceConnectionType = params['DatasourceConnectionType']
          unless params['DatasourceConnectionConfig'].nil?
            @DatasourceConnectionConfig = DatasourceConnectionConfig.new
            @DatasourceConnectionConfig.deserialize(params['DatasourceConnectionConfig'])
          end
          @State = params['State']
          @Region = params['Region']
          @AppId = params['AppId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Message = params['Message']
          unless params['DataEngines'].nil?
            @DataEngines = []
            params['DataEngines'].each do |i|
              dataengineinfo_tmp = DataEngineInfo.new
              dataengineinfo_tmp.deserialize(i)
              @DataEngines << dataengineinfo_tmp
            end
          end
          @UserAlias = params['UserAlias']
          unless params['NetworkConnectionSet'].nil?
            @NetworkConnectionSet = []
            params['NetworkConnectionSet'].each do |i|
              networkconnection_tmp = NetworkConnection.new
              networkconnection_tmp.deserialize(i)
              @NetworkConnectionSet << networkconnection_tmp
            end
          end
          @ConnectivityState = params['ConnectivityState']
          @ConnectivityTips = params['ConnectivityTips']
        end
      end

      # 数据源连接的网络信息
      class DatasourceConnectionLocation < TencentCloud::Common::AbstractModel
        # @param VpcId: 数据连接所在Vpc实例Id，如“vpc-azd4dt1c”。
        # @type VpcId: String
        # @param VpcCidrBlock: Vpc的IPv4 CIDR
        # @type VpcCidrBlock: String
        # @param SubnetId: 数据连接所在子网的实例Id，如“subnet-bthucmmy”
        # @type SubnetId: String
        # @param SubnetCidrBlock: Subnet的IPv4 CIDR
        # @type SubnetCidrBlock: String

        attr_accessor :VpcId, :VpcCidrBlock, :SubnetId, :SubnetCidrBlock

        def initialize(vpcid=nil, vpccidrblock=nil, subnetid=nil, subnetcidrblock=nil)
          @VpcId = vpcid
          @VpcCidrBlock = vpccidrblock
          @SubnetId = subnetid
          @SubnetCidrBlock = subnetcidrblock
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetId = params['SubnetId']
          @SubnetCidrBlock = params['SubnetCidrBlock']
        end
      end

      # DeleteDataEngine请求参数结构体
      class DeleteDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineNames: 删除虚拟集群的名称数组
        # @type DataEngineNames: Array

        attr_accessor :DataEngineNames

        def initialize(dataenginenames=nil)
          @DataEngineNames = dataenginenames
        end

        def deserialize(params)
          @DataEngineNames = params['DataEngineNames']
        end
      end

      # DeleteDataEngine返回参数结构体
      class DeleteDataEngineResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNotebookSession请求参数结构体
      class DeleteNotebookSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DeleteNotebookSession返回参数结构体
      class DeleteNotebookSessionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScript请求参数结构体
      class DeleteScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptIds: 脚本id，其可以通过DescribeScripts接口提取
        # @type ScriptIds: Array

        attr_accessor :ScriptIds

        def initialize(scriptids=nil)
          @ScriptIds = scriptids
        end

        def deserialize(params)
          @ScriptIds = params['ScriptIds']
        end
      end

      # DeleteScript返回参数结构体
      class DeleteScriptResponse < TencentCloud::Common::AbstractModel
        # @param ScriptsAffected: 删除的脚本数量
        # @type ScriptsAffected: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScriptsAffected, :RequestId

        def initialize(scriptsaffected=nil, requestid=nil)
          @ScriptsAffected = scriptsaffected
          @RequestId = requestid
        end

        def deserialize(params)
          @ScriptsAffected = params['ScriptsAffected']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSparkApp请求参数结构体
      class DeleteSparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark作业名
        # @type AppName: String

        attr_accessor :AppName

        def initialize(appname=nil)
          @AppName = appname
        end

        def deserialize(params)
          @AppName = params['AppName']
        end
      end

      # DeleteSparkApp返回参数结构体
      class DeleteSparkAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param UserIds: 需要删除的用户的Id
        # @type UserIds: Array

        attr_accessor :UserIds

        def initialize(userids=nil)
          @UserIds = userids
        end

        def deserialize(params)
          @UserIds = params['UserIds']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUsersFromWorkGroup请求参数结构体
      class DeleteUsersFromWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 要删除的用户信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.UserIdSetOfWorkGroupId`

        attr_accessor :AddInfo

        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = UserIdSetOfWorkGroupId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # DeleteUsersFromWorkGroup返回参数结构体
      class DeleteUsersFromWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWorkGroup请求参数结构体
      class DeleteWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupIds: 要删除的工作组Id集合
        # @type WorkGroupIds: Array

        attr_accessor :WorkGroupIds

        def initialize(workgroupids=nil)
          @WorkGroupIds = workgroupids
        end

        def deserialize(params)
          @WorkGroupIds = params['WorkGroupIds']
        end
      end

      # DeleteWorkGroup返回参数结构体
      class DeleteWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAdvancedStoreLocation请求参数结构体
      class DescribeAdvancedStoreLocationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAdvancedStoreLocation返回参数结构体
      class DescribeAdvancedStoreLocationResponse < TencentCloud::Common::AbstractModel
        # @param Enable: 是否启用高级设置：0-否，1-是
        # @type Enable: Integer
        # @param StoreLocation: 查询结果保存cos路径
        # @type StoreLocation: String
        # @param HasLakeFs: 是否有托管存储权限
        # @type HasLakeFs: Boolean
        # @param LakeFsStatus: 托管存储状态，HasLakeFs等于true时，该值才有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LakeFsStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Enable, :StoreLocation, :HasLakeFs, :LakeFsStatus, :RequestId

        def initialize(enable=nil, storelocation=nil, haslakefs=nil, lakefsstatus=nil, requestid=nil)
          @Enable = enable
          @StoreLocation = storelocation
          @HasLakeFs = haslakefs
          @LakeFsStatus = lakefsstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @StoreLocation = params['StoreLocation']
          @HasLakeFs = params['HasLakeFs']
          @LakeFsStatus = params['LakeFsStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSDatabase请求参数结构体
      class DescribeDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Pattern: 匹配规则
        # @type Pattern: String

        attr_accessor :Name, :SchemaName, :Pattern

        def initialize(name=nil, schemaname=nil, pattern=nil)
          @Name = name
          @SchemaName = schemaname
          @Pattern = pattern
        end

        def deserialize(params)
          @Name = params['Name']
          @SchemaName = params['SchemaName']
          @Pattern = params['Pattern']
        end
      end

      # DescribeDMSDatabase返回参数结构体
      class DescribeDMSDatabaseResponse < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param SchemaName: schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param Location: 存储地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Asset: 数据对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :SchemaName, :Location, :Asset, :RequestId

        def initialize(name=nil, schemaname=nil, location=nil, asset=nil, requestid=nil)
          @Name = name
          @SchemaName = schemaname
          @Location = location
          @Asset = asset
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSPartitions请求参数结构体
      class DescribeDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名
        # @type DatabaseName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Name: 名称
        # @type Name: String
        # @param Values: 单个分区名称，精准匹配
        # @type Values: Array
        # @param PartitionNames: 多个分区名称，精准匹配
        # @type PartitionNames: Array
        # @param PartValues: 多个分区字段的匹配，模糊匹配
        # @type PartValues: Array
        # @param Filter: 过滤SQL
        # @type Filter: String
        # @param MaxParts: 最大分区数量
        # @type MaxParts: Integer
        # @param Offset: 翻页跳过数量
        # @type Offset: Integer
        # @param Limit: 页面数量
        # @type Limit: Integer
        # @param Expression: 表达式
        # @type Expression: String

        attr_accessor :DatabaseName, :TableName, :SchemaName, :Name, :Values, :PartitionNames, :PartValues, :Filter, :MaxParts, :Offset, :Limit, :Expression

        def initialize(databasename=nil, tablename=nil, schemaname=nil, name=nil, values=nil, partitionnames=nil, partvalues=nil, filter=nil, maxparts=nil, offset=nil, limit=nil, expression=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @SchemaName = schemaname
          @Name = name
          @Values = values
          @PartitionNames = partitionnames
          @PartValues = partvalues
          @Filter = filter
          @MaxParts = maxparts
          @Offset = offset
          @Limit = limit
          @Expression = expression
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Values = params['Values']
          @PartitionNames = params['PartitionNames']
          @PartValues = params['PartValues']
          @Filter = params['Filter']
          @MaxParts = params['MaxParts']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Expression = params['Expression']
        end
      end

      # DescribeDMSPartitions返回参数结构体
      class DescribeDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区信息
        # @type Partitions: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :Total, :RequestId

        def initialize(partitions=nil, total=nil, requestid=nil)
          @Partitions = partitions
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSTable请求参数结构体
      class DescribeDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: 数据库schema名称
        # @type SchemaName: String
        # @param Name: 表名称
        # @type Name: String
        # @param Catalog: 数据目录
        # @type Catalog: String
        # @param Keyword: 查询关键词
        # @type Keyword: String
        # @param Pattern: 查询模式
        # @type Pattern: String
        # @param Type: 表类型
        # @type Type: String

        attr_accessor :DbName, :SchemaName, :Name, :Catalog, :Keyword, :Pattern, :Type

        def initialize(dbname=nil, schemaname=nil, name=nil, catalog=nil, keyword=nil, pattern=nil, type=nil)
          @DbName = dbname
          @SchemaName = schemaname
          @Name = name
          @Catalog = catalog
          @Keyword = keyword
          @Pattern = pattern
          @Type = type
        end

        def deserialize(params)
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Catalog = params['Catalog']
          @Keyword = params['Keyword']
          @Pattern = params['Pattern']
          @Type = params['Type']
        end
      end

      # DescribeDMSTable返回参数结构体
      class DescribeDMSTableResponse < TencentCloud::Common::AbstractModel
        # @param Asset: 基础对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param ViewOriginalText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewExpandedText: String
        # @param Retention: hive维护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param Sds: 存储对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param PartitionKeys: 分区列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionKeys: Array
        # @param Partitions: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Type: 表类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SchemaName: Schame名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param StorageSize: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeTime: Integer
        # @param LastAccessTime: 最后访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAccessTime: String
        # @param DataUpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StructUpdateTime: String
        # @param Columns: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Name: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Asset, :ViewOriginalText, :ViewExpandedText, :Retention, :Sds, :PartitionKeys, :Partitions, :Type, :DbName, :SchemaName, :StorageSize, :RecordCount, :LifeTime, :LastAccessTime, :DataUpdateTime, :StructUpdateTime, :Columns, :Name, :RequestId

        def initialize(asset=nil, vieworiginaltext=nil, viewexpandedtext=nil, retention=nil, sds=nil, partitionkeys=nil, partitions=nil, type=nil, dbname=nil, schemaname=nil, storagesize=nil, recordcount=nil, lifetime=nil, lastaccesstime=nil, dataupdatetime=nil, structupdatetime=nil, columns=nil, name=nil, requestid=nil)
          @Asset = asset
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Retention = retention
          @Sds = sds
          @PartitionKeys = partitionkeys
          @Partitions = partitions
          @Type = type
          @DbName = dbname
          @SchemaName = schemaname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @LastAccessTime = lastaccesstime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @Columns = columns
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          @Retention = params['Retention']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @LastAccessTime = params['LastAccessTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSTables请求参数结构体
      class DescribeDMSTablesRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: 数据库schema名称
        # @type SchemaName: String
        # @param Name: 表名称
        # @type Name: String
        # @param Catalog: 数据目录
        # @type Catalog: String
        # @param Keyword: 查询关键词
        # @type Keyword: String
        # @param Pattern: 查询模式
        # @type Pattern: String
        # @param Type: 表类型
        # @type Type: String
        # @param StartTime: 筛选参数：更新开始时间
        # @type StartTime: String
        # @param EndTime: 筛选参数：更新结束时间
        # @type EndTime: String
        # @param Limit: 分页参数
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Sort: 排序字段：create_time：创建时间
        # @type Sort: String
        # @param Asc: 排序字段：true：升序（默认），false：降序
        # @type Asc: Boolean

        attr_accessor :DbName, :SchemaName, :Name, :Catalog, :Keyword, :Pattern, :Type, :StartTime, :EndTime, :Limit, :Offset, :Sort, :Asc

        def initialize(dbname=nil, schemaname=nil, name=nil, catalog=nil, keyword=nil, pattern=nil, type=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, sort=nil, asc=nil)
          @DbName = dbname
          @SchemaName = schemaname
          @Name = name
          @Catalog = catalog
          @Keyword = keyword
          @Pattern = pattern
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Sort = sort
          @Asc = asc
        end

        def deserialize(params)
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Catalog = params['Catalog']
          @Keyword = params['Keyword']
          @Pattern = params['Pattern']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Sort = params['Sort']
          @Asc = params['Asc']
        end
      end

      # DescribeDMSTables返回参数结构体
      class DescribeDMSTablesResponse < TencentCloud::Common::AbstractModel
        # @param TableList: DMS元数据列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableList: Array
        # @param TotalCount: 统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableList, :TotalCount, :RequestId

        def initialize(tablelist=nil, totalcount=nil, requestid=nil)
          @TableList = tablelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableList'].nil?
            @TableList = []
            params['TableList'].each do |i|
              dmstableinfo_tmp = DMSTableInfo.new
              dmstableinfo_tmp.deserialize(i)
              @TableList << dmstableinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEngineEvents请求参数结构体
      class DescribeDataEngineEventsRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: 虚拟集群名称
        # @type DataEngineName: String
        # @param Limit: 返回数量，默认为10，最大为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer

        attr_accessor :DataEngineName, :Limit, :Offset

        def initialize(dataenginename=nil, limit=nil, offset=nil)
          @DataEngineName = dataenginename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDataEngineEvents返回参数结构体
      class DescribeDataEngineEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 事件详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param Page: 分页号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer
        # @param Size: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Page, :Size, :TotalPages, :TotalCount, :RequestId

        def initialize(events=nil, page=nil, size=nil, totalpages=nil, totalcount=nil, requestid=nil)
          @Events = events
          @Page = page
          @Size = size
          @TotalPages = totalpages
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              houseeventsinfo_tmp = HouseEventsInfo.new
              houseeventsinfo_tmp.deserialize(i)
              @Events << houseeventsinfo_tmp
            end
          end
          @Page = params['Page']
          @Size = params['Size']
          @TotalPages = params['TotalPages']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEngineImageVersions请求参数结构体
      class DescribeDataEngineImageVersionsRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎类型：SQL、SparkBatch
        # @type EngineType: String

        attr_accessor :EngineType

        def initialize(enginetype=nil)
          @EngineType = enginetype
        end

        def deserialize(params)
          @EngineType = params['EngineType']
        end
      end

      # DescribeDataEngineImageVersions返回参数结构体
      class DescribeDataEngineImageVersionsResponse < TencentCloud::Common::AbstractModel
        # @param ImageParentVersions: 集群大版本镜像信息列表
        # @type ImageParentVersions: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageParentVersions, :Total, :RequestId

        def initialize(imageparentversions=nil, total=nil, requestid=nil)
          @ImageParentVersions = imageparentversions
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageParentVersions'].nil?
            @ImageParentVersions = []
            params['ImageParentVersions'].each do |i|
              dataengineimageversion_tmp = DataEngineImageVersion.new
              dataengineimageversion_tmp.deserialize(i)
              @ImageParentVersions << dataengineimageversion_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEnginePythonSparkImages请求参数结构体
      class DescribeDataEnginePythonSparkImagesRequest < TencentCloud::Common::AbstractModel
        # @param ChildImageVersionId: 集群镜像小版本ID
        # @type ChildImageVersionId: String

        attr_accessor :ChildImageVersionId

        def initialize(childimageversionid=nil)
          @ChildImageVersionId = childimageversionid
        end

        def deserialize(params)
          @ChildImageVersionId = params['ChildImageVersionId']
        end
      end

      # DescribeDataEnginePythonSparkImages返回参数结构体
      class DescribeDataEnginePythonSparkImagesResponse < TencentCloud::Common::AbstractModel
        # @param PythonSparkImages: PYSPARK镜像信息列表
        # @type PythonSparkImages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PythonSparkImages, :RequestId

        def initialize(pythonsparkimages=nil, requestid=nil)
          @PythonSparkImages = pythonsparkimages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PythonSparkImages'].nil?
            @PythonSparkImages = []
            params['PythonSparkImages'].each do |i|
              pythonsparkimage_tmp = PythonSparkImage.new
              pythonsparkimage_tmp.deserialize(i)
              @PythonSparkImages << pythonsparkimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEngine请求参数结构体
      class DescribeDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: House名称
        # @type DataEngineName: String

        attr_accessor :DataEngineName

        def initialize(dataenginename=nil)
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
        end
      end

      # DescribeDataEngine返回参数结构体
      class DescribeDataEngineResponse < TencentCloud::Common::AbstractModel
        # @param DataEngine: 数据引擎详细信息
        # @type DataEngine: :class:`Tencentcloud::Dlc.v20210125.models.DataEngineInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngine, :RequestId

        def initialize(dataengine=nil, requestid=nil)
          @DataEngine = dataengine
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataEngine'].nil?
            @DataEngine = DataEngineInfo.new
            @DataEngine.deserialize(params['DataEngine'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEngines请求参数结构体
      class DescribeDataEnginesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤类型，支持如下的过滤类型，传参Name应为以下其中一个, data-engine-name - String（数据引擎名称）：engine-type - String（引擎类型：spark：spark 引擎，presto：presto引擎），state - String (数据引擎状态 -2已删除 -1失败 0初始化中 1挂起 2运行中 3准备删除 4删除中) ， mode - String（计费模式 0共享模式 1按量计费 2包年包月） ， create-time - String（创建时间，10位时间戳） message - String （描述信息），cluster-type - String (集群资源类型 spark_private/presto_private/presto_cu/spark_cu/kyuubi_cu)，engine-id - String（数据引擎ID），key-word - String（数据引擎名称或集群资源类型或描述信息模糊搜索），engine-exec-type - String（引擎执行任务类型，SQL/BATCH），engine-network-id - String（引擎网络Id）
        # @type Filters: Array
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc。
        # @type Sorting: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param DatasourceConnectionName: 已废弃，请使用DatasourceConnectionNameSet
        # @type DatasourceConnectionName: String
        # @param ExcludePublicEngine: 是否不返回共享引擎，true不返回共享引擎，false可以返回共享引擎
        # @type ExcludePublicEngine: Boolean
        # @param AccessTypes: 参数应该为引擎权限类型，有效类型："USE", "MODIFY", "OPERATE", "MONITOR", "DELETE"
        # @type AccessTypes: Array
        # @param EngineExecType: 引擎执行任务类型，有效值：SQL/BATCH，默认为SQL
        # @type EngineExecType: String
        # @param EngineType: 引擎类型，有效值：spark/presto/kyuubi，为空时默认获取非kyuubi引擎（网关引擎）
        # @type EngineType: String
        # @param DatasourceConnectionNameSet: 网络配置列表，若传入该参数，则返回网络配置关联的计算引擎
        # @type DatasourceConnectionNameSet: Array
        # @param EngineGeneration: 引擎版本，有效值：Native/SuperSQL，为空时默认获取SuperSQL引擎
        # @type EngineGeneration: String
        # @param EngineTypeDetail: 引擎类型，支持：SparkSQL、SparkBatch、PrestoSQL、Kyuubi
        # @type EngineTypeDetail: String

        attr_accessor :Offset, :Filters, :SortBy, :Sorting, :Limit, :DatasourceConnectionName, :ExcludePublicEngine, :AccessTypes, :EngineExecType, :EngineType, :DatasourceConnectionNameSet, :EngineGeneration, :EngineTypeDetail

        def initialize(offset=nil, filters=nil, sortby=nil, sorting=nil, limit=nil, datasourceconnectionname=nil, excludepublicengine=nil, accesstypes=nil, engineexectype=nil, enginetype=nil, datasourceconnectionnameset=nil, enginegeneration=nil, enginetypedetail=nil)
          @Offset = offset
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @Limit = limit
          @DatasourceConnectionName = datasourceconnectionname
          @ExcludePublicEngine = excludepublicengine
          @AccessTypes = accesstypes
          @EngineExecType = engineexectype
          @EngineType = enginetype
          @DatasourceConnectionNameSet = datasourceconnectionnameset
          @EngineGeneration = enginegeneration
          @EngineTypeDetail = enginetypedetail
        end

        def deserialize(params)
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @Limit = params['Limit']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @ExcludePublicEngine = params['ExcludePublicEngine']
          @AccessTypes = params['AccessTypes']
          @EngineExecType = params['EngineExecType']
          @EngineType = params['EngineType']
          @DatasourceConnectionNameSet = params['DatasourceConnectionNameSet']
          @EngineGeneration = params['EngineGeneration']
          @EngineTypeDetail = params['EngineTypeDetail']
        end
      end

      # DescribeDataEngines返回参数结构体
      class DescribeDataEnginesResponse < TencentCloud::Common::AbstractModel
        # @param DataEngines: 数据引擎列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngines: Array
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngines, :TotalCount, :RequestId

        def initialize(dataengines=nil, totalcount=nil, requestid=nil)
          @DataEngines = dataengines
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataEngines'].nil?
            @DataEngines = []
            params['DataEngines'].each do |i|
              dataengineinfo_tmp = DataEngineInfo.new
              dataengineinfo_tmp.deserialize(i)
              @DataEngines << dataengineinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param KeyWord: 模糊匹配，库名关键字。
        # @type KeyWord: String
        # @param DatasourceConnectionName: 数据源唯名称，该名称可以通过DescribeDatasourceConnection接口查询到。默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param Sort: 排序字段，CreateTime：创建时间，Name：数据库名称
        # @type Sort: String
        # @param Asc: 排序类型：false：降序（默认）、true：升序
        # @type Asc: Boolean

        attr_accessor :Limit, :Offset, :KeyWord, :DatasourceConnectionName, :Sort, :Asc

        def initialize(limit=nil, offset=nil, keyword=nil, datasourceconnectionname=nil, sort=nil, asc=nil)
          @Limit = limit
          @Offset = offset
          @KeyWord = keyword
          @DatasourceConnectionName = datasourceconnectionname
          @Sort = sort
          @Asc = asc
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @KeyWord = params['KeyWord']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @Sort = params['Sort']
          @Asc = params['Asc']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param DatabaseList: 数据库对象列表。
        # @type DatabaseList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatabaseList, :TotalCount, :RequestId

        def initialize(databaselist=nil, totalcount=nil, requestid=nil)
          @DatabaseList = databaselist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DatabaseList'].nil?
            @DatabaseList = []
            params['DatabaseList'].each do |i|
              databaseresponseinfo_tmp = DatabaseResponseInfo.new
              databaseresponseinfo_tmp.deserialize(i)
              @DatabaseList << databaseresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasourceConnection请求参数结构体
      class DescribeDatasourceConnectionRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceConnectionIds: 连接ID列表，指定要查询的连接ID
        # @type DatasourceConnectionIds: Array
        # @param Filters: 过滤条件，当前支持的过滤键为：DatasourceConnectionName（数据源连接名）。
        # DatasourceConnectionType   （数据源连接连接类型）
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time（默认，创建时间）、update-time（更新时间）
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为desc
        # @type Sorting: String
        # @param StartTime: 筛选字段：起始时间
        # @type StartTime: String
        # @param EndTime: 筛选字段：截止时间
        # @type EndTime: String
        # @param DatasourceConnectionNames: 连接名称列表，指定要查询的连接名称
        # @type DatasourceConnectionNames: Array
        # @param DatasourceConnectionTypes: 连接类型，支持Mysql/HiveCos/Kafka/DataLakeCatalog
        # @type DatasourceConnectionTypes: Array
        # @param HiveVersion: 返回指定hive版本的数据源，该参数指定后，会过滤掉该参数指定版本以外的hive数据源，非hive数据源正常返回
        # @type HiveVersion: Array

        attr_accessor :DatasourceConnectionIds, :Filters, :Offset, :Limit, :SortBy, :Sorting, :StartTime, :EndTime, :DatasourceConnectionNames, :DatasourceConnectionTypes, :HiveVersion

        def initialize(datasourceconnectionids=nil, filters=nil, offset=nil, limit=nil, sortby=nil, sorting=nil, starttime=nil, endtime=nil, datasourceconnectionnames=nil, datasourceconnectiontypes=nil, hiveversion=nil)
          @DatasourceConnectionIds = datasourceconnectionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
          @StartTime = starttime
          @EndTime = endtime
          @DatasourceConnectionNames = datasourceconnectionnames
          @DatasourceConnectionTypes = datasourceconnectiontypes
          @HiveVersion = hiveversion
        end

        def deserialize(params)
          @DatasourceConnectionIds = params['DatasourceConnectionIds']
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
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatasourceConnectionNames = params['DatasourceConnectionNames']
          @DatasourceConnectionTypes = params['DatasourceConnectionTypes']
          @HiveVersion = params['HiveVersion']
        end
      end

      # DescribeDatasourceConnection返回参数结构体
      class DescribeDatasourceConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据连接总数
        # @type TotalCount: Integer
        # @param ConnectionSet: 数据连接对象集合
        # @type ConnectionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConnectionSet, :RequestId

        def initialize(totalcount=nil, connectionset=nil, requestid=nil)
          @TotalCount = totalcount
          @ConnectionSet = connectionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConnectionSet'].nil?
            @ConnectionSet = []
            params['ConnectionSet'].each do |i|
              datasourceconnectioninfo_tmp = DatasourceConnectionInfo.new
              datasourceconnectioninfo_tmp.deserialize(i)
              @ConnectionSet << datasourceconnectioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEngineUsageInfo请求参数结构体
      class DescribeEngineUsageInfoRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 数据引擎ID
        # @type DataEngineId: String

        attr_accessor :DataEngineId

        def initialize(dataengineid=nil)
          @DataEngineId = dataengineid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
        end
      end

      # DescribeEngineUsageInfo返回参数结构体
      class DescribeEngineUsageInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 集群总规格
        # @type Total: Integer
        # @param Used: 已占用集群规格
        # @type Used: Integer
        # @param Available: 剩余集群规格
        # @type Available: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Used, :Available, :RequestId

        def initialize(total=nil, used=nil, available=nil, requestid=nil)
          @Total = total
          @Used = used
          @Available = available
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
          @Available = params['Available']
          @RequestId = params['RequestId']
        end
      end

      # DescribeForbiddenTablePro请求参数结构体
      class DescribeForbiddenTableProRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeForbiddenTablePro返回参数结构体
      class DescribeForbiddenTableProResponse < TencentCloud::Common::AbstractModel
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

      # DescribeLakeFsDirSummary请求参数结构体
      class DescribeLakeFsDirSummaryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLakeFsDirSummary返回参数结构体
      class DescribeLakeFsDirSummaryResponse < TencentCloud::Common::AbstractModel
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

      # DescribeLakeFsInfo请求参数结构体
      class DescribeLakeFsInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLakeFsInfo返回参数结构体
      class DescribeLakeFsInfoResponse < TencentCloud::Common::AbstractModel
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

      # DescribeLakeFsTaskResult请求参数结构体
      class DescribeLakeFsTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param FsPath: 需要访问的任务结果路径
        # @type FsPath: String

        attr_accessor :FsPath

        def initialize(fspath=nil)
          @FsPath = fspath
        end

        def deserialize(params)
          @FsPath = params['FsPath']
        end
      end

      # DescribeLakeFsTaskResult返回参数结构体
      class DescribeLakeFsTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param AccessToken: 路径的访问实例
        # @type AccessToken: :class:`Tencentcloud::Dlc.v20210125.models.LakeFileSystemToken`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessToken, :RequestId

        def initialize(accesstoken=nil, requestid=nil)
          @AccessToken = accesstoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessToken'].nil?
            @AccessToken = LakeFileSystemToken.new
            @AccessToken.deserialize(params['AccessToken'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSessionLog请求参数结构体
      class DescribeNotebookSessionLogRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param Limit: 分页参数，默认200
        # @type Limit: Integer
        # @param Offset: 分页参数，默认0
        # @type Offset: Integer

        attr_accessor :SessionId, :Limit, :Offset

        def initialize(sessionid=nil, limit=nil, offset=nil)
          @SessionId = sessionid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNotebookSessionLog返回参数结构体
      class DescribeNotebookSessionLogResponse < TencentCloud::Common::AbstractModel
        # @param Logs: 日志信息，默认获取最新的200条
        # @type Logs: Array
        # @param Limit: 分页参数，默认200
        # @type Limit: Integer
        # @param Offset: 分页参数，默认0
        # @type Offset: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Logs, :Limit, :Offset, :RequestId

        def initialize(logs=nil, limit=nil, offset=nil, requestid=nil)
          @Logs = logs
          @Limit = limit
          @Offset = offset
          @RequestId = requestid
        end

        def deserialize(params)
          @Logs = params['Logs']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSession请求参数结构体
      class DescribeNotebookSessionRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DescribeNotebookSession返回参数结构体
      class DescribeNotebookSessionResponse < TencentCloud::Common::AbstractModel
        # @param Session: Session详情信息
        # @type Session: :class:`Tencentcloud::Dlc.v20210125.models.NotebookSessionInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Session, :RequestId

        def initialize(session=nil, requestid=nil)
          @Session = session
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Session'].nil?
            @Session = NotebookSessionInfo.new
            @Session.deserialize(params['Session'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSessionStatement请求参数结构体
      class DescribeNotebookSessionStatementRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param StatementId: Session Statement唯一标识
        # @type StatementId: String
        # @param TaskId: 任务唯一标识
        # @type TaskId: String

        attr_accessor :SessionId, :StatementId, :TaskId

        def initialize(sessionid=nil, statementid=nil, taskid=nil)
          @SessionId = sessionid
          @StatementId = statementid
          @TaskId = taskid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @StatementId = params['StatementId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeNotebookSessionStatement返回参数结构体
      class DescribeNotebookSessionStatementResponse < TencentCloud::Common::AbstractModel
        # @param NotebookSessionStatement: Session Statement详情
        # @type NotebookSessionStatement: :class:`Tencentcloud::Dlc.v20210125.models.NotebookSessionStatementInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookSessionStatement, :RequestId

        def initialize(notebooksessionstatement=nil, requestid=nil)
          @NotebookSessionStatement = notebooksessionstatement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookSessionStatement'].nil?
            @NotebookSessionStatement = NotebookSessionStatementInfo.new
            @NotebookSessionStatement.deserialize(params['NotebookSessionStatement'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSessionStatementSqlResult请求参数结构体
      class DescribeNotebookSessionStatementSqlResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param MaxResults: 返回结果的最大行数，范围0~1000，默认为1000.
        # @type MaxResults: Integer
        # @param NextToken: 上一次请求响应返回的分页信息。第一次可以不带，从头开始返回数据，每次返回MaxResults字段设置的数据量。
        # @type NextToken: String

        attr_accessor :TaskId, :MaxResults, :NextToken

        def initialize(taskid=nil, maxresults=nil, nexttoken=nil)
          @TaskId = taskid
          @MaxResults = maxresults
          @NextToken = nexttoken
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeNotebookSessionStatementSqlResult返回参数结构体
      class DescribeNotebookSessionStatementSqlResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param ResultSet: 结果数据
        # @type ResultSet: String
        # @param ResultSchema: schema
        # @type ResultSchema: Array
        # @param NextToken: 分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param OutputPath: 存储结果地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputPath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResultSet, :ResultSchema, :NextToken, :OutputPath, :RequestId

        def initialize(taskid=nil, resultset=nil, resultschema=nil, nexttoken=nil, outputpath=nil, requestid=nil)
          @TaskId = taskid
          @ResultSet = resultset
          @ResultSchema = resultschema
          @NextToken = nexttoken
          @OutputPath = outputpath
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResultSet = params['ResultSet']
          unless params['ResultSchema'].nil?
            @ResultSchema = []
            params['ResultSchema'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @ResultSchema << column_tmp
            end
          end
          @NextToken = params['NextToken']
          @OutputPath = params['OutputPath']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSessionStatements请求参数结构体
      class DescribeNotebookSessionStatementsRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param BatchId: 批任务id
        # @type BatchId: String

        attr_accessor :SessionId, :BatchId

        def initialize(sessionid=nil, batchid=nil)
          @SessionId = sessionid
          @BatchId = batchid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @BatchId = params['BatchId']
        end
      end

      # DescribeNotebookSessionStatements返回参数结构体
      class DescribeNotebookSessionStatementsResponse < TencentCloud::Common::AbstractModel
        # @param NotebookSessionStatements: Session Statement详情
        # @type NotebookSessionStatements: :class:`Tencentcloud::Dlc.v20210125.models.NotebookSessionStatementBatchInformation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotebookSessionStatements, :RequestId

        def initialize(notebooksessionstatements=nil, requestid=nil)
          @NotebookSessionStatements = notebooksessionstatements
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NotebookSessionStatements'].nil?
            @NotebookSessionStatements = NotebookSessionStatementBatchInformation.new
            @NotebookSessionStatements.deserialize(params['NotebookSessionStatements'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNotebookSessions请求参数结构体
      class DescribeNotebookSessionsRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: DLC Spark作业引擎名称
        # @type DataEngineName: String
        # @param State: Session状态，包含：not_started（未启动）、starting（已启动）、idle（等待输入）、busy(正在运行statement)、shutting_down（停止）、error（异常）、dead（已退出）、killed（被杀死）、success（正常停止）
        # @type State: Array
        # @param SortFields: 排序字段（默认按创建时间）
        # @type SortFields: Array
        # @param Asc: 排序字段：true：升序、false：降序（默认）
        # @type Asc: Boolean
        # @param Limit: 分页参数，默认10
        # @type Limit: Integer
        # @param Offset: 分页参数，默认0
        # @type Offset: Integer

        attr_accessor :DataEngineName, :State, :SortFields, :Asc, :Limit, :Offset

        def initialize(dataenginename=nil, state=nil, sortfields=nil, asc=nil, limit=nil, offset=nil)
          @DataEngineName = dataenginename
          @State = state
          @SortFields = sortfields
          @Asc = asc
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @State = params['State']
          @SortFields = params['SortFields']
          @Asc = params['Asc']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNotebookSessions返回参数结构体
      class DescribeNotebookSessionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalElements: session总数量
        # @type TotalElements: Integer
        # @param TotalPages: 总页数
        # @type TotalPages: Integer
        # @param Page: 当前页码
        # @type Page: Integer
        # @param Size: 当前页数量
        # @type Size: Integer
        # @param Sessions: session列表信息
        # @type Sessions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalElements, :TotalPages, :Page, :Size, :Sessions, :RequestId

        def initialize(totalelements=nil, totalpages=nil, page=nil, size=nil, sessions=nil, requestid=nil)
          @TotalElements = totalelements
          @TotalPages = totalpages
          @Page = page
          @Size = size
          @Sessions = sessions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalElements = params['TotalElements']
          @TotalPages = params['TotalPages']
          @Page = params['Page']
          @Size = params['Size']
          unless params['Sessions'].nil?
            @Sessions = []
            params['Sessions'].each do |i|
              notebooksessions_tmp = NotebookSessions.new
              notebooksessions_tmp.deserialize(i)
              @Sessions << notebooksessions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResultDownload请求参数结构体
      class DescribeResultDownloadRequest < TencentCloud::Common::AbstractModel
        # @param DownloadId: 查询任务Id
        # @type DownloadId: String

        attr_accessor :DownloadId

        def initialize(downloadid=nil)
          @DownloadId = downloadid
        end

        def deserialize(params)
          @DownloadId = params['DownloadId']
        end
      end

      # DescribeResultDownload返回参数结构体
      class DescribeResultDownloadResponse < TencentCloud::Common::AbstractModel
        # @param Path: 下载文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Status: 任务状态 init | queue | format | compress | success|  timeout | error
        # @type Status: String
        # @param Reason: 任务异常原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param SecretId: 临时AK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretId: String
        # @param SecretKey: 临时SK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param Token: 临时Token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Path, :Status, :Reason, :SecretId, :SecretKey, :Token, :RequestId

        def initialize(path=nil, status=nil, reason=nil, secretid=nil, secretkey=nil, token=nil, requestid=nil)
          @Path = path
          @Status = status
          @Reason = reason
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @Path = params['Path']
          @Status = params['Status']
          @Reason = params['Reason']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScripts请求参数结构体
      class DescribeScriptsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param SortBy: 按字段排序，支持如下字段类型，update-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序，默认asc
        # @type Sorting: String
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # script-id - String - （过滤条件）script-id取值形如：157de0d1-26b4-4df2-a2d0-b64afc406c25。
        # script-name-keyword - String - （过滤条件）数据表名称,形如：script-test。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :SortBy, :Sorting, :Filters

        def initialize(limit=nil, offset=nil, sortby=nil, sorting=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
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

      # DescribeScripts返回参数结构体
      class DescribeScriptsResponse < TencentCloud::Common::AbstractModel
        # @param Scripts: Script列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scripts: Array
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Scripts, :TotalCount, :RequestId

        def initialize(scripts=nil, totalcount=nil, requestid=nil)
          @Scripts = scripts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Scripts'].nil?
            @Scripts = []
            params['Scripts'].each do |i|
              script_tmp = Script.new
              script_tmp.deserialize(i)
              @Scripts << script_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppJob请求参数结构体
      class DescribeSparkAppJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业Id，与JobName同时存在时，JobName无效，JobId与JobName至少存在一个
        # @type JobId: String
        # @param JobName: spark作业名
        # @type JobName: String

        attr_accessor :JobId, :JobName

        def initialize(jobid=nil, jobname=nil)
          @JobId = jobid
          @JobName = jobname
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
        end
      end

      # DescribeSparkAppJob返回参数结构体
      class DescribeSparkAppJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: spark作业详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Dlc.v20210125.models.SparkJobInfo`
        # @param IsExists: 查询的spark作业是否存在
        # @type IsExists: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :IsExists, :RequestId

        def initialize(job=nil, isexists=nil, requestid=nil)
          @Job = job
          @IsExists = isexists
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = SparkJobInfo.new
            @Job.deserialize(params['Job'])
          end
          @IsExists = params['IsExists']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppJobs请求参数结构体
      class DescribeSparkAppJobsRequest < TencentCloud::Common::AbstractModel
        # @param SortBy: 返回结果按照该字段排序
        # @type SortBy: String
        # @param Sorting: 正序或者倒序，例如：desc
        # @type Sorting: String
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一:spark-job-name（作业名称），spark-job-id（作业id），spark-app-type（作业类型，1：批任务，2：流任务，4：SQL作业），user-name（创建人），key-word（作业名称或ID关键词模糊搜索）
        # @type Filters: Array
        # @param StartTime: 更新时间起始点，支持格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 更新时间截止点，支持格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param Offset: 查询列表偏移量, 默认值0
        # @type Offset: Integer
        # @param Limit: 查询列表限制数量, 默认值100
        # @type Limit: Integer

        attr_accessor :SortBy, :Sorting, :Filters, :StartTime, :EndTime, :Offset, :Limit

        def initialize(sortby=nil, sorting=nil, filters=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSparkAppJobs返回参数结构体
      class DescribeSparkAppJobsResponse < TencentCloud::Common::AbstractModel
        # @param SparkAppJobs: spark作业列表详情
        # @type SparkAppJobs: Array
        # @param TotalCount: spark作业总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SparkAppJobs, :TotalCount, :RequestId

        def initialize(sparkappjobs=nil, totalcount=nil, requestid=nil)
          @SparkAppJobs = sparkappjobs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SparkAppJobs'].nil?
            @SparkAppJobs = []
            params['SparkAppJobs'].each do |i|
              sparkjobinfo_tmp = SparkJobInfo.new
              sparkjobinfo_tmp.deserialize(i)
              @SparkAppJobs << sparkjobinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppTasks请求参数结构体
      class DescribeSparkAppTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业Id
        # @type JobId: String
        # @param Offset: 分页查询偏移量
        # @type Offset: Integer
        # @param Limit: 分页查询Limit
        # @type Limit: Integer
        # @param TaskId: 执行实例id
        # @type TaskId: String
        # @param StartTime: 更新时间起始点，支持格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 更新时间截止点，支持格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param Filters: 按照该参数过滤,支持task-state
        # @type Filters: Array

        attr_accessor :JobId, :Offset, :Limit, :TaskId, :StartTime, :EndTime, :Filters

        def initialize(jobid=nil, offset=nil, limit=nil, taskid=nil, starttime=nil, endtime=nil, filters=nil)
          @JobId = jobid
          @Offset = offset
          @Limit = limit
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # DescribeSparkAppTasks返回参数结构体
      class DescribeSparkAppTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务结果（该字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TaskResponseInfo`
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param SparkAppTasks: 任务结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppTasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :SparkAppTasks, :RequestId

        def initialize(tasks=nil, totalcount=nil, sparkapptasks=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @SparkAppTasks = sparkapptasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = TaskResponseInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @TotalCount = params['TotalCount']
          unless params['SparkAppTasks'].nil?
            @SparkAppTasks = []
            params['SparkAppTasks'].each do |i|
              taskresponseinfo_tmp = TaskResponseInfo.new
              taskresponseinfo_tmp.deserialize(i)
              @SparkAppTasks << taskresponseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkSessionBatchSQL请求参数结构体
      class DescribeSparkSessionBatchSQLRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: SparkSQL唯一标识
        # @type BatchId: String
        # @param CustomKey: 用户自定义主键, 若不为空，则按照该值查询
        # @type CustomKey: String

        attr_accessor :BatchId, :CustomKey

        def initialize(batchid=nil, customkey=nil)
          @BatchId = batchid
          @CustomKey = customkey
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CustomKey = params['CustomKey']
        end
      end

      # DescribeSparkSessionBatchSQL返回参数结构体
      class DescribeSparkSessionBatchSQLResponse < TencentCloud::Common::AbstractModel
        # @param State: 状态：0：运行中、1：成功、2：失败、3：取消、4：超时；
        # @type State: Integer
        # @param Tasks: SQL子任务列表，仅展示运行完成的子任务，若某个任务运行失败，后续其它子任务不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param Event: 非sql运行的异常事件信息，包含资源创建失败、调度异常，JOB超时等，正常运行下该Event值为空
        # @type Event: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :Tasks, :Event, :RequestId

        def initialize(state=nil, tasks=nil, event=nil, requestid=nil)
          @State = state
          @Tasks = tasks
          @Event = event
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              batchsqltask_tmp = BatchSqlTask.new
              batchsqltask_tmp.deserialize(i)
              @Tasks << batchsqltask_tmp
            end
          end
          @Event = params['Event']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkSessionBatchSqlLog请求参数结构体
      class DescribeSparkSessionBatchSqlLogRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: SparkSQL唯一标识
        # @type BatchId: String
        # @param CustomKey: 用户自定义主键，若不为空，则按照该值进行查询
        # @type CustomKey: String

        attr_accessor :BatchId, :CustomKey

        def initialize(batchid=nil, customkey=nil)
          @BatchId = batchid
          @CustomKey = customkey
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CustomKey = params['CustomKey']
        end
      end

      # DescribeSparkSessionBatchSqlLog返回参数结构体
      class DescribeSparkSessionBatchSqlLogResponse < TencentCloud::Common::AbstractModel
        # @param State: 状态：0：运行中、1：成功、2：失败、3：取消、4：超时；
        # @type State: Integer
        # @param LogSet: 日志信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :LogSet, :RequestId

        def initialize(state=nil, logset=nil, requestid=nil)
          @State = state
          @LogSet = logset
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          unless params['LogSet'].nil?
            @LogSet = []
            params['LogSet'].each do |i|
              sparksessionbatchlog_tmp = SparkSessionBatchLog.new
              sparksessionbatchlog_tmp.deserialize(i)
              @LogSet << sparksessionbatchlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStoreLocation请求参数结构体
      class DescribeStoreLocationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeStoreLocation返回参数结构体
      class DescribeStoreLocationResponse < TencentCloud::Common::AbstractModel
        # @param StoreLocation: 返回用户设置的结果存储位置路径，如果未设置则返回空字符串：""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoreLocation: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StoreLocation, :RequestId

        def initialize(storelocation=nil, requestid=nil)
          @StoreLocation = storelocation
          @RequestId = requestid
        end

        def deserialize(params)
          @StoreLocation = params['StoreLocation']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTable请求参数结构体
      class DescribeTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 查询对象表名称
        # @type TableName: String
        # @param DatabaseName: 查询表所在的数据库名称。
        # @type DatabaseName: String
        # @param DatasourceConnectionName: 查询表所在的数据源名称
        # @type DatasourceConnectionName: String

        attr_accessor :TableName, :DatabaseName, :DatasourceConnectionName

        def initialize(tablename=nil, databasename=nil, datasourceconnectionname=nil)
          @TableName = tablename
          @DatabaseName = databasename
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @TableName = params['TableName']
          @DatabaseName = params['DatabaseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # DescribeTable返回参数结构体
      class DescribeTableResponse < TencentCloud::Common::AbstractModel
        # @param Table: 数据表对象
        # @type Table: :class:`Tencentcloud::Dlc.v20210125.models.TableResponseInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Table, :RequestId

        def initialize(table=nil, requestid=nil)
          @Table = table
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = TableResponseInfo.new
            @Table.deserialize(params['Table'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTablesName请求参数结构体
      class DescribeTablesNameRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列出该数据库下所属数据表。
        # @type DatabaseName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # table-name - String - （过滤条件）数据表名称,形如：table-001。
        # table-id - String - （过滤条件）table id形如：12342。
        # @type Filters: Array
        # @param DatasourceConnectionName: 指定查询的数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param StartTime: 起始时间：用于对更新时间的筛选，格式为yyyy-mm-dd HH:MM:SS
        # @type StartTime: String
        # @param EndTime: 终止时间：用于对更新时间的筛选，格式为yyyy-mm-dd HH:MM:SS
        # @type EndTime: String
        # @param Sort: 排序字段，支持：CreateTime（创建时间）、UpdateTime（更新时间）、StorageSize（存储空间）、RecordCount（行数）、Name（表名称）（不传则默认按name升序）
        # @type Sort: String
        # @param Asc: 排序字段，false：降序（默认）；true：升序
        # @type Asc: Boolean
        # @param TableType: table type，表类型查询,可用值:EXTERNAL_TABLE,INDEX_TABLE,MANAGED_TABLE,MATERIALIZED_VIEW,TABLE,VIEW,VIRTUAL_VIEW
        # @type TableType: String
        # @param TableFormat: 筛选字段-表格式：不传（默认）为查全部；LAKEFS：托管表；ICEBERG：非托管iceberg表；HIVE：非托管hive表；OTHER：非托管其它；
        # @type TableFormat: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName, :StartTime, :EndTime, :Sort, :Asc, :TableType, :TableFormat

        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil, starttime=nil, endtime=nil, sort=nil, asc=nil, tabletype=nil, tableformat=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
          @StartTime = starttime
          @EndTime = endtime
          @Sort = sort
          @Asc = asc
          @TableType = tabletype
          @TableFormat = tableformat
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
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
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Sort = params['Sort']
          @Asc = params['Asc']
          @TableType = params['TableType']
          @TableFormat = params['TableFormat']
        end
      end

      # DescribeTablesName返回参数结构体
      class DescribeTablesNameResponse < TencentCloud::Common::AbstractModel
        # @param TableNameList: 数据表名称对象列表。
        # @type TableNameList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableNameList, :TotalCount, :RequestId

        def initialize(tablenamelist=nil, totalcount=nil, requestid=nil)
          @TableNameList = tablenamelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TableNameList = params['TableNameList']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列出该数据库下所属数据表。
        # @type DatabaseName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # table-name - String - （过滤条件）数据表名称,形如：table-001。
        # table-id - String - （过滤条件）table id形如：12342。
        # @type Filters: Array
        # @param DatasourceConnectionName: 指定查询的数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param StartTime: 起始时间：用于对更新时间的筛选，格式为yyyy-mm-dd HH:MM:SS
        # @type StartTime: String
        # @param EndTime: 终止时间：用于对更新时间的筛选，格式为yyyy-mm-dd HH:MM:SS
        # @type EndTime: String
        # @param Sort: 排序字段，支持：CreateTime（创建时间）、UpdateTime（更新时间）、StorageSize（存储空间）、RecordCount（行数）、Name（表名称）（不传则默认按name升序）
        # @type Sort: String
        # @param Asc: 排序字段，false：降序（默认）；true：升序
        # @type Asc: Boolean
        # @param TableType: table type，表类型查询,可用值:EXTERNAL_TABLE,INDEX_TABLE,MANAGED_TABLE,MATERIALIZED_VIEW,TABLE,VIEW,VIRTUAL_VIEW
        # @type TableType: String
        # @param TableFormat: 筛选字段-表格式：不传（默认）为查全部；LAKEFS：托管表；ICEBERG：非托管iceberg表；HIVE：非托管hive表；OTHER：非托管其它；
        # @type TableFormat: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName, :StartTime, :EndTime, :Sort, :Asc, :TableType, :TableFormat

        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil, starttime=nil, endtime=nil, sort=nil, asc=nil, tabletype=nil, tableformat=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
          @StartTime = starttime
          @EndTime = endtime
          @Sort = sort
          @Asc = asc
          @TableType = tabletype
          @TableFormat = tableformat
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
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
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Sort = params['Sort']
          @Asc = params['Asc']
          @TableType = params['TableType']
          @TableFormat = params['TableFormat']
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TableList: 数据表对象列表。
        # @type TableList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableList, :TotalCount, :RequestId

        def initialize(tablelist=nil, totalcount=nil, requestid=nil)
          @TableList = tablelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableList'].nil?
            @TableList = []
            params['TableList'].each do |i|
              tableresponseinfo_tmp = TableResponseInfo.new
              tableresponseinfo_tmp.deserialize(i)
              @TableList << tableresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskResult请求参数结构体
      class DescribeTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param NextToken: 上一次请求响应返回的分页信息。第一次可以不带，从头开始返回数据，每次返回MaxResults字段设置的数据量。
        # @type NextToken: String
        # @param MaxResults: 返回结果的最大行数，范围0~1000，默认为1000.
        # @type MaxResults: Integer
        # @param IsTransformDataType: 是否转化数据类型
        # @type IsTransformDataType: Boolean

        attr_accessor :TaskId, :NextToken, :MaxResults, :IsTransformDataType

        def initialize(taskid=nil, nexttoken=nil, maxresults=nil, istransformdatatype=nil)
          @TaskId = taskid
          @NextToken = nexttoken
          @MaxResults = maxresults
          @IsTransformDataType = istransformdatatype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @IsTransformDataType = params['IsTransformDataType']
        end
      end

      # DescribeTaskResult返回参数结构体
      class DescribeTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 查询的任务信息，返回为空表示输入任务ID对应的任务不存在。只有当任务状态为成功（2）的时候，才会返回任务的结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfo: :class:`Tencentcloud::Dlc.v20210125.models.TaskResultInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId

        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = TaskResultInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,其中task-id支持最大50个过滤个数，其他过滤参数支持的总数不超过5个。
        # task-id - String - （任务ID准确过滤）task-id取值形如：e386471f-139a-4e59-877f-50ece8135b99。
        # task-state - String - （任务状态过滤）取值范围 0(初始化)， 1(运行中)， 2(成功)， -1(失败)。
        # task-sql-keyword - String - （SQL语句关键字模糊过滤）取值形如：DROP TABLE。
        # task-operator- string （子uin过滤）
        # task-kind - string （任务类型过滤）
        # @type Filters: Array
        # @param SortBy: 排序字段，支持如下字段类型，create-time（创建时间，默认）、update-time（更新时间）
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc。
        # @type Sorting: String
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。默认为45天前的当前时刻
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS时间跨度在(0,30天]，支持最近45天数据查询。默认为当前时刻
        # @type EndTime: String
        # @param DataEngineName: 数据引擎名称，用于筛选
        # @type DataEngineName: String

        attr_accessor :Limit, :Offset, :Filters, :SortBy, :Sorting, :StartTime, :EndTime, :DataEngineName

        def initialize(limit=nil, offset=nil, filters=nil, sortby=nil, sorting=nil, starttime=nil, endtime=nil, dataenginename=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @StartTime = starttime
          @EndTime = endtime
          @DataEngineName = dataenginename
        end

        def deserialize(params)
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
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DataEngineName = params['DataEngineName']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 任务对象列表。
        # @type TaskList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param TasksOverview: 任务概览信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TasksOverview: :class:`Tencentcloud::Dlc.v20210125.models.TasksOverview`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskList, :TotalCount, :TasksOverview, :RequestId

        def initialize(tasklist=nil, totalcount=nil, tasksoverview=nil, requestid=nil)
          @TaskList = tasklist
          @TotalCount = totalcount
          @TasksOverview = tasksoverview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              taskresponseinfo_tmp = TaskResponseInfo.new
              taskresponseinfo_tmp.deserialize(i)
              @TaskList << taskresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['TasksOverview'].nil?
            @TasksOverview = TasksOverview.new
            @TasksOverview.deserialize(params['TasksOverview'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpdatableDataEngines请求参数结构体
      class DescribeUpdatableDataEnginesRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineConfigCommand: 引擎配置操作命令，UpdateSparkSQLLakefsPath 更新托管表路径，UpdateSparkSQLResultPath 更新结果桶路径
        # @type DataEngineConfigCommand: String

        attr_accessor :DataEngineConfigCommand

        def initialize(dataengineconfigcommand=nil)
          @DataEngineConfigCommand = dataengineconfigcommand
        end

        def deserialize(params)
          @DataEngineConfigCommand = params['DataEngineConfigCommand']
        end
      end

      # DescribeUpdatableDataEngines返回参数结构体
      class DescribeUpdatableDataEnginesResponse < TencentCloud::Common::AbstractModel
        # @param DataEngineBasicInfos: 集群基础信息
        # @type DataEngineBasicInfos: Array
        # @param TotalCount: 集群个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngineBasicInfos, :TotalCount, :RequestId

        def initialize(dataenginebasicinfos=nil, totalcount=nil, requestid=nil)
          @DataEngineBasicInfos = dataenginebasicinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataEngineBasicInfos'].nil?
            @DataEngineBasicInfos = []
            params['DataEngineBasicInfos'].each do |i|
              dataenginebasicinfo_tmp = DataEngineBasicInfo.new
              dataenginebasicinfo_tmp.deserialize(i)
              @DataEngineBasicInfos << dataenginebasicinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserDataEngineConfig请求参数结构体
      class DescribeUserDataEngineConfigRequest < TencentCloud::Common::AbstractModel
        # @param Sorting: 排序方式，desc表示倒序，asc表示正序
        # @type Sorting: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,每种过滤参数支持的过滤值不超过5个。
        # app-id - String - （appid过滤）
        # engine-id - String - （引擎ID过滤）
        # @type Filters: Array

        attr_accessor :Sorting, :Limit, :Offset, :SortBy, :Filters

        def initialize(sorting=nil, limit=nil, offset=nil, sortby=nil, filters=nil)
          @Sorting = sorting
          @Limit = limit
          @Offset = offset
          @SortBy = sortby
          @Filters = filters
        end

        def deserialize(params)
          @Sorting = params['Sorting']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SortBy = params['SortBy']
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

      # DescribeUserDataEngineConfig返回参数结构体
      class DescribeUserDataEngineConfigResponse < TencentCloud::Common::AbstractModel
        # @param DataEngineConfigInstanceInfos: 用户引擎自定义配置项列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineConfigInstanceInfos: Array
        # @param TotalCount: 配置项总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngineConfigInstanceInfos, :TotalCount, :RequestId

        def initialize(dataengineconfiginstanceinfos=nil, totalcount=nil, requestid=nil)
          @DataEngineConfigInstanceInfos = dataengineconfiginstanceinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataEngineConfigInstanceInfos'].nil?
            @DataEngineConfigInstanceInfos = []
            params['DataEngineConfigInstanceInfos'].each do |i|
              dataengineconfiginstanceinfo_tmp = DataEngineConfigInstanceInfo.new
              dataengineconfiginstanceinfo_tmp.deserialize(i)
              @DataEngineConfigInstanceInfos << dataengineconfiginstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInfo请求参数结构体
      class DescribeUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id
        # @type UserId: String
        # @param Type: 查询的信息类型，Group：工作组 DataAuth：数据权限 EngineAuth:引擎权限
        # @type Type: String
        # @param Filters: 查询的过滤条件。

        # 当Type为Group时，支持Key为workgroup-name的模糊搜索；

        # 当Type为DataAuth时，支持key：

        # policy-type：权限类型。

        # policy-source：数据来源。

        # data-name：库表的模糊搜索。

        # 当Type为EngineAuth时，支持key：

        # policy-type：权限类型。

        # policy-source：数据来源。

        # engine-name：库表的模糊搜索。
        # @type Filters: Array
        # @param SortBy: 排序字段。

        # 当Type为Group时，支持create-time、group-name

        # 当Type为DataAuth时，支持create-time

        # 当Type为EngineAuth时，支持create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer

        attr_accessor :UserId, :Type, :Filters, :SortBy, :Sorting, :Limit, :Offset

        def initialize(userid=nil, type=nil, filters=nil, sortby=nil, sorting=nil, limit=nil, offset=nil)
          @UserId = userid
          @Type = type
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeUserInfo返回参数结构体
      class DescribeUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInfo: :class:`Tencentcloud::Dlc.v20210125.models.UserDetailInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId

        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserDetailInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserRoles请求参数结构体
      class DescribeUserRolesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 列举的数量限制
        # @type Limit: Integer
        # @param Offset: 列举的偏移位置
        # @type Offset: Integer
        # @param Fuzzy: 按照arn模糊列举
        # @type Fuzzy: String
        # @param SortBy: 返回结果按照该字段排序
        # @type SortBy: String
        # @param Sorting: 正序或者倒序，例如：desc
        # @type Sorting: String

        attr_accessor :Limit, :Offset, :Fuzzy, :SortBy, :Sorting

        def initialize(limit=nil, offset=nil, fuzzy=nil, sortby=nil, sorting=nil)
          @Limit = limit
          @Offset = offset
          @Fuzzy = fuzzy
          @SortBy = sortby
          @Sorting = sorting
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Fuzzy = params['Fuzzy']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
        end
      end

      # DescribeUserRoles返回参数结构体
      class DescribeUserRolesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合列举条件的总数量
        # @type Total: Integer
        # @param UserRoles: 用户角色信息
        # @type UserRoles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserRoles, :RequestId

        def initialize(total=nil, userroles=nil, requestid=nil)
          @Total = total
          @UserRoles = userroles
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserRoles'].nil?
            @UserRoles = []
            params['UserRoles'].each do |i|
              userrole_tmp = UserRole.new
              userrole_tmp.deserialize(i)
              @UserRoles << userrole_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserType请求参数结构体
      class DescribeUserTypeRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID（UIN），如果不填默认为调用方的子UIN
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DescribeUserType返回参数结构体
      class DescribeUserTypeResponse < TencentCloud::Common::AbstractModel
        # @param UserType: 用户类型。ADMIN：管理员 COMMON：普通用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserType, :RequestId

        def initialize(usertype=nil, requestid=nil)
          @UserType = usertype
          @RequestId = requestid
        end

        def deserialize(params)
          @UserType = params['UserType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 指定查询的子用户uin，用户需要通过CreateUser接口创建。
        # @type UserId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String
        # @param Filters: 过滤条件，支持如下字段类型，user-type：根据用户类型过滤。user-keyword：根据用户名称过滤
        # @type Filters: Array

        attr_accessor :UserId, :Offset, :Limit, :SortBy, :Sorting, :Filters

        def initialize(userid=nil, offset=nil, limit=nil, sortby=nil, sorting=nil, filters=nil)
          @UserId = userid
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
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

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的用户总数
        # @type TotalCount: Integer
        # @param UserSet: 查询到的授权用户信息集合
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserSet, :RequestId

        def initialize(totalcount=nil, userset=nil, requestid=nil)
          @TotalCount = totalcount
          @UserSet = userset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserSet << userinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeViews请求参数结构体
      class DescribeViewsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列出该数据库下所属数据表。
        # @type DatabaseName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # view-name - String - （过滤条件）数据表名称,形如：view-001。
        # view-id - String - （过滤条件）view id形如：12342。
        # @type Filters: Array
        # @param DatasourceConnectionName: 数据库所属的数据源名称
        # @type DatasourceConnectionName: String
        # @param Sort: 排序字段
        # @type Sort: String
        # @param Asc: 排序规则，true:升序；false:降序
        # @type Asc: Boolean
        # @param StartTime: 按视图更新时间筛选，开始时间，如2021-11-11 00:00:00
        # @type StartTime: String
        # @param EndTime: 按视图更新时间筛选，结束时间，如2021-11-12 00:00:00
        # @type EndTime: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName, :Sort, :Asc, :StartTime, :EndTime

        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil, sort=nil, asc=nil, starttime=nil, endtime=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
          @Sort = sort
          @Asc = asc
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
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
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @Sort = params['Sort']
          @Asc = params['Asc']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeViews返回参数结构体
      class DescribeViewsResponse < TencentCloud::Common::AbstractModel
        # @param ViewList: 视图对象列表。
        # @type ViewList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ViewList, :TotalCount, :RequestId

        def initialize(viewlist=nil, totalcount=nil, requestid=nil)
          @ViewList = viewlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ViewList'].nil?
            @ViewList = []
            params['ViewList'].each do |i|
              viewresponseinfo_tmp = ViewResponseInfo.new
              viewresponseinfo_tmp.deserialize(i)
              @ViewList << viewresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkGroupInfo请求参数结构体
      class DescribeWorkGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param Type: 查询信息类型：User：用户信息 DataAuth：数据权限 EngineAuth：引擎权限
        # @type Type: String
        # @param Filters: 查询的过滤条件。

        # 当Type为User时，支持Key为user-name的模糊搜索；

        # 当Type为DataAuth时，支持key：

        # policy-type：权限类型。

        # policy-source：数据来源。

        # data-name：库表的模糊搜索。

        # 当Type为EngineAuth时，支持key：

        # policy-type：权限类型。

        # policy-source：数据来源。

        # engine-name：库表的模糊搜索。
        # @type Filters: Array
        # @param SortBy: 排序字段。

        # 当Type为User时，支持create-time、user-name

        # 当Type为DataAuth时，支持create-time

        # 当Type为EngineAuth时，支持create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer

        attr_accessor :WorkGroupId, :Type, :Filters, :SortBy, :Sorting, :Limit, :Offset

        def initialize(workgroupid=nil, type=nil, filters=nil, sortby=nil, sorting=nil, limit=nil, offset=nil)
          @WorkGroupId = workgroupid
          @Type = type
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWorkGroupInfo返回参数结构体
      class DescribeWorkGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param WorkGroupInfo: 工作组详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroupDetailInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkGroupInfo, :RequestId

        def initialize(workgroupinfo=nil, requestid=nil)
          @WorkGroupInfo = workgroupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkGroupInfo'].nil?
            @WorkGroupInfo = WorkGroupDetailInfo.new
            @WorkGroupInfo.deserialize(params['WorkGroupInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkGroups请求参数结构体
      class DescribeWorkGroupsRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 查询的工作组Id，不填或填0表示不过滤。
        # @type WorkGroupId: Integer
        # @param Filters: 过滤条件，当前仅支持按照工作组名称进行模糊搜索。Key为workgroup-name
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String

        attr_accessor :WorkGroupId, :Filters, :Offset, :Limit, :SortBy, :Sorting

        def initialize(workgroupid=nil, filters=nil, offset=nil, limit=nil, sortby=nil, sorting=nil)
          @WorkGroupId = workgroupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
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
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
        end
      end

      # DescribeWorkGroups返回参数结构体
      class DescribeWorkGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 工作组总数
        # @type TotalCount: Integer
        # @param WorkGroupSet: 工作组信息集合
        # @type WorkGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WorkGroupSet, :RequestId

        def initialize(totalcount=nil, workgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @WorkGroupSet = workgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WorkGroupSet'].nil?
            @WorkGroupSet = []
            params['WorkGroupSet'].each do |i|
              workgroupinfo_tmp = WorkGroupInfo.new
              workgroupinfo_tmp.deserialize(i)
              @WorkGroupSet << workgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachUserPolicy请求参数结构体
      class DetachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param PolicySet: 解绑的权限集合
        # @type PolicySet: Array

        attr_accessor :UserId, :PolicySet

        def initialize(userid=nil, policyset=nil)
          @UserId = userid
          @PolicySet = policyset
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # DetachUserPolicy返回参数结构体
      class DetachUserPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DetachWorkGroupPolicy请求参数结构体
      class DetachWorkGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param PolicySet: 解绑的权限集合
        # @type PolicySet: Array

        attr_accessor :WorkGroupId, :PolicySet

        def initialize(workgroupid=nil, policyset=nil)
          @WorkGroupId = workgroupid
          @PolicySet = policyset
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # DetachWorkGroupPolicy返回参数结构体
      class DetachWorkGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DropDMSDatabase请求参数结构体
      class DropDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param DeleteData: 是否删除数据
        # @type DeleteData: Boolean
        # @param Cascade: 是否级联删除
        # @type Cascade: Boolean

        attr_accessor :Name, :DeleteData, :Cascade

        def initialize(name=nil, deletedata=nil, cascade=nil)
          @Name = name
          @DeleteData = deletedata
          @Cascade = cascade
        end

        def deserialize(params)
          @Name = params['Name']
          @DeleteData = params['DeleteData']
          @Cascade = params['Cascade']
        end
      end

      # DropDMSDatabase返回参数结构体
      class DropDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # DropDMSPartitions请求参数结构体
      class DropDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param SchemaName: 数据库Schema名称
        # @type SchemaName: String
        # @param TableName: 数据表名称
        # @type TableName: String
        # @param Name: 分区名称
        # @type Name: String
        # @param Values: 单个分区名称
        # @type Values: Array
        # @param DeleteData: 是否删除分区数据
        # @type DeleteData: Boolean

        attr_accessor :DatabaseName, :SchemaName, :TableName, :Name, :Values, :DeleteData

        def initialize(databasename=nil, schemaname=nil, tablename=nil, name=nil, values=nil, deletedata=nil)
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @Name = name
          @Values = values
          @DeleteData = deletedata
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @Name = params['Name']
          @Values = params['Values']
          @DeleteData = params['DeleteData']
        end
      end

      # DropDMSPartitions返回参数结构体
      class DropDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # @type Status: Boolean
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

      # DropDMSTable请求参数结构体
      class DropDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param Name: 表名称
        # @type Name: String
        # @param DeleteData: 是否删除数据
        # @type DeleteData: Boolean
        # @param EnvProps: 环境属性
        # @type EnvProps: :class:`Tencentcloud::Dlc.v20210125.models.KVPair`

        attr_accessor :DbName, :Name, :DeleteData, :EnvProps

        def initialize(dbname=nil, name=nil, deletedata=nil, envprops=nil)
          @DbName = dbname
          @Name = name
          @DeleteData = deletedata
          @EnvProps = envprops
        end

        def deserialize(params)
          @DbName = params['DbName']
          @Name = params['Name']
          @DeleteData = params['DeleteData']
          unless params['EnvProps'].nil?
            @EnvProps = KVPair.new
            @EnvProps.deserialize(params['EnvProps'])
          end
        end
      end

      # DropDMSTable返回参数结构体
      class DropDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # Elasticsearch数据源的详细信息
      class ElasticsearchInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param User: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 密码，需要base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Location: 数据源的VPC和子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`
        # @param DbName: 默认数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param ServiceInfo: 访问Elasticsearch的ip、端口信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInfo: Array

        attr_accessor :InstanceId, :InstanceName, :User, :Password, :Location, :DbName, :ServiceInfo

        def initialize(instanceid=nil, instancename=nil, user=nil, password=nil, location=nil, dbname=nil, serviceinfo=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @User = user
          @Password = password
          @Location = location
          @DbName = dbname
          @ServiceInfo = serviceinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @User = params['User']
          @Password = params['Password']
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
          @DbName = params['DbName']
          unless params['ServiceInfo'].nil?
            @ServiceInfo = []
            params['ServiceInfo'].each do |i|
              ipportpair_tmp = IpPortPair.new
              ipportpair_tmp.deserialize(i)
              @ServiceInfo << ipportpair_tmp
            end
          end
        end
      end

      # SQL语句对象
      class Execution < TencentCloud::Common::AbstractModel
        # @param SQL: 自动生成SQL语句。
        # @type SQL: String

        attr_accessor :SQL

        def initialize(sql=nil)
          @SQL = sql
        end

        def deserialize(params)
          @SQL = params['SQL']
        end
      end

      # FavorInfo
      class FavorInfo < TencentCloud::Common::AbstractModel
        # @param Priority: 优先事项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Catalog: Catalog名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param DataBase: DataBase名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBase: String
        # @param Table: Table名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String

        attr_accessor :Priority, :Catalog, :DataBase, :Table

        def initialize(priority=nil, catalog=nil, database=nil, table=nil)
          @Priority = priority
          @Catalog = catalog
          @DataBase = database
          @Table = table
        end

        def deserialize(params)
          @Priority = params['Priority']
          @Catalog = params['Catalog']
          @DataBase = params['DataBase']
          @Table = params['Table']
        end
      end

      # 查询列表过滤条件参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑或（OR）关系。
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

      # GenerateCreateMangedTableSql请求参数结构体
      class GenerateCreateMangedTableSqlRequest < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 表基本信息
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param Columns: 表字段信息
        # @type Columns: Array
        # @param Partitions: 表分区信息
        # @type Partitions: Array
        # @param Properties: 表属性信息
        # @type Properties: Array
        # @param UpsertKeys: V2 upsert表 upsert键
        # @type UpsertKeys: Array

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Properties, :UpsertKeys

        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, properties=nil, upsertkeys=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Properties = properties
          @UpsertKeys = upsertkeys
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              tcolumn_tmp = TColumn.new
              tcolumn_tmp.deserialize(i)
              @Columns << tcolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              tpartition_tmp = TPartition.new
              tpartition_tmp.deserialize(i)
              @Partitions << tpartition_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @UpsertKeys = params['UpsertKeys']
        end
      end

      # GenerateCreateMangedTableSql返回参数结构体
      class GenerateCreateMangedTableSqlResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 创建托管存储内表sql语句描述
        # @type Execution: :class:`Tencentcloud::Dlc.v20210125.models.Execution`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId

        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = Execution.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetOptimizerPolicy请求参数结构体
      class GetOptimizerPolicyRequest < TencentCloud::Common::AbstractModel
        # @param SmartPolicy: 策略描述
        # @type SmartPolicy: :class:`Tencentcloud::Dlc.v20210125.models.SmartPolicy`

        attr_accessor :SmartPolicy

        def initialize(smartpolicy=nil)
          @SmartPolicy = smartpolicy
        end

        def deserialize(params)
          unless params['SmartPolicy'].nil?
            @SmartPolicy = SmartPolicy.new
            @SmartPolicy.deserialize(params['SmartPolicy'])
          end
        end
      end

      # GetOptimizerPolicy返回参数结构体
      class GetOptimizerPolicyResponse < TencentCloud::Common::AbstractModel
        # @param SmartOptimizerPolicy: 智能优化策略
        # @type SmartOptimizerPolicy: :class:`Tencentcloud::Dlc.v20210125.models.SmartOptimizerPolicy`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SmartOptimizerPolicy, :RequestId

        def initialize(smartoptimizerpolicy=nil, requestid=nil)
          @SmartOptimizerPolicy = smartoptimizerpolicy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SmartOptimizerPolicy'].nil?
            @SmartOptimizerPolicy = SmartOptimizerPolicy.new
            @SmartOptimizerPolicy.deserialize(params['SmartOptimizerPolicy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # hive类型数据源的信息
      class HiveInfo < TencentCloud::Common::AbstractModel
        # @param MetaStoreUrl: hive metastore的地址
        # @type MetaStoreUrl: String
        # @param Type: hive数据源类型，代表数据储存的位置，COS或者HDFS
        # @type Type: String
        # @param Location: 数据源所在的私有网络信息
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`
        # @param User: 如果类型为HDFS，需要传一个用户名
        # @type User: String
        # @param HighAvailability: 如果类型为HDFS，需要选择是否高可用
        # @type HighAvailability: Boolean
        # @param BucketUrl: 如果类型为COS，需要填写COS桶连接
        # @type BucketUrl: String
        # @param HdfsProperties: json字符串。如果类型为HDFS，需要填写该字段
        # @type HdfsProperties: String
        # @param Mysql: Hive的元数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mysql: :class:`Tencentcloud::Dlc.v20210125.models.MysqlInfo`
        # @param InstanceId: emr集群Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: emr集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param HiveVersion: EMR集群中hive组件的版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HiveVersion: String
        # @param KerberosInfo: Kerberos详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KerberosInfo: :class:`Tencentcloud::Dlc.v20210125.models.KerberosInfo`
        # @param KerberosEnable: 是否开启Kerberos
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KerberosEnable: Boolean

        attr_accessor :MetaStoreUrl, :Type, :Location, :User, :HighAvailability, :BucketUrl, :HdfsProperties, :Mysql, :InstanceId, :InstanceName, :HiveVersion, :KerberosInfo, :KerberosEnable

        def initialize(metastoreurl=nil, type=nil, location=nil, user=nil, highavailability=nil, bucketurl=nil, hdfsproperties=nil, mysql=nil, instanceid=nil, instancename=nil, hiveversion=nil, kerberosinfo=nil, kerberosenable=nil)
          @MetaStoreUrl = metastoreurl
          @Type = type
          @Location = location
          @User = user
          @HighAvailability = highavailability
          @BucketUrl = bucketurl
          @HdfsProperties = hdfsproperties
          @Mysql = mysql
          @InstanceId = instanceid
          @InstanceName = instancename
          @HiveVersion = hiveversion
          @KerberosInfo = kerberosinfo
          @KerberosEnable = kerberosenable
        end

        def deserialize(params)
          @MetaStoreUrl = params['MetaStoreUrl']
          @Type = params['Type']
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
          @User = params['User']
          @HighAvailability = params['HighAvailability']
          @BucketUrl = params['BucketUrl']
          @HdfsProperties = params['HdfsProperties']
          unless params['Mysql'].nil?
            @Mysql = MysqlInfo.new
            @Mysql.deserialize(params['Mysql'])
          end
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @HiveVersion = params['HiveVersion']
          unless params['KerberosInfo'].nil?
            @KerberosInfo = KerberosInfo.new
            @KerberosInfo.deserialize(params['KerberosInfo'])
          end
          @KerberosEnable = params['KerberosEnable']
        end
      end

      # 集群事件日志
      class HouseEventsInfo < TencentCloud::Common::AbstractModel
        # @param Time: 事件时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Array
        # @param EventsAction: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventsAction: Array
        # @param ClusterInfo: 集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterInfo: Array

        attr_accessor :Time, :EventsAction, :ClusterInfo

        def initialize(time=nil, eventsaction=nil, clusterinfo=nil)
          @Time = time
          @EventsAction = eventsaction
          @ClusterInfo = clusterinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @EventsAction = params['EventsAction']
          @ClusterInfo = params['ClusterInfo']
        end
      end

      # ip端口对信息
      class IpPortPair < TencentCloud::Common::AbstractModel
        # @param Ip: ip信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: 端口信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer

        attr_accessor :Ip, :Port

        def initialize(ip=nil, port=nil)
          @Ip = ip
          @Port = port
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Port = params['Port']
        end
      end

      # 日志详情
      class JobLogResult < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间戳，毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param TopicId: 日志topic id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 日志topic name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param LogJson: 日志内容，json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogJson: String
        # @param PkgLogId: 日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgLogId: String

        attr_accessor :Time, :TopicId, :TopicName, :LogJson, :PkgLogId

        def initialize(time=nil, topicid=nil, topicname=nil, logjson=nil, pkglogid=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @LogJson = logjson
          @PkgLogId = pkglogid
        end

        def deserialize(params)
          @Time = params['Time']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @LogJson = params['LogJson']
          @PkgLogId = params['PkgLogId']
        end
      end

      # 配置格式
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 配置的key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 配置的value值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # Kafka连接信息
      class KafkaInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: kakfa实例Id
        # @type InstanceId: String
        # @param Location: kakfa数据源的网络信息
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`

        attr_accessor :InstanceId, :Location

        def initialize(instanceid=nil, location=nil)
          @InstanceId = instanceid
          @Location = location
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # Kerberos详细信息
      class KerberosInfo < TencentCloud::Common::AbstractModel
        # @param Krb5Conf: Krb5Conf文件值
        # @type Krb5Conf: String
        # @param KeyTab: KeyTab文件值
        # @type KeyTab: String
        # @param ServicePrincipal: 服务主体
        # @type ServicePrincipal: String

        attr_accessor :Krb5Conf, :KeyTab, :ServicePrincipal

        def initialize(krb5conf=nil, keytab=nil, serviceprincipal=nil)
          @Krb5Conf = krb5conf
          @KeyTab = keytab
          @ServicePrincipal = serviceprincipal
        end

        def deserialize(params)
          @Krb5Conf = params['Krb5Conf']
          @KeyTab = params['KeyTab']
          @ServicePrincipal = params['ServicePrincipal']
        end
      end

      # LakeFileSystem使用的临时token
      class LakeFileSystemToken < TencentCloud::Common::AbstractModel
        # @param SecretId: Token使用的临时密钥的ID
        # @type SecretId: String
        # @param SecretKey: Token使用的临时密钥
        # @type SecretKey: String
        # @param Token: Token信息
        # @type Token: String
        # @param ExpiredTime: 过期时间
        # @type ExpiredTime: Integer
        # @param IssueTime: 颁布时间
        # @type IssueTime: Integer

        attr_accessor :SecretId, :SecretKey, :Token, :ExpiredTime, :IssueTime

        def initialize(secretid=nil, secretkey=nil, token=nil, expiredtime=nil, issuetime=nil)
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
          @ExpiredTime = expiredtime
          @IssueTime = issuetime
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
          @IssueTime = params['IssueTime']
        end
      end

      # ListTaskJobLogDetail请求参数结构体
      class ListTaskJobLogDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 列表返回的Id
        # @type TaskId: String
        # @param StartTime: 开始运行时间，unix时间戳（毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束运行时间，unix时间戳（毫秒）
        # @type EndTime: Integer
        # @param Limit: 分页大小，最大1000，配合Context一起使用
        # @type Limit: Integer
        # @param Context: 下一次分页参数，第一次传空
        # @type Context: String
        # @param Asc: 最近1000条日志是否升序排列，true:升序排序，false:倒序，默认false，倒序排列
        # @type Asc: Boolean
        # @param Filters: 预览日志的通用过滤条件
        # @type Filters: Array
        # @param BatchId: SparkSQL任务唯一ID
        # @type BatchId: String

        attr_accessor :TaskId, :StartTime, :EndTime, :Limit, :Context, :Asc, :Filters, :BatchId

        def initialize(taskid=nil, starttime=nil, endtime=nil, limit=nil, context=nil, asc=nil, filters=nil, batchid=nil)
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Context = context
          @Asc = asc
          @Filters = filters
          @BatchId = batchid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Context = params['Context']
          @Asc = params['Asc']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @BatchId = params['BatchId']
        end
      end

      # ListTaskJobLogDetail返回参数结构体
      class ListTaskJobLogDetailResponse < TencentCloud::Common::AbstractModel
        # @param Context: 下一次分页参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param ListOver: 是否获取完结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListOver: Boolean
        # @param Results: 日志详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param LogUrl: 日志url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Results, :LogUrl, :RequestId

        def initialize(context=nil, listover=nil, results=nil, logurl=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Results = results
          @LogUrl = logurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              joblogresult_tmp = JobLogResult.new
              joblogresult_tmp.deserialize(i)
              @Results << joblogresult_tmp
            end
          end
          @LogUrl = params['LogUrl']
          @RequestId = params['RequestId']
        end
      end

      # 元数据加锁内容
      class LockComponentInfo < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param Partition: 分区
        # @type Partition: String
        # @param LockType: 锁类型：SHARED_READ、SHARED_WRITE、EXCLUSIVE
        # @type LockType: String
        # @param LockLevel: 锁级别：DB、TABLE、PARTITION
        # @type LockLevel: String
        # @param DataOperationType: 锁操作：SELECT,INSERT,UPDATE,DELETE,UNSET,NO_TXN
        # @type DataOperationType: String
        # @param IsAcid: 是否保持Acid
        # @type IsAcid: Boolean
        # @param IsDynamicPartitionWrite: 是否动态分区写
        # @type IsDynamicPartitionWrite: Boolean

        attr_accessor :DbName, :TableName, :Partition, :LockType, :LockLevel, :DataOperationType, :IsAcid, :IsDynamicPartitionWrite

        def initialize(dbname=nil, tablename=nil, partition=nil, locktype=nil, locklevel=nil, dataoperationtype=nil, isacid=nil, isdynamicpartitionwrite=nil)
          @DbName = dbname
          @TableName = tablename
          @Partition = partition
          @LockType = locktype
          @LockLevel = locklevel
          @DataOperationType = dataoperationtype
          @IsAcid = isacid
          @IsDynamicPartitionWrite = isdynamicpartitionwrite
        end

        def deserialize(params)
          @DbName = params['DbName']
          @TableName = params['TableName']
          @Partition = params['Partition']
          @LockType = params['LockType']
          @LockLevel = params['LockLevel']
          @DataOperationType = params['DataOperationType']
          @IsAcid = params['IsAcid']
          @IsDynamicPartitionWrite = params['IsDynamicPartitionWrite']
        end
      end

      # LockMetaData请求参数结构体
      class LockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockComponentList: 加锁内容
        # @type LockComponentList: Array
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param TxnId: 事务id
        # @type TxnId: Integer
        # @param AgentInfo: 客户端信息
        # @type AgentInfo: String
        # @param Hostname: 主机名
        # @type Hostname: String

        attr_accessor :LockComponentList, :DatasourceConnectionName, :TxnId, :AgentInfo, :Hostname

        def initialize(lockcomponentlist=nil, datasourceconnectionname=nil, txnid=nil, agentinfo=nil, hostname=nil)
          @LockComponentList = lockcomponentlist
          @DatasourceConnectionName = datasourceconnectionname
          @TxnId = txnid
          @AgentInfo = agentinfo
          @Hostname = hostname
        end

        def deserialize(params)
          unless params['LockComponentList'].nil?
            @LockComponentList = []
            params['LockComponentList'].each do |i|
              lockcomponentinfo_tmp = LockComponentInfo.new
              lockcomponentinfo_tmp.deserialize(i)
              @LockComponentList << lockcomponentinfo_tmp
            end
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TxnId = params['TxnId']
          @AgentInfo = params['AgentInfo']
          @Hostname = params['Hostname']
        end
      end

      # LockMetaData返回参数结构体
      class LockMetaDataResponse < TencentCloud::Common::AbstractModel
        # @param LockId: 锁id
        # @type LockId: Integer
        # @param LockState: 锁状态：ACQUIRED、WAITING、ABORT、NOT_ACQUIRED
        # @type LockState: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockId, :LockState, :RequestId

        def initialize(lockid=nil, lockstate=nil, requestid=nil)
          @LockId = lockid
          @LockState = lockstate
          @RequestId = requestid
        end

        def deserialize(params)
          @LockId = params['LockId']
          @LockState = params['LockState']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAdvancedStoreLocation请求参数结构体
      class ModifyAdvancedStoreLocationRequest < TencentCloud::Common::AbstractModel
        # @param StoreLocation: 查询结果保存cos路径
        # @type StoreLocation: String
        # @param Enable: 是否启用高级设置：0-否，1-是
        # @type Enable: Integer

        attr_accessor :StoreLocation, :Enable

        def initialize(storelocation=nil, enable=nil)
          @StoreLocation = storelocation
          @Enable = enable
        end

        def deserialize(params)
          @StoreLocation = params['StoreLocation']
          @Enable = params['Enable']
        end
      end

      # ModifyAdvancedStoreLocation返回参数结构体
      class ModifyAdvancedStoreLocationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDataEngineDescription请求参数结构体
      class ModifyDataEngineDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: 要修改的引擎的名称
        # @type DataEngineName: String
        # @param Message: 引擎的描述信息，最大长度为250
        # @type Message: String

        attr_accessor :DataEngineName, :Message

        def initialize(dataenginename=nil, message=nil)
          @DataEngineName = dataenginename
          @Message = message
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @Message = params['Message']
        end
      end

      # ModifyDataEngineDescription返回参数结构体
      class ModifyDataEngineDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyGovernEventRule请求参数结构体
      class ModifyGovernEventRuleRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyGovernEventRule返回参数结构体
      class ModifyGovernEventRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifySparkAppBatch请求参数结构体
      class ModifySparkAppBatchRequest < TencentCloud::Common::AbstractModel
        # @param SparkAppId: 需要批量修改的Spark作业任务ID列表
        # @type SparkAppId: Array
        # @param DataEngine: 引擎ID
        # @type DataEngine: String
        # @param AppDriverSize: driver规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # @type AppDriverSize: String
        # @param AppExecutorSize: executor规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # @type AppExecutorSize: String
        # @param AppExecutorNums: 指定executor数量，最小值为1，最大值小于集群规格
        # @type AppExecutorNums: Integer
        # @param AppExecutorMaxNumbers: 指定executor max数量（动态配置场景下），最小值为1，最大值小于集群规格（当ExecutorMaxNumbers小于ExecutorNums时，改值设定为ExecutorNums）
        # @type AppExecutorMaxNumbers: Integer
        # @param IsInherit: 任务资源配置是否继承集群模板，0（默认）不继承，1：继承
        # @type IsInherit: Integer

        attr_accessor :SparkAppId, :DataEngine, :AppDriverSize, :AppExecutorSize, :AppExecutorNums, :AppExecutorMaxNumbers, :IsInherit

        def initialize(sparkappid=nil, dataengine=nil, appdriversize=nil, appexecutorsize=nil, appexecutornums=nil, appexecutormaxnumbers=nil, isinherit=nil)
          @SparkAppId = sparkappid
          @DataEngine = dataengine
          @AppDriverSize = appdriversize
          @AppExecutorSize = appexecutorsize
          @AppExecutorNums = appexecutornums
          @AppExecutorMaxNumbers = appexecutormaxnumbers
          @IsInherit = isinherit
        end

        def deserialize(params)
          @SparkAppId = params['SparkAppId']
          @DataEngine = params['DataEngine']
          @AppDriverSize = params['AppDriverSize']
          @AppExecutorSize = params['AppExecutorSize']
          @AppExecutorNums = params['AppExecutorNums']
          @AppExecutorMaxNumbers = params['AppExecutorMaxNumbers']
          @IsInherit = params['IsInherit']
        end
      end

      # ModifySparkAppBatch返回参数结构体
      class ModifySparkAppBatchResponse < TencentCloud::Common::AbstractModel
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

      # ModifySparkApp请求参数结构体
      class ModifySparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark作业名
        # @type AppName: String
        # @param AppType: spark作业类型，1代表spark jar作业，2代表spark streaming作业
        # @type AppType: Integer
        # @param DataEngine: 执行spark作业的数据引擎名称
        # @type DataEngine: String
        # @param AppFile: spark作业程序包文件路径
        # @type AppFile: String
        # @param RoleArn: 数据访问策略，CAM Role arn
        # @type RoleArn: Integer
        # @param AppDriverSize: 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type AppDriverSize: String
        # @param AppExecutorSize: 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # @type AppExecutorSize: String
        # @param AppExecutorNums: spark作业executor个数
        # @type AppExecutorNums: Integer
        # @param SparkAppId: spark作业Id
        # @type SparkAppId: String
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: spark作业程序包是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocal: String
        # @param MainClass: spark作业主类
        # @type MainClass: String
        # @param AppConf: spark配置，以换行符分隔
        # @type AppConf: String
        # @param IsLocalJars: spark 作业依赖jar包是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalJars: String
        # @param AppJars: spark 作业依赖jar包（--jars），以逗号分隔
        # @type AppJars: String
        # @param IsLocalFiles: spark作业依赖文件资源是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalFiles: String
        # @param AppFiles: spark作业依赖文件资源（--files）（非jar、zip），以逗号分隔
        # @type AppFiles: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: pyspark作业依赖python资源（--py-files），支持py/zip/egg等归档格式，多文件以逗号分隔
        # @type AppPythonFiles: String
        # @param CmdArgs: spark作业程序入参
        # @type CmdArgs: String
        # @param MaxRetries: 最大重试次数，只对spark流任务生效
        # @type MaxRetries: Integer
        # @param DataSource: 数据源名
        # @type DataSource: String
        # @param IsLocalArchives: spark作业依赖archives资源是否本地上传，cos：存放与cos，lakefs：本地上传（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalArchives: String
        # @param AppArchives: spark作业依赖archives资源（--archives），支持tar.gz/tgz/tar等归档格式，以逗号分隔
        # @type AppArchives: String
        # @param SparkImage: Spark Image 版本号
        # @type SparkImage: String
        # @param SparkImageVersion: Spark Image 版本名称
        # @type SparkImageVersion: String
        # @param AppExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于AppExecutorNums
        # @type AppExecutorMaxNumbers: Integer
        # @param SessionId: 关联dlc查询脚本
        # @type SessionId: String
        # @param IsInherit: 任务资源配置是否继承集群配置模板：0（默认）不继承、1：继承
        # @type IsInherit: Integer
        # @param IsSessionStarted: 是否使用session脚本的sql运行任务：false：否，true：是
        # @type IsSessionStarted: Boolean

        attr_accessor :AppName, :AppType, :DataEngine, :AppFile, :RoleArn, :AppDriverSize, :AppExecutorSize, :AppExecutorNums, :SparkAppId, :Eni, :IsLocal, :MainClass, :AppConf, :IsLocalJars, :AppJars, :IsLocalFiles, :AppFiles, :IsLocalPythonFiles, :AppPythonFiles, :CmdArgs, :MaxRetries, :DataSource, :IsLocalArchives, :AppArchives, :SparkImage, :SparkImageVersion, :AppExecutorMaxNumbers, :SessionId, :IsInherit, :IsSessionStarted

        def initialize(appname=nil, apptype=nil, dataengine=nil, appfile=nil, rolearn=nil, appdriversize=nil, appexecutorsize=nil, appexecutornums=nil, sparkappid=nil, eni=nil, islocal=nil, mainclass=nil, appconf=nil, islocaljars=nil, appjars=nil, islocalfiles=nil, appfiles=nil, islocalpythonfiles=nil, apppythonfiles=nil, cmdargs=nil, maxretries=nil, datasource=nil, islocalarchives=nil, apparchives=nil, sparkimage=nil, sparkimageversion=nil, appexecutormaxnumbers=nil, sessionid=nil, isinherit=nil, issessionstarted=nil)
          @AppName = appname
          @AppType = apptype
          @DataEngine = dataengine
          @AppFile = appfile
          @RoleArn = rolearn
          @AppDriverSize = appdriversize
          @AppExecutorSize = appexecutorsize
          @AppExecutorNums = appexecutornums
          @SparkAppId = sparkappid
          @Eni = eni
          @IsLocal = islocal
          @MainClass = mainclass
          @AppConf = appconf
          @IsLocalJars = islocaljars
          @AppJars = appjars
          @IsLocalFiles = islocalfiles
          @AppFiles = appfiles
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @CmdArgs = cmdargs
          @MaxRetries = maxretries
          @DataSource = datasource
          @IsLocalArchives = islocalarchives
          @AppArchives = apparchives
          @SparkImage = sparkimage
          @SparkImageVersion = sparkimageversion
          @AppExecutorMaxNumbers = appexecutormaxnumbers
          @SessionId = sessionid
          @IsInherit = isinherit
          @IsSessionStarted = issessionstarted
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AppType = params['AppType']
          @DataEngine = params['DataEngine']
          @AppFile = params['AppFile']
          @RoleArn = params['RoleArn']
          @AppDriverSize = params['AppDriverSize']
          @AppExecutorSize = params['AppExecutorSize']
          @AppExecutorNums = params['AppExecutorNums']
          @SparkAppId = params['SparkAppId']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @MainClass = params['MainClass']
          @AppConf = params['AppConf']
          @IsLocalJars = params['IsLocalJars']
          @AppJars = params['AppJars']
          @IsLocalFiles = params['IsLocalFiles']
          @AppFiles = params['AppFiles']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @CmdArgs = params['CmdArgs']
          @MaxRetries = params['MaxRetries']
          @DataSource = params['DataSource']
          @IsLocalArchives = params['IsLocalArchives']
          @AppArchives = params['AppArchives']
          @SparkImage = params['SparkImage']
          @SparkImageVersion = params['SparkImageVersion']
          @AppExecutorMaxNumbers = params['AppExecutorMaxNumbers']
          @SessionId = params['SessionId']
          @IsInherit = params['IsInherit']
          @IsSessionStarted = params['IsSessionStarted']
        end
      end

      # ModifySparkApp返回参数结构体
      class ModifySparkAppResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # @type UserDescription: String

        attr_accessor :UserId, :UserDescription

        def initialize(userid=nil, userdescription=nil)
          @UserId = userid
          @UserDescription = userdescription
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserType请求参数结构体
      class ModifyUserTypeRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserType: 用户要修改到的类型，ADMIN：管理员，COMMON：一般用户。
        # @type UserType: String

        attr_accessor :UserId, :UserType

        def initialize(userid=nil, usertype=nil)
          @UserId = userid
          @UserType = usertype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserType = params['UserType']
        end
      end

      # ModifyUserType返回参数结构体
      class ModifyUserTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWorkGroup请求参数结构体
      class ModifyWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param WorkGroupDescription: 工作组描述，最大字符数限制50
        # @type WorkGroupDescription: String

        attr_accessor :WorkGroupId, :WorkGroupDescription

        def initialize(workgroupid=nil, workgroupdescription=nil)
          @WorkGroupId = workgroupid
          @WorkGroupDescription = workgroupdescription
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupDescription = params['WorkGroupDescription']
        end
      end

      # ModifyWorkGroup返回参数结构体
      class ModifyWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # Mysql类型数据源信息
      class MysqlInfo < TencentCloud::Common::AbstractModel
        # @param JdbcUrl: 连接mysql的jdbc url
        # @type JdbcUrl: String
        # @param User: 用户名
        # @type User: String
        # @param Password: mysql密码
        # @type Password: String
        # @param Location: mysql数据源的网络信息
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param InstanceId: 数据库实例ID，和数据库侧保持一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 数据库实例名称，和数据库侧保持一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String

        attr_accessor :JdbcUrl, :User, :Password, :Location, :DbName, :InstanceId, :InstanceName

        def initialize(jdbcurl=nil, user=nil, password=nil, location=nil, dbname=nil, instanceid=nil, instancename=nil)
          @JdbcUrl = jdbcurl
          @User = user
          @Password = password
          @Location = location
          @DbName = dbname
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @JdbcUrl = params['JdbcUrl']
          @User = params['User']
          @Password = params['Password']
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
          @DbName = params['DbName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # 网络配置
      class NetworkConnection < TencentCloud::Common::AbstractModel
        # @param Id: 网络配置id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param AssociateId: 网络配置唯一标志符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateId: String
        # @param HouseId: 计算引擎id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HouseId: String
        # @param DatasourceConnectionId: 数据源id(已废弃)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionId: String
        # @param State: 网络配置状态（0-初始化，1-正常）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Appid: 创建用户Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Appid: Integer
        # @param HouseName: 计算引擎名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HouseName: String
        # @param DatasourceConnectionName: 网络配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String
        # @param NetworkConnectionType: 网络配置类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConnectionType: Integer
        # @param Uin: 创建用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 创建用户SubAccountUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param NetworkConnectionDesc: 网络配置描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConnectionDesc: String
        # @param DatasourceConnectionVpcId: 数据源vpcid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionVpcId: String
        # @param DatasourceConnectionSubnetId: 数据源SubnetId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionSubnetId: String
        # @param DatasourceConnectionCidrBlock: 数据源SubnetId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionCidrBlock: String
        # @param DatasourceConnectionSubnetCidrBlock: 数据源SubnetCidrBlock
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionSubnetCidrBlock: String

        attr_accessor :Id, :AssociateId, :HouseId, :DatasourceConnectionId, :State, :CreateTime, :UpdateTime, :Appid, :HouseName, :DatasourceConnectionName, :NetworkConnectionType, :Uin, :SubAccountUin, :NetworkConnectionDesc, :DatasourceConnectionVpcId, :DatasourceConnectionSubnetId, :DatasourceConnectionCidrBlock, :DatasourceConnectionSubnetCidrBlock

        def initialize(id=nil, associateid=nil, houseid=nil, datasourceconnectionid=nil, state=nil, createtime=nil, updatetime=nil, appid=nil, housename=nil, datasourceconnectionname=nil, networkconnectiontype=nil, uin=nil, subaccountuin=nil, networkconnectiondesc=nil, datasourceconnectionvpcid=nil, datasourceconnectionsubnetid=nil, datasourceconnectioncidrblock=nil, datasourceconnectionsubnetcidrblock=nil)
          @Id = id
          @AssociateId = associateid
          @HouseId = houseid
          @DatasourceConnectionId = datasourceconnectionid
          @State = state
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Appid = appid
          @HouseName = housename
          @DatasourceConnectionName = datasourceconnectionname
          @NetworkConnectionType = networkconnectiontype
          @Uin = uin
          @SubAccountUin = subaccountuin
          @NetworkConnectionDesc = networkconnectiondesc
          @DatasourceConnectionVpcId = datasourceconnectionvpcid
          @DatasourceConnectionSubnetId = datasourceconnectionsubnetid
          @DatasourceConnectionCidrBlock = datasourceconnectioncidrblock
          @DatasourceConnectionSubnetCidrBlock = datasourceconnectionsubnetcidrblock
        end

        def deserialize(params)
          @Id = params['Id']
          @AssociateId = params['AssociateId']
          @HouseId = params['HouseId']
          @DatasourceConnectionId = params['DatasourceConnectionId']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Appid = params['Appid']
          @HouseName = params['HouseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @NetworkConnectionType = params['NetworkConnectionType']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          @NetworkConnectionDesc = params['NetworkConnectionDesc']
          @DatasourceConnectionVpcId = params['DatasourceConnectionVpcId']
          @DatasourceConnectionSubnetId = params['DatasourceConnectionSubnetId']
          @DatasourceConnectionCidrBlock = params['DatasourceConnectionCidrBlock']
          @DatasourceConnectionSubnetCidrBlock = params['DatasourceConnectionSubnetCidrBlock']
        end
      end

      # Notebook Session详细信息。
      class NotebookSessionInfo < TencentCloud::Common::AbstractModel
        # @param Name: Session名称
        # @type Name: String
        # @param Kind: 类型，当前支持：spark、pyspark、sparkr、sql
        # @type Kind: String
        # @param DataEngineName: DLC Spark作业引擎名称
        # @type DataEngineName: String
        # @param Arguments: Session相关配置，当前支持：eni、roleArn以及用户指定的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Arguments: Array
        # @param ProgramDependentFiles: 运行程序地址，当前支持：cosn://和lakefs://两种路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramDependentFiles: Array
        # @param ProgramDependentJars: 依赖的jar程序地址，当前支持：cosn://和lakefs://两种路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramDependentJars: Array
        # @param ProgramDependentPython: 依赖的python程序地址，当前支持：cosn://和lakefs://两种路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramDependentPython: Array
        # @param ProgramArchives: 依赖的pyspark虚拟环境地址，当前支持：cosn://和lakefs://两种路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramArchives: Array
        # @param DriverSize: 指定的Driver规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DriverSize: String
        # @param ExecutorSize: 指定的Executor规格，当前支持：small（默认，1cu）、medium（2cu）、large（4cu）、xlarge（8cu）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorSize: String
        # @param ExecutorNumbers: 指定的Executor数量，默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorNumbers: Integer
        # @param ProxyUser: 代理用户，默认为root
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyUser: String
        # @param TimeoutInSecond: 指定的Session超时时间，单位秒，默认3600秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutInSecond: Integer
        # @param SparkAppId: Spark任务返回的AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppId: String
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param State: Session状态，包含：not_started（未启动）、starting（已启动）、idle（等待输入）、busy(正在运行statement)、shutting_down（停止）、error（异常）、dead（已退出）、killed（被杀死）、success（正常停止）
        # @type State: String
        # @param CreateTime: Session创建时间
        # @type CreateTime: String
        # @param AppInfo: 其它信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppInfo: Array
        # @param SparkUiUrl: Spark ui地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkUiUrl: String
        # @param ExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于ExecutorNumbers
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorMaxNumbers: Integer

        attr_accessor :Name, :Kind, :DataEngineName, :Arguments, :ProgramDependentFiles, :ProgramDependentJars, :ProgramDependentPython, :ProgramArchives, :DriverSize, :ExecutorSize, :ExecutorNumbers, :ProxyUser, :TimeoutInSecond, :SparkAppId, :SessionId, :State, :CreateTime, :AppInfo, :SparkUiUrl, :ExecutorMaxNumbers

        def initialize(name=nil, kind=nil, dataenginename=nil, arguments=nil, programdependentfiles=nil, programdependentjars=nil, programdependentpython=nil, programarchives=nil, driversize=nil, executorsize=nil, executornumbers=nil, proxyuser=nil, timeoutinsecond=nil, sparkappid=nil, sessionid=nil, state=nil, createtime=nil, appinfo=nil, sparkuiurl=nil, executormaxnumbers=nil)
          @Name = name
          @Kind = kind
          @DataEngineName = dataenginename
          @Arguments = arguments
          @ProgramDependentFiles = programdependentfiles
          @ProgramDependentJars = programdependentjars
          @ProgramDependentPython = programdependentpython
          @ProgramArchives = programarchives
          @DriverSize = driversize
          @ExecutorSize = executorsize
          @ExecutorNumbers = executornumbers
          @ProxyUser = proxyuser
          @TimeoutInSecond = timeoutinsecond
          @SparkAppId = sparkappid
          @SessionId = sessionid
          @State = state
          @CreateTime = createtime
          @AppInfo = appinfo
          @SparkUiUrl = sparkuiurl
          @ExecutorMaxNumbers = executormaxnumbers
        end

        def deserialize(params)
          @Name = params['Name']
          @Kind = params['Kind']
          @DataEngineName = params['DataEngineName']
          unless params['Arguments'].nil?
            @Arguments = []
            params['Arguments'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Arguments << kvpair_tmp
            end
          end
          @ProgramDependentFiles = params['ProgramDependentFiles']
          @ProgramDependentJars = params['ProgramDependentJars']
          @ProgramDependentPython = params['ProgramDependentPython']
          @ProgramArchives = params['ProgramArchives']
          @DriverSize = params['DriverSize']
          @ExecutorSize = params['ExecutorSize']
          @ExecutorNumbers = params['ExecutorNumbers']
          @ProxyUser = params['ProxyUser']
          @TimeoutInSecond = params['TimeoutInSecond']
          @SparkAppId = params['SparkAppId']
          @SessionId = params['SessionId']
          @State = params['State']
          @CreateTime = params['CreateTime']
          unless params['AppInfo'].nil?
            @AppInfo = []
            params['AppInfo'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @AppInfo << kvpair_tmp
            end
          end
          @SparkUiUrl = params['SparkUiUrl']
          @ExecutorMaxNumbers = params['ExecutorMaxNumbers']
        end
      end

      # 按批提交Statement运行SQL任务。
      class NotebookSessionStatementBatchInformation < TencentCloud::Common::AbstractModel
        # @param NotebookSessionStatementBatch: 任务详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookSessionStatementBatch: Array
        # @param IsAvailable: 当前批任务是否运行完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAvailable: Boolean
        # @param SessionId: Session唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param BatchId: Batch唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String

        attr_accessor :NotebookSessionStatementBatch, :IsAvailable, :SessionId, :BatchId

        def initialize(notebooksessionstatementbatch=nil, isavailable=nil, sessionid=nil, batchid=nil)
          @NotebookSessionStatementBatch = notebooksessionstatementbatch
          @IsAvailable = isavailable
          @SessionId = sessionid
          @BatchId = batchid
        end

        def deserialize(params)
          unless params['NotebookSessionStatementBatch'].nil?
            @NotebookSessionStatementBatch = []
            params['NotebookSessionStatementBatch'].each do |i|
              notebooksessionstatementinfo_tmp = NotebookSessionStatementInfo.new
              notebooksessionstatementinfo_tmp.deserialize(i)
              @NotebookSessionStatementBatch << notebooksessionstatementinfo_tmp
            end
          end
          @IsAvailable = params['IsAvailable']
          @SessionId = params['SessionId']
          @BatchId = params['BatchId']
        end
      end

      # NotebookSessionStatement详情。
      class NotebookSessionStatementInfo < TencentCloud::Common::AbstractModel
        # @param Completed: 完成时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Completed: Integer
        # @param Started: 开始时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Started: Integer
        # @param Progress: 完成进度，百分制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Float
        # @param StatementId: Session Statement唯一标识
        # @type StatementId: String
        # @param State: Session Statement状态，包含：waiting（排队中）、running（运行中）、available（正常）、error（异常）、cancelling（取消中）、cancelled（已取消）
        # @type State: String
        # @param OutPut: Statement输出信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutPut: :class:`Tencentcloud::Dlc.v20210125.models.StatementOutput`
        # @param BatchId: 批任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param Code: 运行语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :Completed, :Started, :Progress, :StatementId, :State, :OutPut, :BatchId, :Code, :TaskId

        def initialize(completed=nil, started=nil, progress=nil, statementid=nil, state=nil, output=nil, batchid=nil, code=nil, taskid=nil)
          @Completed = completed
          @Started = started
          @Progress = progress
          @StatementId = statementid
          @State = state
          @OutPut = output
          @BatchId = batchid
          @Code = code
          @TaskId = taskid
        end

        def deserialize(params)
          @Completed = params['Completed']
          @Started = params['Started']
          @Progress = params['Progress']
          @StatementId = params['StatementId']
          @State = params['State']
          unless params['OutPut'].nil?
            @OutPut = StatementOutput.new
            @OutPut.deserialize(params['OutPut'])
          end
          @BatchId = params['BatchId']
          @Code = params['Code']
          @TaskId = params['TaskId']
        end
      end

      # notebook session列表信息。
      class NotebookSessions < TencentCloud::Common::AbstractModel
        # @param Kind: 类型，当前支持：spark、pyspark、sparkr、sql
        # @type Kind: String
        # @param SessionId: Session唯一标识
        # @type SessionId: String
        # @param ProxyUser: 代理用户，默认为root
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyUser: String
        # @param State: Session状态，包含：not_started（未启动）、starting（已启动）、idle（等待输入）、busy(正在运行statement)、shutting_down（停止）、error（异常）、dead（已退出）、killed（被杀死）、success（正常停止）
        # @type State: String
        # @param SparkAppId: Spark任务返回的AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppId: String
        # @param Name: Session名称
        # @type Name: String
        # @param CreateTime: Session创建时间
        # @type CreateTime: String
        # @param DataEngineName: 引擎名称
        # @type DataEngineName: String
        # @param LastRunningTime: 最新的运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastRunningTime: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param SparkUiUrl: spark ui地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkUiUrl: String

        attr_accessor :Kind, :SessionId, :ProxyUser, :State, :SparkAppId, :Name, :CreateTime, :DataEngineName, :LastRunningTime, :Creator, :SparkUiUrl

        def initialize(kind=nil, sessionid=nil, proxyuser=nil, state=nil, sparkappid=nil, name=nil, createtime=nil, dataenginename=nil, lastrunningtime=nil, creator=nil, sparkuiurl=nil)
          @Kind = kind
          @SessionId = sessionid
          @ProxyUser = proxyuser
          @State = state
          @SparkAppId = sparkappid
          @Name = name
          @CreateTime = createtime
          @DataEngineName = dataenginename
          @LastRunningTime = lastrunningtime
          @Creator = creator
          @SparkUiUrl = sparkuiurl
        end

        def deserialize(params)
          @Kind = params['Kind']
          @SessionId = params['SessionId']
          @ProxyUser = params['ProxyUser']
          @State = params['State']
          @SparkAppId = params['SparkAppId']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @DataEngineName = params['DataEngineName']
          @LastRunningTime = params['LastRunningTime']
          @Creator = params['Creator']
          @SparkUiUrl = params['SparkUiUrl']
        end
      end

      # 数据格式其它类型。
      class Other < TencentCloud::Common::AbstractModel
        # @param Format: 枚举类型，默认值为Json，可选值为[Json, Parquet, ORC, AVRD]之一。
        # @type Format: String

        attr_accessor :Format

        def initialize(format=nil)
          @Format = format
        end

        def deserialize(params)
          @Format = params['Format']
        end
      end

      # 其他数据源
      class OtherDatasourceConnection < TencentCloud::Common::AbstractModel
        # @param Location: 网络参数
        # @type Location: :class:`Tencentcloud::Dlc.v20210125.models.DatasourceConnectionLocation`

        attr_accessor :Location

        def initialize(location=nil)
          @Location = location
        end

        def deserialize(params)
          unless params['Location'].nil?
            @Location = DatasourceConnectionLocation.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # 数据表分块信息。
      class Partition < TencentCloud::Common::AbstractModel
        # @param Name: 分区列名。
        # @type Name: String
        # @param Type: 分区类型。
        # @type Type: String
        # @param Comment: 对分区的描述。
        # @type Comment: String
        # @param Transform: 隐式分区转换策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transform: String
        # @param TransformArgs: 转换策略参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransformArgs: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer

        attr_accessor :Name, :Type, :Comment, :Transform, :TransformArgs, :CreateTime

        def initialize(name=nil, type=nil, comment=nil, transform=nil, transformargs=nil, createtime=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Transform = transform
          @TransformArgs = transformargs
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Transform = params['Transform']
          @TransformArgs = params['TransformArgs']
          @CreateTime = params['CreateTime']
        end
      end

      # 权限对象
      class Policy < TencentCloud::Common::AbstractModel
        # @param Database: 需要授权的数据库名，填*代表当前Catalog下所有数据库。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别时只允许填空，其他类型下可以任意指定数据库。
        # @type Database: String
        # @param Catalog: 需要授权的数据源名称，管理员级别下只支持填*（代表该级别全部资源）；数据源级别和数据库级别鉴权的情况下，只支持填COSDataCatalog或者*；在数据表级别鉴权下可以填写用户自定义数据源。不填情况下默认为DataLakeCatalog。注意：如果是对用户自定义数据源进行鉴权，DLC能够管理的权限是用户接入数据源的时候提供的账户的子集。
        # @type Catalog: String
        # @param Table: 需要授权的表名，填*代表当前Database下所有表。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别、数据库级别时只允许填空，其他类型下可以任意指定数据表。
        # @type Table: String
        # @param Operation: 授权的权限操作，对于不同级别的鉴权提供不同操作。管理员权限：ALL，不填默认为ALL；数据连接级鉴权：CREATE；数据库级别鉴权：ALL、CREATE、ALTER、DROP；数据表权限：ALL、SELECT、INSERT、ALTER、DELETE、DROP、UPDATE。注意：在数据表权限下，指定的数据源不为COSDataCatalog的时候，只支持SELECT操作。
        # @type Operation: String
        # @param PolicyType: 授权类型，现在支持八种授权类型：ADMIN:管理员级别鉴权 DATASOURCE：数据连接级别鉴权 DATABASE：数据库级别鉴权 TABLE：表级别鉴权 VIEW：视图级别鉴权 FUNCTION：函数级别鉴权 COLUMN：列级别鉴权 ENGINE：数据引擎鉴权。不填默认为管理员级别鉴权。
        # @type PolicyType: String
        # @param Function: 需要授权的函数名，填*代表当前Catalog下所有函数。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别时只允许填空，其他类型下可以任意指定函数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Function: String
        # @param View: 需要授权的视图，填*代表当前Database下所有视图。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别、数据库级别时只允许填空，其他类型下可以任意指定视图。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type View: String
        # @param Column: 需要授权的列，填*代表当前所有列。当授权类型为管理员级别时，只允许填“*”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Column: String
        # @param DataEngine: 需要授权的数据引擎，填*代表当前所有引擎。当授权类型为管理员级别时，只允许填“*”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngine: String
        # @param ReAuth: 用户是否可以进行二次授权。当为true的时候，被授权的用户可以将本次获取的权限再次授权给其他子用户。默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReAuth: Boolean
        # @param Source: 权限来源，入参不填。USER：权限来自用户本身；WORKGROUP：权限来自绑定的工作组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Mode: 授权模式，入参不填。COMMON：普通模式；SENIOR：高级模式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Operator: 操作者，入参不填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param CreateTime: 权限创建的时间，入参不填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SourceId: 权限所属工作组的ID，只有当该权限的来源为工作组时才会有值。即仅当Source字段的值为WORKGROUP时该字段才有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceId: Integer
        # @param SourceName: 权限所属工作组的名称，只有当该权限的来源为工作组时才会有值。即仅当Source字段的值为WORKGROUP时该字段才有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceName: String
        # @param Id: 策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :Database, :Catalog, :Table, :Operation, :PolicyType, :Function, :View, :Column, :DataEngine, :ReAuth, :Source, :Mode, :Operator, :CreateTime, :SourceId, :SourceName, :Id

        def initialize(database=nil, catalog=nil, table=nil, operation=nil, policytype=nil, function=nil, view=nil, column=nil, dataengine=nil, reauth=nil, source=nil, mode=nil, operator=nil, createtime=nil, sourceid=nil, sourcename=nil, id=nil)
          @Database = database
          @Catalog = catalog
          @Table = table
          @Operation = operation
          @PolicyType = policytype
          @Function = function
          @View = view
          @Column = column
          @DataEngine = dataengine
          @ReAuth = reauth
          @Source = source
          @Mode = mode
          @Operator = operator
          @CreateTime = createtime
          @SourceId = sourceid
          @SourceName = sourcename
          @Id = id
        end

        def deserialize(params)
          @Database = params['Database']
          @Catalog = params['Catalog']
          @Table = params['Table']
          @Operation = params['Operation']
          @PolicyType = params['PolicyType']
          @Function = params['Function']
          @View = params['View']
          @Column = params['Column']
          @DataEngine = params['DataEngine']
          @ReAuth = params['ReAuth']
          @Source = params['Source']
          @Mode = params['Mode']
          @Operator = params['Operator']
          @CreateTime = params['CreateTime']
          @SourceId = params['SourceId']
          @SourceName = params['SourceName']
          @Id = params['Id']
        end
      end

      # 策略集合
      class Policys < TencentCloud::Common::AbstractModel
        # @param PolicySet: 策略集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param TotalCount: 策略总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :PolicySet, :TotalCount

        def initialize(policyset=nil, totalcount=nil)
          @PolicySet = policyset
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # Presto监控指标
      class PrestoMonitorMetrics < TencentCloud::Common::AbstractModel
        # @param LocalCacheHitRate: 	Alluxio本地缓存命中率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalCacheHitRate: Float
        # @param FragmentCacheHitRate: Fragment缓存命中率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FragmentCacheHitRate: Float

        attr_accessor :LocalCacheHitRate, :FragmentCacheHitRate

        def initialize(localcachehitrate=nil, fragmentcachehitrate=nil)
          @LocalCacheHitRate = localcachehitrate
          @FragmentCacheHitRate = fragmentcachehitrate
        end

        def deserialize(params)
          @LocalCacheHitRate = params['LocalCacheHitRate']
          @FragmentCacheHitRate = params['FragmentCacheHitRate']
        end
      end

      # 数据库和数据表属性信息
      class Property < TencentCloud::Common::AbstractModel
        # @param Key: 属性key名称。
        # @type Key: String
        # @param Value: 属性key对应的value。
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

      # python-spark镜像信息。
      class PythonSparkImage < TencentCloud::Common::AbstractModel
        # @param SparkImageId: spark镜像唯一id
        # @type SparkImageId: String
        # @param ChildImageVersionId: 集群小版本镜像id
        # @type ChildImageVersionId: String
        # @param SparkImageVersion: spark镜像名称
        # @type SparkImageVersion: String
        # @param Description: spark镜像描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :SparkImageId, :ChildImageVersionId, :SparkImageVersion, :Description, :CreateTime, :UpdateTime

        def initialize(sparkimageid=nil, childimageversionid=nil, sparkimageversion=nil, description=nil, createtime=nil, updatetime=nil)
          @SparkImageId = sparkimageid
          @ChildImageVersionId = childimageversionid
          @SparkImageVersion = sparkimageversion
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @SparkImageId = params['SparkImageId']
          @ChildImageVersionId = params['ChildImageVersionId']
          @SparkImageVersion = params['SparkImageVersion']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # QueryResult请求参数结构体
      class QueryResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param NextToken: lastReadFile为上一次读取的文件，lastReadOffset为上一次读取到的位置
        # @type NextToken: String

        attr_accessor :TaskId, :NextToken

        def initialize(taskid=nil, nexttoken=nil)
          @TaskId = taskid
          @NextToken = nexttoken
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @NextToken = params['NextToken']
        end
      end

      # QueryResult返回参数结构体
      class QueryResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param ResultSet: 结果数据
        # @type ResultSet: String
        # @param ResultSchema: schema
        # @type ResultSchema: Array
        # @param NextToken: 分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResultSet, :ResultSchema, :NextToken, :RequestId

        def initialize(taskid=nil, resultset=nil, resultschema=nil, nexttoken=nil, requestid=nil)
          @TaskId = taskid
          @ResultSet = resultset
          @ResultSchema = resultschema
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResultSet = params['ResultSet']
          unless params['ResultSchema'].nil?
            @ResultSchema = []
            params['ResultSchema'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @ResultSchema << column_tmp
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # QueryTaskCostDetail请求参数结构体
      class QueryTaskCostDetailRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,其中task-id支持最大50个过滤个数，其他过滤参数支持的总数不超过5个。
        # task-id - String - （任务ID准确过滤）task-id取值形如：e386471f-139a-4e59-877f-50ece8135b99。
        # task-state - String - （任务状态过滤）取值范围 0(初始化)， 1(运行中)， 2(成功)， -1(失败)。
        # task-sql-keyword - String - （SQL语句关键字模糊过滤）取值形如：DROP TABLE。
        # task-operator- string （子uin过滤）
        # @type Filters: Array
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。默认为45天前的当前时刻
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS时间跨度在(0,30天]，支持最近45天数据查询。默认为当前时刻
        # @type EndTime: String
        # @param DataEngineName: 数据引擎名称，用于筛选
        # @type DataEngineName: String
        # @param SearchAfter: 下一页的标识
        # @type SearchAfter: String
        # @param PageSize: 每页的大小
        # @type PageSize: Integer

        attr_accessor :Filters, :StartTime, :EndTime, :DataEngineName, :SearchAfter, :PageSize

        def initialize(filters=nil, starttime=nil, endtime=nil, dataenginename=nil, searchafter=nil, pagesize=nil)
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @DataEngineName = dataenginename
          @SearchAfter = searchafter
          @PageSize = pagesize
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
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DataEngineName = params['DataEngineName']
          @SearchAfter = params['SearchAfter']
          @PageSize = params['PageSize']
        end
      end

      # QueryTaskCostDetail返回参数结构体
      class QueryTaskCostDetailResponse < TencentCloud::Common::AbstractModel
        # @param SearchAfter: 下一页的标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchAfter: String
        # @param Data: 返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SearchAfter, :Data, :RequestId

        def initialize(searchafter=nil, data=nil, requestid=nil)
          @SearchAfter = searchafter
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @SearchAfter = params['SearchAfter']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # RenewDataEngine请求参数结构体
      class RenewDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: CU队列名称
        # @type DataEngineName: String
        # @param TimeSpan: 续费时长，单位月，最少续费1一个月
        # @type TimeSpan: Integer
        # @param PayMode: 付费类型，默认为1，预付费
        # @type PayMode: Integer
        # @param TimeUnit: 单位，默认m，仅能填m
        # @type TimeUnit: String
        # @param RenewFlag: 自动续费标志，0，初始状态，默认不自动续费，若用户有预付费不停服特权，自动续费。1：自动续费。2：明确不自动续费。不传该参数默认为0
        # @type RenewFlag: Integer

        attr_accessor :DataEngineName, :TimeSpan, :PayMode, :TimeUnit, :RenewFlag

        def initialize(dataenginename=nil, timespan=nil, paymode=nil, timeunit=nil, renewflag=nil)
          @DataEngineName = dataenginename
          @TimeSpan = timespan
          @PayMode = paymode
          @TimeUnit = timeunit
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @TimeSpan = params['TimeSpan']
          @PayMode = params['PayMode']
          @TimeUnit = params['TimeUnit']
          @RenewFlag = params['RenewFlag']
        end
      end

      # RenewDataEngine返回参数结构体
      class RenewDataEngineResponse < TencentCloud::Common::AbstractModel
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

      # ReportHeartbeatMetaData请求参数结构体
      class ReportHeartbeatMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param TxnId: 事务ID
        # @type TxnId: Integer

        attr_accessor :DatasourceConnectionName, :LockId, :TxnId

        def initialize(datasourceconnectionname=nil, lockid=nil, txnid=nil)
          @DatasourceConnectionName = datasourceconnectionname
          @LockId = lockid
          @TxnId = txnid
        end

        def deserialize(params)
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @LockId = params['LockId']
          @TxnId = params['TxnId']
        end
      end

      # ReportHeartbeatMetaData返回参数结构体
      class ReportHeartbeatMetaDataResponse < TencentCloud::Common::AbstractModel
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

      # ResourceInfo
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param AttributionType: 归属类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributionType: String
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Name: 引擎名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Instance: 如资源类型为spark-sql 取值为Name, 如为spark-batch 取值为session app_name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instance: String
        # @param Favor: 亲和性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Favor: Array
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :AttributionType, :ResourceType, :Name, :Instance, :Favor, :Status

        def initialize(attributiontype=nil, resourcetype=nil, name=nil, instance=nil, favor=nil, status=nil)
          @AttributionType = attributiontype
          @ResourceType = resourcetype
          @Name = name
          @Instance = instance
          @Favor = favor
          @Status = status
        end

        def deserialize(params)
          @AttributionType = params['AttributionType']
          @ResourceType = params['ResourceType']
          @Name = params['Name']
          @Instance = params['Instance']
          unless params['Favor'].nil?
            @Favor = []
            params['Favor'].each do |i|
              favorinfo_tmp = FavorInfo.new
              favorinfo_tmp.deserialize(i)
              @Favor << favorinfo_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # RestartDataEngine请求参数结构体
      class RestartDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # @type DataEngineId: String
        # @param ForcedOperation: 是否强制重启，忽略任务
        # @type ForcedOperation: Boolean

        attr_accessor :DataEngineId, :ForcedOperation

        def initialize(dataengineid=nil, forcedoperation=nil)
          @DataEngineId = dataengineid
          @ForcedOperation = forcedoperation
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          @ForcedOperation = params['ForcedOperation']
        end
      end

      # RestartDataEngine返回参数结构体
      class RestartDataEngineResponse < TencentCloud::Common::AbstractModel
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

      # RollbackDataEngineImage请求参数结构体
      class RollbackDataEngineImageRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # @type DataEngineId: String
        # @param FromRecordId: 检查是否能回滚的接口返回的FromRecordId参数
        # @type FromRecordId: String
        # @param ToRecordId: 检查是否能回滚的接口返回的ToRecordId参数
        # @type ToRecordId: String

        attr_accessor :DataEngineId, :FromRecordId, :ToRecordId

        def initialize(dataengineid=nil, fromrecordid=nil, torecordid=nil)
          @DataEngineId = dataengineid
          @FromRecordId = fromrecordid
          @ToRecordId = torecordid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          @FromRecordId = params['FromRecordId']
          @ToRecordId = params['ToRecordId']
        end
      end

      # RollbackDataEngineImage返回参数结构体
      class RollbackDataEngineImageResponse < TencentCloud::Common::AbstractModel
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

      #  SQL查询任务
      class SQLTask < TencentCloud::Common::AbstractModel
        # @param SQL: base64加密后的SQL语句
        # @type SQL: String
        # @param Config: 任务的配置信息
        # @type Config: Array

        attr_accessor :SQL, :Config

        def initialize(sql=nil, config=nil)
          @SQL = sql
          @Config = config
        end

        def deserialize(params)
          @SQL = params['SQL']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Config << kvpair_tmp
            end
          end
        end
      end

      # script实例。
      class Script < TencentCloud::Common::AbstractModel
        # @param ScriptId: 脚本Id，长度36字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptId: String
        # @param ScriptName: 脚本名称，长度0-25。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptName: String
        # @param ScriptDesc: 脚本描述，长度0-50。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptDesc: String
        # @param DatabaseName: 默认关联数据库。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SQLStatement: SQL描述，长度0-10000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLStatement: String
        # @param UpdateTime: 更新时间戳， 单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer

        attr_accessor :ScriptId, :ScriptName, :ScriptDesc, :DatabaseName, :SQLStatement, :UpdateTime

        def initialize(scriptid=nil, scriptname=nil, scriptdesc=nil, databasename=nil, sqlstatement=nil, updatetime=nil)
          @ScriptId = scriptid
          @ScriptName = scriptname
          @ScriptDesc = scriptdesc
          @DatabaseName = databasename
          @SQLStatement = sqlstatement
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ScriptName = params['ScriptName']
          @ScriptDesc = params['ScriptDesc']
          @DatabaseName = params['DatabaseName']
          @SQLStatement = params['SQLStatement']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Spark批作业集群Session资源配置模板；
      class SessionResourceTemplate < TencentCloud::Common::AbstractModel
        # @param DriverSize: driver规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DriverSize: String
        # @param ExecutorSize: executor规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorSize: String
        # @param ExecutorNums: 指定executor数量，最小值为1，最大值小于集群规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorNums: Integer
        # @param ExecutorMaxNumbers: 指定executor max数量（动态配置场景下），最小值为1，最大值小于集群规格（当ExecutorMaxNumbers小于ExecutorNums时，改值设定为ExecutorNums）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorMaxNumbers: Integer

        attr_accessor :DriverSize, :ExecutorSize, :ExecutorNums, :ExecutorMaxNumbers

        def initialize(driversize=nil, executorsize=nil, executornums=nil, executormaxnumbers=nil)
          @DriverSize = driversize
          @ExecutorSize = executorsize
          @ExecutorNums = executornums
          @ExecutorMaxNumbers = executormaxnumbers
        end

        def deserialize(params)
          @DriverSize = params['DriverSize']
          @ExecutorSize = params['ExecutorSize']
          @ExecutorNums = params['ExecutorNums']
          @ExecutorMaxNumbers = params['ExecutorMaxNumbers']
        end
      end

      # SmartOptimizerIndexPolicy
      class SmartOptimizerIndexPolicy < TencentCloud::Common::AbstractModel
        # @param IndexEnable: 开启索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexEnable: String

        attr_accessor :IndexEnable

        def initialize(indexenable=nil)
          @IndexEnable = indexenable
        end

        def deserialize(params)
          @IndexEnable = params['IndexEnable']
        end
      end

      # SmartOptimizerLifecyclePolicy
      class SmartOptimizerLifecyclePolicy < TencentCloud::Common::AbstractModel
        # @param LifecycleEnable: 生命周期启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifecycleEnable: String
        # @param Expiration: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expiration: Integer
        # @param DropTable: 是否删表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropTable: Boolean

        attr_accessor :LifecycleEnable, :Expiration, :DropTable

        def initialize(lifecycleenable=nil, expiration=nil, droptable=nil)
          @LifecycleEnable = lifecycleenable
          @Expiration = expiration
          @DropTable = droptable
        end

        def deserialize(params)
          @LifecycleEnable = params['LifecycleEnable']
          @Expiration = params['Expiration']
          @DropTable = params['DropTable']
        end
      end

      # SmartOptimizerPolicy
      class SmartOptimizerPolicy < TencentCloud::Common::AbstractModel
        # @param Inherit: 是否继承
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Inherit: String
        # @param Resources: ResourceInfo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param Written: SmartOptimizerWrittenPolicy
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Written: :class:`Tencentcloud::Dlc.v20210125.models.SmartOptimizerWrittenPolicy`
        # @param Lifecycle: SmartOptimizerLifecyclePolicy
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lifecycle: :class:`Tencentcloud::Dlc.v20210125.models.SmartOptimizerLifecyclePolicy`
        # @param Index: SmartOptimizerIndexPolicy
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: :class:`Tencentcloud::Dlc.v20210125.models.SmartOptimizerIndexPolicy`

        attr_accessor :Inherit, :Resources, :Written, :Lifecycle, :Index

        def initialize(inherit=nil, resources=nil, written=nil, lifecycle=nil, index=nil)
          @Inherit = inherit
          @Resources = resources
          @Written = written
          @Lifecycle = lifecycle
          @Index = index
        end

        def deserialize(params)
          @Inherit = params['Inherit']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @Resources << resourceinfo_tmp
            end
          end
          unless params['Written'].nil?
            @Written = SmartOptimizerWrittenPolicy.new
            @Written.deserialize(params['Written'])
          end
          unless params['Lifecycle'].nil?
            @Lifecycle = SmartOptimizerLifecyclePolicy.new
            @Lifecycle.deserialize(params['Lifecycle'])
          end
          unless params['Index'].nil?
            @Index = SmartOptimizerIndexPolicy.new
            @Index.deserialize(params['Index'])
          end
        end
      end

      # SmartOptimizerWrittenPolicy
      class SmartOptimizerWrittenPolicy < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # SmartPolicyRequest
      class SmartPolicy < TencentCloud::Common::AbstractModel
        # @param BaseInfo: 基础信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.SmartPolicyBaseInfo`
        # @param Policy: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Policy: :class:`Tencentcloud::Dlc.v20210125.models.SmartOptimizerPolicy`

        attr_accessor :BaseInfo, :Policy

        def initialize(baseinfo=nil, policy=nil)
          @BaseInfo = baseinfo
          @Policy = policy
        end

        def deserialize(params)
          unless params['BaseInfo'].nil?
            @BaseInfo = SmartPolicyBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Policy'].nil?
            @Policy = SmartOptimizerPolicy.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # SmartPolicyBaseInfo
      class SmartPolicyBaseInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param PolicyType: Catalog/Database/Table
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param Catalog: Catalog名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param Database: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param AppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String

        attr_accessor :Uin, :PolicyType, :Catalog, :Database, :Table, :AppId

        def initialize(uin=nil, policytype=nil, catalog=nil, database=nil, table=nil, appid=nil)
          @Uin = uin
          @PolicyType = policytype
          @Catalog = catalog
          @Database = database
          @Table = table
          @AppId = appid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @PolicyType = params['PolicyType']
          @Catalog = params['Catalog']
          @Database = params['Database']
          @Table = params['Table']
          @AppId = params['AppId']
        end
      end

      # spark作业详情。
      class SparkJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业ID
        # @type JobId: String
        # @param JobName: spark作业名
        # @type JobName: String
        # @param JobType: spark作业类型，可去1或者2，1表示batch作业， 2表示streaming作业
        # @type JobType: Integer
        # @param DataEngine: 引擎名
        # @type DataEngine: String
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: 程序包是否本地上传，cos或者lakefs
        # @type IsLocal: String
        # @param JobFile: 程序包路径
        # @type JobFile: String
        # @param RoleArn: 角色ID
        # @type RoleArn: Integer
        # @param MainClass: spark作业运行主类
        # @type MainClass: String
        # @param CmdArgs: 命令行参数，spark作业命令行参数，空格分隔
        # @type CmdArgs: String
        # @param JobConf: spark原生配置，换行符分隔
        # @type JobConf: String
        # @param IsLocalJars: 依赖jars是否本地上传，cos或者lakefs
        # @type IsLocalJars: String
        # @param JobJars: spark作业依赖jars，逗号分隔
        # @type JobJars: String
        # @param IsLocalFiles: 依赖文件是否本地上传，cos或者lakefs
        # @type IsLocalFiles: String
        # @param JobFiles: spark作业依赖文件，逗号分隔
        # @type JobFiles: String
        # @param JobDriverSize: spark作业driver资源大小
        # @type JobDriverSize: String
        # @param JobExecutorSize: spark作业executor资源大小
        # @type JobExecutorSize: String
        # @param JobExecutorNums: spark作业executor个数
        # @type JobExecutorNums: Integer
        # @param JobMaxAttempts: spark流任务最大重试次数
        # @type JobMaxAttempts: Integer
        # @param JobCreator: spark作业创建者
        # @type JobCreator: String
        # @param JobCreateTime: spark作业创建时间
        # @type JobCreateTime: Integer
        # @param JobUpdateTime: spark作业更新时间
        # @type JobUpdateTime: Integer
        # @param CurrentTaskId: spark作业最近任务ID
        # @type CurrentTaskId: String
        # @param JobStatus: spark作业最近运行状态
        # @type JobStatus: Integer
        # @param StreamingStat: spark流作业统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamingStat: :class:`Tencentcloud::Dlc.v20210125.models.StreamingStatistics`
        # @param DataSource: 数据源名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: 注：该返回值已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppPythonFiles: String
        # @param IsLocalArchives: archives：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLocalArchives: String
        # @param JobArchives: archives：依赖资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobArchives: String
        # @param SparkImage: Spark Image 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkImage: String
        # @param JobPythonFiles: pyspark：python依赖, 除py文件外，还支持zip/egg等归档格式，多文件以逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobPythonFiles: String
        # @param TaskNum: 当前job正在运行或准备运行的任务个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNum: Integer
        # @param DataEngineStatus: 引擎状态：-100（默认：未知状态），-2~11：引擎正常状态；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineStatus: Integer
        # @param JobExecutorMaxNumbers: 指定的Executor数量（最大值），默认为1，当开启动态分配有效，若未开启，则该值等于JobExecutorNums
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobExecutorMaxNumbers: Integer
        # @param SparkImageVersion: 镜像版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkImageVersion: String
        # @param SessionId: 查询脚本关联id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param DataEngineClusterType: spark_emr_livy
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineClusterType: String
        # @param DataEngineImageVersion: Spark 3.2-EMR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineImageVersion: String
        # @param IsInherit: 任务资源配置是否继承集群模板，0（默认）不继承，1：继承
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsInherit: Integer
        # @param IsSessionStarted: 是否使用session脚本的sql运行任务：false：否，true：是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSessionStarted: Boolean

        attr_accessor :JobId, :JobName, :JobType, :DataEngine, :Eni, :IsLocal, :JobFile, :RoleArn, :MainClass, :CmdArgs, :JobConf, :IsLocalJars, :JobJars, :IsLocalFiles, :JobFiles, :JobDriverSize, :JobExecutorSize, :JobExecutorNums, :JobMaxAttempts, :JobCreator, :JobCreateTime, :JobUpdateTime, :CurrentTaskId, :JobStatus, :StreamingStat, :DataSource, :IsLocalPythonFiles, :AppPythonFiles, :IsLocalArchives, :JobArchives, :SparkImage, :JobPythonFiles, :TaskNum, :DataEngineStatus, :JobExecutorMaxNumbers, :SparkImageVersion, :SessionId, :DataEngineClusterType, :DataEngineImageVersion, :IsInherit, :IsSessionStarted

        def initialize(jobid=nil, jobname=nil, jobtype=nil, dataengine=nil, eni=nil, islocal=nil, jobfile=nil, rolearn=nil, mainclass=nil, cmdargs=nil, jobconf=nil, islocaljars=nil, jobjars=nil, islocalfiles=nil, jobfiles=nil, jobdriversize=nil, jobexecutorsize=nil, jobexecutornums=nil, jobmaxattempts=nil, jobcreator=nil, jobcreatetime=nil, jobupdatetime=nil, currenttaskid=nil, jobstatus=nil, streamingstat=nil, datasource=nil, islocalpythonfiles=nil, apppythonfiles=nil, islocalarchives=nil, jobarchives=nil, sparkimage=nil, jobpythonfiles=nil, tasknum=nil, dataenginestatus=nil, jobexecutormaxnumbers=nil, sparkimageversion=nil, sessionid=nil, dataengineclustertype=nil, dataengineimageversion=nil, isinherit=nil, issessionstarted=nil)
          @JobId = jobid
          @JobName = jobname
          @JobType = jobtype
          @DataEngine = dataengine
          @Eni = eni
          @IsLocal = islocal
          @JobFile = jobfile
          @RoleArn = rolearn
          @MainClass = mainclass
          @CmdArgs = cmdargs
          @JobConf = jobconf
          @IsLocalJars = islocaljars
          @JobJars = jobjars
          @IsLocalFiles = islocalfiles
          @JobFiles = jobfiles
          @JobDriverSize = jobdriversize
          @JobExecutorSize = jobexecutorsize
          @JobExecutorNums = jobexecutornums
          @JobMaxAttempts = jobmaxattempts
          @JobCreator = jobcreator
          @JobCreateTime = jobcreatetime
          @JobUpdateTime = jobupdatetime
          @CurrentTaskId = currenttaskid
          @JobStatus = jobstatus
          @StreamingStat = streamingstat
          @DataSource = datasource
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @IsLocalArchives = islocalarchives
          @JobArchives = jobarchives
          @SparkImage = sparkimage
          @JobPythonFiles = jobpythonfiles
          @TaskNum = tasknum
          @DataEngineStatus = dataenginestatus
          @JobExecutorMaxNumbers = jobexecutormaxnumbers
          @SparkImageVersion = sparkimageversion
          @SessionId = sessionid
          @DataEngineClusterType = dataengineclustertype
          @DataEngineImageVersion = dataengineimageversion
          @IsInherit = isinherit
          @IsSessionStarted = issessionstarted
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @JobType = params['JobType']
          @DataEngine = params['DataEngine']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @JobFile = params['JobFile']
          @RoleArn = params['RoleArn']
          @MainClass = params['MainClass']
          @CmdArgs = params['CmdArgs']
          @JobConf = params['JobConf']
          @IsLocalJars = params['IsLocalJars']
          @JobJars = params['JobJars']
          @IsLocalFiles = params['IsLocalFiles']
          @JobFiles = params['JobFiles']
          @JobDriverSize = params['JobDriverSize']
          @JobExecutorSize = params['JobExecutorSize']
          @JobExecutorNums = params['JobExecutorNums']
          @JobMaxAttempts = params['JobMaxAttempts']
          @JobCreator = params['JobCreator']
          @JobCreateTime = params['JobCreateTime']
          @JobUpdateTime = params['JobUpdateTime']
          @CurrentTaskId = params['CurrentTaskId']
          @JobStatus = params['JobStatus']
          unless params['StreamingStat'].nil?
            @StreamingStat = StreamingStatistics.new
            @StreamingStat.deserialize(params['StreamingStat'])
          end
          @DataSource = params['DataSource']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @IsLocalArchives = params['IsLocalArchives']
          @JobArchives = params['JobArchives']
          @SparkImage = params['SparkImage']
          @JobPythonFiles = params['JobPythonFiles']
          @TaskNum = params['TaskNum']
          @DataEngineStatus = params['DataEngineStatus']
          @JobExecutorMaxNumbers = params['JobExecutorMaxNumbers']
          @SparkImageVersion = params['SparkImageVersion']
          @SessionId = params['SessionId']
          @DataEngineClusterType = params['DataEngineClusterType']
          @DataEngineImageVersion = params['DataEngineImageVersion']
          @IsInherit = params['IsInherit']
          @IsSessionStarted = params['IsSessionStarted']
        end
      end

      # Spark监控数据
      class SparkMonitorMetrics < TencentCloud::Common::AbstractModel
        # @param ShuffleWriteBytesCos: shuffle写溢出到COS数据量，单位：byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShuffleWriteBytesCos: Integer
        # @param ShuffleWriteBytesTotal: shuffle写数据量，单位：byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShuffleWriteBytesTotal: Integer

        attr_accessor :ShuffleWriteBytesCos, :ShuffleWriteBytesTotal

        def initialize(shufflewritebytescos=nil, shufflewritebytestotal=nil)
          @ShuffleWriteBytesCos = shufflewritebytescos
          @ShuffleWriteBytesTotal = shufflewritebytestotal
        end

        def deserialize(params)
          @ShuffleWriteBytesCos = params['ShuffleWriteBytesCos']
          @ShuffleWriteBytesTotal = params['ShuffleWriteBytesTotal']
        end
      end

      # SparkSQL批任务运行日志
      class SparkSessionBatchLog < TencentCloud::Common::AbstractModel
        # @param Step: 日志步骤：BEG/CS/DS/DSS/DSF/FINF/RTO/CANCEL/CT/DT/DTS/DTF/FINT/EXCE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Step: String
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Message: 日志提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Operate: 日志操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operate: Array

        attr_accessor :Step, :Time, :Message, :Operate

        def initialize(step=nil, time=nil, message=nil, operate=nil)
          @Step = step
          @Time = time
          @Message = message
          @Operate = operate
        end

        def deserialize(params)
          @Step = params['Step']
          @Time = params['Time']
          @Message = params['Message']
          unless params['Operate'].nil?
            @Operate = []
            params['Operate'].each do |i|
              sparksessionbatchlogoperate_tmp = SparkSessionBatchLogOperate.new
              sparksessionbatchlogoperate_tmp.deserialize(i)
              @Operate << sparksessionbatchlogoperate_tmp
            end
          end
        end
      end

      # SparkSQL批任务日志操作信息。
      class SparkSessionBatchLogOperate < TencentCloud::Common::AbstractModel
        # @param Text: 操作提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Operate: 操作类型：COPY、LOG、UI、RESULT、List、TAB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operate: String
        # @param Supplement: 补充信息：如：taskid、sessionid、sparkui等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Supplement: Array

        attr_accessor :Text, :Operate, :Supplement

        def initialize(text=nil, operate=nil, supplement=nil)
          @Text = text
          @Operate = operate
          @Supplement = supplement
        end

        def deserialize(params)
          @Text = params['Text']
          @Operate = params['Operate']
          unless params['Supplement'].nil?
            @Supplement = []
            params['Supplement'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Supplement << kvpair_tmp
            end
          end
        end
      end

      # statement信息
      class StatementInformation < TencentCloud::Common::AbstractModel
        # @param TaskId: SQL任务唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param SQL: SQL内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQL: String

        attr_accessor :TaskId, :SQL

        def initialize(taskid=nil, sql=nil)
          @TaskId = taskid
          @SQL = sql
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SQL = params['SQL']
        end
      end

      # notebook session statement输出信息。
      class StatementOutput < TencentCloud::Common::AbstractModel
        # @param ExecutionCount: 执行总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionCount: Integer
        # @param Data: Statement数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Status: Statement状态:ok,error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrorName: 错误名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorName: String
        # @param ErrorValue: 错误类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorValue: String
        # @param ErrorMessage: 错误堆栈信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: Array
        # @param SQLResult: SQL类型任务结果返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLResult: String

        attr_accessor :ExecutionCount, :Data, :Status, :ErrorName, :ErrorValue, :ErrorMessage, :SQLResult

        def initialize(executioncount=nil, data=nil, status=nil, errorname=nil, errorvalue=nil, errormessage=nil, sqlresult=nil)
          @ExecutionCount = executioncount
          @Data = data
          @Status = status
          @ErrorName = errorname
          @ErrorValue = errorvalue
          @ErrorMessage = errormessage
          @SQLResult = sqlresult
        end

        def deserialize(params)
          @ExecutionCount = params['ExecutionCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Data << kvpair_tmp
            end
          end
          @Status = params['Status']
          @ErrorName = params['ErrorName']
          @ErrorValue = params['ErrorValue']
          @ErrorMessage = params['ErrorMessage']
          @SQLResult = params['SQLResult']
        end
      end

      # spark流任务统计信息
      class StreamingStatistics < TencentCloud::Common::AbstractModel
        # @param StartTime: 任务开始时间
        # @type StartTime: String
        # @param Receivers: 数据接收器数
        # @type Receivers: Integer
        # @param NumActiveReceivers: 运行中的接收器数
        # @type NumActiveReceivers: Integer
        # @param NumInactiveReceivers: 不活跃的接收器数
        # @type NumInactiveReceivers: Integer
        # @param NumActiveBatches: 运行中的批数
        # @type NumActiveBatches: Integer
        # @param NumRetainedCompletedBatches: 待处理的批数
        # @type NumRetainedCompletedBatches: Integer
        # @param NumTotalCompletedBatches: 已完成的批数
        # @type NumTotalCompletedBatches: Integer
        # @param AverageInputRate: 平均输入速率
        # @type AverageInputRate: Float
        # @param AverageSchedulingDelay: 平均等待时长
        # @type AverageSchedulingDelay: Float
        # @param AverageProcessingTime: 平均处理时长
        # @type AverageProcessingTime: Float
        # @param AverageTotalDelay: 平均延时
        # @type AverageTotalDelay: Float

        attr_accessor :StartTime, :Receivers, :NumActiveReceivers, :NumInactiveReceivers, :NumActiveBatches, :NumRetainedCompletedBatches, :NumTotalCompletedBatches, :AverageInputRate, :AverageSchedulingDelay, :AverageProcessingTime, :AverageTotalDelay

        def initialize(starttime=nil, receivers=nil, numactivereceivers=nil, numinactivereceivers=nil, numactivebatches=nil, numretainedcompletedbatches=nil, numtotalcompletedbatches=nil, averageinputrate=nil, averageschedulingdelay=nil, averageprocessingtime=nil, averagetotaldelay=nil)
          @StartTime = starttime
          @Receivers = receivers
          @NumActiveReceivers = numactivereceivers
          @NumInactiveReceivers = numinactivereceivers
          @NumActiveBatches = numactivebatches
          @NumRetainedCompletedBatches = numretainedcompletedbatches
          @NumTotalCompletedBatches = numtotalcompletedbatches
          @AverageInputRate = averageinputrate
          @AverageSchedulingDelay = averageschedulingdelay
          @AverageProcessingTime = averageprocessingtime
          @AverageTotalDelay = averagetotaldelay
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Receivers = params['Receivers']
          @NumActiveReceivers = params['NumActiveReceivers']
          @NumInactiveReceivers = params['NumInactiveReceivers']
          @NumActiveBatches = params['NumActiveBatches']
          @NumRetainedCompletedBatches = params['NumRetainedCompletedBatches']
          @NumTotalCompletedBatches = params['NumTotalCompletedBatches']
          @AverageInputRate = params['AverageInputRate']
          @AverageSchedulingDelay = params['AverageSchedulingDelay']
          @AverageProcessingTime = params['AverageProcessingTime']
          @AverageTotalDelay = params['AverageTotalDelay']
        end
      end

      # SuspendResumeDataEngine请求参数结构体
      class SuspendResumeDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: 虚拟集群名称
        # @type DataEngineName: String
        # @param Operate: 操作类型 suspend/resume
        # @type Operate: String

        attr_accessor :DataEngineName, :Operate

        def initialize(dataenginename=nil, operate=nil)
          @DataEngineName = dataenginename
          @Operate = operate
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @Operate = params['Operate']
        end
      end

      # SuspendResumeDataEngine返回参数结构体
      class SuspendResumeDataEngineResponse < TencentCloud::Common::AbstractModel
        # @param DataEngineName: 虚拟集群详细信息
        # @type DataEngineName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataEngineName, :RequestId

        def initialize(dataenginename=nil, requestid=nil)
          @DataEngineName = dataenginename
          @RequestId = requestid
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @RequestId = params['RequestId']
        end
      end

      # SwitchDataEngineImage请求参数结构体
      class SwitchDataEngineImageRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # @type DataEngineId: String
        # @param NewImageVersionId: 新镜像版本ID
        # @type NewImageVersionId: String

        attr_accessor :DataEngineId, :NewImageVersionId

        def initialize(dataengineid=nil, newimageversionid=nil)
          @DataEngineId = dataengineid
          @NewImageVersionId = newimageversionid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          @NewImageVersionId = params['NewImageVersionId']
        end
      end

      # SwitchDataEngineImage返回参数结构体
      class SwitchDataEngineImageResponse < TencentCloud::Common::AbstractModel
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

      # SwitchDataEngine请求参数结构体
      class SwitchDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineName: 主集群名称
        # @type DataEngineName: String
        # @param StartStandbyCluster: 是否开启备集群
        # @type StartStandbyCluster: Boolean

        attr_accessor :DataEngineName, :StartStandbyCluster

        def initialize(dataenginename=nil, startstandbycluster=nil)
          @DataEngineName = dataenginename
          @StartStandbyCluster = startstandbycluster
        end

        def deserialize(params)
          @DataEngineName = params['DataEngineName']
          @StartStandbyCluster = params['StartStandbyCluster']
        end
      end

      # SwitchDataEngine返回参数结构体
      class SwitchDataEngineResponse < TencentCloud::Common::AbstractModel
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

      # 表字段描述信息
      class TColumn < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Type: 字段类型
        # @type Type: String
        # @param Comment: 字段描述
        # @type Comment: String
        # @param Default: 字段默认值
        # @type Default: String
        # @param NotNull: 字段是否是非空
        # @type NotNull: Boolean
        # @param Precision: 表示整个 numeric 的长度,取值1-38
        # @type Precision: Integer
        # @param Scale: 表示小数部分的长度
        # Scale小于Precision
        # @type Scale: Integer

        attr_accessor :Name, :Type, :Comment, :Default, :NotNull, :Precision, :Scale

        def initialize(name=nil, type=nil, comment=nil, default=nil, notnull=nil, precision=nil, scale=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Default = default
          @NotNull = notnull
          @Precision = precision
          @Scale = scale
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Default = params['Default']
          @NotNull = params['NotNull']
          @Precision = params['Precision']
          @Scale = params['Scale']
        end
      end

      # 表分区字段信息
      class TPartition < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Type: 字段类型
        # @type Type: String
        # @param Comment: 字段描述
        # @type Comment: String
        # @param PartitionType: 分区类型
        # @type PartitionType: String
        # @param PartitionFormat: 分区格式
        # @type PartitionFormat: String
        # @param PartitionDot: 分区分隔数
        # @type PartitionDot: Integer
        # @param Transform: 分区转换策略
        # @type Transform: String
        # @param TransformArgs: 策略参数
        # @type TransformArgs: Array

        attr_accessor :Name, :Type, :Comment, :PartitionType, :PartitionFormat, :PartitionDot, :Transform, :TransformArgs

        def initialize(name=nil, type=nil, comment=nil, partitiontype=nil, partitionformat=nil, partitiondot=nil, transform=nil, transformargs=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @PartitionType = partitiontype
          @PartitionFormat = partitionformat
          @PartitionDot = partitiondot
          @Transform = transform
          @TransformArgs = transformargs
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @PartitionType = params['PartitionType']
          @PartitionFormat = params['PartitionFormat']
          @PartitionDot = params['PartitionDot']
          @Transform = params['Transform']
          @TransformArgs = params['TransformArgs']
        end
      end

      # 数据表配置信息
      class TableBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该数据表所属数据库名字
        # @type DatabaseName: String
        # @param TableName: 数据表名字
        # @type TableName: String
        # @param DatasourceConnectionName: 该数据表所属数据源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String
        # @param TableComment: 该数据表备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableComment: String
        # @param Type: 具体类型，表or视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TableFormat: 数据格式类型，hive，iceberg等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableFormat: String
        # @param UserAlias: 建表用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param UserSubUin: 建表用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubUin: String
        # @param GovernPolicy: 数据治理配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GovernPolicy: :class:`Tencentcloud::Dlc.v20210125.models.DataGovernPolicy`
        # @param DbGovernPolicyIsDisable: 库数据治理是否关闭，关闭：true，开启：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbGovernPolicyIsDisable: String
        # @param SmartPolicy: 智能数据治理配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartPolicy: :class:`Tencentcloud::Dlc.v20210125.models.SmartPolicy`

        attr_accessor :DatabaseName, :TableName, :DatasourceConnectionName, :TableComment, :Type, :TableFormat, :UserAlias, :UserSubUin, :GovernPolicy, :DbGovernPolicyIsDisable, :SmartPolicy

        def initialize(databasename=nil, tablename=nil, datasourceconnectionname=nil, tablecomment=nil, type=nil, tableformat=nil, useralias=nil, usersubuin=nil, governpolicy=nil, dbgovernpolicyisdisable=nil, smartpolicy=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @DatasourceConnectionName = datasourceconnectionname
          @TableComment = tablecomment
          @Type = type
          @TableFormat = tableformat
          @UserAlias = useralias
          @UserSubUin = usersubuin
          @GovernPolicy = governpolicy
          @DbGovernPolicyIsDisable = dbgovernpolicyisdisable
          @SmartPolicy = smartpolicy
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TableComment = params['TableComment']
          @Type = params['Type']
          @TableFormat = params['TableFormat']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
          unless params['GovernPolicy'].nil?
            @GovernPolicy = DataGovernPolicy.new
            @GovernPolicy.deserialize(params['GovernPolicy'])
          end
          @DbGovernPolicyIsDisable = params['DbGovernPolicyIsDisable']
          unless params['SmartPolicy'].nil?
            @SmartPolicy = SmartPolicy.new
            @SmartPolicy.deserialize(params['SmartPolicy'])
          end
        end
      end

      # 返回数据表的相关信息。
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 数据表配置信息。
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param DataFormat: 数据表格式。每次入参可选如下其一的KV结构，[TextFile，CSV，Json, Parquet, ORC, AVRD]。
        # @type DataFormat: :class:`Tencentcloud::Dlc.v20210125.models.DataFormat`
        # @param Columns: 数据表列信息。
        # @type Columns: Array
        # @param Partitions: 数据表分块信息。
        # @type Partitions: Array
        # @param Location: 数据存储路径。当前仅支持cos路径，格式如下：cosn://bucket-name/filepath。
        # @type Location: String

        attr_accessor :TableBaseInfo, :DataFormat, :Columns, :Partitions, :Location

        def initialize(tablebaseinfo=nil, dataformat=nil, columns=nil, partitions=nil, location=nil)
          @TableBaseInfo = tablebaseinfo
          @DataFormat = dataformat
          @Columns = columns
          @Partitions = partitions
          @Location = location
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['DataFormat'].nil?
            @DataFormat = DataFormat.new
            @DataFormat.deserialize(params['DataFormat'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          @Location = params['Location']
        end
      end

      # 查询表信息对象
      class TableResponseInfo < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 数据表基本信息。
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param Columns: 数据表列信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Partitions: 数据表分块信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Location: 数据存储路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Properties: 数据表属性信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param ModifiedTime: 数据表更新时间, 单位: ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param CreateTime: 数据表创建时间,单位: ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param InputFormat: 数据格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputFormat: String
        # @param StorageSize: 数据表存储大小（单位：Byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 数据表行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer
        # @param MapMaterializedViewName: xxxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MapMaterializedViewName: String
        # @param HeatValue: 访问热点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeatValue: Integer

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Location, :Properties, :ModifiedTime, :CreateTime, :InputFormat, :StorageSize, :RecordCount, :MapMaterializedViewName, :HeatValue

        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, location=nil, properties=nil, modifiedtime=nil, createtime=nil, inputformat=nil, storagesize=nil, recordcount=nil, mapmaterializedviewname=nil, heatvalue=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Location = location
          @Properties = properties
          @ModifiedTime = modifiedtime
          @CreateTime = createtime
          @InputFormat = inputformat
          @StorageSize = storagesize
          @RecordCount = recordcount
          @MapMaterializedViewName = mapmaterializedviewname
          @HeatValue = heatvalue
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          @Location = params['Location']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @ModifiedTime = params['ModifiedTime']
          @CreateTime = params['CreateTime']
          @InputFormat = params['InputFormat']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @MapMaterializedViewName = params['MapMaterializedViewName']
          @HeatValue = params['HeatValue']
        end
      end

      # 标签对信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 任务类型，任务如SQL查询等。
      class Task < TencentCloud::Common::AbstractModel
        # @param SQLTask: SQL查询任务
        # @type SQLTask: :class:`Tencentcloud::Dlc.v20210125.models.SQLTask`
        # @param SparkSQLTask: Spark SQL查询任务
        # @type SparkSQLTask: :class:`Tencentcloud::Dlc.v20210125.models.SQLTask`

        attr_accessor :SQLTask, :SparkSQLTask

        def initialize(sqltask=nil, sparksqltask=nil)
          @SQLTask = sqltask
          @SparkSQLTask = sparksqltask
        end

        def deserialize(params)
          unless params['SQLTask'].nil?
            @SQLTask = SQLTask.new
            @SQLTask.deserialize(params['SQLTask'])
          end
          unless params['SparkSQLTask'].nil?
            @SparkSQLTask = SQLTask.new
            @SparkSQLTask.deserialize(params['SparkSQLTask'])
          end
        end
      end

      # 任务实例。
      class TaskResponseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 任务所属Database的名称。
        # @type DatabaseName: String
        # @param DataAmount: 任务数据量。
        # @type DataAmount: Integer
        # @param Id: 任务Id。
        # @type Id: String
        # @param UsedTime: 计算耗时，单位： ms
        # @type UsedTime: Integer
        # @param OutputPath: 任务输出路径。
        # @type OutputPath: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param State: 任务状态：0 初始化， 1 执行中， 2 执行成功，3 数据写入中，4 排队中。-1 执行失败，-3 已取消。
        # @type State: Integer
        # @param SQLType: 任务SQL类型，DDL|DML等
        # @type SQLType: String
        # @param SQL: 任务SQL语句
        # @type SQL: String
        # @param ResultExpired: 结果是否过期。
        # @type ResultExpired: Boolean
        # @param RowAffectInfo: 数据影响统计信息。
        # @type RowAffectInfo: String
        # @param DataSet: 任务结果数据表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSet: String
        # @param Error: 失败信息, 例如：errorMessage。该字段已废弃。
        # @type Error: String
        # @param Percentage: 任务执行进度num/100(%)
        # @type Percentage: Integer
        # @param OutputMessage: 任务执行输出信息。
        # @type OutputMessage: String
        # @param TaskType: 执行SQL的引擎类型
        # @type TaskType: String
        # @param ProgressDetail: 任务进度明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgressDetail: String
        # @param UpdateTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DataEngineId: 计算资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineId: String
        # @param OperateUin: 执行sql的子uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param DataEngineName: 计算资源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineName: String
        # @param InputType: 导入类型是本地导入还是cos
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputType: String
        # @param InputConf: 导入配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputConf: String
        # @param DataNumber: 数据条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataNumber: Integer
        # @param CanDownload: 查询数据能不能下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDownload: Boolean
        # @param UserAlias: 用户别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param SparkJobName: spark应用作业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobName: String
        # @param SparkJobId: spark应用作业Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobId: String
        # @param SparkJobFile: spark应用入口jar文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobFile: String
        # @param UiUrl: spark ui url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UiUrl: String
        # @param TotalTime: 任务耗时，单位： ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTime: Integer
        # @param CmdArgs: spark app job执行task的程序入口参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmdArgs: String
        # @param ImageVersion: 集群镜像大版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageVersion: String
        # @param DriverSize: driver规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DriverSize: String
        # @param ExecutorSize: executor规格：small,medium,large,xlarge；内存型(引擎类型)：m.small,m.medium,m.large,m.xlarge
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorSize: String
        # @param ExecutorNums: 指定executor数量，最小值为1，最大值小于集群规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorNums: Integer
        # @param ExecutorMaxNumbers: 指定executor max数量（动态配置场景下），最小值为1，最大值小于集群规格（当ExecutorMaxNumbers小于ExecutorNums时，改值设定为ExecutorNums）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutorMaxNumbers: Integer
        # @param CommonMetrics: 任务公共指标数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommonMetrics: :class:`Tencentcloud::Dlc.v20210125.models.CommonMetrics`
        # @param SparkMonitorMetrics: spark任务指标数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkMonitorMetrics: :class:`Tencentcloud::Dlc.v20210125.models.SparkMonitorMetrics`
        # @param PrestoMonitorMetrics: presto任务指标数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrestoMonitorMetrics: :class:`Tencentcloud::Dlc.v20210125.models.PrestoMonitorMetrics`
        # @param ResultFormat: 结果文件格式：默认为csv
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultFormat: String

        attr_accessor :DatabaseName, :DataAmount, :Id, :UsedTime, :OutputPath, :CreateTime, :State, :SQLType, :SQL, :ResultExpired, :RowAffectInfo, :DataSet, :Error, :Percentage, :OutputMessage, :TaskType, :ProgressDetail, :UpdateTime, :DataEngineId, :OperateUin, :DataEngineName, :InputType, :InputConf, :DataNumber, :CanDownload, :UserAlias, :SparkJobName, :SparkJobId, :SparkJobFile, :UiUrl, :TotalTime, :CmdArgs, :ImageVersion, :DriverSize, :ExecutorSize, :ExecutorNums, :ExecutorMaxNumbers, :CommonMetrics, :SparkMonitorMetrics, :PrestoMonitorMetrics, :ResultFormat

        def initialize(databasename=nil, dataamount=nil, id=nil, usedtime=nil, outputpath=nil, createtime=nil, state=nil, sqltype=nil, sql=nil, resultexpired=nil, rowaffectinfo=nil, dataset=nil, error=nil, percentage=nil, outputmessage=nil, tasktype=nil, progressdetail=nil, updatetime=nil, dataengineid=nil, operateuin=nil, dataenginename=nil, inputtype=nil, inputconf=nil, datanumber=nil, candownload=nil, useralias=nil, sparkjobname=nil, sparkjobid=nil, sparkjobfile=nil, uiurl=nil, totaltime=nil, cmdargs=nil, imageversion=nil, driversize=nil, executorsize=nil, executornums=nil, executormaxnumbers=nil, commonmetrics=nil, sparkmonitormetrics=nil, prestomonitormetrics=nil, resultformat=nil)
          @DatabaseName = databasename
          @DataAmount = dataamount
          @Id = id
          @UsedTime = usedtime
          @OutputPath = outputpath
          @CreateTime = createtime
          @State = state
          @SQLType = sqltype
          @SQL = sql
          @ResultExpired = resultexpired
          @RowAffectInfo = rowaffectinfo
          @DataSet = dataset
          @Error = error
          @Percentage = percentage
          @OutputMessage = outputmessage
          @TaskType = tasktype
          @ProgressDetail = progressdetail
          @UpdateTime = updatetime
          @DataEngineId = dataengineid
          @OperateUin = operateuin
          @DataEngineName = dataenginename
          @InputType = inputtype
          @InputConf = inputconf
          @DataNumber = datanumber
          @CanDownload = candownload
          @UserAlias = useralias
          @SparkJobName = sparkjobname
          @SparkJobId = sparkjobid
          @SparkJobFile = sparkjobfile
          @UiUrl = uiurl
          @TotalTime = totaltime
          @CmdArgs = cmdargs
          @ImageVersion = imageversion
          @DriverSize = driversize
          @ExecutorSize = executorsize
          @ExecutorNums = executornums
          @ExecutorMaxNumbers = executormaxnumbers
          @CommonMetrics = commonmetrics
          @SparkMonitorMetrics = sparkmonitormetrics
          @PrestoMonitorMetrics = prestomonitormetrics
          @ResultFormat = resultformat
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @DataAmount = params['DataAmount']
          @Id = params['Id']
          @UsedTime = params['UsedTime']
          @OutputPath = params['OutputPath']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @SQLType = params['SQLType']
          @SQL = params['SQL']
          @ResultExpired = params['ResultExpired']
          @RowAffectInfo = params['RowAffectInfo']
          @DataSet = params['DataSet']
          @Error = params['Error']
          @Percentage = params['Percentage']
          @OutputMessage = params['OutputMessage']
          @TaskType = params['TaskType']
          @ProgressDetail = params['ProgressDetail']
          @UpdateTime = params['UpdateTime']
          @DataEngineId = params['DataEngineId']
          @OperateUin = params['OperateUin']
          @DataEngineName = params['DataEngineName']
          @InputType = params['InputType']
          @InputConf = params['InputConf']
          @DataNumber = params['DataNumber']
          @CanDownload = params['CanDownload']
          @UserAlias = params['UserAlias']
          @SparkJobName = params['SparkJobName']
          @SparkJobId = params['SparkJobId']
          @SparkJobFile = params['SparkJobFile']
          @UiUrl = params['UiUrl']
          @TotalTime = params['TotalTime']
          @CmdArgs = params['CmdArgs']
          @ImageVersion = params['ImageVersion']
          @DriverSize = params['DriverSize']
          @ExecutorSize = params['ExecutorSize']
          @ExecutorNums = params['ExecutorNums']
          @ExecutorMaxNumbers = params['ExecutorMaxNumbers']
          unless params['CommonMetrics'].nil?
            @CommonMetrics = CommonMetrics.new
            @CommonMetrics.deserialize(params['CommonMetrics'])
          end
          unless params['SparkMonitorMetrics'].nil?
            @SparkMonitorMetrics = SparkMonitorMetrics.new
            @SparkMonitorMetrics.deserialize(params['SparkMonitorMetrics'])
          end
          unless params['PrestoMonitorMetrics'].nil?
            @PrestoMonitorMetrics = PrestoMonitorMetrics.new
            @PrestoMonitorMetrics.deserialize(params['PrestoMonitorMetrics'])
          end
          @ResultFormat = params['ResultFormat']
        end
      end

      # 任务结果信息。
      class TaskResultInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param DatasourceConnectionName: 数据源名称，当前任务执行时候选中的默认数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String
        # @param DatabaseName: 数据库名称，当前任务执行时候选中的默认数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SQL: 当前执行的SQL，一个任务包含一个SQL
        # @type SQL: String
        # @param SQLType: 执行任务的类型，现在分为DDL、DML、DQL
        # @type SQLType: String
        # @param State: 任务当前的状态，0：初始化 1：任务运行中 2：任务执行成功  3：数据写入中 4：排队中 -1：任务执行失败 -3：用户手动终止 。只有任务执行成功的情况下，才会返回任务执行的结果
        # @type State: Integer
        # @param DataAmount: 扫描的数据量，单位byte
        # @type DataAmount: Integer
        # @param UsedTime: 计算耗时，单位： ms
        # @type UsedTime: Integer
        # @param OutputPath: 任务结果输出的COS桶地址
        # @type OutputPath: String
        # @param CreateTime: 任务创建时间，时间戳
        # @type CreateTime: String
        # @param OutputMessage: 任务执行信息，成功时返回success，失败时返回失败原因
        # @type OutputMessage: String
        # @param RowAffectInfo: 被影响的行数
        # @type RowAffectInfo: String
        # @param ResultSchema: 结果的schema信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultSchema: Array
        # @param ResultSet: 结果信息，反转义后，外层数组的每个元素为一行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultSet: String
        # @param NextToken: 分页信息，如果没有更多结果数据，nextToken为空
        # @type NextToken: String
        # @param Percentage: 任务执行进度num/100(%)
        # @type Percentage: Integer
        # @param ProgressDetail: 任务进度明细
        # @type ProgressDetail: String
        # @param DisplayFormat: 控制台展示格式。table：表格展示 text：文本展示
        # @type DisplayFormat: String
        # @param TotalTime: 任务耗时，单位： ms
        # @type TotalTime: Integer
        # @param QueryResultTime: 获取结果消耗的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryResultTime: Float

        attr_accessor :TaskId, :DatasourceConnectionName, :DatabaseName, :SQL, :SQLType, :State, :DataAmount, :UsedTime, :OutputPath, :CreateTime, :OutputMessage, :RowAffectInfo, :ResultSchema, :ResultSet, :NextToken, :Percentage, :ProgressDetail, :DisplayFormat, :TotalTime, :QueryResultTime

        def initialize(taskid=nil, datasourceconnectionname=nil, databasename=nil, sql=nil, sqltype=nil, state=nil, dataamount=nil, usedtime=nil, outputpath=nil, createtime=nil, outputmessage=nil, rowaffectinfo=nil, resultschema=nil, resultset=nil, nexttoken=nil, percentage=nil, progressdetail=nil, displayformat=nil, totaltime=nil, queryresulttime=nil)
          @TaskId = taskid
          @DatasourceConnectionName = datasourceconnectionname
          @DatabaseName = databasename
          @SQL = sql
          @SQLType = sqltype
          @State = state
          @DataAmount = dataamount
          @UsedTime = usedtime
          @OutputPath = outputpath
          @CreateTime = createtime
          @OutputMessage = outputmessage
          @RowAffectInfo = rowaffectinfo
          @ResultSchema = resultschema
          @ResultSet = resultset
          @NextToken = nexttoken
          @Percentage = percentage
          @ProgressDetail = progressdetail
          @DisplayFormat = displayformat
          @TotalTime = totaltime
          @QueryResultTime = queryresulttime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DatabaseName = params['DatabaseName']
          @SQL = params['SQL']
          @SQLType = params['SQLType']
          @State = params['State']
          @DataAmount = params['DataAmount']
          @UsedTime = params['UsedTime']
          @OutputPath = params['OutputPath']
          @CreateTime = params['CreateTime']
          @OutputMessage = params['OutputMessage']
          @RowAffectInfo = params['RowAffectInfo']
          unless params['ResultSchema'].nil?
            @ResultSchema = []
            params['ResultSchema'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @ResultSchema << column_tmp
            end
          end
          @ResultSet = params['ResultSet']
          @NextToken = params['NextToken']
          @Percentage = params['Percentage']
          @ProgressDetail = params['ProgressDetail']
          @DisplayFormat = params['DisplayFormat']
          @TotalTime = params['TotalTime']
          @QueryResultTime = params['QueryResultTime']
        end
      end

      # 批量顺序执行任务集合
      class TasksInfo < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，SQLTask：SQL查询任务。SparkSQLTask：Spark SQL查询任务
        # @type TaskType: String
        # @param FailureTolerance: 容错策略。Proceed：前面任务出错/取消后继续执行后面的任务。Terminate：前面的任务出错/取消之后终止后面任务的执行，后面的任务全部标记为已取消。
        # @type FailureTolerance: String
        # @param SQL: base64加密后的SQL语句，用";"号分隔每个SQL语句，一次最多提交50个任务。严格按照前后顺序执行
        # @type SQL: String
        # @param Config: 任务的配置信息，当前仅支持SparkSQLTask任务。
        # @type Config: Array
        # @param Params: 任务的用户自定义参数信息
        # @type Params: Array

        attr_accessor :TaskType, :FailureTolerance, :SQL, :Config, :Params

        def initialize(tasktype=nil, failuretolerance=nil, sql=nil, config=nil, params=nil)
          @TaskType = tasktype
          @FailureTolerance = failuretolerance
          @SQL = sql
          @Config = config
          @Params = params
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @FailureTolerance = params['FailureTolerance']
          @SQL = params['SQL']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Config << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
        end
      end

      # 任务概览
      class TasksOverview < TencentCloud::Common::AbstractModel
        # @param TaskQueuedCount: 正在排队的任务个数
        # @type TaskQueuedCount: Integer
        # @param TaskInitCount: 初始化的任务个数
        # @type TaskInitCount: Integer
        # @param TaskRunningCount: 正在执行的任务个数
        # @type TaskRunningCount: Integer
        # @param TotalTaskCount: 当前时间范围的总任务个数
        # @type TotalTaskCount: Integer

        attr_accessor :TaskQueuedCount, :TaskInitCount, :TaskRunningCount, :TotalTaskCount

        def initialize(taskqueuedcount=nil, taskinitcount=nil, taskrunningcount=nil, totaltaskcount=nil)
          @TaskQueuedCount = taskqueuedcount
          @TaskInitCount = taskinitcount
          @TaskRunningCount = taskrunningcount
          @TotalTaskCount = totaltaskcount
        end

        def deserialize(params)
          @TaskQueuedCount = params['TaskQueuedCount']
          @TaskInitCount = params['TaskInitCount']
          @TaskRunningCount = params['TaskRunningCount']
          @TotalTaskCount = params['TotalTaskCount']
        end
      end

      # 文本格式
      class TextFile < TencentCloud::Common::AbstractModel
        # @param Format: 文本类型，本参数取值为TextFile。
        # @type Format: String
        # @param Regex: 处理文本用的正则表达式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: String

        attr_accessor :Format, :Regex

        def initialize(format=nil, regex=nil)
          @Format = format
          @Regex = regex
        end

        def deserialize(params)
          @Format = params['Format']
          @Regex = params['Regex']
        end
      end

      # UnbindWorkGroupsFromUser请求参数结构体
      class UnbindWorkGroupsFromUserRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 解绑的工作组Id和用户Id的关联关系
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroupIdSetOfUserId`

        attr_accessor :AddInfo

        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = WorkGroupIdSetOfUserId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # UnbindWorkGroupsFromUser返回参数结构体
      class UnbindWorkGroupsFromUserResponse < TencentCloud::Common::AbstractModel
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

      # UnlockMetaData请求参数结构体
      class UnlockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String

        attr_accessor :LockId, :DatasourceConnectionName

        def initialize(lockid=nil, datasourceconnectionname=nil)
          @LockId = lockid
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @LockId = params['LockId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # UnlockMetaData返回参数结构体
      class UnlockMetaDataResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDataEngineConfig请求参数结构体
      class UpdateDataEngineConfigRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineIds: 引擎ID
        # @type DataEngineIds: Array
        # @param DataEngineConfigCommand: 引擎配置命令，支持UpdateSparkSQLLakefsPath（更新原生表配置）、UpdateSparkSQLResultPath（更新结果路径配置）
        # @type DataEngineConfigCommand: String

        attr_accessor :DataEngineIds, :DataEngineConfigCommand

        def initialize(dataengineids=nil, dataengineconfigcommand=nil)
          @DataEngineIds = dataengineids
          @DataEngineConfigCommand = dataengineconfigcommand
        end

        def deserialize(params)
          @DataEngineIds = params['DataEngineIds']
          @DataEngineConfigCommand = params['DataEngineConfigCommand']
        end
      end

      # UpdateDataEngineConfig返回参数结构体
      class UpdateDataEngineConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDataEngine请求参数结构体
      class UpdateDataEngineRequest < TencentCloud::Common::AbstractModel
        # @param Size: 资源大小
        # @type Size: Integer
        # @param MinClusters: 最小资源
        # @type MinClusters: Integer
        # @param MaxClusters: 最大资源
        # @type MaxClusters: Integer
        # @param AutoResume: 开启自动刷新：true：开启、false（默认）：关闭
        # @type AutoResume: Boolean
        # @param DataEngineName: 数据引擎名称
        # @type DataEngineName: String
        # @param Message: 相关信息
        # @type Message: String
        # @param AutoSuspend: 是否自定挂起集群：false（默认）：不自动挂起、true：自动挂起
        # @type AutoSuspend: Boolean
        # @param CrontabResumeSuspend: 定时启停集群策略：0（默认）：关闭定时策略、1：开启定时策略（注：定时启停策略与自动挂起策略互斥）
        # @type CrontabResumeSuspend: Integer
        # @param CrontabResumeSuspendStrategy: 定时启停策略，复杂类型：包含启停时间、挂起集群策略
        # @type CrontabResumeSuspendStrategy: :class:`Tencentcloud::Dlc.v20210125.models.CrontabResumeSuspendStrategy`
        # @param MaxConcurrency: 单个集群最大并发任务数，默认5
        # @type MaxConcurrency: Integer
        # @param TolerableQueueTime: 可容忍的排队时间，默认0。当任务排队的时间超过可容忍的时间时可能会触发扩容。如果该参数为0，则表示一旦有任务排队就可能立即触发扩容。
        # @type TolerableQueueTime: Integer
        # @param AutoSuspendTime: 集群自动挂起时间
        # @type AutoSuspendTime: Integer
        # @param ElasticSwitch: spark jar 包年包月集群是否开启弹性
        # @type ElasticSwitch: Boolean
        # @param ElasticLimit: spark jar 包年包月集群弹性上限
        # @type ElasticLimit: Integer
        # @param SessionResourceTemplate: Spark批作业集群Session资源配置模板
        # @type SessionResourceTemplate: :class:`Tencentcloud::Dlc.v20210125.models.SessionResourceTemplate`

        attr_accessor :Size, :MinClusters, :MaxClusters, :AutoResume, :DataEngineName, :Message, :AutoSuspend, :CrontabResumeSuspend, :CrontabResumeSuspendStrategy, :MaxConcurrency, :TolerableQueueTime, :AutoSuspendTime, :ElasticSwitch, :ElasticLimit, :SessionResourceTemplate

        def initialize(size=nil, minclusters=nil, maxclusters=nil, autoresume=nil, dataenginename=nil, message=nil, autosuspend=nil, crontabresumesuspend=nil, crontabresumesuspendstrategy=nil, maxconcurrency=nil, tolerablequeuetime=nil, autosuspendtime=nil, elasticswitch=nil, elasticlimit=nil, sessionresourcetemplate=nil)
          @Size = size
          @MinClusters = minclusters
          @MaxClusters = maxclusters
          @AutoResume = autoresume
          @DataEngineName = dataenginename
          @Message = message
          @AutoSuspend = autosuspend
          @CrontabResumeSuspend = crontabresumesuspend
          @CrontabResumeSuspendStrategy = crontabresumesuspendstrategy
          @MaxConcurrency = maxconcurrency
          @TolerableQueueTime = tolerablequeuetime
          @AutoSuspendTime = autosuspendtime
          @ElasticSwitch = elasticswitch
          @ElasticLimit = elasticlimit
          @SessionResourceTemplate = sessionresourcetemplate
        end

        def deserialize(params)
          @Size = params['Size']
          @MinClusters = params['MinClusters']
          @MaxClusters = params['MaxClusters']
          @AutoResume = params['AutoResume']
          @DataEngineName = params['DataEngineName']
          @Message = params['Message']
          @AutoSuspend = params['AutoSuspend']
          @CrontabResumeSuspend = params['CrontabResumeSuspend']
          unless params['CrontabResumeSuspendStrategy'].nil?
            @CrontabResumeSuspendStrategy = CrontabResumeSuspendStrategy.new
            @CrontabResumeSuspendStrategy.deserialize(params['CrontabResumeSuspendStrategy'])
          end
          @MaxConcurrency = params['MaxConcurrency']
          @TolerableQueueTime = params['TolerableQueueTime']
          @AutoSuspendTime = params['AutoSuspendTime']
          @ElasticSwitch = params['ElasticSwitch']
          @ElasticLimit = params['ElasticLimit']
          unless params['SessionResourceTemplate'].nil?
            @SessionResourceTemplate = SessionResourceTemplate.new
            @SessionResourceTemplate.deserialize(params['SessionResourceTemplate'])
          end
        end
      end

      # UpdateDataEngine返回参数结构体
      class UpdateDataEngineResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRowFilter请求参数结构体
      class UpdateRowFilterRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 行过滤策略的id，此值可以通过DescribeUserInfo或者DescribeWorkGroupInfo接口获取
        # @type PolicyId: Integer
        # @param Policy: 新的过滤策略。
        # @type Policy: :class:`Tencentcloud::Dlc.v20210125.models.Policy`

        attr_accessor :PolicyId, :Policy

        def initialize(policyid=nil, policy=nil)
          @PolicyId = policyid
          @Policy = policy
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          unless params['Policy'].nil?
            @Policy = Policy.new
            @Policy.deserialize(params['Policy'])
          end
        end
      end

      # UpdateRowFilter返回参数结构体
      class UpdateRowFilterResponse < TencentCloud::Common::AbstractModel
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

      # UpdateUserDataEngineConfig请求参数结构体
      class UpdateUserDataEngineConfigRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # @type DataEngineId: String
        # @param DataEngineConfigPairs: 用户自定义引擎配置项集合。该参数需要传用户需要添加的全部配置项，例如，已有配置项k1:v1，添加k2:v2，需要传[k1:v1,k2:v2]。
        # @type DataEngineConfigPairs: Array
        # @param SessionResourceTemplate: 作业引擎资源配置模版
        # @type SessionResourceTemplate: :class:`Tencentcloud::Dlc.v20210125.models.SessionResourceTemplate`

        attr_accessor :DataEngineId, :DataEngineConfigPairs, :SessionResourceTemplate

        def initialize(dataengineid=nil, dataengineconfigpairs=nil, sessionresourcetemplate=nil)
          @DataEngineId = dataengineid
          @DataEngineConfigPairs = dataengineconfigpairs
          @SessionResourceTemplate = sessionresourcetemplate
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
          unless params['DataEngineConfigPairs'].nil?
            @DataEngineConfigPairs = []
            params['DataEngineConfigPairs'].each do |i|
              dataengineconfigpair_tmp = DataEngineConfigPair.new
              dataengineconfigpair_tmp.deserialize(i)
              @DataEngineConfigPairs << dataengineconfigpair_tmp
            end
          end
          unless params['SessionResourceTemplate'].nil?
            @SessionResourceTemplate = SessionResourceTemplate.new
            @SessionResourceTemplate.deserialize(params['SessionResourceTemplate'])
          end
        end
      end

      # UpdateUserDataEngineConfig返回参数结构体
      class UpdateUserDataEngineConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDataEngineImage请求参数结构体
      class UpgradeDataEngineImageRequest < TencentCloud::Common::AbstractModel
        # @param DataEngineId: 引擎ID
        # @type DataEngineId: String

        attr_accessor :DataEngineId

        def initialize(dataengineid=nil)
          @DataEngineId = dataengineid
        end

        def deserialize(params)
          @DataEngineId = params['DataEngineId']
        end
      end

      # UpgradeDataEngineImage返回参数结构体
      class UpgradeDataEngineImageResponse < TencentCloud::Common::AbstractModel
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

      # 用户详细信息
      class UserDetailInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Type: 返回的信息类型，Group：返回的当前用户的工作组信息；DataAuth：返回的当前用户的数据权限信息；EngineAuth：返回的当前用户的引擎权限信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UserType: 用户类型：ADMIN：管理员 COMMON：一般用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param UserDescription: 用户描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param DataPolicyInfo: 数据权限信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPolicyInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`
        # @param EnginePolicyInfo: 引擎权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnginePolicyInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`
        # @param WorkGroupInfo: 绑定到该用户的工作组集合信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroups`
        # @param UserAlias: 用户别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param RowFilterInfo: 行过滤集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowFilterInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`

        attr_accessor :UserId, :Type, :UserType, :UserDescription, :DataPolicyInfo, :EnginePolicyInfo, :WorkGroupInfo, :UserAlias, :RowFilterInfo

        def initialize(userid=nil, type=nil, usertype=nil, userdescription=nil, datapolicyinfo=nil, enginepolicyinfo=nil, workgroupinfo=nil, useralias=nil, rowfilterinfo=nil)
          @UserId = userid
          @Type = type
          @UserType = usertype
          @UserDescription = userdescription
          @DataPolicyInfo = datapolicyinfo
          @EnginePolicyInfo = enginepolicyinfo
          @WorkGroupInfo = workgroupinfo
          @UserAlias = useralias
          @RowFilterInfo = rowfilterinfo
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Type = params['Type']
          @UserType = params['UserType']
          @UserDescription = params['UserDescription']
          unless params['DataPolicyInfo'].nil?
            @DataPolicyInfo = Policys.new
            @DataPolicyInfo.deserialize(params['DataPolicyInfo'])
          end
          unless params['EnginePolicyInfo'].nil?
            @EnginePolicyInfo = Policys.new
            @EnginePolicyInfo.deserialize(params['EnginePolicyInfo'])
          end
          unless params['WorkGroupInfo'].nil?
            @WorkGroupInfo = WorkGroups.new
            @WorkGroupInfo.deserialize(params['WorkGroupInfo'])
          end
          @UserAlias = params['UserAlias']
          unless params['RowFilterInfo'].nil?
            @RowFilterInfo = Policys.new
            @RowFilterInfo.deserialize(params['RowFilterInfo'])
          end
        end
      end

      # 绑定到同一个工作组的用户Id的集合
      class UserIdSetOfWorkGroupId < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param UserIds: 用户Id集合，和CAM侧Uin匹配
        # @type UserIds: Array

        attr_accessor :WorkGroupId, :UserIds

        def initialize(workgroupid=nil, userids=nil)
          @WorkGroupId = workgroupid
          @UserIds = userids
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @UserIds = params['UserIds']
        end
      end

      # 授权用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和子用户uin相同
        # @type UserId: String
        # @param UserDescription: 用户描述信息，方便区分不同用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param PolicySet: 单独给用户绑定的权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param Creator: 当前用户的创建者
        # @type Creator: String
        # @param CreateTime: 创建时间，格式如2021-07-28 16:19:32
        # @type CreateTime: String
        # @param WorkGroupSet: 关联的工作组集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupSet: Array
        # @param IsOwner: 是否是主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOwner: Boolean
        # @param UserType: 用户类型。ADMIN：管理员 COMMON：普通用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param UserAlias: 用户别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :PolicySet, :Creator, :CreateTime, :WorkGroupSet, :IsOwner, :UserType, :UserAlias

        def initialize(userid=nil, userdescription=nil, policyset=nil, creator=nil, createtime=nil, workgroupset=nil, isowner=nil, usertype=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
          @Creator = creator
          @CreateTime = createtime
          @WorkGroupSet = workgroupset
          @IsOwner = isowner
          @UserType = usertype
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          unless params['WorkGroupSet'].nil?
            @WorkGroupSet = []
            params['WorkGroupSet'].each do |i|
              workgroupmessage_tmp = WorkGroupMessage.new
              workgroupmessage_tmp.deserialize(i)
              @WorkGroupSet << workgroupmessage_tmp
            end
          end
          @IsOwner = params['IsOwner']
          @UserType = params['UserType']
          @UserAlias = params['UserAlias']
        end
      end

      # 用户部分信息
      class UserMessage < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧子用户Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param Creator: 当前用户的创建者
        # @type Creator: String
        # @param CreateTime: 当前用户的创建时间，形如2021-07-28 16:19:32
        # @type CreateTime: String
        # @param UserAlias: 用户别名
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :Creator, :CreateTime, :UserAlias

        def initialize(userid=nil, userdescription=nil, creator=nil, createtime=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @Creator = creator
          @CreateTime = createtime
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @UserAlias = params['UserAlias']
        end
      end

      # 用户角色
      class UserRole < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: Integer
        # @param AppId: 用户app ID
        # @type AppId: String
        # @param Uin: 用户ID
        # @type Uin: String
        # @param Arn: 角色权限
        # @type Arn: String
        # @param ModifyTime: 最近修改时间戳
        # @type ModifyTime: Integer
        # @param Desc: 角色描述信息
        # @type Desc: String
        # @param RoleName: 角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param Creator: 创建者UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param CosPermissionList: cos授权路径列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPermissionList: Array
        # @param PermissionJson: cam策略json
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionJson: String

        attr_accessor :RoleId, :AppId, :Uin, :Arn, :ModifyTime, :Desc, :RoleName, :Creator, :CosPermissionList, :PermissionJson

        def initialize(roleid=nil, appid=nil, uin=nil, arn=nil, modifytime=nil, desc=nil, rolename=nil, creator=nil, cospermissionlist=nil, permissionjson=nil)
          @RoleId = roleid
          @AppId = appid
          @Uin = uin
          @Arn = arn
          @ModifyTime = modifytime
          @Desc = desc
          @RoleName = rolename
          @Creator = creator
          @CosPermissionList = cospermissionlist
          @PermissionJson = permissionjson
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Arn = params['Arn']
          @ModifyTime = params['ModifyTime']
          @Desc = params['Desc']
          @RoleName = params['RoleName']
          @Creator = params['Creator']
          unless params['CosPermissionList'].nil?
            @CosPermissionList = []
            params['CosPermissionList'].each do |i|
              cospermission_tmp = CosPermission.new
              cospermission_tmp.deserialize(i)
              @CosPermissionList << cospermission_tmp
            end
          end
          @PermissionJson = params['PermissionJson']
        end
      end

      # 用户信息集合
      class Users < TencentCloud::Common::AbstractModel
        # @param UserSet: 用户信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSet: Array
        # @param TotalCount: 用户总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :UserSet, :TotalCount

        def initialize(userset=nil, totalcount=nil)
          @UserSet = userset
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              usermessage_tmp = UserMessage.new
              usermessage_tmp.deserialize(i)
              @UserSet << usermessage_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 视图基本配置信息
      class ViewBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该视图所属数据库名字
        # @type DatabaseName: String
        # @param ViewName: 视图名称
        # @type ViewName: String
        # @param UserAlias: 视图创建人昵称
        # @type UserAlias: String
        # @param UserSubUin: 视图创建人ID
        # @type UserSubUin: String

        attr_accessor :DatabaseName, :ViewName, :UserAlias, :UserSubUin

        def initialize(databasename=nil, viewname=nil, useralias=nil, usersubuin=nil)
          @DatabaseName = databasename
          @ViewName = viewname
          @UserAlias = useralias
          @UserSubUin = usersubuin
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @ViewName = params['ViewName']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
        end
      end

      # 查询视图信息对象
      class ViewResponseInfo < TencentCloud::Common::AbstractModel
        # @param ViewBaseInfo: 视图基本信息。
        # @type ViewBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.ViewBaseInfo`
        # @param Columns: 视图列信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Properties: 视图属性信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param CreateTime: 视图创建时间。
        # @type CreateTime: String
        # @param ModifiedTime: 视图更新时间。
        # @type ModifiedTime: String

        attr_accessor :ViewBaseInfo, :Columns, :Properties, :CreateTime, :ModifiedTime

        def initialize(viewbaseinfo=nil, columns=nil, properties=nil, createtime=nil, modifiedtime=nil)
          @ViewBaseInfo = viewbaseinfo
          @Columns = columns
          @Properties = properties
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          unless params['ViewBaseInfo'].nil?
            @ViewBaseInfo = ViewBaseInfo.new
            @ViewBaseInfo.deserialize(params['ViewBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 工作组详细信息
      class WorkGroupDetailInfo < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupName: String
        # @param Type: 包含的信息类型。User：用户信息；DataAuth：数据权限；EngineAuth:引擎权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UserInfo: 工作组上绑定的用户集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserInfo: :class:`Tencentcloud::Dlc.v20210125.models.Users`
        # @param DataPolicyInfo: 数据权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPolicyInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`
        # @param EnginePolicyInfo: 引擎权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnginePolicyInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`
        # @param WorkGroupDescription: 工作组描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param RowFilterInfo: 行过滤信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowFilterInfo: :class:`Tencentcloud::Dlc.v20210125.models.Policys`

        attr_accessor :WorkGroupId, :WorkGroupName, :Type, :UserInfo, :DataPolicyInfo, :EnginePolicyInfo, :WorkGroupDescription, :RowFilterInfo

        def initialize(workgroupid=nil, workgroupname=nil, type=nil, userinfo=nil, datapolicyinfo=nil, enginepolicyinfo=nil, workgroupdescription=nil, rowfilterinfo=nil)
          @WorkGroupId = workgroupid
          @WorkGroupName = workgroupname
          @Type = type
          @UserInfo = userinfo
          @DataPolicyInfo = datapolicyinfo
          @EnginePolicyInfo = enginepolicyinfo
          @WorkGroupDescription = workgroupdescription
          @RowFilterInfo = rowfilterinfo
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupName = params['WorkGroupName']
          @Type = params['Type']
          unless params['UserInfo'].nil?
            @UserInfo = Users.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          unless params['DataPolicyInfo'].nil?
            @DataPolicyInfo = Policys.new
            @DataPolicyInfo.deserialize(params['DataPolicyInfo'])
          end
          unless params['EnginePolicyInfo'].nil?
            @EnginePolicyInfo = Policys.new
            @EnginePolicyInfo.deserialize(params['EnginePolicyInfo'])
          end
          @WorkGroupDescription = params['WorkGroupDescription']
          unless params['RowFilterInfo'].nil?
            @RowFilterInfo = Policys.new
            @RowFilterInfo.deserialize(params['RowFilterInfo'])
          end
        end
      end

      # 同一个用户绑定的工作组集合
      class WorkGroupIdSetOfUserId < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param WorkGroupIds: 工作组Id集合
        # @type WorkGroupIds: Array

        attr_accessor :UserId, :WorkGroupIds

        def initialize(userid=nil, workgroupids=nil)
          @UserId = userid
          @WorkGroupIds = workgroupids
        end

        def deserialize(params)
          @UserId = params['UserId']
          @WorkGroupIds = params['WorkGroupIds']
        end
      end

      # 工作组信息
      class WorkGroupInfo < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 查询到的工作组唯一Id
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param UserNum: 工作组关联的用户数量
        # @type UserNum: Integer
        # @param UserSet: 工作组关联的用户集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSet: Array
        # @param PolicySet: 工作组绑定的权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param Creator: 工作组的创建人
        # @type Creator: String
        # @param CreateTime: 工作组的创建时间，形如2021-07-28 16:19:32
        # @type CreateTime: String

        attr_accessor :WorkGroupId, :WorkGroupName, :WorkGroupDescription, :UserNum, :UserSet, :PolicySet, :Creator, :CreateTime

        def initialize(workgroupid=nil, workgroupname=nil, workgroupdescription=nil, usernum=nil, userset=nil, policyset=nil, creator=nil, createtime=nil)
          @WorkGroupId = workgroupid
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @UserNum = usernum
          @UserSet = userset
          @PolicySet = policyset
          @Creator = creator
          @CreateTime = createtime
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          @UserNum = params['UserNum']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              usermessage_tmp = UserMessage.new
              usermessage_tmp.deserialize(i)
              @UserSet << usermessage_tmp
            end
          end
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
        end
      end

      # 工作组部分信息
      class WorkGroupMessage < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组唯一Id
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 工作组创建的时间，形如2021-07-28 16:19:32
        # @type CreateTime: String

        attr_accessor :WorkGroupId, :WorkGroupName, :WorkGroupDescription, :Creator, :CreateTime

        def initialize(workgroupid=nil, workgroupname=nil, workgroupdescription=nil, creator=nil, createtime=nil)
          @WorkGroupId = workgroupid
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @Creator = creator
          @CreateTime = createtime
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
        end
      end

      # 工作组集合
      class WorkGroups < TencentCloud::Common::AbstractModel
        # @param WorkGroupSet: 工作组信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupSet: Array
        # @param TotalCount: 工作组总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :WorkGroupSet, :TotalCount

        def initialize(workgroupset=nil, totalcount=nil)
          @WorkGroupSet = workgroupset
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['WorkGroupSet'].nil?
            @WorkGroupSet = []
            params['WorkGroupSet'].each do |i|
              workgroupmessage_tmp = WorkGroupMessage.new
              workgroupmessage_tmp.deserialize(i)
              @WorkGroupSet << workgroupmessage_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

    end
  end
end

