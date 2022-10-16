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
  module Wedata
    module V20210820
      # 任务告警信息
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param TaskIds: 关联任务id
        # @type TaskIds: String
        # @param AlarmType: 告警类别；failure表示失败告警；overtime表示超时告警
        # @type AlarmType: String
        # @param AlarmWay: 告警方式；SMS表示短信；Email表示邮件；HTTP 表示接口方式；Wechat表示微信方式
        # @type AlarmWay: String
        # @param AlarmRecipient: 告警接收人，多个告警接收人以;分割
        # @type AlarmRecipient: String
        # @param AlarmRecipientId: 告警接收人id，多个告警接收人id以;分割
        # @type AlarmRecipientId: String
        # @param Hours: 预计运行的小时，取值范围0-23
        # @type Hours: Integer
        # @param Minutes: 预计运行分钟，取值范围0-59
        # @type Minutes: Integer
        # @param TriggerType: 告警出发时机；1表示第一次运行失败；2表示所有重试完成后失败；
        # @type TriggerType: Integer
        # @param AlarmId: 告警信息id
        # @type AlarmId: String
        # @param Status: 告警状态设置；1表示可用；0表示不可用，默认可用
        # @type Status: Integer

        attr_accessor :TaskIds, :AlarmType, :AlarmWay, :AlarmRecipient, :AlarmRecipientId, :Hours, :Minutes, :TriggerType, :AlarmId, :Status
        
        def initialize(taskids=nil, alarmtype=nil, alarmway=nil, alarmrecipient=nil, alarmrecipientid=nil, hours=nil, minutes=nil, triggertype=nil, alarmid=nil, status=nil)
          @TaskIds = taskids
          @AlarmType = alarmtype
          @AlarmWay = alarmway
          @AlarmRecipient = alarmrecipient
          @AlarmRecipientId = alarmrecipientid
          @Hours = hours
          @Minutes = minutes
          @TriggerType = triggertype
          @AlarmId = alarmid
          @Status = status
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @AlarmType = params['AlarmType']
          @AlarmWay = params['AlarmWay']
          @AlarmRecipient = params['AlarmRecipient']
          @AlarmRecipientId = params['AlarmRecipientId']
          @Hours = params['Hours']
          @Minutes = params['Minutes']
          @TriggerType = params['TriggerType']
          @AlarmId = params['AlarmId']
          @Status = params['Status']
        end
      end

      # BatchDeleteTasksNew请求参数结构体
      class BatchDeleteTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 批量删除的任务TaskId
        # @type TaskIdList: Array
        # @param DeleteMode: true : 删除后下游任务可正常运行
        # false：删除后下游任务不可运行
        # @type DeleteMode: Boolean
        # @param EnableNotify: true：通知下游任务责任人
        # false:  不通知下游任务责任人
        # @type EnableNotify: Boolean
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :DeleteMode, :EnableNotify, :ProjectId
        
        def initialize(taskidlist=nil, deletemode=nil, enablenotify=nil, projectid=nil)
          @TaskIdList = taskidlist
          @DeleteMode = deletemode
          @EnableNotify = enablenotify
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @DeleteMode = params['DeleteMode']
          @EnableNotify = params['EnableNotify']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchDeleteTasksNew返回参数结构体
      class BatchDeleteTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyOwnersNew请求参数结构体
      class BatchModifyOwnersNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 需要更新责任人的TaskId数组
        # @type TaskIdList: Array
        # @param Owners: 需要更新的责任人
        # @type Owners: String
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :Owners, :ProjectId
        
        def initialize(taskidlist=nil, owners=nil, projectid=nil)
          @TaskIdList = taskidlist
          @Owners = owners
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @Owners = params['Owners']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchModifyOwnersNew返回参数结构体
      class BatchModifyOwnersNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量操作的结果返回
      class BatchOperateResult < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 批量操作成功数
        # @type SuccessCount: Integer
        # @param FailedCount: 批量操作失败数
        # @type FailedCount: Integer
        # @param TotalCount: 批量操作的总数
        # @type TotalCount: Integer

        attr_accessor :SuccessCount, :FailedCount, :TotalCount
        
        def initialize(successcount=nil, failedcount=nil, totalcount=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
          @TotalCount = totalcount
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @TotalCount = params['TotalCount']
        end
      end

      # 批量操作结果
      class BatchResult < TencentCloud::Common::AbstractModel
        # @param Running: 正在运行的任务数
        # @type Running: Integer
        # @param Success: 执行成功的任务数
        # @type Success: Integer
        # @param Failed: 执行失败的任务数
        # @type Failed: Integer
        # @param Total: 总任务数
        # @type Total: Integer

        attr_accessor :Running, :Success, :Failed, :Total
        
        def initialize(running=nil, success=nil, failed=nil, total=nil)
          @Running = running
          @Success = success
          @Failed = failed
          @Total = total
        end

        def deserialize(params)
          @Running = params['Running']
          @Success = params['Success']
          @Failed = params['Failed']
          @Total = params['Total']
        end
      end

      # 操作结果
      class BatchReturn < TencentCloud::Common::AbstractModel
        # @param Result: 执行结果
        # @type Result: Boolean
        # @param ErrorDesc: 执行情况备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String
        # @param ErrorId: 执行情况id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String

        attr_accessor :Result, :ErrorDesc, :ErrorId
        
        def initialize(result=nil, errordesc=nil, errorid=nil)
          @Result = result
          @ErrorDesc = errordesc
          @ErrorId = errorid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorDesc = params['ErrorDesc']
          @ErrorId = params['ErrorId']
        end
      end

      # BatchStopTasksNew请求参数结构体
      class BatchStopTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 批量停止任务的TaskId
        # @type TaskIdList: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :TaskIdList, :ProjectId
        
        def initialize(taskidlist=nil, projectid=nil)
          @TaskIdList = taskidlist
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @ProjectId = params['ProjectId']
        end
      end

      # BatchStopTasksNew返回参数结构体
      class BatchStopTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 画布所需的信息
      class CanvasInfo < TencentCloud::Common::AbstractModel
        # @param TasksList: 画布任务信息
        # @type TasksList: Array
        # @param LinksList: 画布任务链接信息
        # @type LinksList: Array

        attr_accessor :TasksList, :LinksList
        
        def initialize(taskslist=nil, linkslist=nil)
          @TasksList = taskslist
          @LinksList = linkslist
        end

        def deserialize(params)
          unless params['TasksList'].nil?
            @TasksList = []
            params['TasksList'].each do |i|
              taskcanvasinfo_tmp = TaskCanvasInfo.new
              taskcanvasinfo_tmp.deserialize(i)
              @TasksList << taskcanvasinfo_tmp
            end
          end
          unless params['LinksList'].nil?
            @LinksList = []
            params['LinksList'].each do |i|
              tasklinkinfo_tmp = TaskLinkInfo.new
              tasklinkinfo_tmp.deserialize(i)
              @LinksList << tasklinkinfo_tmp
            end
          end
        end
      end

      # 内容详情
      class CommonContent < TencentCloud::Common::AbstractModel
        # @param Content: 详情内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Content
        
        def initialize(content=nil)
          @Content = content
        end

        def deserialize(params)
          @Content = params['Content']
        end
      end

      # Id包装对象
      class CommonId < TencentCloud::Common::AbstractModel
        # @param Id: Id值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CreateCustomFunction请求参数结构体
      class CreateCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型：HIVE、SPARK
        # @type Type: String
        # @param Kind: 分类：窗口函数、聚合函数、日期函数......
        # @type Kind: String
        # @param Name: 函数名称
        # @type Name: String
        # @param ClusterIdentifier: 集群实例引擎 ID
        # @type ClusterIdentifier: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Type, :Kind, :Name, :ClusterIdentifier, :DbName, :ProjectId
        
        def initialize(type=nil, kind=nil, name=nil, clusteridentifier=nil, dbname=nil, projectid=nil)
          @Type = type
          @Kind = kind
          @Name = name
          @ClusterIdentifier = clusteridentifier
          @DbName = dbname
          @ProjectId = projectid
        end

        def deserialize(params)
          @Type = params['Type']
          @Kind = params['Kind']
          @Name = params['Name']
          @ClusterIdentifier = params['ClusterIdentifier']
          @DbName = params['DbName']
          @ProjectId = params['ProjectId']
        end
      end

      # CreateCustomFunction返回参数结构体
      class CreateCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataSource请求参数结构体
      class CreateDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # @type Name: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # @type Category: String
        # @param Type: 数据源类型:枚举值
        # @type Type: String
        # @param OwnerProjectId: 归属项目ID
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 归属项目Name
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 归属项目Name中文
        # @type OwnerProjectIdent: String
        # @param BizParams: 业务侧数据源的配置信息扩展
        # @type BizParams: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # @type Params: String
        # @param Description: 数据源描述信息
        # @type Description: String
        # @param Display: 数据源展示名，为了可视化查看
        # @type Display: String
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # @type DatabaseName: String
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # @type Instance: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # @type Status: Integer
        # @param ClusterId: 数据源所属的业务空间名称
        # @type ClusterId: String
        # @param Collect: 是否采集
        # @type Collect: String
        # @param COSBucket: cos桶信息
        # @type COSBucket: String
        # @param COSRegion: cos region
        # @type COSRegion: String

        attr_accessor :Name, :Category, :Type, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :BizParams, :Params, :Description, :Display, :DatabaseName, :Instance, :Status, :ClusterId, :Collect, :COSBucket, :COSRegion
        
        def initialize(name=nil, category=nil, type=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, bizparams=nil, params=nil, description=nil, display=nil, databasename=nil, instance=nil, status=nil, clusterid=nil, collect=nil, cosbucket=nil, cosregion=nil)
          @Name = name
          @Category = category
          @Type = type
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @BizParams = bizparams
          @Params = params
          @Description = description
          @Display = display
          @DatabaseName = databasename
          @Instance = instance
          @Status = status
          @ClusterId = clusterid
          @Collect = collect
          @COSBucket = cosbucket
          @COSRegion = cosregion
        end

        def deserialize(params)
          @Name = params['Name']
          @Category = params['Category']
          @Type = params['Type']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @BizParams = params['BizParams']
          @Params = params['Params']
          @Description = params['Description']
          @Display = params['Display']
          @DatabaseName = params['DatabaseName']
          @Instance = params['Instance']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @Collect = params['Collect']
          @COSBucket = params['COSBucket']
          @COSRegion = params['COSRegion']
        end
      end

      # CreateDataSource返回参数结构体
      class CreateDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateFolder请求参数结构体
      class CreateFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String

        attr_accessor :ProjectId, :FolderName, :ParentsFolderId
        
        def initialize(projectid=nil, foldername=nil, parentsfolderid=nil)
          @ProjectId = projectid
          @FolderName = foldername
          @ParentsFolderId = parentsfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @ParentsFolderId = params['ParentsFolderId']
        end
      end

      # CreateFolder返回参数结构体
      class CreateFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件夹Id，null则创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param TaskType: 26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # @type TaskType: Integer
        # @param TaskExt: 扩展属性
        # @type TaskExt: Array

        attr_accessor :ProjectId, :WorkflowId, :TaskName, :TaskType, :TaskExt
        
        def initialize(projectid=nil, workflowid=nil, taskname=nil, tasktype=nil, taskext=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @TaskName = taskname
          @TaskType = tasktype
          @TaskExt = taskext
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String

        attr_accessor :ProjectId, :WorkflowName, :FolderId
        
        def initialize(projectid=nil, workflowname=nil, folderid=nil)
          @ProjectId = projectid
          @WorkflowName = workflowname
          @FolderId = folderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回工作流Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonId.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据源对象
      class DataSourceInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param Description: 数据源描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ID: 数据源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instance: String
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Region: 数据源引擎所属区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Type: 数据源类型:枚举值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ClusterId: 数据源所属的集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param AppId: 应用ID AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param BizParams: 业务侧数据源的配置信息扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParams: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Display: 数据源展示名，为了可视化查看
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Display: String
        # @param OwnerAccount: 数据源责任人账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerAccount: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param OwnerAccountName: 数据源责任人账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerAccountName: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param OwnerProjectId: 归属项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 归属项目Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 归属项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerProjectIdent: String
        # @param AuthorityProjectName: 授权项目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorityProjectName: String
        # @param AuthorityUserName: 授权用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorityUserName: String
        # @param Edit: 是否有编辑权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edit: Boolean
        # @param Author: 是否有授权权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Author: Boolean
        # @param Deliver: 是否有转交权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deliver: Boolean
        # @param DataSourceStatus: 数据源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceStatus: String
        # @param CreateTime: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param ParamsString: Params json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamsString: String
        # @param BizParamsString: BizParams json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParamsString: String

        attr_accessor :DatabaseName, :Description, :ID, :Instance, :Name, :Region, :Type, :ClusterId, :AppId, :BizParams, :Category, :Display, :OwnerAccount, :Params, :Status, :OwnerAccountName, :ClusterName, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :AuthorityProjectName, :AuthorityUserName, :Edit, :Author, :Deliver, :DataSourceStatus, :CreateTime, :ParamsString, :BizParamsString
        
        def initialize(databasename=nil, description=nil, id=nil, instance=nil, name=nil, region=nil, type=nil, clusterid=nil, appid=nil, bizparams=nil, category=nil, display=nil, owneraccount=nil, params=nil, status=nil, owneraccountname=nil, clustername=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, authorityprojectname=nil, authorityusername=nil, edit=nil, author=nil, deliver=nil, datasourcestatus=nil, createtime=nil, paramsstring=nil, bizparamsstring=nil)
          @DatabaseName = databasename
          @Description = description
          @ID = id
          @Instance = instance
          @Name = name
          @Region = region
          @Type = type
          @ClusterId = clusterid
          @AppId = appid
          @BizParams = bizparams
          @Category = category
          @Display = display
          @OwnerAccount = owneraccount
          @Params = params
          @Status = status
          @OwnerAccountName = owneraccountname
          @ClusterName = clustername
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @AuthorityProjectName = authorityprojectname
          @AuthorityUserName = authorityusername
          @Edit = edit
          @Author = author
          @Deliver = deliver
          @DataSourceStatus = datasourcestatus
          @CreateTime = createtime
          @ParamsString = paramsstring
          @BizParamsString = bizparamsstring
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Description = params['Description']
          @ID = params['ID']
          @Instance = params['Instance']
          @Name = params['Name']
          @Region = params['Region']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @AppId = params['AppId']
          @BizParams = params['BizParams']
          @Category = params['Category']
          @Display = params['Display']
          @OwnerAccount = params['OwnerAccount']
          @Params = params['Params']
          @Status = params['Status']
          @OwnerAccountName = params['OwnerAccountName']
          @ClusterName = params['ClusterName']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @AuthorityProjectName = params['AuthorityProjectName']
          @AuthorityUserName = params['AuthorityUserName']
          @Edit = params['Edit']
          @Author = params['Author']
          @Deliver = params['Deliver']
          @DataSourceStatus = params['DataSourceStatus']
          @CreateTime = params['CreateTime']
          @ParamsString = params['ParamsString']
          @BizParamsString = params['BizParamsString']
        end
      end

      # 查询数据源分页列表
      class DataSourceInfoPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param Rows: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总分页页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer

        attr_accessor :PageNumber, :PageSize, :Rows, :TotalCount, :TotalPageNumber
        
        def initialize(pagenumber=nil, pagesize=nil, rows=nil, totalcount=nil, totalpagenumber=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Rows = rows
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              datasourceinfo_tmp = DataSourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @Rows << datasourceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # DeleteCustomFunction请求参数结构体
      class DeleteCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIdentifier: 集群实例 ID
        # @type ClusterIdentifier: String
        # @param FunctionId: 函数 ID
        # @type FunctionId: String

        attr_accessor :ClusterIdentifier, :FunctionId
        
        def initialize(clusteridentifier=nil, functionid=nil)
          @ClusterIdentifier = clusteridentifier
          @FunctionId = functionid
        end

        def deserialize(params)
          @ClusterIdentifier = params['ClusterIdentifier']
          @FunctionId = params['FunctionId']
        end
      end

      # DeleteCustomFunction返回参数结构体
      class DeleteCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDataSources请求参数结构体
      class DeleteDataSourcesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: id列表
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteDataSources返回参数结构体
      class DeleteDataSourcesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否删除成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFolder请求参数结构体
      class DeleteFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderId: 文件夹ID
        # @type FolderId: String

        attr_accessor :ProjectId, :FolderId
        
        def initialize(projectid=nil, folderid=nil)
          @ProjectId = projectid
          @FolderId = folderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderId = params['FolderId']
        end
      end

      # DeleteFolder返回参数结构体
      class DeleteFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表删除成功，false代表删除失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteWorkflowNew请求参数结构体
      class DeleteWorkflowNewRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowId: 工作流id
        # @type WorkFlowId: String
        # @param DeleteMode: true : 删除后下游任务可正常运行
        # false：删除后下游任务不可运行
        # @type DeleteMode: Boolean
        # @param EnableNotify: true：通知下游任务责任人
        # false:  不通知下游任务责任人
        # @type EnableNotify: Boolean
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :WorkFlowId, :DeleteMode, :EnableNotify, :ProjectId
        
        def initialize(workflowid=nil, deletemode=nil, enablenotify=nil, projectid=nil)
          @WorkFlowId = workflowid
          @DeleteMode = deletemode
          @EnableNotify = enablenotify
          @ProjectId = projectid
        end

        def deserialize(params)
          @WorkFlowId = params['WorkFlowId']
          @DeleteMode = params['DeleteMode']
          @EnableNotify = params['EnableNotify']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteWorkflowNew返回参数结构体
      class DeleteWorkflowNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回删除结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 依赖配置
      class DependencyConfig < TencentCloud::Common::AbstractModel
        # @param DependConfType: 仅五种周期运行依赖配置： HOUR,DAY,WEEK,MONTH,YEAR,CRONTAB,MINUTE
        # @type DependConfType: String
        # @param SubordinateCyclicType: 依赖配置从属周期类型，CURRENT_HOUR，PREVIOUS_HOUR，CURRENT_DAY，PREVIOUS_DAY，PREVIOUS_WEEK，PREVIOUS_FRIDAY，PREVIOUS_WEEKEND，CURRENT_MONTH，PREVIOUS_MONTH，PREVIOUS_END_OF_MONTH
        #      * PREVIOUS_BEGIN_OF_MONTH，ALL_MONTH_OF_YEAR，ALL_DAY_OF_YEAR，CURRENT_YEAR，CURRENT，CURRENT_MINUTE，PREVIOUS_MINUTE_CYCLE，PREVIOUS_HOUR_CYCLE
        # @type SubordinateCyclicType: String
        # @param DependencyStrategy: WAITING，等待（默认策略）EXECUTING:执行
        # @type DependencyStrategy: String
        # @param ParentTask: 父任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentTask: :class:`Tencentcloud::Wedata.v20210820.models.TaskInnerInfo`
        # @param SonTask: 子任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SonTask: :class:`Tencentcloud::Wedata.v20210820.models.TaskInnerInfo`

        attr_accessor :DependConfType, :SubordinateCyclicType, :DependencyStrategy, :ParentTask, :SonTask
        
        def initialize(dependconftype=nil, subordinatecyclictype=nil, dependencystrategy=nil, parenttask=nil, sontask=nil)
          @DependConfType = dependconftype
          @SubordinateCyclicType = subordinatecyclictype
          @DependencyStrategy = dependencystrategy
          @ParentTask = parenttask
          @SonTask = sontask
        end

        def deserialize(params)
          @DependConfType = params['DependConfType']
          @SubordinateCyclicType = params['SubordinateCyclicType']
          @DependencyStrategy = params['DependencyStrategy']
          unless params['ParentTask'].nil?
            @ParentTask = TaskInnerInfo.new
            @ParentTask.deserialize(params['ParentTask'])
          end
          unless params['SonTask'].nil?
            @SonTask = TaskInnerInfo.new
            @SonTask.deserialize(params['SonTask'])
          end
        end
      end

      # DescribeDataSourceList请求参数结构体
      class DescribeDataSourceListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 返回数量
        # @type PageSize: Integer
        # @param OrderFields: 排序配置
        # @type OrderFields: Array
        # @param Filters: 可选过滤条件，Filter可选配置(参考): "Name": { "type": "string", "description": "数据源名称" }, "Type": { "type": "string", "description": "类型" }, "ClusterId": { "type": "string", "description": "集群id" }, "CategoryId": { "type": "string", "description": "分类，项目或空间id" }
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :OrderFields, :Filters
        
        def initialize(pagenumber=nil, pagesize=nil, orderfields=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
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

      # DescribeDataSourceList返回参数结构体
      class DescribeDataSourceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DataSourceInfoPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceInfoPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSourceWithoutInfo请求参数结构体
      class DescribeDataSourceWithoutInfoRequest < TencentCloud::Common::AbstractModel
        # @param OrderFields: 1
        # @type OrderFields: Array
        # @param Filters: 1
        # @type Filters: Array

        attr_accessor :OrderFields, :Filters
        
        def initialize(orderfields=nil, filters=nil)
          @OrderFields = orderfields
          @Filters = filters
        end

        def deserialize(params)
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
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

      # DescribeDataSourceWithoutInfo返回参数结构体
      class DescribeDataSourceWithoutInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              datasourceinfo_tmp = DataSourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @Data << datasourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasource请求参数结构体
      class DescribeDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 对象唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeDatasource返回参数结构体
      class DescribeDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据源对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DataSourceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDependTasksNew请求参数结构体
      class DescribeDependTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param Deep: 上游/下游层级1-6级
        # @type Deep: Integer
        # @param Up: 1: 表示查询上游节点；0:表示查询下游节点；2：表示查询上游和下游节点
        # @type Up: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param WorkflowId: 任务工作流id
        # @type WorkflowId: String

        attr_accessor :TaskId, :Deep, :Up, :ProjectId, :WorkflowId
        
        def initialize(taskid=nil, deep=nil, up=nil, projectid=nil, workflowid=nil)
          @TaskId = taskid
          @Deep = deep
          @Up = up
          @ProjectId = projectid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Deep = params['Deep']
          @Up = params['Up']
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DescribeDependTasksNew返回参数结构体
      class DescribeDependTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 画布任务和链接信息
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CanvasInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CanvasInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件夹分页信息
      class DescribeFolderListData < TencentCloud::Common::AbstractModel
        # @param Items: 文件夹信息列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              folder_tmp = Folder.new
              folder_tmp.deserialize(i)
              @Items << folder_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderList请求参数结构体
      class DescribeFolderListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentsFolderId: 文件夹ID
        # @type ParentsFolderId: String
        # @param KeyWords: 关键字
        # @type KeyWords: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentsFolderId, :KeyWords, :PageNumber, :PageSize
        
        def initialize(projectid=nil, parentsfolderid=nil, keywords=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentsFolderId = parentsfolderid
          @KeyWords = keywords
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentsFolderId = params['ParentsFolderId']
          @KeyWords = params['KeyWords']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderList返回参数结构体
      class DescribeFolderListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeFolderListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeFolderListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件夹分页信息
      class DescribeFolderWorkflowListData < TencentCloud::Common::AbstractModel
        # @param Items: 工作流信息列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflow_tmp = Workflow.new
              workflow_tmp.deserialize(i)
              @Items << workflow_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderWorkflowList请求参数结构体
      class DescribeFolderWorkflowListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String
        # @param KeyWords: 关键字
        # @type KeyWords: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :ParentsFolderId, :KeyWords, :PageNumber, :PageSize
        
        def initialize(projectid=nil, parentsfolderid=nil, keywords=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @ParentsFolderId = parentsfolderid
          @KeyWords = keywords
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ParentsFolderId = params['ParentsFolderId']
          @KeyWords = params['KeyWords']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeFolderWorkflowList返回参数结构体
      class DescribeFolderWorkflowListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeFolderWorkflowListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeFolderWorkflowListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionKinds请求参数结构体
      class DescribeFunctionKindsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFunctionKinds返回参数结构体
      class DescribeFunctionKindsResponse < TencentCloud::Common::AbstractModel
        # @param Kinds: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kinds: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Kinds, :ErrorMessage, :RequestId
        
        def initialize(kinds=nil, errormessage=nil, requestid=nil)
          @Kinds = kinds
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Kinds'].nil?
            @Kinds = []
            params['Kinds'].each do |i|
              functiontypeorkind_tmp = FunctionTypeOrKind.new
              functiontypeorkind_tmp.deserialize(i)
              @Kinds << functiontypeorkind_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionTypes请求参数结构体
      class DescribeFunctionTypesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFunctionTypes返回参数结构体
      class DescribeFunctionTypesResponse < TencentCloud::Common::AbstractModel
        # @param Types: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Types: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Types, :ErrorMessage, :RequestId
        
        def initialize(types=nil, errormessage=nil, requestid=nil)
          @Types = types
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Types'].nil?
            @Types = []
            params['Types'].each do |i|
              functiontypeorkind_tmp = FunctionTypeOrKind.new
              functiontypeorkind_tmp.deserialize(i)
              @Types << functiontypeorkind_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLogs请求参数结构体
      class DescribeInstanceLogsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :ProjectId, :TaskId, :CurRunDate
        
        def initialize(projectid=nil, taskid=nil, currundate=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # DescribeInstanceLogs返回参数结构体
      class DescribeInstanceLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              instancelog_tmp = InstanceLog.new
              instancelog_tmp.deserialize(i)
              @Data << instancelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationalFunctions请求参数结构体
      class DescribeOrganizationalFunctionsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 场景类型：开发、使用
        # @type Type: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param Name: 函数名称
        # @type Name: String
        # @param DisplayName: 展示名称
        # @type DisplayName: String

        attr_accessor :Type, :ProjectId, :Name, :DisplayName
        
        def initialize(type=nil, projectid=nil, name=nil, displayname=nil)
          @Type = type
          @ProjectId = projectid
          @Name = name
          @DisplayName = displayname
        end

        def deserialize(params)
          @Type = params['Type']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
        end
      end

      # DescribeOrganizationalFunctions返回参数结构体
      class DescribeOrganizationalFunctionsResponse < TencentCloud::Common::AbstractModel
        # @param Content: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ErrorMessage, :RequestId
        
        def initialize(content=nil, errormessage=nil, requestid=nil)
          @Content = content
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              organizationalfunction_tmp = OrganizationalFunction.new
              organizationalfunction_tmp.deserialize(i)
              @Content << organizationalfunction_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id。一般使用项目Id来查询，与projectName必须存在一个。
        # @type ProjectId: String
        # @param DescribeClusters: 是否展示关联集群信息
        # @type DescribeClusters: Boolean
        # @param DescribeExecutors: 是否展示关联执行组的信息，仅部分信息。
        # @type DescribeExecutors: Boolean
        # @param DescribeAdminUsers: 默认不展示项目管理员信息
        # @type DescribeAdminUsers: Boolean
        # @param DescribeMemberCount: 默认不统计项目人员数量
        # @type DescribeMemberCount: Boolean
        # @param DescribeCreator: 默认不查询创建者的信息
        # @type DescribeCreator: Boolean
        # @param ProjectName: 项目名只在租户内唯一，一般用来转化为项目ID。
        # @type ProjectName: String

        attr_accessor :ProjectId, :DescribeClusters, :DescribeExecutors, :DescribeAdminUsers, :DescribeMemberCount, :DescribeCreator, :ProjectName
        
        def initialize(projectid=nil, describeclusters=nil, describeexecutors=nil, describeadminusers=nil, describemembercount=nil, describecreator=nil, projectname=nil)
          @ProjectId = projectid
          @DescribeClusters = describeclusters
          @DescribeExecutors = describeexecutors
          @DescribeAdminUsers = describeadminusers
          @DescribeMemberCount = describemembercount
          @DescribeCreator = describecreator
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DescribeClusters = params['DescribeClusters']
          @DescribeExecutors = params['DescribeExecutors']
          @DescribeAdminUsers = params['DescribeAdminUsers']
          @DescribeMemberCount = params['DescribeMemberCount']
          @DescribeCreator = params['DescribeCreator']
          @ProjectName = params['ProjectName']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRelatedInstances请求参数结构体
      class DescribeRelatedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CurRunDate: 数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type CurRunDate: String
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param Depth: 距离当前任务的层级距离，-1表示取父节点，1表示子节点
        # @type Depth: Integer
        # @param PageNumber: 页号，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认为10，最大不超过200
        # @type PageSize: Integer

        attr_accessor :ProjectId, :CurRunDate, :TaskId, :Depth, :PageNumber, :PageSize
        
        def initialize(projectid=nil, currundate=nil, taskid=nil, depth=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @CurRunDate = currundate
          @TaskId = taskid
          @Depth = depth
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CurRunDate = params['CurRunDate']
          @TaskId = params['TaskId']
          @Depth = params['Depth']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRelatedInstances返回参数结构体
      class DescribeRelatedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeTaskInstancesData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTaskInstancesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskAlarmStatus: 任务告警状态
        # @type TaskAlarmStatus: Integer

        attr_accessor :ProjectId, :TaskId, :TaskAlarmStatus
        
        def initialize(projectid=nil, taskid=nil, taskalarmstatus=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @TaskAlarmStatus = taskalarmstatus
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @TaskAlarmStatus = params['TaskAlarmStatus']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInfoData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInfoData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务实例列表
      class DescribeTaskInstancesData < TencentCloud::Common::AbstractModel
        # @param Items: 实例列表
        # @type Items: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :Items, :TotalCount, :PageNumber, :PageSize
        
        def initialize(items=nil, totalcount=nil, pagenumber=nil, pagesize=nil)
          @Items = items
          @TotalCount = totalcount
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskinstanceinfo_tmp = TaskInstanceInfo.new
              taskinstanceinfo_tmp.deserialize(i)
              @Items << taskinstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTaskInstances请求参数结构体
      class DescribeTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageNumber: 页号，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认为10，最大不超过200
        # @type PageSize: Integer
        # @param WorkflowIdList: 工作流id列表
        # @type WorkflowIdList: Array
        # @param WorkflowNameList: 工作流名称列表，支持模糊搜索
        # @type WorkflowNameList: Array
        # @param DateFrom: 起始数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type DateFrom: String
        # @param DateTo: 结束数据时间，格式yyyy-MM-dd HH:mm:ss
        # @type DateTo: String
        # @param TaskIdList: 任务id列表
        # @type TaskIdList: Array
        # @param TaskNameList: 任务名称列表，支持模糊搜索
        # @type TaskNameList: Array
        # @param InChargeList: 责任人名称列表
        # @type InChargeList: Array
        # @param TaskTypeIdList: 任务类型码列表，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # @type TaskTypeIdList: Array
        # @param StateList: 实例状态列表，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        # @type StateList: Array
        # @param TaskCycleUnitList: 周期类型列表，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        # @type TaskCycleUnitList: Array
        # @param InstanceType: 实例类型，0补录实例，1周期实例，2非周期实例
        # @type InstanceType: Integer
        # @param OrderFields: 排序字段信息列表，ScheduleDateTime / CostTime / StartTime / EndTime
        # @type OrderFields: Array

        attr_accessor :ProjectId, :PageNumber, :PageSize, :WorkflowIdList, :WorkflowNameList, :DateFrom, :DateTo, :TaskIdList, :TaskNameList, :InChargeList, :TaskTypeIdList, :StateList, :TaskCycleUnitList, :InstanceType, :OrderFields
        
        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, workflowidlist=nil, workflownamelist=nil, datefrom=nil, dateto=nil, taskidlist=nil, tasknamelist=nil, inchargelist=nil, tasktypeidlist=nil, statelist=nil, taskcycleunitlist=nil, instancetype=nil, orderfields=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowIdList = workflowidlist
          @WorkflowNameList = workflownamelist
          @DateFrom = datefrom
          @DateTo = dateto
          @TaskIdList = taskidlist
          @TaskNameList = tasknamelist
          @InChargeList = inchargelist
          @TaskTypeIdList = tasktypeidlist
          @StateList = statelist
          @TaskCycleUnitList = taskcycleunitlist
          @InstanceType = instancetype
          @OrderFields = orderfields
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowIdList = params['WorkflowIdList']
          @WorkflowNameList = params['WorkflowNameList']
          @DateFrom = params['DateFrom']
          @DateTo = params['DateTo']
          @TaskIdList = params['TaskIdList']
          @TaskNameList = params['TaskNameList']
          @InChargeList = params['InChargeList']
          @TaskTypeIdList = params['TaskTypeIdList']
          @StateList = params['StateList']
          @TaskCycleUnitList = params['TaskCycleUnitList']
          @InstanceType = params['InstanceType']
          unless params['OrderFields'].nil?
            @OrderFields = []
            params['OrderFields'].each do |i|
              orderfield_tmp = OrderField.new
              orderfield_tmp.deserialize(i)
              @OrderFields << orderfield_tmp
            end
          end
        end
      end

      # DescribeTaskInstances返回参数结构体
      class DescribeTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.DescribeTaskInstancesData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTaskInstancesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskScript请求参数结构体
      class DescribeTaskScriptRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :ProjectId, :TaskId
        
        def initialize(projectid=nil, taskid=nil)
          @ProjectId = projectid
          @TaskId = taskid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskScript返回参数结构体
      class DescribeTaskScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务脚本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskScriptContent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskScriptContent.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasksByPage请求参数结构体
      class DescribeTasksByPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流ID
        # @type WorkflowId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 页大小，默认10
        # @type PageSize: Integer

        attr_accessor :ProjectId, :WorkflowId, :PageNumber, :PageSize
        
        def initialize(projectid=nil, workflowid=nil, pagenumber=nil, pagesize=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTasksByPage返回参数结构体
      class DescribeTasksByPageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.TaskInfoDataPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskInfoDataPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 通用过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤值列表
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

      # 文件夹信息
      class Folder < TencentCloud::Common::AbstractModel
        # @param Id: 文件ID
        # @type Id: String
        # @param Name: 文件夹名称
        # @type Name: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Name, :CreateTime, :ProjectId, :UpdateTime
        
        def initialize(id=nil, name=nil, createtime=nil, projectid=nil, updatetime=nil)
          @Id = id
          @Name = name
          @CreateTime = createtime
          @ProjectId = projectid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ForceSucInstances请求参数结构体
      class ForceSucInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array

        attr_accessor :ProjectId, :Instances
        
        def initialize(projectid=nil, instances=nil)
          @ProjectId = projectid
          @Instances = instances
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
        end
      end

      # ForceSucInstances返回参数结构体
      class ForceSucInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FreezeTasksByMultiWorkflow请求参数结构体
      class FreezeTasksByMultiWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowIds: 工作流Id集合
        # @type WorkFlowIds: Array

        attr_accessor :WorkFlowIds
        
        def initialize(workflowids=nil)
          @WorkFlowIds = workflowids
        end

        def deserialize(params)
          @WorkFlowIds = params['WorkFlowIds']
        end
      end

      # FreezeTasksByMultiWorkflow返回参数结构体
      class FreezeTasksByMultiWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FreezeTasks请求参数结构体
      class FreezeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param OperateIsInform: 任务操作是否消息通知下游任务责任人
        # @type OperateIsInform: Boolean

        attr_accessor :Tasks, :OperateIsInform
        
        def initialize(tasks=nil, operateisinform=nil)
          @Tasks = tasks
          @OperateIsInform = operateisinform
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              simpletaskinfo_tmp = SimpleTaskInfo.new
              simpletaskinfo_tmp.deserialize(i)
              @Tasks << simpletaskinfo_tmp
            end
          end
          @OperateIsInform = params['OperateIsInform']
        end
      end

      # FreezeTasks返回参数结构体
      class FreezeTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 函数资源信息
      class FunctionResource < TencentCloud::Common::AbstractModel
        # @param Path: 资源路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Name: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Id: 资源唯一标识
        # @type Id: String
        # @param Md5: 资源 MD5 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param Type: 默认是 hdfs
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Path, :Name, :Id, :Md5, :Type
        
        def initialize(path=nil, name=nil, id=nil, md5=nil, type=nil)
          @Path = path
          @Name = name
          @Id = id
          @Md5 = md5
          @Type = type
        end

        def deserialize(params)
          @Path = params['Path']
          @Name = params['Name']
          @Id = params['Id']
          @Md5 = params['Md5']
          @Type = params['Type']
        end
      end

      # 函数类型或函数分类
      class FunctionTypeOrKind < TencentCloud::Common::AbstractModel
        # @param Name: 无
        # @type Name: String
        # @param ZhName: 无
        # @type ZhName: String
        # @param EnName: 无
        # @type EnName: String

        attr_accessor :Name, :ZhName, :EnName
        
        def initialize(name=nil, zhname=nil, enname=nil)
          @Name = name
          @ZhName = zhname
          @EnName = enname
        end

        def deserialize(params)
          @Name = params['Name']
          @ZhName = params['ZhName']
          @EnName = params['EnName']
        end
      end

      # 函数提交版本信息
      class FunctionVersion < TencentCloud::Common::AbstractModel
        # @param Tag: 版本号：V0 V1 V2
        # @type Tag: String
        # @param UserId: 提交人 ID
        # @type UserId: String
        # @param Type: 变更类型：ADD、MODIFY
        # @type Type: String
        # @param Comment: 备注
        # @type Comment: String
        # @param Timestamp: 提交时间: UTC 秒数
        # @type Timestamp: String
        # @param UserName: 提交人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Content: 版本内容：json string 格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Tag, :UserId, :Type, :Comment, :Timestamp, :UserName, :Content
        
        def initialize(tag=nil, userid=nil, type=nil, comment=nil, timestamp=nil, username=nil, content=nil)
          @Tag = tag
          @UserId = userid
          @Type = type
          @Comment = comment
          @Timestamp = timestamp
          @UserName = username
          @Content = content
        end

        def deserialize(params)
          @Tag = params['Tag']
          @UserId = params['UserId']
          @Type = params['Type']
          @Comment = params['Comment']
          @Timestamp = params['Timestamp']
          @UserName = params['UserName']
          @Content = params['Content']
        end
      end

      # Spark SQL配置参数
      class GeneralTaskParam < TencentCloud::Common::AbstractModel
        # @param Type: 通用任务参数类型,例：SPARK_SQL
        # @type Type: String
        # @param Value: 通用任务参数内容,直接作用于任务的参数。不同参数用;
        # 分割
        # @type Value: String

        attr_accessor :Type, :Value
        
        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 实例请求实体
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String

        attr_accessor :TaskId, :CurRunDate
        
        def initialize(taskid=nil, currundate=nil)
          @TaskId = taskid
          @CurRunDate = currundate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
        end
      end

      # 实例日志实体
      class InstanceLog < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CurRunDate: 数据时间
        # @type CurRunDate: String
        # @param Tries: 尝试运行次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: String
        # @param LastUpdate: 日志更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdate: String
        # @param BrokerIp: 日志所在节点
        # @type BrokerIp: String
        # @param OriginFileName: 文件名  含全路径
        # @type OriginFileName: String
        # @param CreateTime: 日志创建时间
        # @type CreateTime: String
        # @param InstanceLogType: 实例日志类型, run: 运行; kill: 终止
        # @type InstanceLogType: String
        # @param CostTime: 运行耗时
        # @type CostTime: Float

        attr_accessor :TaskId, :CurRunDate, :Tries, :LastUpdate, :BrokerIp, :OriginFileName, :CreateTime, :InstanceLogType, :CostTime
        
        def initialize(taskid=nil, currundate=nil, tries=nil, lastupdate=nil, brokerip=nil, originfilename=nil, createtime=nil, instancelogtype=nil, costtime=nil)
          @TaskId = taskid
          @CurRunDate = currundate
          @Tries = tries
          @LastUpdate = lastupdate
          @BrokerIp = brokerip
          @OriginFileName = originfilename
          @CreateTime = createtime
          @InstanceLogType = instancelogtype
          @CostTime = costtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CurRunDate = params['CurRunDate']
          @Tries = params['Tries']
          @LastUpdate = params['LastUpdate']
          @BrokerIp = params['BrokerIp']
          @OriginFileName = params['OriginFileName']
          @CreateTime = params['CreateTime']
          @InstanceLogType = params['InstanceLogType']
          @CostTime = params['CostTime']
        end
      end

      # 集成节点详情
      class IntegrationNodeDetail < TencentCloud::Common::AbstractModel
        # @param Name: 集成节点名称
        # @type Name: String
        # @param NodeType: 集成节点类型
        # @type NodeType: String
        # @param DataSourceType: 节点数据源类型
        # @type DataSourceType: String
        # @param Description: 节点描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: String
        # @param Config: 节点配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: Array
        # @param ExtConfig: 节点扩展配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array
        # @param Schema: 节点schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: Array
        # @param NodeMapping: 节点映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeMapping: :class:`Tencentcloud::Wedata.v20210820.models.IntegrationNodeMapping`
        # @param OwnerUin: owner uin
        # @type OwnerUin: String

        attr_accessor :Name, :NodeType, :DataSourceType, :Description, :DatasourceId, :Config, :ExtConfig, :Schema, :NodeMapping, :OwnerUin
        
        def initialize(name=nil, nodetype=nil, datasourcetype=nil, description=nil, datasourceid=nil, config=nil, extconfig=nil, schema=nil, nodemapping=nil, owneruin=nil)
          @Name = name
          @NodeType = nodetype
          @DataSourceType = datasourcetype
          @Description = description
          @DatasourceId = datasourceid
          @Config = config
          @ExtConfig = extconfig
          @Schema = schema
          @NodeMapping = nodemapping
          @OwnerUin = owneruin
        end

        def deserialize(params)
          @Name = params['Name']
          @NodeType = params['NodeType']
          @DataSourceType = params['DataSourceType']
          @Description = params['Description']
          @DatasourceId = params['DatasourceId']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Config << recordfield_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
          unless params['Schema'].nil?
            @Schema = []
            params['Schema'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @Schema << integrationnodeschema_tmp
            end
          end
          unless params['NodeMapping'].nil?
            @NodeMapping = IntegrationNodeMapping.new
            @NodeMapping.deserialize(params['NodeMapping'])
          end
          @OwnerUin = params['OwnerUin']
        end
      end

      # 集成节点映射
      class IntegrationNodeMapping < TencentCloud::Common::AbstractModel
        # @param SourceId: 源节点id
        # @type SourceId: String
        # @param SinkId: 目标节点id
        # @type SinkId: String
        # @param SourceSchema: 源节点schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceSchema: Array
        # @param SchemaMappings: 节点schema映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaMappings: Array
        # @param ExtConfig: 节点映射扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtConfig: Array

        attr_accessor :SourceId, :SinkId, :SourceSchema, :SchemaMappings, :ExtConfig
        
        def initialize(sourceid=nil, sinkid=nil, sourceschema=nil, schemamappings=nil, extconfig=nil)
          @SourceId = sourceid
          @SinkId = sinkid
          @SourceSchema = sourceschema
          @SchemaMappings = schemamappings
          @ExtConfig = extconfig
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @SinkId = params['SinkId']
          unless params['SourceSchema'].nil?
            @SourceSchema = []
            params['SourceSchema'].each do |i|
              integrationnodeschema_tmp = IntegrationNodeSchema.new
              integrationnodeschema_tmp.deserialize(i)
              @SourceSchema << integrationnodeschema_tmp
            end
          end
          unless params['SchemaMappings'].nil?
            @SchemaMappings = []
            params['SchemaMappings'].each do |i|
              integrationnodeschemamapping_tmp = IntegrationNodeSchemaMapping.new
              integrationnodeschemamapping_tmp.deserialize(i)
              @SchemaMappings << integrationnodeschemamapping_tmp
            end
          end
          unless params['ExtConfig'].nil?
            @ExtConfig = []
            params['ExtConfig'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @ExtConfig << recordfield_tmp
            end
          end
        end
      end

      # 集成节点schema
      class IntegrationNodeSchema < TencentCloud::Common::AbstractModel
        # @param Id: schema id
        # @type Id: String
        # @param Name: schema名称
        # @type Name: String
        # @param Type: schema类型
        # @type Type: String
        # @param Value: schema值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Properties: schema拓展属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array

        attr_accessor :Id, :Name, :Type, :Value, :Properties
        
        def initialize(id=nil, name=nil, type=nil, value=nil, properties=nil)
          @Id = id
          @Name = name
          @Type = type
          @Value = value
          @Properties = properties
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Value = params['Value']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              recordfield_tmp = RecordField.new
              recordfield_tmp.deserialize(i)
              @Properties << recordfield_tmp
            end
          end
        end
      end

      # 集成节点schema映射
      class IntegrationNodeSchemaMapping < TencentCloud::Common::AbstractModel
        # @param SourceSchemaId: 源schema id
        # @type SourceSchemaId: String
        # @param SinkSchemaId: 目标schema id
        # @type SinkSchemaId: String

        attr_accessor :SourceSchemaId, :SinkSchemaId
        
        def initialize(sourceschemaid=nil, sinkschemaid=nil)
          @SourceSchemaId = sourceschemaid
          @SinkSchemaId = sinkschemaid
        end

        def deserialize(params)
          @SourceSchemaId = params['SourceSchemaId']
          @SinkSchemaId = params['SinkSchemaId']
        end
      end

      # KillInstances请求参数结构体
      class KillInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array

        attr_accessor :ProjectId, :Instances
        
        def initialize(projectid=nil, instances=nil)
          @ProjectId = projectid
          @Instances = instances
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
        end
      end

      # KillInstances返回参数结构体
      class KillInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MakeUpTasksNew请求参数结构体
      class MakeUpTasksNewRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 补录的当前任务的taskId数组
        # @type TaskIdList: Array
        # @param StartTime: 补录开始时间
        # @type StartTime: String
        # @param EndTime: 补录结束时间
        # @type EndTime: String
        # @param MakeUpType: 补录选项标识，1表示当前任务；2表示当前及下游任务；3表示下游任务
        # @type MakeUpType: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param CheckParent: true: 检查父任务实例状态；false: 不检查父任务实例状态
        # @type CheckParent: Boolean

        attr_accessor :TaskIdList, :StartTime, :EndTime, :MakeUpType, :ProjectId, :CheckParent
        
        def initialize(taskidlist=nil, starttime=nil, endtime=nil, makeuptype=nil, projectid=nil, checkparent=nil)
          @TaskIdList = taskidlist
          @StartTime = starttime
          @EndTime = endtime
          @MakeUpType = makeuptype
          @ProjectId = projectid
          @CheckParent = checkparent
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MakeUpType = params['MakeUpType']
          @ProjectId = params['ProjectId']
          @CheckParent = params['CheckParent']
        end
      end

      # MakeUpTasksNew返回参数结构体
      class MakeUpTasksNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MakeUpWorkflowNew请求参数结构体
      class MakeUpWorkflowNewRequest < TencentCloud::Common::AbstractModel
        # @param WorkFlowId: 工作流id
        # @type WorkFlowId: String
        # @param StartTime: 补录开始时间
        # @type StartTime: String
        # @param EndTime: 补录结束时间
        # @type EndTime: String
        # @param ProjectId: 项目id
        # @type ProjectId: String

        attr_accessor :WorkFlowId, :StartTime, :EndTime, :ProjectId
        
        def initialize(workflowid=nil, starttime=nil, endtime=nil, projectid=nil)
          @WorkFlowId = workflowid
          @StartTime = starttime
          @EndTime = endtime
          @ProjectId = projectid
        end

        def deserialize(params)
          @WorkFlowId = params['WorkFlowId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ProjectId = params['ProjectId']
        end
      end

      # MakeUpWorkflowNew返回参数结构体
      class MakeUpWorkflowNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回补录成功或失败的任务数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDataSource请求参数结构体
      class ModifyDataSourceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据源名称，在相同SpaceName下，数据源名称不能为空
        # @type Name: String
        # @param Category: 数据源类别：绑定引擎、绑定数据库
        # @type Category: String
        # @param Type: 数据源类型:枚举值
        # @type Type: String
        # @param ID: 数据源ID
        # @type ID: Integer
        # @param BizParams: 业务侧数据源的配置信息扩展
        # @type BizParams: String
        # @param Params: 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        # @type Params: String
        # @param Description: 数据源描述信息
        # @type Description: String
        # @param Display: 数据源展示名，为了可视化查看
        # @type Display: String
        # @param DatabaseName: 若数据源列表为绑定数据库，则为db名称
        # @type DatabaseName: String
        # @param Instance: 数据源引擎的实例ID，如CDB实例ID
        # @type Instance: String
        # @param Status: 数据源数据源的可见性，1为可见、0为不可见。默认为1
        # @type Status: Integer
        # @param ClusterId: 数据源所属的业务空间名称
        # @type ClusterId: String
        # @param Collect: 是否采集
        # @type Collect: String
        # @param OwnerProjectId: 项目id
        # @type OwnerProjectId: String
        # @param OwnerProjectName: 项目名称
        # @type OwnerProjectName: String
        # @param OwnerProjectIdent: 项目中文名
        # @type OwnerProjectIdent: String
        # @param COSBucket: cos bucket
        # @type COSBucket: String
        # @param COSRegion: cos region
        # @type COSRegion: String

        attr_accessor :Name, :Category, :Type, :ID, :BizParams, :Params, :Description, :Display, :DatabaseName, :Instance, :Status, :ClusterId, :Collect, :OwnerProjectId, :OwnerProjectName, :OwnerProjectIdent, :COSBucket, :COSRegion
        
        def initialize(name=nil, category=nil, type=nil, id=nil, bizparams=nil, params=nil, description=nil, display=nil, databasename=nil, instance=nil, status=nil, clusterid=nil, collect=nil, ownerprojectid=nil, ownerprojectname=nil, ownerprojectident=nil, cosbucket=nil, cosregion=nil)
          @Name = name
          @Category = category
          @Type = type
          @ID = id
          @BizParams = bizparams
          @Params = params
          @Description = description
          @Display = display
          @DatabaseName = databasename
          @Instance = instance
          @Status = status
          @ClusterId = clusterid
          @Collect = collect
          @OwnerProjectId = ownerprojectid
          @OwnerProjectName = ownerprojectname
          @OwnerProjectIdent = ownerprojectident
          @COSBucket = cosbucket
          @COSRegion = cosregion
        end

        def deserialize(params)
          @Name = params['Name']
          @Category = params['Category']
          @Type = params['Type']
          @ID = params['ID']
          @BizParams = params['BizParams']
          @Params = params['Params']
          @Description = params['Description']
          @Display = params['Display']
          @DatabaseName = params['DatabaseName']
          @Instance = params['Instance']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @Collect = params['Collect']
          @OwnerProjectId = params['OwnerProjectId']
          @OwnerProjectName = params['OwnerProjectName']
          @OwnerProjectIdent = params['OwnerProjectIdent']
          @COSBucket = params['COSBucket']
          @COSRegion = params['COSRegion']
        end
      end

      # ModifyDataSource返回参数结构体
      class ModifyDataSourceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyFolder请求参数结构体
      class ModifyFolderRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # @type FolderName: String
        # @param FolderId: 文件夹Id
        # @type FolderId: String
        # @param ParentsFolderId: 父文件夹ID
        # @type ParentsFolderId: String

        attr_accessor :ProjectId, :FolderName, :FolderId, :ParentsFolderId
        
        def initialize(projectid=nil, foldername=nil, folderid=nil, parentsfolderid=nil)
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @ParentsFolderId = parentsfolderid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @ParentsFolderId = params['ParentsFolderId']
        end
      end

      # ModifyFolder返回参数结构体
      class ModifyFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskInfo请求参数结构体
      class ModifyTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param DelayTime: 执行时间，单位分钟，天/周/月/年调度才有。比如天调度，每天的02:00点执行一次，delayTime就是120分钟
        # @type DelayTime: Integer
        # @param StartupTime: 启动时间
        # @type StartupTime: Integer
        # @param SelfDepend: 自依赖类型  1:有序串行 一次一个 排队, 2: 无序串行 一次一个 不排队， 3:并行 一次多个
        # @type SelfDepend: Integer
        # @param StartTime: 生效开始时间，格式 yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 生效结束时间，格式 yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param TaskAction: 调度配置-弹性周期配置，小时/周/月/年调度才有，小时任务指定每天的0点3点4点跑，则为'0,3,4'。
        # @type TaskAction: String
        # @param CycleType: "周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param CycleStep: 步长，间隔时间，最小1
        # @type CycleStep: Integer
        # @param CrontabExpression: cron表达式  周期类型为crontab调度才需要
        # @type CrontabExpression: String
        # @param ExecutionStartTime: 执行时间左闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionEndTime: String
        # @param TaskName: 新的任务名
        # @type TaskName: String
        # @param RetryWait: 失败重试间隔,单位分钟，创建任务的时候已经给了默认值
        # @type RetryWait: Integer
        # @param TryLimit: 失败重试次数，创建任务的时候已经给了默认值
        # @type TryLimit: Integer
        # @param Retriable: 是否可重试，1代表可以重试
        # @type Retriable: Integer
        # @param RunPriority: 运行优先级，4高 5中 6低
        # @type RunPriority: Integer
        # @param TaskExt: 任务的扩展配置
        # @type TaskExt: Array
        # @param ResourceGroup: 执行资源组id，需要去资源管理服务上创建调度资源组，并且绑定cvm机器
        # @type ResourceGroup: String
        # @param YarnQueue: 资源池队列名称
        # @type YarnQueue: String
        # @param BrokerIp: 资源组下具体执行机，any 表示可以跑在任意一台。
        # @type BrokerIp: String
        # @param InCharge: 责任人
        # @type InCharge: String
        # @param Notes: 任务备注
        # @type Notes: String
        # @param TaskParamInfos: 任务参数
        # @type TaskParamInfos: Array
        # @param SourceServer: 源数据源
        # @type SourceServer: String
        # @param TargetServer: 目标数据源
        # @type TargetServer: String
        # @param DependencyWorkflow: 是否支持工作流依赖 yes / no 默认 no
        # @type DependencyWorkflow: String
        # @param DependencyConfigDTOs: 依赖配置
        # @type DependencyConfigDTOs: Array

        attr_accessor :ProjectId, :TaskId, :DelayTime, :StartupTime, :SelfDepend, :StartTime, :EndTime, :TaskAction, :CycleType, :CycleStep, :CrontabExpression, :ExecutionStartTime, :ExecutionEndTime, :TaskName, :RetryWait, :TryLimit, :Retriable, :RunPriority, :TaskExt, :ResourceGroup, :YarnQueue, :BrokerIp, :InCharge, :Notes, :TaskParamInfos, :SourceServer, :TargetServer, :DependencyWorkflow, :DependencyConfigDTOs
        
        def initialize(projectid=nil, taskid=nil, delaytime=nil, startuptime=nil, selfdepend=nil, starttime=nil, endtime=nil, taskaction=nil, cycletype=nil, cyclestep=nil, crontabexpression=nil, executionstarttime=nil, executionendtime=nil, taskname=nil, retrywait=nil, trylimit=nil, retriable=nil, runpriority=nil, taskext=nil, resourcegroup=nil, yarnqueue=nil, brokerip=nil, incharge=nil, notes=nil, taskparaminfos=nil, sourceserver=nil, targetserver=nil, dependencyworkflow=nil, dependencyconfigdtos=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @DelayTime = delaytime
          @StartupTime = startuptime
          @SelfDepend = selfdepend
          @StartTime = starttime
          @EndTime = endtime
          @TaskAction = taskaction
          @CycleType = cycletype
          @CycleStep = cyclestep
          @CrontabExpression = crontabexpression
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @TaskName = taskname
          @RetryWait = retrywait
          @TryLimit = trylimit
          @Retriable = retriable
          @RunPriority = runpriority
          @TaskExt = taskext
          @ResourceGroup = resourcegroup
          @YarnQueue = yarnqueue
          @BrokerIp = brokerip
          @InCharge = incharge
          @Notes = notes
          @TaskParamInfos = taskparaminfos
          @SourceServer = sourceserver
          @TargetServer = targetserver
          @DependencyWorkflow = dependencyworkflow
          @DependencyConfigDTOs = dependencyconfigdtos
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @DelayTime = params['DelayTime']
          @StartupTime = params['StartupTime']
          @SelfDepend = params['SelfDepend']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskAction = params['TaskAction']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @CrontabExpression = params['CrontabExpression']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @TaskName = params['TaskName']
          @RetryWait = params['RetryWait']
          @TryLimit = params['TryLimit']
          @Retriable = params['Retriable']
          @RunPriority = params['RunPriority']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
          @ResourceGroup = params['ResourceGroup']
          @YarnQueue = params['YarnQueue']
          @BrokerIp = params['BrokerIp']
          @InCharge = params['InCharge']
          @Notes = params['Notes']
          unless params['TaskParamInfos'].nil?
            @TaskParamInfos = []
            params['TaskParamInfos'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @TaskParamInfos << paraminfo_tmp
            end
          end
          @SourceServer = params['SourceServer']
          @TargetServer = params['TargetServer']
          @DependencyWorkflow = params['DependencyWorkflow']
          unless params['DependencyConfigDTOs'].nil?
            @DependencyConfigDTOs = []
            params['DependencyConfigDTOs'].each do |i|
              dependencyconfig_tmp = DependencyConfig.new
              dependencyconfig_tmp.deserialize(i)
              @DependencyConfigDTOs << dependencyconfig_tmp
            end
          end
        end
      end

      # ModifyTaskInfo返回参数结构体
      class ModifyTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskLinks请求参数结构体
      class ModifyTaskLinksRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskFrom: 父任务ID
        # @type TaskFrom: String
        # @param TaskTo: 子任务ID
        # @type TaskTo: String
        # @param WorkflowId: 子任务工作流
        # @type WorkflowId: String
        # @param RealFromWorkflowId: 父任务工作流
        # @type RealFromWorkflowId: String
        # @param LinkDependencyType: 父子任务之间的依赖关系
        # @type LinkDependencyType: String

        attr_accessor :ProjectId, :TaskFrom, :TaskTo, :WorkflowId, :RealFromWorkflowId, :LinkDependencyType
        
        def initialize(projectid=nil, taskfrom=nil, taskto=nil, workflowid=nil, realfromworkflowid=nil, linkdependencytype=nil)
          @ProjectId = projectid
          @TaskFrom = taskfrom
          @TaskTo = taskto
          @WorkflowId = workflowid
          @RealFromWorkflowId = realfromworkflowid
          @LinkDependencyType = linkdependencytype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskFrom = params['TaskFrom']
          @TaskTo = params['TaskTo']
          @WorkflowId = params['WorkflowId']
          @RealFromWorkflowId = params['RealFromWorkflowId']
          @LinkDependencyType = params['LinkDependencyType']
        end
      end

      # ModifyTaskLinks返回参数结构体
      class ModifyTaskLinksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTaskScript请求参数结构体
      class ModifyTaskScriptRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param ScriptContent: 脚本内容 base64编码
        # @type ScriptContent: String
        # @param IntegrationNodeDetails: 集成任务脚本配置
        # @type IntegrationNodeDetails: Array

        attr_accessor :ProjectId, :TaskId, :ScriptContent, :IntegrationNodeDetails
        
        def initialize(projectid=nil, taskid=nil, scriptcontent=nil, integrationnodedetails=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @ScriptContent = scriptcontent
          @IntegrationNodeDetails = integrationnodedetails
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @ScriptContent = params['ScriptContent']
          unless params['IntegrationNodeDetails'].nil?
            @IntegrationNodeDetails = []
            params['IntegrationNodeDetails'].each do |i|
              integrationnodedetail_tmp = IntegrationNodeDetail.new
              integrationnodedetail_tmp.deserialize(i)
              @IntegrationNodeDetails << integrationnodedetail_tmp
            end
          end
        end
      end

      # ModifyTaskScript返回参数结构体
      class ModifyTaskScriptResponse < TencentCloud::Common::AbstractModel
        # @param Data: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.CommonContent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CommonContent.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkflowInfo请求参数结构体
      class ModifyWorkflowInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param Owner: 责任人
        # @type Owner: String
        # @param OwnerId: 责任人id
        # @type OwnerId: String
        # @param WorkflowDesc: 备注
        # @type WorkflowDesc: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String
        # @param UserGroupId: 工作流所属用户分组id  若有多个,分号隔开: a;b;c
        # @type UserGroupId: String
        # @param UserGroupName: 工作流所属用户分组名称  若有多个,分号隔开: a;b;c
        # @type UserGroupName: String
        # @param WorkflowParams: 工作流参数列表
        # @type WorkflowParams: Array
        # @param GeneralTaskParams: 用于配置优化参数（线程、内存、CPU核数等），仅作用于Spark SQL节点。多个参数用英文分号分隔。
        # @type GeneralTaskParams: Array

        attr_accessor :ProjectId, :WorkflowId, :Owner, :OwnerId, :WorkflowDesc, :WorkflowName, :FolderId, :UserGroupId, :UserGroupName, :WorkflowParams, :GeneralTaskParams
        
        def initialize(projectid=nil, workflowid=nil, owner=nil, ownerid=nil, workflowdesc=nil, workflowname=nil, folderid=nil, usergroupid=nil, usergroupname=nil, workflowparams=nil, generaltaskparams=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @Owner = owner
          @OwnerId = ownerid
          @WorkflowDesc = workflowdesc
          @WorkflowName = workflowname
          @FolderId = folderid
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
          @WorkflowParams = workflowparams
          @GeneralTaskParams = generaltaskparams
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @Owner = params['Owner']
          @OwnerId = params['OwnerId']
          @WorkflowDesc = params['WorkflowDesc']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
          unless params['WorkflowParams'].nil?
            @WorkflowParams = []
            params['WorkflowParams'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @WorkflowParams << paraminfo_tmp
            end
          end
          unless params['GeneralTaskParams'].nil?
            @GeneralTaskParams = []
            params['GeneralTaskParams'].each do |i|
              generaltaskparam_tmp = GeneralTaskParam.new
              generaltaskparam_tmp.deserialize(i)
              @GeneralTaskParams << generaltaskparam_tmp
            end
          end
        end
      end

      # ModifyWorkflowInfo返回参数结构体
      class ModifyWorkflowInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: true代表成功，false代表失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkflowSchedule请求参数结构体
      class ModifyWorkflowScheduleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param DelayTime: 延迟时间，单位分钟
        # @type DelayTime: Integer
        # @param StartupTime: 启动时间
        # @type StartupTime: Integer
        # @param SelfDepend: 自依赖类型  1:有序串行 一次一个 排队, 2: 无序串行 一次一个 不排队， 3:并行 一次多个
        # @type SelfDepend: Integer
        # @param CycleType: "周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param CycleStep: 步长，间隔时间，最小1
        # @type CycleStep: Integer
        # @param StartTime: 生效开始时间，格式 yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 生效结束时间，格式 yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param TaskAction: 调度配置-弹性周期配置，小时/周/月/年调度才有，小时任务指定每天的0点3点4点跑，则为'0,3,4'。
        # @type TaskAction: String
        # @param CrontabExpression: cron表达式  周期类型为crontab调度才需要
        # @type CrontabExpression: String
        # @param ExecutionStartTime: 执行时间左闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间，格式：HH:mm  小时调度才有，例如小时任务, 每日固定区间生效
        # @type ExecutionEndTime: String
        # @param DependencyWorkflow: 工作流依赖 ,yes 或者no
        # @type DependencyWorkflow: String

        attr_accessor :ProjectId, :WorkflowId, :DelayTime, :StartupTime, :SelfDepend, :CycleType, :CycleStep, :StartTime, :EndTime, :TaskAction, :CrontabExpression, :ExecutionStartTime, :ExecutionEndTime, :DependencyWorkflow
        
        def initialize(projectid=nil, workflowid=nil, delaytime=nil, startuptime=nil, selfdepend=nil, cycletype=nil, cyclestep=nil, starttime=nil, endtime=nil, taskaction=nil, crontabexpression=nil, executionstarttime=nil, executionendtime=nil, dependencyworkflow=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @DelayTime = delaytime
          @StartupTime = startuptime
          @SelfDepend = selfdepend
          @CycleType = cycletype
          @CycleStep = cyclestep
          @StartTime = starttime
          @EndTime = endtime
          @TaskAction = taskaction
          @CrontabExpression = crontabexpression
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @DependencyWorkflow = dependencyworkflow
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @DelayTime = params['DelayTime']
          @StartupTime = params['StartupTime']
          @SelfDepend = params['SelfDepend']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskAction = params['TaskAction']
          @CrontabExpression = params['CrontabExpression']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @DependencyWorkflow = params['DependencyWorkflow']
        end
      end

      # ModifyWorkflowSchedule返回参数结构体
      class ModifyWorkflowScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 操作结果
      class OperateResult < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果；true表示成功；false表示失败
        # @type Result: Boolean
        # @param ErrorId: 错误编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String
        # @param ErrorDesc: 操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String

        attr_accessor :Result, :ErrorId, :ErrorDesc
        
        def initialize(result=nil, errorid=nil, errordesc=nil)
          @Result = result
          @ErrorId = errorid
          @ErrorDesc = errordesc
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorId = params['ErrorId']
          @ErrorDesc = params['ErrorDesc']
        end
      end

      # 通用排序字段
      class OrderField < TencentCloud::Common::AbstractModel
        # @param Name: 排序字段名称
        # @type Name: String
        # @param Direction: 排序方向：ASC|DESC
        # @type Direction: String

        attr_accessor :Name, :Direction
        
        def initialize(name=nil, direction=nil)
          @Name = name
          @Direction = direction
        end

        def deserialize(params)
          @Name = params['Name']
          @Direction = params['Direction']
        end
      end

      # 包含层级信息的函数
      class OrganizationalFunction < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param DisplayName: 展示名称
        # @type DisplayName: String
        # @param LayerPath: 层级路径
        # @type LayerPath: String
        # @param ParentLayerPath: 上级层级路径
        # @type ParentLayerPath: String
        # @param Type: 函数类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Kind: 函数分类：窗口函数、聚合函数、日期函数......
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Category: 函数种类：系统函数、自定义函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param Status: 函数状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Description: 函数说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Usage: 函数用法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usage: String
        # @param ParamDesc: 函数参数说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamDesc: String
        # @param ReturnDesc: 函数返回值说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnDesc: String
        # @param Example: 函数示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Example: String
        # @param ClusterIdentifier: 集群实例引擎 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIdentifier: String
        # @param FuncId: 函数 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FuncId: String
        # @param ClassName: 函数类名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassName: String
        # @param ResourceList: 函数资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceList: Array
        # @param OperatorUserIds: 操作人 ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorUserIds: Array
        # @param OwnerUserIds: 公有云 Owner ID 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserIds: Array
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SubmitErrorMsg: 提交失败错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitErrorMsg: String

        attr_accessor :Name, :DisplayName, :LayerPath, :ParentLayerPath, :Type, :Kind, :Category, :Status, :Description, :Usage, :ParamDesc, :ReturnDesc, :Example, :ClusterIdentifier, :FuncId, :ClassName, :ResourceList, :OperatorUserIds, :OwnerUserIds, :DbName, :SubmitErrorMsg
        
        def initialize(name=nil, displayname=nil, layerpath=nil, parentlayerpath=nil, type=nil, kind=nil, category=nil, status=nil, description=nil, usage=nil, paramdesc=nil, returndesc=nil, example=nil, clusteridentifier=nil, funcid=nil, classname=nil, resourcelist=nil, operatoruserids=nil, owneruserids=nil, dbname=nil, submiterrormsg=nil)
          @Name = name
          @DisplayName = displayname
          @LayerPath = layerpath
          @ParentLayerPath = parentlayerpath
          @Type = type
          @Kind = kind
          @Category = category
          @Status = status
          @Description = description
          @Usage = usage
          @ParamDesc = paramdesc
          @ReturnDesc = returndesc
          @Example = example
          @ClusterIdentifier = clusteridentifier
          @FuncId = funcid
          @ClassName = classname
          @ResourceList = resourcelist
          @OperatorUserIds = operatoruserids
          @OwnerUserIds = owneruserids
          @DbName = dbname
          @SubmitErrorMsg = submiterrormsg
        end

        def deserialize(params)
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @LayerPath = params['LayerPath']
          @ParentLayerPath = params['ParentLayerPath']
          @Type = params['Type']
          @Kind = params['Kind']
          @Category = params['Category']
          @Status = params['Status']
          @Description = params['Description']
          @Usage = params['Usage']
          @ParamDesc = params['ParamDesc']
          @ReturnDesc = params['ReturnDesc']
          @Example = params['Example']
          @ClusterIdentifier = params['ClusterIdentifier']
          @FuncId = params['FuncId']
          @ClassName = params['ClassName']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              functionversion_tmp = FunctionVersion.new
              functionversion_tmp.deserialize(i)
              @ResourceList << functionversion_tmp
            end
          end
          @OperatorUserIds = params['OperatorUserIds']
          @OwnerUserIds = params['OwnerUserIds']
          @DbName = params['DbName']
          @SubmitErrorMsg = params['SubmitErrorMsg']
        end
      end

      # 参数参数
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # @type ParamValue: String

        attr_accessor :ParamKey, :ParamValue
        
        def initialize(paramkey=nil, paramvalue=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # 通用记录字段
      class RecordField < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Value: 字段值
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

      # RegisterEventListener请求参数结构体
      class RegisterEventListenerRequest < TencentCloud::Common::AbstractModel
        # @param Key: 关键字，如果是任务，则传任务Id
        # @type Key: String
        # @param EventName: 事件名称
        # @type EventName: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param Type: 事件类型，默认 REST_API
        # @type Type: String
        # @param Properties: 配置信息，比如最长等待时间1天配置json：{"maxWaitEventTime":1,"maxWaitEventTimeUnit":"DAYS"}
        # @type Properties: String

        attr_accessor :Key, :EventName, :ProjectId, :Type, :Properties
        
        def initialize(key=nil, eventname=nil, projectid=nil, type=nil, properties=nil)
          @Key = key
          @EventName = eventname
          @ProjectId = projectid
          @Type = type
          @Properties = properties
        end

        def deserialize(params)
          @Key = params['Key']
          @EventName = params['EventName']
          @ProjectId = params['ProjectId']
          @Type = params['Type']
          @Properties = params['Properties']
        end
      end

      # RegisterEventListener返回参数结构体
      class RegisterEventListenerResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RegisterEvent请求参数结构体
      class RegisterEventRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Name: 事件名称，支持英文、数字和下划线，最长20个字符, 不能以数字下划线开头。
        # @type Name: String
        # @param EventSubType: 事件分割类型，周期类型: DAY，HOUR，MIN，SECOND
        # @type EventSubType: String
        # @param EventBroadcastType: 广播：BROADCAST,单播：SINGLE
        # @type EventBroadcastType: String
        # @param TimeUnit: 周期类型为天和小时为HOURS ，周期类型为分钟 ：MINUTES,周期类型为秒：SECONDS
        # @type TimeUnit: String
        # @param Owner: TBDS 事件所属人
        # @type Owner: String
        # @param EventType: 事件类型，默认值：TIME_SERIES
        # @type EventType: String
        # @param DimensionFormat: 对应day： yyyyMMdd，对应HOUR：yyyyMMddHH，对应MIN：yyyyMMddHHmm，对应SECOND：yyyyMMddHHmmss
        # @type DimensionFormat: String
        # @param TimeToLive: 存活时间
        # @type TimeToLive: Integer
        # @param Description: 事件描述
        # @type Description: String

        attr_accessor :ProjectId, :Name, :EventSubType, :EventBroadcastType, :TimeUnit, :Owner, :EventType, :DimensionFormat, :TimeToLive, :Description
        
        def initialize(projectid=nil, name=nil, eventsubtype=nil, eventbroadcasttype=nil, timeunit=nil, owner=nil, eventtype=nil, dimensionformat=nil, timetolive=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @EventSubType = eventsubtype
          @EventBroadcastType = eventbroadcasttype
          @TimeUnit = timeunit
          @Owner = owner
          @EventType = eventtype
          @DimensionFormat = dimensionformat
          @TimeToLive = timetolive
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @EventSubType = params['EventSubType']
          @EventBroadcastType = params['EventBroadcastType']
          @TimeUnit = params['TimeUnit']
          @Owner = params['Owner']
          @EventType = params['EventType']
          @DimensionFormat = params['DimensionFormat']
          @TimeToLive = params['TimeToLive']
          @Description = params['Description']
        end
      end

      # RegisterEvent返回参数结构体
      class RegisterEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RerunInstances请求参数结构体
      class RerunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Instances: 实例嵌套集合
        # @type Instances: Array
        # @param CheckFather: 检查父任务类型, true: 检查父任务; false: 不检查父任务
        # @type CheckFather: Boolean
        # @param RerunType: 重跑类型, 1: 自身; 3: 孩子; 2: 自身以及孩子
        # @type RerunType: String
        # @param DependentWay: 实例依赖方式, 1: 自依赖; 2: 任务依赖; 3: 自依赖及父子依赖
        # @type DependentWay: String
        # @param SkipEventListening: 重跑忽略事件监听与否
        # @type SkipEventListening: Boolean
        # @param SonInstanceType: 下游实例范围 1: 所在工作流 2: 所在项目 3: 所有跨工作流依赖的项目
        # @type SonInstanceType: String

        attr_accessor :ProjectId, :Instances, :CheckFather, :RerunType, :DependentWay, :SkipEventListening, :SonInstanceType
        
        def initialize(projectid=nil, instances=nil, checkfather=nil, reruntype=nil, dependentway=nil, skipeventlistening=nil, soninstancetype=nil)
          @ProjectId = projectid
          @Instances = instances
          @CheckFather = checkfather
          @RerunType = reruntype
          @DependentWay = dependentway
          @SkipEventListening = skipeventlistening
          @SonInstanceType = soninstancetype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
          @CheckFather = params['CheckFather']
          @RerunType = params['RerunType']
          @DependentWay = params['DependentWay']
          @SkipEventListening = params['SkipEventListening']
          @SonInstanceType = params['SonInstanceType']
        end
      end

      # RerunInstances返回参数结构体
      class RerunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回实例批量终止结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.OperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RunTask请求参数结构体
      class RunTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :ProjectId, :TaskId
        
        def initialize(projectid=nil, taskid=nil)
          @ProjectId = projectid
          @TaskId = taskid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
        end
      end

      # RunTask返回参数结构体
      class RunTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 运行成功或者失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # SaveCustomFunction请求参数结构体
      class SaveCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # @type FunctionId: String
        # @param Kind: 分类：窗口函数、聚合函数、日期函数......
        # @type Kind: String
        # @param ClusterIdentifier: 集群引擎实例
        # @type ClusterIdentifier: String
        # @param ClassName: 类名
        # @type ClassName: String
        # @param ResourceList: 资源列表
        # @type ResourceList: Array
        # @param Description: 函数说明
        # @type Description: String
        # @param Usage: 用法
        # @type Usage: String
        # @param ParamDesc: 参数说明
        # @type ParamDesc: String
        # @param ReturnDesc: 返回值说明
        # @type ReturnDesc: String
        # @param Example: 示例
        # @type Example: String

        attr_accessor :FunctionId, :Kind, :ClusterIdentifier, :ClassName, :ResourceList, :Description, :Usage, :ParamDesc, :ReturnDesc, :Example
        
        def initialize(functionid=nil, kind=nil, clusteridentifier=nil, classname=nil, resourcelist=nil, description=nil, usage=nil, paramdesc=nil, returndesc=nil, example=nil)
          @FunctionId = functionid
          @Kind = kind
          @ClusterIdentifier = clusteridentifier
          @ClassName = classname
          @ResourceList = resourcelist
          @Description = description
          @Usage = usage
          @ParamDesc = paramdesc
          @ReturnDesc = returndesc
          @Example = example
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @Kind = params['Kind']
          @ClusterIdentifier = params['ClusterIdentifier']
          @ClassName = params['ClassName']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              functionresource_tmp = FunctionResource.new
              functionresource_tmp.deserialize(i)
              @ResourceList << functionresource_tmp
            end
          end
          @Description = params['Description']
          @Usage = params['Usage']
          @ParamDesc = params['ParamDesc']
          @ReturnDesc = params['ReturnDesc']
          @Example = params['Example']
        end
      end

      # SaveCustomFunction返回参数结构体
      class SaveCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # SetTaskAlarmNew请求参数结构体
      class SetTaskAlarmNewRequest < TencentCloud::Common::AbstractModel
        # @param AlarmInfoList: 设置任务超时告警和失败告警信息
        # @type AlarmInfoList: Array
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :AlarmInfoList, :ProjectId
        
        def initialize(alarminfolist=nil, projectid=nil)
          @AlarmInfoList = alarminfolist
          @ProjectId = projectid
        end

        def deserialize(params)
          unless params['AlarmInfoList'].nil?
            @AlarmInfoList = []
            params['AlarmInfoList'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @AlarmInfoList << alarminfo_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # SetTaskAlarmNew返回参数结构体
      class SetTaskAlarmNewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回批量操作成功个数、失败个数、操作总数
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchOperateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 简单Task信息
      class SimpleTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String

        attr_accessor :TaskId, :TaskName
        
        def initialize(taskid=nil, taskname=nil)
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # SubmitCustomFunction请求参数结构体
      class SubmitCustomFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # @type FunctionId: String
        # @param ClusterIdentifier: 集群实例 ID
        # @type ClusterIdentifier: String
        # @param Comment: 备注信息
        # @type Comment: String

        attr_accessor :FunctionId, :ClusterIdentifier, :Comment
        
        def initialize(functionid=nil, clusteridentifier=nil, comment=nil)
          @FunctionId = functionid
          @ClusterIdentifier = clusteridentifier
          @Comment = comment
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ClusterIdentifier = params['ClusterIdentifier']
          @Comment = params['Comment']
        end
      end

      # SubmitCustomFunction返回参数结构体
      class SubmitCustomFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionId: String
        # @param ErrorMessage: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :ErrorMessage, :RequestId
        
        def initialize(functionid=nil, errormessage=nil, requestid=nil)
          @FunctionId = functionid
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # SubmitTask请求参数结构体
      class SubmitTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param VersionRemark: 版本备注
        # @type VersionRemark: String
        # @param StartScheduling: 是否启动调度
        # @type StartScheduling: Boolean

        attr_accessor :ProjectId, :TaskId, :VersionRemark, :StartScheduling
        
        def initialize(projectid=nil, taskid=nil, versionremark=nil, startscheduling=nil)
          @ProjectId = projectid
          @TaskId = taskid
          @VersionRemark = versionremark
          @StartScheduling = startscheduling
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @VersionRemark = params['VersionRemark']
          @StartScheduling = params['StartScheduling']
        end
      end

      # SubmitTask返回参数结构体
      class SubmitTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 提交工作流实体
      class SubmitWorkflow < TencentCloud::Common::AbstractModel
        # @param TaskIds: 被提交的任务id集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param Result: 执行结果
        # @type Result: Boolean
        # @param ErrorDesc: 执行情况备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDesc: String
        # @param ErrorId: 执行情况id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorId: String

        attr_accessor :TaskIds, :Result, :ErrorDesc, :ErrorId
        
        def initialize(taskids=nil, result=nil, errordesc=nil, errorid=nil)
          @TaskIds = taskids
          @Result = result
          @ErrorDesc = errordesc
          @ErrorId = errorid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @Result = params['Result']
          @ErrorDesc = params['ErrorDesc']
          @ErrorId = params['ErrorId']
        end
      end

      # SubmitWorkflow请求参数结构体
      class SubmitWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param VersionRemark: 提交的版本备注
        # @type VersionRemark: String
        # @param StartScheduling: 是否启动调度
        # @type StartScheduling: Boolean

        attr_accessor :ProjectId, :WorkflowId, :VersionRemark, :StartScheduling
        
        def initialize(projectid=nil, workflowid=nil, versionremark=nil, startscheduling=nil)
          @ProjectId = projectid
          @WorkflowId = workflowid
          @VersionRemark = versionremark
          @StartScheduling = startscheduling
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @WorkflowId = params['WorkflowId']
          @VersionRemark = params['VersionRemark']
          @StartScheduling = params['StartScheduling']
        end
      end

      # SubmitWorkflow返回参数结构体
      class SubmitWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 执行结果
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.SubmitWorkflow`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SubmitWorkflow.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 任务信息
      class TaskCanvasInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param Status: 任务状态，'Y','F','O','T','INVALID' 分别表示调度中、已停止、已暂停、停止中、已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskTypeId: 任务类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述，其中任务类型id和任务类型描述的对应的关系为
        # 20	通用数据同步任务
        # 21	JDBC SQL
        # 22	Tbase
        # 25	数据ETL
        # 30	Python
        # 31	PySpark
        # 34	Hive SQL
        # 35	Shell
        # 36	Spark SQL
        # 37	HDFS到HBase
        # 38	SHELL
        # 39	Spark
        # 45	DATA_QUALITY
        # 55	THIVE到MYSQL
        # 56	THIVE到PG
        # 66	HDFS到PG
        # 67	HDFS到Oracle
        # 68	HDFS到MYSQL
        # 69	FTP到HDFS
        # 70	HIVE SQL
        # 72	HIVE到HDFS
        # 75	HDFS到HIVE
        # 81	PYTHONSQL脚本
        # 82	SPARKSCALA计算
        # 83	虫洞任务
        # 84	校验对账文件
        # 85	HDFS到THIVE
        # 86	TDW到HDFS
        # 87	HDFS到TDW
        # 88	校验对账文件
        # 91	FLINK任务
        # 92	MapReduce
        # 98	custom topology
        # 99	kafkatoHDFS
        # 100	kafkatoHbase
        # 101	MYSQL导入至HIVE(DX)
        # 104	MYSQL到HIVE
        # 105	HIVE到MYSQL
        # 106	SQL SERVER到HIVE
        # 107	HIVE到SQL SERVER
        # 108	ORACLE到HIVE
        # 109	HIVE到ORACLE
        # 111	HIVE到MYSQL(NEW)
        # 112	HIVE到PG
        # 113	HIVE到PHOENIX
        # 118	MYSQL到HDFS
        # 119	PG到HDFS
        # 120	ORACLE到HDFS
        # 121	数据质量
        # 10000	自定义业务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param FirstSubmitTime: 最近提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstSubmitTime: String
        # @param FirstRunTime: 首次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstRunTime: String
        # @param ScheduleDesc: 调度计划展示描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleDesc: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param CycleUnit: 调度周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleUnit: String
        # @param LeftCoordinate: 画布x轴坐标点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 画布y轴坐标点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param VirtualFlag: 跨工作流虚拟任务标识；true标识跨工作流任务；false标识本工作流任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param TaskAction: 弹性周期配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param DelayTime: 延迟时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :Status, :TaskTypeId, :TaskTypeDesc, :ProjectId, :FolderName, :FolderId, :FirstSubmitTime, :FirstRunTime, :ScheduleDesc, :InCharge, :CycleUnit, :LeftCoordinate, :TopCoordinate, :VirtualFlag, :TaskAction, :DelayTime
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, status=nil, tasktypeid=nil, tasktypedesc=nil, projectid=nil, foldername=nil, folderid=nil, firstsubmittime=nil, firstruntime=nil, scheduledesc=nil, incharge=nil, cycleunit=nil, leftcoordinate=nil, topcoordinate=nil, virtualflag=nil, taskaction=nil, delaytime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @Status = status
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @FirstSubmitTime = firstsubmittime
          @FirstRunTime = firstruntime
          @ScheduleDesc = scheduledesc
          @InCharge = incharge
          @CycleUnit = cycleunit
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @VirtualFlag = virtualflag
          @TaskAction = taskaction
          @DelayTime = delaytime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @Status = params['Status']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @FirstSubmitTime = params['FirstSubmitTime']
          @FirstRunTime = params['FirstRunTime']
          @ScheduleDesc = params['ScheduleDesc']
          @InCharge = params['InCharge']
          @CycleUnit = params['CycleUnit']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @VirtualFlag = params['VirtualFlag']
          @TaskAction = params['TaskAction']
          @DelayTime = params['DelayTime']
        end
      end

      # 任务扩展信息
      class TaskExtInfo < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # 任务信息数据
      class TaskInfoData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param Status: 任务状态，'Y','F','O','T','INVALID' 分别表示调度中、已停止、已暂停、停止中、已失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param VirtualFlag: 跨工作流虚拟任务标识；true标识跨工作流任务；false标识本工作流任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param DelayTime: 延时实例生成时间(延时调度)，转换为分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayTime: Integer
        # @param CrontabExpression: crontab表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param LastUpdate: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdate: String
        # @param StartTime: 生效日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ExecutionStartTime: 执行时间左闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionStartTime: String
        # @param ExecutionEndTime: 执行时间右闭区间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutionEndTime: String
        # @param CycleType: 周期类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: Integer
        # @param CycleStep: 步长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleStep: Integer
        # @param StartupTime: 延时执行时间（延时执行) 对应为 开始时间 状态为分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupTime: Integer
        # @param RetryWait: 重试等待时间,单位分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryWait: Integer
        # @param Retriable: 是否可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retriable: Integer
        # @param TaskAction: 调度扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAction: String
        # @param TryLimit: 运行次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param RunPriority: 运行优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunPriority: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param BrokerIp: 指定的运行节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: String
        # @param ClusterId: 集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param MinDateTime: 最小数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinDateTime: String
        # @param MaxDateTime: 最大数据时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDateTime: String
        # @param SelfDepend: 是否自身依赖 是1 否2 并行3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDepend: Integer
        # @param TaskExt: 扩展属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskExt: Array
        # @param Notes: 任务备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notes: String
        # @param YarnQueue: 队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YarnQueue: String
        # @param Submit: 任务版本是否已提交
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Submit: Boolean
        # @param LastSchedulerCommitTime: 最新调度计划变更时间 仅生产态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastSchedulerCommitTime: String
        # @param NormalizedJobStartTime: 仅生产态存储于生产态序列化任务信息, 减少base CPU重复密集计算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalizedJobStartTime: String
        # @param SourceServer: 源数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceServer: String
        # @param Creater: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creater: String
        # @param DependencyRel: 分支，依赖关系，and/or, 默认and
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyRel: String
        # @param DependencyWorkflow: 是否支持工作流依赖 yes / no 默认 no
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyWorkflow: String
        # @param Params: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param UpdateUser: 最后修改的人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUser: String
        # @param UpdateTime: 最后修改的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UpdateUserId: 最后修改的人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserId: String
        # @param SchedulerDesc: 调度计划
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDesc: String
        # @param ResourceGroup: 资源组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroup: String
        # @param VersionDesc: 版本提交说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionDesc: String
        # @param RealWorkflowId: 真实工作流Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealWorkflowId: String
        # @param TargetServer: 目标数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetServer: String
        # @param DependencyConfigs: 依赖配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependencyConfigs: Array
        # @param VirtualTaskStatus: 虚拟任务状态1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskStatus: String
        # @param VirtualTaskId: 虚拟任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskId: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :Status, :ProjectId, :FolderName, :FolderId, :InCharge, :VirtualFlag, :DelayTime, :CrontabExpression, :CreateTime, :LastUpdate, :StartTime, :EndTime, :ExecutionStartTime, :ExecutionEndTime, :CycleType, :CycleStep, :StartupTime, :RetryWait, :Retriable, :TaskAction, :TryLimit, :RunPriority, :TaskType, :BrokerIp, :ClusterId, :MinDateTime, :MaxDateTime, :SelfDepend, :TaskExt, :Notes, :YarnQueue, :Submit, :LastSchedulerCommitTime, :NormalizedJobStartTime, :SourceServer, :Creater, :DependencyRel, :DependencyWorkflow, :Params, :UpdateUser, :UpdateTime, :UpdateUserId, :SchedulerDesc, :ResourceGroup, :VersionDesc, :RealWorkflowId, :TargetServer, :DependencyConfigs, :VirtualTaskStatus, :VirtualTaskId
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, status=nil, projectid=nil, foldername=nil, folderid=nil, incharge=nil, virtualflag=nil, delaytime=nil, crontabexpression=nil, createtime=nil, lastupdate=nil, starttime=nil, endtime=nil, executionstarttime=nil, executionendtime=nil, cycletype=nil, cyclestep=nil, startuptime=nil, retrywait=nil, retriable=nil, taskaction=nil, trylimit=nil, runpriority=nil, tasktype=nil, brokerip=nil, clusterid=nil, mindatetime=nil, maxdatetime=nil, selfdepend=nil, taskext=nil, notes=nil, yarnqueue=nil, submit=nil, lastschedulercommittime=nil, normalizedjobstarttime=nil, sourceserver=nil, creater=nil, dependencyrel=nil, dependencyworkflow=nil, params=nil, updateuser=nil, updatetime=nil, updateuserid=nil, schedulerdesc=nil, resourcegroup=nil, versiondesc=nil, realworkflowid=nil, targetserver=nil, dependencyconfigs=nil, virtualtaskstatus=nil, virtualtaskid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @Status = status
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @InCharge = incharge
          @VirtualFlag = virtualflag
          @DelayTime = delaytime
          @CrontabExpression = crontabexpression
          @CreateTime = createtime
          @LastUpdate = lastupdate
          @StartTime = starttime
          @EndTime = endtime
          @ExecutionStartTime = executionstarttime
          @ExecutionEndTime = executionendtime
          @CycleType = cycletype
          @CycleStep = cyclestep
          @StartupTime = startuptime
          @RetryWait = retrywait
          @Retriable = retriable
          @TaskAction = taskaction
          @TryLimit = trylimit
          @RunPriority = runpriority
          @TaskType = tasktype
          @BrokerIp = brokerip
          @ClusterId = clusterid
          @MinDateTime = mindatetime
          @MaxDateTime = maxdatetime
          @SelfDepend = selfdepend
          @TaskExt = taskext
          @Notes = notes
          @YarnQueue = yarnqueue
          @Submit = submit
          @LastSchedulerCommitTime = lastschedulercommittime
          @NormalizedJobStartTime = normalizedjobstarttime
          @SourceServer = sourceserver
          @Creater = creater
          @DependencyRel = dependencyrel
          @DependencyWorkflow = dependencyworkflow
          @Params = params
          @UpdateUser = updateuser
          @UpdateTime = updatetime
          @UpdateUserId = updateuserid
          @SchedulerDesc = schedulerdesc
          @ResourceGroup = resourcegroup
          @VersionDesc = versiondesc
          @RealWorkflowId = realworkflowid
          @TargetServer = targetserver
          @DependencyConfigs = dependencyconfigs
          @VirtualTaskStatus = virtualtaskstatus
          @VirtualTaskId = virtualtaskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @InCharge = params['InCharge']
          @VirtualFlag = params['VirtualFlag']
          @DelayTime = params['DelayTime']
          @CrontabExpression = params['CrontabExpression']
          @CreateTime = params['CreateTime']
          @LastUpdate = params['LastUpdate']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecutionStartTime = params['ExecutionStartTime']
          @ExecutionEndTime = params['ExecutionEndTime']
          @CycleType = params['CycleType']
          @CycleStep = params['CycleStep']
          @StartupTime = params['StartupTime']
          @RetryWait = params['RetryWait']
          @Retriable = params['Retriable']
          @TaskAction = params['TaskAction']
          @TryLimit = params['TryLimit']
          @RunPriority = params['RunPriority']
          @TaskType = params['TaskType']
          @BrokerIp = params['BrokerIp']
          @ClusterId = params['ClusterId']
          @MinDateTime = params['MinDateTime']
          @MaxDateTime = params['MaxDateTime']
          @SelfDepend = params['SelfDepend']
          unless params['TaskExt'].nil?
            @TaskExt = []
            params['TaskExt'].each do |i|
              taskextinfo_tmp = TaskExtInfo.new
              taskextinfo_tmp.deserialize(i)
              @TaskExt << taskextinfo_tmp
            end
          end
          @Notes = params['Notes']
          @YarnQueue = params['YarnQueue']
          @Submit = params['Submit']
          @LastSchedulerCommitTime = params['LastSchedulerCommitTime']
          @NormalizedJobStartTime = params['NormalizedJobStartTime']
          @SourceServer = params['SourceServer']
          @Creater = params['Creater']
          @DependencyRel = params['DependencyRel']
          @DependencyWorkflow = params['DependencyWorkflow']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Params << paraminfo_tmp
            end
          end
          @UpdateUser = params['UpdateUser']
          @UpdateTime = params['UpdateTime']
          @UpdateUserId = params['UpdateUserId']
          @SchedulerDesc = params['SchedulerDesc']
          @ResourceGroup = params['ResourceGroup']
          @VersionDesc = params['VersionDesc']
          @RealWorkflowId = params['RealWorkflowId']
          @TargetServer = params['TargetServer']
          unless params['DependencyConfigs'].nil?
            @DependencyConfigs = []
            params['DependencyConfigs'].each do |i|
              dependencyconfig_tmp = DependencyConfig.new
              dependencyconfig_tmp.deserialize(i)
              @DependencyConfigs << dependencyconfig_tmp
            end
          end
          @VirtualTaskStatus = params['VirtualTaskStatus']
          @VirtualTaskId = params['VirtualTaskId']
        end
      end

      # 任务分页数据查询
      class TaskInfoDataPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页号
        # @type PageNumber: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer
        # @param Items: 任务集合信息
        # @type Items: Array
        # @param TotalCount: 总页数1
        # @type TotalCount: Integer

        attr_accessor :PageNumber, :PageSize, :Items, :TotalCount
        
        def initialize(pagenumber=nil, pagesize=nil, items=nil, totalcount=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Items = items
          @TotalCount = totalcount
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskinfodata_tmp = TaskInfoData.new
              taskinfodata_tmp.deserialize(i)
              @Items << taskinfodata_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 任务属性
      class TaskInnerInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param CycleType: 周期类型  0:crontab类型, 1:分钟，2:小时，3:天，4:周，5:月，6:一次性，7:用户驱动，10:弹性周期 周,11:弹性周期 月,12:年,13:即时触发Instant类型，与正常周期调度任务逻辑隔离
        # @type CycleType: Integer
        # @param VirtualTaskId: 虚拟任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualTaskId: String
        # @param VirtualFlag: 虚拟任务标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualFlag: Boolean
        # @param RealWorkflowId: 真实任务工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealWorkflowId: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :CycleType, :VirtualTaskId, :VirtualFlag, :RealWorkflowId
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, cycletype=nil, virtualtaskid=nil, virtualflag=nil, realworkflowid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @CycleType = cycletype
          @VirtualTaskId = virtualtaskid
          @VirtualFlag = virtualflag
          @RealWorkflowId = realworkflowid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @CycleType = params['CycleType']
          @VirtualTaskId = params['VirtualTaskId']
          @VirtualFlag = params['VirtualFlag']
          @RealWorkflowId = params['RealWorkflowId']
        end
      end

      # 任务实例信息
      class TaskInstanceInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowId: 工作流id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param ProjectName: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectIdent: 项目标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdent: String
        # @param State: 实例状态，0等待事件，1等待上游，2等待运行，3运行中，4正在终止，5失败重试，6失败，7成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param TaskTypeId: 任务类型id，26离线同步，30Python，31PySpark，32DLC，33Impala，34Hive SQL，35Shell，36Spark SQL，39Spark，40CDW PG，92MapReduce
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeId: Integer
        # @param TaskTypeDesc: 任务类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeDesc: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param FolderName: 文件夹名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderName: String
        # @param FolderId: 文件夹id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param SchedulerDesc: 调度计划展示描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDesc: String
        # @param InCharge: 负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCharge: String
        # @param CycleType: 调度周期类型，I分钟，H小时，D天，W周，M月，Y年，O一次性，C crontab
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param StartTime: 实例开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 实例结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param InstanceType: 实例类型，0补录实例，1周期实例，2非周期实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param TryLimit: 最大重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryLimit: Integer
        # @param Tries: 当前重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tries: Integer
        # @param SchedulerDateTime: 计划调度时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerDateTime: String
        # @param CostTime: 运行耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: String

        attr_accessor :TaskId, :TaskName, :WorkflowId, :WorkflowName, :ProjectName, :ProjectIdent, :State, :TaskTypeId, :TaskTypeDesc, :ProjectId, :FolderName, :FolderId, :SchedulerDesc, :InCharge, :CycleType, :StartTime, :EndTime, :InstanceType, :TryLimit, :Tries, :SchedulerDateTime, :CostTime
        
        def initialize(taskid=nil, taskname=nil, workflowid=nil, workflowname=nil, projectname=nil, projectident=nil, state=nil, tasktypeid=nil, tasktypedesc=nil, projectid=nil, foldername=nil, folderid=nil, schedulerdesc=nil, incharge=nil, cycletype=nil, starttime=nil, endtime=nil, instancetype=nil, trylimit=nil, tries=nil, schedulerdatetime=nil, costtime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @ProjectName = projectname
          @ProjectIdent = projectident
          @State = state
          @TaskTypeId = tasktypeid
          @TaskTypeDesc = tasktypedesc
          @ProjectId = projectid
          @FolderName = foldername
          @FolderId = folderid
          @SchedulerDesc = schedulerdesc
          @InCharge = incharge
          @CycleType = cycletype
          @StartTime = starttime
          @EndTime = endtime
          @InstanceType = instancetype
          @TryLimit = trylimit
          @Tries = tries
          @SchedulerDateTime = schedulerdatetime
          @CostTime = costtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @ProjectName = params['ProjectName']
          @ProjectIdent = params['ProjectIdent']
          @State = params['State']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeDesc = params['TaskTypeDesc']
          @ProjectId = params['ProjectId']
          @FolderName = params['FolderName']
          @FolderId = params['FolderId']
          @SchedulerDesc = params['SchedulerDesc']
          @InCharge = params['InCharge']
          @CycleType = params['CycleType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceType = params['InstanceType']
          @TryLimit = params['TryLimit']
          @Tries = params['Tries']
          @SchedulerDateTime = params['SchedulerDateTime']
          @CostTime = params['CostTime']
        end
      end

      # 任务依赖的边信息
      class TaskLinkInfo < TencentCloud::Common::AbstractModel
        # @param TaskTo: 下游任务id
        # @type TaskTo: String
        # @param TaskFrom: 上游任务id
        # @type TaskFrom: String
        # @param LinkType: 依赖边类型 1、“real_real”表示任务->任务；2、"virtual_real" 跨工作流任务->任务
        # @type LinkType: String
        # @param LinkId: 依赖边id
        # @type LinkId: String

        attr_accessor :TaskTo, :TaskFrom, :LinkType, :LinkId
        
        def initialize(taskto=nil, taskfrom=nil, linktype=nil, linkid=nil)
          @TaskTo = taskto
          @TaskFrom = taskfrom
          @LinkType = linktype
          @LinkId = linkid
        end

        def deserialize(params)
          @TaskTo = params['TaskTo']
          @TaskFrom = params['TaskFrom']
          @LinkType = params['LinkType']
          @LinkId = params['LinkId']
        end
      end

      # 任务执行脚本
      class TaskScriptContent < TencentCloud::Common::AbstractModel
        # @param ScriptContent: 脚本内容 base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptContent: String

        attr_accessor :ScriptContent
        
        def initialize(scriptcontent=nil)
          @ScriptContent = scriptcontent
        end

        def deserialize(params)
          @ScriptContent = params['ScriptContent']
        end
      end

      # TriggerEvent请求参数结构体
      class TriggerEventRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Name: 案例名称
        # @type Name: String
        # @param Dimension: 时间格式：如果选择触发时间：2022年6月21，则设置为20220621
        # @type Dimension: String
        # @param Description: 描述信息
        # @type Description: String

        attr_accessor :ProjectId, :Name, :Dimension, :Description
        
        def initialize(projectid=nil, name=nil, dimension=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @Dimension = dimension
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Dimension = params['Dimension']
          @Description = params['Description']
        end
      end

      # TriggerEvent返回参数结构体
      class TriggerEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 成功或者失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Wedata.v20210820.models.BatchReturn`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchReturn.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 工作流信息
      class Workflow < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流id
        # @type WorkflowId: String
        # @param Owner: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param OwnerId: 责任人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProjectIdent: 项目标识
        # @type ProjectIdent: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param WorkflowDesc: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowDesc: String
        # @param WorkflowName: 工作流名称
        # @type WorkflowName: String
        # @param FolderId: 所属文件夹id
        # @type FolderId: String
        # @param UserGroupId: 工作流所属用户分组id 若有多个,分号隔开: a;b;c
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupId: String
        # @param UserGroupName: 工作流所属用户分组名称  若有多个,分号隔开: a;b;c
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupName: String

        attr_accessor :WorkflowId, :Owner, :OwnerId, :ProjectId, :ProjectIdent, :ProjectName, :WorkflowDesc, :WorkflowName, :FolderId, :UserGroupId, :UserGroupName
        
        def initialize(workflowid=nil, owner=nil, ownerid=nil, projectid=nil, projectident=nil, projectname=nil, workflowdesc=nil, workflowname=nil, folderid=nil, usergroupid=nil, usergroupname=nil)
          @WorkflowId = workflowid
          @Owner = owner
          @OwnerId = ownerid
          @ProjectId = projectid
          @ProjectIdent = projectident
          @ProjectName = projectname
          @WorkflowDesc = workflowdesc
          @WorkflowName = workflowname
          @FolderId = folderid
          @UserGroupId = usergroupid
          @UserGroupName = usergroupname
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @Owner = params['Owner']
          @OwnerId = params['OwnerId']
          @ProjectId = params['ProjectId']
          @ProjectIdent = params['ProjectIdent']
          @ProjectName = params['ProjectName']
          @WorkflowDesc = params['WorkflowDesc']
          @WorkflowName = params['WorkflowName']
          @FolderId = params['FolderId']
          @UserGroupId = params['UserGroupId']
          @UserGroupName = params['UserGroupName']
        end
      end

    end
  end
end

