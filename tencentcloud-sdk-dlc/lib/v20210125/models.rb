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

      # AttachUserPolicy请求参数结构体
      class AttachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
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

      # CSV类型数据格式
      class CSV < TencentCloud::Common::AbstractModel
        # @param CodeCompress: 压缩格式，["Snappy", "Gzip", "None"选一]。
        # @type CodeCompress: String
        # @param CSVSerde: CSV序列化及反序列化数据结构。
        # @type CSVSerde: :class:`Tencentcloud::Dlc.v20210125.models.CSVSerde`
        # @param HeadLines: 标题行，默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadLines: Integer
        # @param Format: 格式，默认值为CSV
        # 注意：此字段可能返回 null，表示取不到有效值。
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

        attr_accessor :Name, :Type, :Comment
        
        def initialize(name=nil, type=nil, comment=nil)
          @Name = name
          @Type = type
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
        end
      end

      # CreateDatabase请求参数结构体
      class CreateDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseInfo: 数据库基础信息
        # @type DatabaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.DatabaseInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为CosDataCatalog
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param DatabaseName: 数据库名称。任务在执行前均会USE该数据库， 除了首次建库时，其他情况建议均添加上。
        # @type DatabaseName: String
        # @param DatasourceConnectionName: 默认数据源名称。
        # @type DatasourceConnectionName: String

        attr_accessor :Task, :DatabaseName, :DatasourceConnectionName
        
        def initialize(task=nil, databasename=nil, datasourceconnectionname=nil)
          @Task = task
          @DatabaseName = databasename
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @DatabaseName = params['DatabaseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param UserId: 用户Id，当前主账号的子账号Uin，和CAM侧匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # @type UserDescription: String
        # @param PolicySet: 绑定到用户的权限集合
        # @type PolicySet: Array

        attr_accessor :UserId, :UserDescription, :PolicySet
        
        def initialize(userid=nil, userdescription=nil, policyset=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
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
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
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

      # CreateWorkGroup请求参数结构体
      class CreateWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # @type WorkGroupDescription: String
        # @param PolicySet: 工作组绑定的鉴权策略集合
        # @type PolicySet: Array

        attr_accessor :WorkGroupName, :WorkGroupDescription, :PolicySet
        
        def initialize(workgroupname=nil, workgroupdescription=nil, policyset=nil)
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @PolicySet = policyset
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
        end
      end

      # CreateWorkGroup返回参数结构体
      class CreateWorkGroupResponse < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id，全局唯一
        # @type WorkGroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 数据库对象
      class DatabaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~256。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 数据库属性列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array

        attr_accessor :DatabaseName, :Comment, :Properties
        
        def initialize(databasename=nil, comment=nil, properties=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
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
        end
      end

      # 数据库对象
      class DatabaseResponseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~256。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 数据库属性列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param CreateTime: 数据库创建时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifiedTime: 数据库更新时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String

        attr_accessor :DatabaseName, :Comment, :Properties, :CreateTime, :ModifiedTime
        
        def initialize(databasename=nil, comment=nil, properties=nil, createtime=nil, modifiedtime=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param KeyWord: 模糊匹配，库名关键字。
        # @type KeyWord: String
        # @param DatasourceConnectionName: 数据源唯名称，该名称可以通过DescribeDatasourceConnection接口查询到。默认为CosDataCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :Limit, :Offset, :KeyWord, :DatasourceConnectionName
        
        def initialize(limit=nil, offset=nil, keyword=nil, datasourceconnectionname=nil)
          @Limit = limit
          @Offset = offset
          @KeyWord = keyword
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @KeyWord = params['KeyWord']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param DatabaseList: 数据库对象列表。
        # @type DatabaseList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeScripts请求参数结构体
      class DescribeScriptsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param SortBy: 按字段排序，支持如下字段类型，update-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param DatasourceConnectionName: 指定查询的数据源名称，默认为CosDataCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName
        
        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
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
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TableList: 数据表对象列表。
        # @type TableList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,每个过滤参数支持的过滤值不超过5个。
        # task-id - String - （任务ID过滤）task-id取值形如：e386471f-139a-4e59-877f-50ece8135b99。
        # task-state - String - （任务状态过滤）取值范围 0(初始化)， 1(运行中)， 2(成功)， -1(失败)。
        # task-sql-keyword - String - （SQL语句关键字）取值形如：DROP TABLE。
        # @type Filters: Array
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc。
        # @type Sorting: String
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。默认为45天前的当前时刻
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS时间跨度在(0,30天]，支持最近45天数据查询。默认为当前时刻
        # @type EndTime: String

        attr_accessor :Limit, :Offset, :Filters, :SortBy, :Sorting, :StartTime, :EndTime
        
        def initialize(limit=nil, offset=nil, filters=nil, sortby=nil, sorting=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @StartTime = starttime
          @EndTime = endtime
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
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 任务对象列表。
        # @type TaskList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskList, :TotalCount, :RequestId
        
        def initialize(tasklist=nil, totalcount=nil, requestid=nil)
          @TaskList = tasklist
          @TotalCount = totalcount
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 查询的用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String

        attr_accessor :UserId, :Offset, :Limit, :SortBy, :Sorting
        
        def initialize(userid=nil, offset=nil, limit=nil, sortby=nil, sorting=nil)
          @UserId = userid
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户总数
        # @type TotalCount: Integer
        # @param UserSet: 用户集合
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName
        
        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
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
        end
      end

      # DescribeViews返回参数结构体
      class DescribeViewsResponse < TencentCloud::Common::AbstractModel
        # @param ViewList: 视图对象列表。
        # @type ViewList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeWorkGroups请求参数结构体
      class DescribeWorkGroupsRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 查询的工作组Id
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyWorkGroup请求参数结构体
      class ModifyWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param WorkGroupDescription: 工作组描述
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

      # 数据表分块信息。
      class Partition < TencentCloud::Common::AbstractModel
        # @param Name: 分区列名。
        # @type Name: String
        # @param Type: 分区类型。
        # @type Type: String
        # @param Comment: 对分区的描述。
        # @type Comment: String

        attr_accessor :Name, :Type, :Comment
        
        def initialize(name=nil, type=nil, comment=nil)
          @Name = name
          @Type = type
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
        end
      end

      # 权限对象
      class Policy < TencentCloud::Common::AbstractModel
        # @param Catalog: 需要授权的数据源名称，*代表拥有全部数据源权限
        # @type Catalog: String
        # @param Database: 需要授权的数据库名称，*代表拥有全部数据库名称
        # @type Database: String
        # @param Table: 需要授权的表名称，*代表拥有全部表权限
        # @type Table: String
        # @param Operation: 授权的操作，当前只支持“ALL”
        # @type Operation: String

        attr_accessor :Catalog, :Database, :Table, :Operation
        
        def initialize(catalog=nil, database=nil, table=nil, operation=nil)
          @Catalog = catalog
          @Database = database
          @Table = table
          @Operation = operation
        end

        def deserialize(params)
          @Catalog = params['Catalog']
          @Database = params['Database']
          @Table = params['Table']
          @Operation = params['Operation']
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

      # 数据表配置信息
      class TableBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该数据表所属数据库名字
        # @type DatabaseName: String
        # @param TableName: 数据表名字
        # @type TableName: String
        # @param DatasourceConnectionName: 该数据表所属数据源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseName, :TableName, :DatasourceConnectionName
        
        def initialize(databasename=nil, tablename=nil, datasourceconnectionname=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
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

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Location, :Properties, :ModifiedTime, :CreateTime, :InputFormat
        
        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, location=nil, properties=nil, modifiedtime=nil, createtime=nil, inputformat=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Location = location
          @Properties = properties
          @ModifiedTime = modifiedtime
          @CreateTime = createtime
          @InputFormat = inputformat
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
        # @param UsedTime: 计算时长，单位： ms。
        # @type UsedTime: Integer
        # @param OutputPath: 任务输出路径。
        # @type OutputPath: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param State: 任务状态：0 初始化， 1 执行中， 2 执行成功，-1 执行失败，-3 已取消。
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

        attr_accessor :DatabaseName, :DataAmount, :Id, :UsedTime, :OutputPath, :CreateTime, :State, :SQLType, :SQL, :ResultExpired, :RowAffectInfo, :DataSet, :Error, :Percentage, :OutputMessage, :TaskType
        
        def initialize(databasename=nil, dataamount=nil, id=nil, usedtime=nil, outputpath=nil, createtime=nil, state=nil, sqltype=nil, sql=nil, resultexpired=nil, rowaffectinfo=nil, dataset=nil, error=nil, percentage=nil, outputmessage=nil, tasktype=nil)
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
        # @param Config: 任务的配置信息
        # @type Config: Array

        attr_accessor :TaskType, :FailureTolerance, :SQL, :Config
        
        def initialize(tasktype=nil, failuretolerance=nil, sql=nil, config=nil)
          @TaskType = tasktype
          @FailureTolerance = failuretolerance
          @SQL = sql
          @Config = config
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
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param PolicySet: 单独给用户绑定的权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param WorkGroupSet: 关联的工作组集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupSet: Array
        # @param IsOwner: 是否是管理员账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOwner: Boolean

        attr_accessor :UserId, :UserDescription, :PolicySet, :Creator, :CreateTime, :WorkGroupSet, :IsOwner
        
        def initialize(userid=nil, userdescription=nil, policyset=nil, creator=nil, createtime=nil, workgroupset=nil, isowner=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
          @Creator = creator
          @CreateTime = createtime
          @WorkGroupSet = workgroupset
          @IsOwner = isowner
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
        end
      end

      # 用户部分信息
      class UserMessage < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :UserId, :UserDescription, :Creator, :CreateTime
        
        def initialize(userid=nil, userdescription=nil, creator=nil, createtime=nil)
          @UserId = userid
          @UserDescription = userdescription
          @Creator = creator
          @CreateTime = createtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
        end
      end

      # 视图基本配置信息
      class ViewBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该视图所属数据库名字
        # @type DatabaseName: String
        # @param ViewName: 视图名称
        # @type ViewName: String

        attr_accessor :DatabaseName, :ViewName
        
        def initialize(databasename=nil, viewname=nil)
          @DatabaseName = databasename
          @ViewName = viewname
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @ViewName = params['ViewName']
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
        # @param WorkGroupId: 工作组Id
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
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
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
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
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

    end
  end
end

