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
  module Dts
    module V20211206
      # 检查步骤
      class CheckStep < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNo: Integer
        # @param StepId: 步骤Id， 如：ConnectDBCheck、VersionCheck、SrcPrivilegeCheck等，具体校验项和源目标实例相关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepId: String
        # @param StepName: 步骤名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepName: String
        # @param StepStatus: 此检查步骤的结果，pass(校验通过)、failed(校验失败)、notStarted(校验还未开始进行)、blocked(检验阻塞)、warning(校验有告警，但仍通过)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepStatus: String
        # @param StepMessage: 此检查步骤的错误消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepMessage: String
        # @param DetailCheckItems: 每个检查步骤里的具体检查项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailCheckItems: Array
        # @param HasSkipped: 是否已跳过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasSkipped: Boolean

        attr_accessor :StepNo, :StepId, :StepName, :StepStatus, :StepMessage, :DetailCheckItems, :HasSkipped
        
        def initialize(stepno=nil, stepid=nil, stepname=nil, stepstatus=nil, stepmessage=nil, detailcheckitems=nil, hasskipped=nil)
          @StepNo = stepno
          @StepId = stepid
          @StepName = stepname
          @StepStatus = stepstatus
          @StepMessage = stepmessage
          @DetailCheckItems = detailcheckitems
          @HasSkipped = hasskipped
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepId = params['StepId']
          @StepName = params['StepName']
          @StepStatus = params['StepStatus']
          @StepMessage = params['StepMessage']
          unless params['DetailCheckItems'].nil?
            @DetailCheckItems = []
            params['DetailCheckItems'].each do |i|
              detailcheckitem_tmp = DetailCheckItem.new
              detailcheckitem_tmp.deserialize(i)
              @DetailCheckItems << detailcheckitem_tmp
            end
          end
          @HasSkipped = params['HasSkipped']
        end
      end

      # 校验任务运行详情
      class CheckStepInfo < TencentCloud::Common::AbstractModel
        # @param StartAt: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartAt: String
        # @param EndAt: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndAt: String
        # @param Progress: 任务步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: :class:`Tencentcloud::Dts.v20211206.models.ProcessProgress`

        attr_accessor :StartAt, :EndAt, :Progress
        
        def initialize(startat=nil, endat=nil, progress=nil)
          @StartAt = startat
          @EndAt = endat
          @Progress = progress
        end

        def deserialize(params)
          @StartAt = params['StartAt']
          @EndAt = params['EndAt']
          unless params['Progress'].nil?
            @Progress = ProcessProgress.new
            @Progress.deserialize(params['Progress'])
          end
        end
      end

      # 一致性校验摘要信息
      class CompareAbstractInfo < TencentCloud::Common::AbstractModel
        # @param Conclusion: 对比结论: same,different
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conclusion: String
        # @param Status: 任务状态: success,failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TotalTables: 总的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTables: Integer
        # @param CheckedTables: 已校验的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckedTables: Integer
        # @param DifferentTables: 不一致的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferentTables: Integer
        # @param SkippedTables: 跳过校验的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkippedTables: Integer
        # @param DifferentRows: 不一致的数据行数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferentRows: Integer

        attr_accessor :Conclusion, :Status, :TotalTables, :CheckedTables, :DifferentTables, :SkippedTables, :DifferentRows
        
        def initialize(conclusion=nil, status=nil, totaltables=nil, checkedtables=nil, differenttables=nil, skippedtables=nil, differentrows=nil)
          @Conclusion = conclusion
          @Status = status
          @TotalTables = totaltables
          @CheckedTables = checkedtables
          @DifferentTables = differenttables
          @SkippedTables = skippedtables
          @DifferentRows = differentrows
        end

        def deserialize(params)
          @Conclusion = params['Conclusion']
          @Status = params['Status']
          @TotalTables = params['TotalTables']
          @CheckedTables = params['CheckedTables']
          @DifferentTables = params['DifferentTables']
          @SkippedTables = params['SkippedTables']
          @DifferentRows = params['DifferentRows']
        end
      end

      # 一致性校验详细信息
      class CompareDetailInfo < TencentCloud::Common::AbstractModel
        # @param Difference: 数据不一致的表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Difference: :class:`Tencentcloud::Dts.v20211206.models.DifferenceDetail`
        # @param Skipped: 跳过校验的表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Skipped: :class:`Tencentcloud::Dts.v20211206.models.SkippedDetail`

        attr_accessor :Difference, :Skipped
        
        def initialize(difference=nil, skipped=nil)
          @Difference = difference
          @Skipped = skipped
        end

        def deserialize(params)
          unless params['Difference'].nil?
            @Difference = DifferenceDetail.new
            @Difference.deserialize(params['Difference'])
          end
          unless params['Skipped'].nil?
            @Skipped = SkippedDetail.new
            @Skipped.deserialize(params['Skipped'])
          end
        end
      end

      # 一致性对比对象配置
      class CompareObject < TencentCloud::Common::AbstractModel
        # @param ObjectMode: 迁移对象模式 all(所有迁移对象)，partial(部分对象迁移)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectMode: String
        # @param ObjectItems: 迁移对象库表配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectItems: Array

        attr_accessor :ObjectMode, :ObjectItems
        
        def initialize(objectmode=nil, objectitems=nil)
          @ObjectMode = objectmode
          @ObjectItems = objectitems
        end

        def deserialize(params)
          @ObjectMode = params['ObjectMode']
          unless params['ObjectItems'].nil?
            @ObjectItems = []
            params['ObjectItems'].each do |i|
              compareobjectitem_tmp = CompareObjectItem.new
              compareobjectitem_tmp.deserialize(i)
              @ObjectItems << compareobjectitem_tmp
            end
          end
        end
      end

      # 一致性校验库表对象
      class CompareObjectItem < TencentCloud::Common::AbstractModel
        # @param DbName: 迁移的库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param DbMode: 数据库选择模式: all 为当前对象下的所有对象,partial 为部分对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param SchemaName: 迁移的 schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableMode: 表选择模式: all 为当前对象下的所有表对象,partial 为部分表对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMode: String
        # @param Tables: 用于一致性校验的表配置，当 TableMode 为 partial 时，需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param ViewMode: 视图选择模式: all 为当前对象下的所有视图对象,partial 为部分视图对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewMode: String
        # @param Views: 用于一致性校验的视图配置，当 ViewMode 为 partial 时， 需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array

        attr_accessor :DbName, :DbMode, :SchemaName, :TableMode, :Tables, :ViewMode, :Views
        
        def initialize(dbname=nil, dbmode=nil, schemaname=nil, tablemode=nil, tables=nil, viewmode=nil, views=nil)
          @DbName = dbname
          @DbMode = dbmode
          @SchemaName = schemaname
          @TableMode = tablemode
          @Tables = tables
          @ViewMode = viewmode
          @Views = views
        end

        def deserialize(params)
          @DbName = params['DbName']
          @DbMode = params['DbMode']
          @SchemaName = params['SchemaName']
          @TableMode = params['TableMode']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              comparetableitem_tmp = CompareTableItem.new
              comparetableitem_tmp.deserialize(i)
              @Tables << comparetableitem_tmp
            end
          end
          @ViewMode = params['ViewMode']
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              compareviewitem_tmp = CompareViewItem.new
              compareviewitem_tmp.deserialize(i)
              @Views << compareviewitem_tmp
            end
          end
        end
      end

      # 用于一致性校验的表配置
      class CompareTableItem < TencentCloud::Common::AbstractModel
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String

        attr_accessor :TableName
        
        def initialize(tablename=nil)
          @TableName = tablename
        end

        def deserialize(params)
          @TableName = params['TableName']
        end
      end

      # 数据一致性校验结果
      class CompareTaskInfo < TencentCloud::Common::AbstractModel
        # @param CompareTaskId: 一致性校验任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareTaskId: String
        # @param Status: 一致性校验结果，包括：unstart(未启动)、running(校验中)、canceled(已终止)、failed(校验任务失败)、inconsistent(不一致)、consistent(一致)、notexist(不存在校验任务)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :CompareTaskId, :Status
        
        def initialize(comparetaskid=nil, status=nil)
          @CompareTaskId = comparetaskid
          @Status = status
        end

        def deserialize(params)
          @CompareTaskId = params['CompareTaskId']
          @Status = params['Status']
        end
      end

      # 一致性校验对象信息
      class CompareTaskItem < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CompareTaskId: 对比任务 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareTaskId: String
        # @param TaskName: 对比任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param Status: 对比任务状态, 可能的值：created - 创建完成；readyRun - 等待运行；running - 运行中；success - 成功；stopping - 结束中；failed - 失败；canceled - 已终止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Config: 对比任务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`
        # @param CheckProcess: 对比任务校验详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckProcess: :class:`Tencentcloud::Dts.v20211206.models.ProcessProgress`
        # @param CompareProcess: 对比任务运行详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareProcess: :class:`Tencentcloud::Dts.v20211206.models.ProcessProgress`
        # @param Conclusion: 对比结果, 可能的值：same - 一致；different - 不一致；skipAll - 跳过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conclusion: String
        # @param CreatedAt: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param StartedAt: 任务启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartedAt: String
        # @param FinishedAt: 对比结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedAt: String

        attr_accessor :JobId, :CompareTaskId, :TaskName, :Status, :Config, :CheckProcess, :CompareProcess, :Conclusion, :CreatedAt, :StartedAt, :FinishedAt
        
        def initialize(jobid=nil, comparetaskid=nil, taskname=nil, status=nil, config=nil, checkprocess=nil, compareprocess=nil, conclusion=nil, createdat=nil, startedat=nil, finishedat=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
          @TaskName = taskname
          @Status = status
          @Config = config
          @CheckProcess = checkprocess
          @CompareProcess = compareprocess
          @Conclusion = conclusion
          @CreatedAt = createdat
          @StartedAt = startedat
          @FinishedAt = finishedat
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
          @TaskName = params['TaskName']
          @Status = params['Status']
          unless params['Config'].nil?
            @Config = CompareObject.new
            @Config.deserialize(params['Config'])
          end
          unless params['CheckProcess'].nil?
            @CheckProcess = ProcessProgress.new
            @CheckProcess.deserialize(params['CheckProcess'])
          end
          unless params['CompareProcess'].nil?
            @CompareProcess = ProcessProgress.new
            @CompareProcess.deserialize(params['CompareProcess'])
          end
          @Conclusion = params['Conclusion']
          @CreatedAt = params['CreatedAt']
          @StartedAt = params['StartedAt']
          @FinishedAt = params['FinishedAt']
        end
      end

      # 用于一致性校验的视图配置
      class CompareViewItem < TencentCloud::Common::AbstractModel
        # @param ViewName: 视图名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewName: String

        attr_accessor :ViewName
        
        def initialize(viewname=nil)
          @ViewName = viewname
        end

        def deserialize(params)
          @ViewName = params['ViewName']
        end
      end

      # CompleteMigrateJob请求参数结构体
      class CompleteMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param CompleteMode: 完成任务的方式,仅支持旧版MySQL迁移任务。waitForSync-等待主从差距为0才停止,immediately-立即完成，不会等待主从差距一致。默认为waitForSync
        # @type CompleteMode: String

        attr_accessor :JobId, :CompleteMode
        
        def initialize(jobid=nil, completemode=nil)
          @JobId = jobid
          @CompleteMode = completemode
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompleteMode = params['CompleteMode']
        end
      end

      # CompleteMigrateJob返回参数结构体
      class CompleteMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # ConfigureSyncJob请求参数结构体
      class ConfigureSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步实例id（即标识一个同步作业），形如sync-werwfs23
        # @type JobId: String
        # @param SrcAccessType: 源端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)、noProxy,注意具体可选值依赖当前链路
        # @type SrcAccessType: String
        # @param SrcInfo: 源端信息
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param DstAccessType: 目标端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)、noProxy,注意具体可选值依赖当前链路
        # @type DstAccessType: String
        # @param DstInfo: 目标端信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param Options: 同步任务选项
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.Options`
        # @param Objects: 同步库表对象信息
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.Objects`
        # @param JobName: 同步任务名称
        # @type JobName: String
        # @param RunMode: 运行模式，取值如：Immediate(表示立即运行，默认为此项值)、Timed(表示定时运行)
        # @type RunMode: String
        # @param ExpectRunTime: 期待启动时间，当RunMode取值为Timed时，此值必填，形如："2006-01-02 15:04:05"
        # @type ExpectRunTime: String

        attr_accessor :JobId, :SrcAccessType, :SrcInfo, :DstAccessType, :DstInfo, :Options, :Objects, :JobName, :RunMode, :ExpectRunTime
        
        def initialize(jobid=nil, srcaccesstype=nil, srcinfo=nil, dstaccesstype=nil, dstinfo=nil, options=nil, objects=nil, jobname=nil, runmode=nil, expectruntime=nil)
          @JobId = jobid
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @Options = options
          @Objects = objects
          @JobName = jobname
          @RunMode = runmode
          @ExpectRunTime = expectruntime
        end

        def deserialize(params)
          @JobId = params['JobId']
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = Endpoint.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = Endpoint.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          unless params['Options'].nil?
            @Options = Options.new
            @Options.deserialize(params['Options'])
          end
          unless params['Objects'].nil?
            @Objects = Objects.new
            @Objects.deserialize(params['Objects'])
          end
          @JobName = params['JobName']
          @RunMode = params['RunMode']
          @ExpectRunTime = params['ExpectRunTime']
        end
      end

      # ConfigureSyncJob返回参数结构体
      class ConfigureSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 冲突处理里的详细描述
      class ConflictHandleOption < TencentCloud::Common::AbstractModel
        # @param ConditionColumn: 条件覆盖的列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionColumn: String
        # @param ConditionOperator: 条件覆盖操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionOperator: String
        # @param ConditionOrderInSrcAndDst: 条件覆盖优先级处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConditionOrderInSrcAndDst: String

        attr_accessor :ConditionColumn, :ConditionOperator, :ConditionOrderInSrcAndDst
        
        def initialize(conditioncolumn=nil, conditionoperator=nil, conditionorderinsrcanddst=nil)
          @ConditionColumn = conditioncolumn
          @ConditionOperator = conditionoperator
          @ConditionOrderInSrcAndDst = conditionorderinsrcanddst
        end

        def deserialize(params)
          @ConditionColumn = params['ConditionColumn']
          @ConditionOperator = params['ConditionOperator']
          @ConditionOrderInSrcAndDst = params['ConditionOrderInSrcAndDst']
        end
      end

      # 数据一致性校验选项， 默认为不开启一致性校验
      class ConsistencyOption < TencentCloud::Common::AbstractModel
        # @param Mode: 一致性检测类型: full(全量检测迁移对象)、noCheck(不检测)、notConfigured(未配置)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String

        attr_accessor :Mode
        
        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # CreateCheckSyncJob请求参数结构体
      class CreateCheckSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CreateCheckSyncJob返回参数结构体
      class CreateCheckSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateCompareTask请求参数结构体
      class CreateCompareTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param TaskName: 数据对比任务名称，若为空则默认给CompareTaskId相同值
        # @type TaskName: String
        # @param ObjectMode: 数据对比对象模式，sameAsMigrate(全部迁移对象， 默认为此项配置)，custom(自定义模式)
        # @type ObjectMode: String
        # @param Objects: 一致性对比对象配置
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`

        attr_accessor :JobId, :TaskName, :ObjectMode, :Objects
        
        def initialize(jobid=nil, taskname=nil, objectmode=nil, objects=nil)
          @JobId = jobid
          @TaskName = taskname
          @ObjectMode = objectmode
          @Objects = objects
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
          @ObjectMode = params['ObjectMode']
          unless params['Objects'].nil?
            @Objects = CompareObject.new
            @Objects.deserialize(params['Objects'])
          end
        end
      end

      # CreateCompareTask返回参数结构体
      class CreateCompareTaskResponse < TencentCloud::Common::AbstractModel
        # @param CompareTaskId: 数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompareTaskId, :RequestId
        
        def initialize(comparetaskid=nil, requestid=nil)
          @CompareTaskId = comparetaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompareTaskId = params['CompareTaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMigrateCheckJob请求参数结构体
      class CreateMigrateCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CreateMigrateCheckJob返回参数结构体
      class CreateMigrateCheckJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateMigrationService请求参数结构体
      class CreateMigrationServiceRequest < TencentCloud::Common::AbstractModel
        # @param SrcDatabaseType: 源实例数据库类型，mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb
        # @type SrcDatabaseType: String
        # @param DstDatabaseType: 目标实例数据库类型，mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb
        # @type DstDatabaseType: String
        # @param SrcRegion: 源实例地域，如：ap-guangzhou
        # @type SrcRegion: String
        # @param DstRegion: 目标实例地域，如：ap-guangzhou。注意，目标地域必须和API请求地域保持一致。
        # @type DstRegion: String
        # @param InstanceClass: 实例规格，包括：micro、small、medium、large、xlarge、2xlarge
        # @type InstanceClass: String
        # @param Count: 购买数量，范围为[1,15]，默认为1
        # @type Count: Integer
        # @param JobName: 迁移服务名称，最大长度128
        # @type JobName: String
        # @param Tags: 标签信息
        # @type Tags: Array

        attr_accessor :SrcDatabaseType, :DstDatabaseType, :SrcRegion, :DstRegion, :InstanceClass, :Count, :JobName, :Tags
        
        def initialize(srcdatabasetype=nil, dstdatabasetype=nil, srcregion=nil, dstregion=nil, instanceclass=nil, count=nil, jobname=nil, tags=nil)
          @SrcDatabaseType = srcdatabasetype
          @DstDatabaseType = dstdatabasetype
          @SrcRegion = srcregion
          @DstRegion = dstregion
          @InstanceClass = instanceclass
          @Count = count
          @JobName = jobname
          @Tags = tags
        end

        def deserialize(params)
          @SrcDatabaseType = params['SrcDatabaseType']
          @DstDatabaseType = params['DstDatabaseType']
          @SrcRegion = params['SrcRegion']
          @DstRegion = params['DstRegion']
          @InstanceClass = params['InstanceClass']
          @Count = params['Count']
          @JobName = params['JobName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
        end
      end

      # CreateMigrationService返回参数结构体
      class CreateMigrationServiceResponse < TencentCloud::Common::AbstractModel
        # @param JobIds: 下单成功随机生成的迁移服务id列表，形如：dts-c1f6rs21
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobIds, :RequestId
        
        def initialize(jobids=nil, requestid=nil)
          @JobIds = jobids
          @RequestId = requestid
        end

        def deserialize(params)
          @JobIds = params['JobIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSyncJob请求参数结构体
      class CreateSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 支付类型，PrePay：包年包月  PostPay：按时按量
        # @type PayMode: String
        # @param SrcDatabaseType: 源端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        # @type SrcDatabaseType: String
        # @param SrcRegion: 源端数据库所在地域,如ap-guangzhou
        # @type SrcRegion: String
        # @param DstDatabaseType: 目标端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        # @type DstDatabaseType: String
        # @param DstRegion: 目标端数据库所在地域,如ap-guangzhou
        # @type DstRegion: String
        # @param Specification: 同步任务规格，Standard:标准版
        # @type Specification: String
        # @param Tags: 无
        # @type Tags: Array
        # @param Count: 同步任务数量
        # @type Count: Integer
        # @param AutoRenew: 自动续费标识
        # @type AutoRenew: Integer
        # @param InstanceClass: 同步链路规格
        # @type InstanceClass: String
        # @param JobName: 同步链路名称
        # @type JobName: String
        # @param ExistedJobId: 创建类似任务的现有任务Id
        # @type ExistedJobId: String

        attr_accessor :PayMode, :SrcDatabaseType, :SrcRegion, :DstDatabaseType, :DstRegion, :Specification, :Tags, :Count, :AutoRenew, :InstanceClass, :JobName, :ExistedJobId
        
        def initialize(paymode=nil, srcdatabasetype=nil, srcregion=nil, dstdatabasetype=nil, dstregion=nil, specification=nil, tags=nil, count=nil, autorenew=nil, instanceclass=nil, jobname=nil, existedjobid=nil)
          @PayMode = paymode
          @SrcDatabaseType = srcdatabasetype
          @SrcRegion = srcregion
          @DstDatabaseType = dstdatabasetype
          @DstRegion = dstregion
          @Specification = specification
          @Tags = tags
          @Count = count
          @AutoRenew = autorenew
          @InstanceClass = instanceclass
          @JobName = jobname
          @ExistedJobId = existedjobid
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcRegion = params['SrcRegion']
          @DstDatabaseType = params['DstDatabaseType']
          @DstRegion = params['DstRegion']
          @Specification = params['Specification']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          @Count = params['Count']
          @AutoRenew = params['AutoRenew']
          @InstanceClass = params['InstanceClass']
          @JobName = params['JobName']
          @ExistedJobId = params['ExistedJobId']
        end
      end

      # CreateSyncJob返回参数结构体
      class CreateSyncJobResponse < TencentCloud::Common::AbstractModel
        # @param JobIds: 同步任务ids
        # @type JobIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobIds, :RequestId
        
        def initialize(jobids=nil, requestid=nil)
          @JobIds = jobids
          @RequestId = requestid
        end

        def deserialize(params)
          @JobIds = params['JobIds']
          @RequestId = params['RequestId']
        end
      end

      # 实例信息
      class DBEndpointInfo < TencentCloud::Common::AbstractModel
        # @param Region: 实例所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AccessType: 实例网络接入类型，如：extranet(外网)、ipv6(公网ipv6)、cvm(云主机自建)、dcg(专线接入)、vpncloud(vpn接入的实例)、cdb(云数据库)、ccn(云联网)、intranet(自研上云)、vpc(私有网络)等，注意具体可选值依赖当前链路
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: String
        # @param DatabaseType: 实例数据库类型，如：mysql,redis,mongodb,postgresql,mariadb,percona 等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseType: String
        # @param NodeType: 节点类型，为空或者"simple":表示普通节点，"cluster": 集群节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param Info: 数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: Array
        # @param Supplier: 实例服务提供商，如:"aliyun","others"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Supplier: String
        # @param ExtraAttr: MongoDB可定义如下的参数: 	['AuthDatabase':'admin',
        # 'AuthFlag': "1",	'AuthMechanism':"SCRAM-SHA-1"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttr: Array

        attr_accessor :Region, :AccessType, :DatabaseType, :NodeType, :Info, :Supplier, :ExtraAttr
        
        def initialize(region=nil, accesstype=nil, databasetype=nil, nodetype=nil, info=nil, supplier=nil, extraattr=nil)
          @Region = region
          @AccessType = accesstype
          @DatabaseType = databasetype
          @NodeType = nodetype
          @Info = info
          @Supplier = supplier
          @ExtraAttr = extraattr
        end

        def deserialize(params)
          @Region = params['Region']
          @AccessType = params['AccessType']
          @DatabaseType = params['DatabaseType']
          @NodeType = params['NodeType']
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              dbinfo_tmp = DBInfo.new
              dbinfo_tmp.deserialize(i)
              @Info << dbinfo_tmp
            end
          end
          @Supplier = params['Supplier']
          unless params['ExtraAttr'].nil?
            @ExtraAttr = []
            params['ExtraAttr'].each do |i|
              keyvaluepairoption_tmp = KeyValuePairOption.new
              keyvaluepairoption_tmp.deserialize(i)
              @ExtraAttr << keyvaluepairoption_tmp
            end
          end
        end
      end

      # 数据库信息
      class DBInfo < TencentCloud::Common::AbstractModel
        # @param Role: 表示节点角色，针对分布式数据库，如mongodb中的mongos节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param DbKernel: 内核版本，针对mariadb的不同内核版本等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbKernel: String
        # @param Host: 实例的IP地址，对于公网、专线、VPN、云联网、自研上云、VPC等接入方式此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Port: 实例的端口，对于公网、云主机自建、专线、VPN、云联网、自研上云、VPC等接入方式此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param User: 实例的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 实例的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param CvmInstanceId: CVM实例短ID，格式如：ins-olgl39y8；与云服务器控制台页面显示的实例ID相同；如果接入类型为云主机自建的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmInstanceId: String
        # @param UniqVpnGwId: VPN网关ID，格式如：vpngw-9ghexg7q；如果接入类型为vpncloud的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpnGwId: String
        # @param UniqDcgId: 专线网关ID，格式如：dcg-0rxtqqxb；如果接入类型为专线接入的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqDcgId: String
        # @param InstanceId: 数据库实例ID，格式如：cdb-powiqx8q；如果接入类型为云数据库的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param CcnGwId: 云联网ID，如：ccn-afp6kltc 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnGwId: String
        # @param VpcId: 私有网络ID，格式如：vpc-92jblxto；如果接入类型为vpc、vpncloud、ccn、dcg的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，格式如：subnet-3paxmkdz；如果接入类型为vpc、vpncloud、ccn、dcg的方式，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param EngineVersion: 数据库版本，当实例为RDS实例时才有效，格式如：5.6或者5.7，默认为5.6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineVersion: String
        # @param Account: 实例所属账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Account: String
        # @param AccountRole: 跨账号迁移时的角色,只允许[a-zA-Z0-9\-\_]+
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountRole: String
        # @param AccountMode: 资源所属账号 为空或self(表示本账号内资源)、other(表示其他账户资源)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountMode: String
        # @param TmpSecretId: 临时秘钥Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时秘钥Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param TmpToken: 临时Token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpToken: String

        attr_accessor :Role, :DbKernel, :Host, :Port, :User, :Password, :CvmInstanceId, :UniqVpnGwId, :UniqDcgId, :InstanceId, :CcnGwId, :VpcId, :SubnetId, :EngineVersion, :Account, :AccountRole, :AccountMode, :TmpSecretId, :TmpSecretKey, :TmpToken
        
        def initialize(role=nil, dbkernel=nil, host=nil, port=nil, user=nil, password=nil, cvminstanceid=nil, uniqvpngwid=nil, uniqdcgid=nil, instanceid=nil, ccngwid=nil, vpcid=nil, subnetid=nil, engineversion=nil, account=nil, accountrole=nil, accountmode=nil, tmpsecretid=nil, tmpsecretkey=nil, tmptoken=nil)
          @Role = role
          @DbKernel = dbkernel
          @Host = host
          @Port = port
          @User = user
          @Password = password
          @CvmInstanceId = cvminstanceid
          @UniqVpnGwId = uniqvpngwid
          @UniqDcgId = uniqdcgid
          @InstanceId = instanceid
          @CcnGwId = ccngwid
          @VpcId = vpcid
          @SubnetId = subnetid
          @EngineVersion = engineversion
          @Account = account
          @AccountRole = accountrole
          @AccountMode = accountmode
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @TmpToken = tmptoken
        end

        def deserialize(params)
          @Role = params['Role']
          @DbKernel = params['DbKernel']
          @Host = params['Host']
          @Port = params['Port']
          @User = params['User']
          @Password = params['Password']
          @CvmInstanceId = params['CvmInstanceId']
          @UniqVpnGwId = params['UniqVpnGwId']
          @UniqDcgId = params['UniqDcgId']
          @InstanceId = params['InstanceId']
          @CcnGwId = params['CcnGwId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EngineVersion = params['EngineVersion']
          @Account = params['Account']
          @AccountRole = params['AccountRole']
          @AccountMode = params['AccountMode']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @TmpToken = params['TmpToken']
        end
      end

      # 迁移对象信息
      class DBItem < TencentCloud::Common::AbstractModel
        # @param DbName: 需要迁移或同步的库名，当ObjectMode为partial时，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param NewDbName: 迁移或同步后的库名，默认与源库相同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewDbName: String
        # @param SchemaName: 迁移或同步的 schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param NewSchemaName: 迁移或同步后的 schema name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewSchemaName: String
        # @param DBMode: DB选择模式: all(为当前对象下的所有对象)，partial(部分对象)，当ObjectMode为partial时，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBMode: String
        # @param SchemaMode: schema选择模式: all(为当前对象下的所有对象)，partial(部分对象)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaMode: String
        # @param TableMode: 表选择模式: all(为当前对象下的所有对象)，partial(部分对象)，当DBMode为partial时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMode: String
        # @param Tables: 表图对象集合，当 TableMode 为 partial 时，此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param ViewMode: 视图选择模式: all 为当前对象下的所有视图对象,partial 为部分视图对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewMode: String
        # @param Views: 视图对象集合，当 ViewMode 为 partial 时， 此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array
        # @param RoleMode: postgresql独有参数，角色选择模式: all 为当前对象下的所有角色对象,partial 为部分角色对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleMode: String
        # @param Roles: postgresql独有参数，当 RoleMode 为 partial 时， 此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param FunctionMode: 选择要同步的模式，partial为部分，all为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionMode: String
        # @param TriggerMode: 选择要同步的模式，partial为部分，all为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMode: String
        # @param EventMode: 选择要同步的模式，partial为部分，all为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventMode: String
        # @param ProcedureMode: 选择要同步的模式，partial为部分，all为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureMode: String
        # @param Functions: FunctionMode取值为partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Functions: Array
        # @param Procedures: ProcedureMode取值为partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedures: Array
        # @param Events: EventMode取值为partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param Triggers: TriggerMode取值为partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Triggers: Array

        attr_accessor :DbName, :NewDbName, :SchemaName, :NewSchemaName, :DBMode, :SchemaMode, :TableMode, :Tables, :ViewMode, :Views, :RoleMode, :Roles, :FunctionMode, :TriggerMode, :EventMode, :ProcedureMode, :Functions, :Procedures, :Events, :Triggers
        
        def initialize(dbname=nil, newdbname=nil, schemaname=nil, newschemaname=nil, dbmode=nil, schemamode=nil, tablemode=nil, tables=nil, viewmode=nil, views=nil, rolemode=nil, roles=nil, functionmode=nil, triggermode=nil, eventmode=nil, proceduremode=nil, functions=nil, procedures=nil, events=nil, triggers=nil)
          @DbName = dbname
          @NewDbName = newdbname
          @SchemaName = schemaname
          @NewSchemaName = newschemaname
          @DBMode = dbmode
          @SchemaMode = schemamode
          @TableMode = tablemode
          @Tables = tables
          @ViewMode = viewmode
          @Views = views
          @RoleMode = rolemode
          @Roles = roles
          @FunctionMode = functionmode
          @TriggerMode = triggermode
          @EventMode = eventmode
          @ProcedureMode = proceduremode
          @Functions = functions
          @Procedures = procedures
          @Events = events
          @Triggers = triggers
        end

        def deserialize(params)
          @DbName = params['DbName']
          @NewDbName = params['NewDbName']
          @SchemaName = params['SchemaName']
          @NewSchemaName = params['NewSchemaName']
          @DBMode = params['DBMode']
          @SchemaMode = params['SchemaMode']
          @TableMode = params['TableMode']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              tableitem_tmp = TableItem.new
              tableitem_tmp.deserialize(i)
              @Tables << tableitem_tmp
            end
          end
          @ViewMode = params['ViewMode']
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              viewitem_tmp = ViewItem.new
              viewitem_tmp.deserialize(i)
              @Views << viewitem_tmp
            end
          end
          @RoleMode = params['RoleMode']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              roleitem_tmp = RoleItem.new
              roleitem_tmp.deserialize(i)
              @Roles << roleitem_tmp
            end
          end
          @FunctionMode = params['FunctionMode']
          @TriggerMode = params['TriggerMode']
          @EventMode = params['EventMode']
          @ProcedureMode = params['ProcedureMode']
          @Functions = params['Functions']
          @Procedures = params['Procedures']
          @Events = params['Events']
          @Triggers = params['Triggers']
        end
      end

      # 需要同步的库表对象
      class Database < TencentCloud::Common::AbstractModel
        # @param DbName: 需要迁移或同步的库名，当ObjectMode为Partial时，此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param NewDbName: 迁移或同步后的库名，默认与源库相同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewDbName: String
        # @param DbMode: DB选择模式: All(为当前对象下的所有对象)，Partial(部分对象)，当Mode为Partial时，此项必填。注意，高级对象的同步不依赖此值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param SchemaName: 迁移或同步的 schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param NewSchemaName: 迁移或同步后的 schema name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewSchemaName: String
        # @param TableMode: 表选择模式: All(为当前对象下的所有对象)，Partial(部分对象)，当DBMode为Partial时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMode: String
        # @param Tables: 表图对象集合，当 TableMode 为 Partial 时，此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param ViewMode: 视图选择模式: All 为当前对象下的所有视图对象,Partial 为部分视图对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewMode: String
        # @param Views: 视图对象集合，当 ViewMode 为 Partial 时， 此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array
        # @param FunctionMode: 选择要同步的模式，Partial为部分，all为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionMode: String
        # @param Functions: FunctionMode取值为Partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Functions: Array
        # @param ProcedureMode: 选择要同步的模式，Partial为部分，All为整选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureMode: String
        # @param Procedures: ProcedureMode取值为Partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedures: Array

        attr_accessor :DbName, :NewDbName, :DbMode, :SchemaName, :NewSchemaName, :TableMode, :Tables, :ViewMode, :Views, :FunctionMode, :Functions, :ProcedureMode, :Procedures
        
        def initialize(dbname=nil, newdbname=nil, dbmode=nil, schemaname=nil, newschemaname=nil, tablemode=nil, tables=nil, viewmode=nil, views=nil, functionmode=nil, functions=nil, proceduremode=nil, procedures=nil)
          @DbName = dbname
          @NewDbName = newdbname
          @DbMode = dbmode
          @SchemaName = schemaname
          @NewSchemaName = newschemaname
          @TableMode = tablemode
          @Tables = tables
          @ViewMode = viewmode
          @Views = views
          @FunctionMode = functionmode
          @Functions = functions
          @ProcedureMode = proceduremode
          @Procedures = procedures
        end

        def deserialize(params)
          @DbName = params['DbName']
          @NewDbName = params['NewDbName']
          @DbMode = params['DbMode']
          @SchemaName = params['SchemaName']
          @NewSchemaName = params['NewSchemaName']
          @TableMode = params['TableMode']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              table_tmp = Table.new
              table_tmp.deserialize(i)
              @Tables << table_tmp
            end
          end
          @ViewMode = params['ViewMode']
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              view_tmp = View.new
              view_tmp.deserialize(i)
              @Views << view_tmp
            end
          end
          @FunctionMode = params['FunctionMode']
          @Functions = params['Functions']
          @ProcedureMode = params['ProcedureMode']
          @Procedures = params['Procedures']
        end
      end

      # 迁移对象选项，需要告知迁移服务迁移哪些库表对象
      class DatabaseTableObject < TencentCloud::Common::AbstractModel
        # @param ObjectMode: 迁移对象类型 all(全实例)，partial(部分对象)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectMode: String
        # @param Databases: 迁移对象，当 ObjectMode 为 partial 时，不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param AdvancedObjects: 高级对象类型，如trigger、function、procedure、event
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedObjects: Array

        attr_accessor :ObjectMode, :Databases, :AdvancedObjects
        
        def initialize(objectmode=nil, databases=nil, advancedobjects=nil)
          @ObjectMode = objectmode
          @Databases = databases
          @AdvancedObjects = advancedobjects
        end

        def deserialize(params)
          @ObjectMode = params['ObjectMode']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              dbitem_tmp = DBItem.new
              dbitem_tmp.deserialize(i)
              @Databases << dbitem_tmp
            end
          end
          @AdvancedObjects = params['AdvancedObjects']
        end
      end

      # 数据同步中的ddl同步处理
      class DdlOption < TencentCloud::Common::AbstractModel
        # @param DdlObject: ddl类型，如Database,Table,View,Index等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdlObject: String
        # @param DdlValue: ddl具体值，对于Database可取值[Create,Drop,Alter]<br>对于Table可取值[Create,Drop,Alter,Truncate,Rename]<br/>对于View可取值[Create,Drop]<br/>对于Index可取值[Create,Drop]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdlValue: Array

        attr_accessor :DdlObject, :DdlValue
        
        def initialize(ddlobject=nil, ddlvalue=nil)
          @DdlObject = ddlobject
          @DdlValue = ddlvalue
        end

        def deserialize(params)
          @DdlObject = params['DdlObject']
          @DdlValue = params['DdlValue']
        end
      end

      # DeleteCompareTask请求参数结构体
      class DeleteCompareTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String

        attr_accessor :JobId, :CompareTaskId
        
        def initialize(jobid=nil, comparetaskid=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
        end
      end

      # DeleteCompareTask返回参数结构体
      class DeleteCompareTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCheckSyncJobResult请求参数结构体
      class DescribeCheckSyncJobResultRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeCheckSyncJobResult返回参数结构体
      class DescribeCheckSyncJobResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 校验结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StepCount: 步骤总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCount: Integer
        # @param StepCur: 当前所在步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCur: Integer
        # @param Progress: 总体进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param StepInfos: 步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :StepCount, :StepCur, :Progress, :StepInfos, :RequestId
        
        def initialize(status=nil, stepcount=nil, stepcur=nil, progress=nil, stepinfos=nil, requestid=nil)
          @Status = status
          @StepCount = stepcount
          @StepCur = stepcur
          @Progress = progress
          @StepInfos = stepinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @StepCount = params['StepCount']
          @StepCur = params['StepCur']
          @Progress = params['Progress']
          unless params['StepInfos'].nil?
            @StepInfos = []
            params['StepInfos'].each do |i|
              stepinfo_tmp = StepInfo.new
              stepinfo_tmp.deserialize(i)
              @StepInfos << stepinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompareReport请求参数结构体
      class DescribeCompareReportRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 校验任务 Id
        # @type CompareTaskId: String
        # @param DifferenceLimit: 校验不一致结果的 limit
        # @type DifferenceLimit: Integer
        # @param DifferenceOffset: 不一致的 Offset
        # @type DifferenceOffset: Integer
        # @param DifferenceDB: 搜索条件，不一致的库名
        # @type DifferenceDB: String
        # @param DifferenceTable: 搜索条件，不一致的表名
        # @type DifferenceTable: String
        # @param SkippedLimit: 未校验的 Limit
        # @type SkippedLimit: Integer
        # @param SkippedOffset: 未校验的 Offset
        # @type SkippedOffset: Integer
        # @param SkippedDB: 搜索条件，未校验的库名
        # @type SkippedDB: String
        # @param SkippedTable: 搜索条件，未校验的表名
        # @type SkippedTable: String

        attr_accessor :JobId, :CompareTaskId, :DifferenceLimit, :DifferenceOffset, :DifferenceDB, :DifferenceTable, :SkippedLimit, :SkippedOffset, :SkippedDB, :SkippedTable
        
        def initialize(jobid=nil, comparetaskid=nil, differencelimit=nil, differenceoffset=nil, differencedb=nil, differencetable=nil, skippedlimit=nil, skippedoffset=nil, skippeddb=nil, skippedtable=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
          @DifferenceLimit = differencelimit
          @DifferenceOffset = differenceoffset
          @DifferenceDB = differencedb
          @DifferenceTable = differencetable
          @SkippedLimit = skippedlimit
          @SkippedOffset = skippedoffset
          @SkippedDB = skippeddb
          @SkippedTable = skippedtable
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
          @DifferenceLimit = params['DifferenceLimit']
          @DifferenceOffset = params['DifferenceOffset']
          @DifferenceDB = params['DifferenceDB']
          @DifferenceTable = params['DifferenceTable']
          @SkippedLimit = params['SkippedLimit']
          @SkippedOffset = params['SkippedOffset']
          @SkippedDB = params['SkippedDB']
          @SkippedTable = params['SkippedTable']
        end
      end

      # DescribeCompareReport返回参数结构体
      class DescribeCompareReportResponse < TencentCloud::Common::AbstractModel
        # @param Abstract: 一致性校验摘要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abstract: :class:`Tencentcloud::Dts.v20211206.models.CompareAbstractInfo`
        # @param Detail: 一致性校验详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Dts.v20211206.models.CompareDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Abstract, :Detail, :RequestId
        
        def initialize(abstract=nil, detail=nil, requestid=nil)
          @Abstract = abstract
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Abstract'].nil?
            @Abstract = CompareAbstractInfo.new
            @Abstract.deserialize(params['Abstract'])
          end
          unless params['Detail'].nil?
            @Detail = CompareDetailInfo.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompareTasks请求参数结构体
      class DescribeCompareTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param Limit: 分页设置，表示每页显示多少条任务，默认为 20
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :JobId, :Limit, :Offset
        
        def initialize(jobid=nil, limit=nil, offset=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCompareTasks返回参数结构体
      class DescribeCompareTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 一致性校验列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId
        
        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              comparetaskitem_tmp = CompareTaskItem.new
              comparetaskitem_tmp.deserialize(i)
              @Items << comparetaskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrateDBInstances请求参数结构体
      class DescribeMigrateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseType: 数据库类型，如mysql
        # @type DatabaseType: String
        # @param MigrateRole: 实例作为迁移的源还是目标,src(表示源)，dst(表示目标)
        # @type MigrateRole: String
        # @param InstanceId: 云数据库实例ID
        # @type InstanceId: String
        # @param InstanceName: 云数据库名称
        # @type InstanceName: String
        # @param Limit: 返回数量限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param AccountMode: 资源所属账号 为空值或self(表示本账号内资源)、other(表示其他账户资源)
        # @type AccountMode: String
        # @param TmpSecretId: 临时秘钥Id，若为跨账号资源此项必填
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时秘钥Key，若为跨账号资源此项必填
        # @type TmpSecretKey: String
        # @param TmpToken: 临时秘钥Token，若为跨账号资源此项必填
        # @type TmpToken: String

        attr_accessor :DatabaseType, :MigrateRole, :InstanceId, :InstanceName, :Limit, :Offset, :AccountMode, :TmpSecretId, :TmpSecretKey, :TmpToken
        
        def initialize(databasetype=nil, migraterole=nil, instanceid=nil, instancename=nil, limit=nil, offset=nil, accountmode=nil, tmpsecretid=nil, tmpsecretkey=nil, tmptoken=nil)
          @DatabaseType = databasetype
          @MigrateRole = migraterole
          @InstanceId = instanceid
          @InstanceName = instancename
          @Limit = limit
          @Offset = offset
          @AccountMode = accountmode
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @TmpToken = tmptoken
        end

        def deserialize(params)
          @DatabaseType = params['DatabaseType']
          @MigrateRole = params['MigrateRole']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AccountMode = params['AccountMode']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @TmpToken = params['TmpToken']
        end
      end

      # DescribeMigrateDBInstances返回参数结构体
      class DescribeMigrateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合筛选条件的数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Instances: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              migratedbitem_tmp = MigrateDBItem.new
              migratedbitem_tmp.deserialize(i)
              @Instances << migratedbitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationCheckJob请求参数结构体
      class DescribeMigrationCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeMigrationCheckJob返回参数结构体
      class DescribeMigrationCheckJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 校验任务执行状态，如：notStarted(未开始)、running(校验中)、failed(校验任务失败)、success(任务成功)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BriefMsg: 校验任务结果输出简要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefMsg: String
        # @param StepInfo: 检查步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfo: Array
        # @param CheckFlag: 校验结果，如：checkPass(校验通过)、checkNotPass(校验未通过)
        # @type CheckFlag: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :BriefMsg, :StepInfo, :CheckFlag, :RequestId
        
        def initialize(status=nil, briefmsg=nil, stepinfo=nil, checkflag=nil, requestid=nil)
          @Status = status
          @BriefMsg = briefmsg
          @StepInfo = stepinfo
          @CheckFlag = checkflag
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @BriefMsg = params['BriefMsg']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              checkstep_tmp = CheckStep.new
              checkstep_tmp.deserialize(i)
              @StepInfo << checkstep_tmp
            end
          end
          @CheckFlag = params['CheckFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationDetail请求参数结构体
      class DescribeMigrationDetailRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeMigrationDetail返回参数结构体
      class DescribeMigrationDetailResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param CreateTime: 任务创建(提交)时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param StartTime: 任务开始执行时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务执行结束时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param BriefMsg: 迁移任务简要错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefMsg: String
        # @param Status: 任务状态，取值为：created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行中)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Action: 任务操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: :class:`Tencentcloud::Dts.v20211206.models.MigrateAction`
        # @param StepInfo: 迁移执行过程信息，在校验阶段显示校验过程步骤信息，在迁移阶段会显示迁移步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfo: :class:`Tencentcloud::Dts.v20211206.models.MigrateDetailInfo`
        # @param SrcInfo: 源实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param DstInfo: 目标端信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param CompareTask: 数据一致性校验结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareTask: :class:`Tencentcloud::Dts.v20211206.models.CompareTaskInfo`
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RunMode: 运行模式，取值如：immediate(表示立即运行)、timed(表示定时运行)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunMode: String
        # @param ExpectRunTime: 期待启动时间，当RunMode取值为timed时，此值必填，形如："2006-01-02 15:04:05"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectRunTime: String
        # @param MigrateOption: 迁移选项，描述任务如何执行迁移等一系列配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrateOption: :class:`Tencentcloud::Dts.v20211206.models.MigrateOption`
        # @param CheckStepInfo: 校验任务运行详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckStepInfo: :class:`Tencentcloud::Dts.v20211206.models.CheckStepInfo`
        # @param TradeInfo: 描述计费相关的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeInfo: :class:`Tencentcloud::Dts.v20211206.models.TradeInfo`
        # @param ErrorInfo: 任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :JobName, :CreateTime, :UpdateTime, :StartTime, :EndTime, :BriefMsg, :Status, :Action, :StepInfo, :SrcInfo, :DstInfo, :CompareTask, :Tags, :RunMode, :ExpectRunTime, :MigrateOption, :CheckStepInfo, :TradeInfo, :ErrorInfo, :RequestId
        
        def initialize(jobid=nil, jobname=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, briefmsg=nil, status=nil, action=nil, stepinfo=nil, srcinfo=nil, dstinfo=nil, comparetask=nil, tags=nil, runmode=nil, expectruntime=nil, migrateoption=nil, checkstepinfo=nil, tradeinfo=nil, errorinfo=nil, requestid=nil)
          @JobId = jobid
          @JobName = jobname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @BriefMsg = briefmsg
          @Status = status
          @Action = action
          @StepInfo = stepinfo
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @CompareTask = comparetask
          @Tags = tags
          @RunMode = runmode
          @ExpectRunTime = expectruntime
          @MigrateOption = migrateoption
          @CheckStepInfo = checkstepinfo
          @TradeInfo = tradeinfo
          @ErrorInfo = errorinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BriefMsg = params['BriefMsg']
          @Status = params['Status']
          unless params['Action'].nil?
            @Action = MigrateAction.new
            @Action.deserialize(params['Action'])
          end
          unless params['StepInfo'].nil?
            @StepInfo = MigrateDetailInfo.new
            @StepInfo.deserialize(params['StepInfo'])
          end
          unless params['SrcInfo'].nil?
            @SrcInfo = DBEndpointInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['DstInfo'].nil?
            @DstInfo = DBEndpointInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          unless params['CompareTask'].nil?
            @CompareTask = CompareTaskInfo.new
            @CompareTask.deserialize(params['CompareTask'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          @RunMode = params['RunMode']
          @ExpectRunTime = params['ExpectRunTime']
          unless params['MigrateOption'].nil?
            @MigrateOption = MigrateOption.new
            @MigrateOption.deserialize(params['MigrateOption'])
          end
          unless params['CheckStepInfo'].nil?
            @CheckStepInfo = CheckStepInfo.new
            @CheckStepInfo.deserialize(params['CheckStepInfo'])
          end
          unless params['TradeInfo'].nil?
            @TradeInfo = TradeInfo.new
            @TradeInfo.deserialize(params['TradeInfo'])
          end
          unless params['ErrorInfo'].nil?
            @ErrorInfo = []
            params['ErrorInfo'].each do |i|
              errorinfoitem_tmp = ErrorInfoItem.new
              errorinfoitem_tmp.deserialize(i)
              @ErrorInfo << errorinfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationJobs请求参数结构体
      class DescribeMigrationJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID，如：dts-amm1jw5q
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # @type JobName: String
        # @param Status: 数据迁移任务状态，可取值包括：created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行中)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)
        # @type Status: Array
        # @param SrcInstanceId: 源实例ID，格式如：cdb-c1nl9rpv
        # @type SrcInstanceId: String
        # @param SrcRegion: 源实例地域，如：ap-guangzhou
        # @type SrcRegion: String
        # @param SrcDatabaseType: 源实例数据库类型，如：sqlserver,mysql,mongodb,redis,tendis,keewidb,clickhouse,cynosdbmysql,percona,tdsqlpercona,mariadb,tdsqlmysql,postgresql
        # @type SrcDatabaseType: Array
        # @param SrcAccessType: 源实例接入类型，值包括：extranet(外网)、vpncloud(云vpn接入的实例)、dcg(专线接入的实例)、ccn(云联网接入的实例)、cdb(云上cdb实例)、cvm(cvm自建实例)
        # @type SrcAccessType: Array
        # @param DstInstanceId: 目标实例ID，格式如：cdb-c1nl9rpv
        # @type DstInstanceId: String
        # @param DstRegion: 目标实例地域，如：ap-guangzhou
        # @type DstRegion: String
        # @param DstDatabaseType: 目标源实例数据库类型，如：sqlserver,mysql,mongodb,redis,tendis,keewidb,clickhouse,cynosdbmysql,percona,tdsqlpercona,mariadb,tdsqlmysql,postgresql
        # @type DstDatabaseType: Array
        # @param DstAccessType: 目标实例接入类型，值包括：extranet(外网)、vpncloud(云vpn接入的实例)、dcg(专线接入的实例)、ccn(云联网接入的实例)、cdb(云上cdb实例)、cvm(cvm自建实例)
        # @type DstAccessType: Array
        # @param RunMode: 任务运行模式，值包括：immediate(立即运行)，timed(定时运行)
        # @type RunMode: String
        # @param OrderSeq: 排序方式，可能取值为asc、desc，默认按照创建时间倒序
        # @type OrderSeq: String
        # @param Limit: 返回实例数量，默认20，有效区间[1,100]
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array

        attr_accessor :JobId, :JobName, :Status, :SrcInstanceId, :SrcRegion, :SrcDatabaseType, :SrcAccessType, :DstInstanceId, :DstRegion, :DstDatabaseType, :DstAccessType, :RunMode, :OrderSeq, :Limit, :Offset, :TagFilters
        
        def initialize(jobid=nil, jobname=nil, status=nil, srcinstanceid=nil, srcregion=nil, srcdatabasetype=nil, srcaccesstype=nil, dstinstanceid=nil, dstregion=nil, dstdatabasetype=nil, dstaccesstype=nil, runmode=nil, orderseq=nil, limit=nil, offset=nil, tagfilters=nil)
          @JobId = jobid
          @JobName = jobname
          @Status = status
          @SrcInstanceId = srcinstanceid
          @SrcRegion = srcregion
          @SrcDatabaseType = srcdatabasetype
          @SrcAccessType = srcaccesstype
          @DstInstanceId = dstinstanceid
          @DstRegion = dstregion
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @RunMode = runmode
          @OrderSeq = orderseq
          @Limit = limit
          @Offset = offset
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Status = params['Status']
          @SrcInstanceId = params['SrcInstanceId']
          @SrcRegion = params['SrcRegion']
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcAccessType = params['SrcAccessType']
          @DstInstanceId = params['DstInstanceId']
          @DstRegion = params['DstRegion']
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          @RunMode = params['RunMode']
          @OrderSeq = params['OrderSeq']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeMigrationJobs返回参数结构体
      class DescribeMigrationJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 迁移任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param JobList: 迁移任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobList, :RequestId
        
        def initialize(totalcount=nil, joblist=nil, requestid=nil)
          @TotalCount = totalcount
          @JobList = joblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobList'].nil?
            @JobList = []
            params['JobList'].each do |i|
              jobitem_tmp = JobItem.new
              jobitem_tmp.deserialize(i)
              @JobList << jobitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSyncJobs请求参数结构体
      class DescribeSyncJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String
        # @param JobName: 同步任务名
        # @type JobName: String
        # @param Order: 排序字段，可以取值为CreateTime
        # @type Order: String
        # @param OrderSeq: 排序方式，升序为ASC，降序为DESC，默认为CreateTime降序
        # @type OrderSeq: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回同步任务实例数量，默认20，有效区间[1,100]
        # @type Limit: Integer
        # @param Status: 状态集合，如Initialized,CheckPass,Running,ResumableErr,Stopped
        # @type Status: Array
        # @param RunMode: 运行模式，如Immediate:立即运行，Timed:定时运行
        # @type RunMode: String
        # @param JobType: 任务类型，如mysql2mysql：msyql同步到mysql
        # @type JobType: String
        # @param PayMode: 付费类型，PrePay：预付费，PostPay：后付费
        # @type PayMode: String
        # @param TagFilters: tag
        # @type TagFilters: Array

        attr_accessor :JobId, :JobName, :Order, :OrderSeq, :Offset, :Limit, :Status, :RunMode, :JobType, :PayMode, :TagFilters
        
        def initialize(jobid=nil, jobname=nil, order=nil, orderseq=nil, offset=nil, limit=nil, status=nil, runmode=nil, jobtype=nil, paymode=nil, tagfilters=nil)
          @JobId = jobid
          @JobName = jobname
          @Order = order
          @OrderSeq = orderseq
          @Offset = offset
          @Limit = limit
          @Status = status
          @RunMode = runmode
          @JobType = jobtype
          @PayMode = paymode
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Order = params['Order']
          @OrderSeq = params['OrderSeq']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @RunMode = params['RunMode']
          @JobType = params['JobType']
          @PayMode = params['PayMode']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeSyncJobs返回参数结构体
      class DescribeSyncJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param JobList: 任务详情数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobList, :RequestId
        
        def initialize(totalcount=nil, joblist=nil, requestid=nil)
          @TotalCount = totalcount
          @JobList = joblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobList'].nil?
            @JobList = []
            params['JobList'].each do |i|
              syncjobinfo_tmp = SyncJobInfo.new
              syncjobinfo_tmp.deserialize(i)
              @JobList << syncjobinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyMigrateJob请求参数结构体
      class DestroyMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DestroyMigrateJob返回参数结构体
      class DestroyMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # DestroySyncJob请求参数结构体
      class DestroySyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DestroySyncJob返回参数结构体
      class DestroySyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 每个检查步骤里的具体检查项
      class DetailCheckItem < TencentCloud::Common::AbstractModel
        # @param CheckItemName: 检查项的名称，如：源实例权限检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckItemName: String
        # @param Description: 检查项详细内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CheckResult: pass(通过)，failed(失败), warning(校验有警告，但仍通过)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckResult: String
        # @param FailureReason: 检查项失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param ErrorLog: 运行报错日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLog: Array
        # @param HelpDoc: 详细帮助的文档链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HelpDoc: Array
        # @param SkipInfo: 跳过风险文案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipInfo: String

        attr_accessor :CheckItemName, :Description, :CheckResult, :FailureReason, :Solution, :ErrorLog, :HelpDoc, :SkipInfo
        
        def initialize(checkitemname=nil, description=nil, checkresult=nil, failurereason=nil, solution=nil, errorlog=nil, helpdoc=nil, skipinfo=nil)
          @CheckItemName = checkitemname
          @Description = description
          @CheckResult = checkresult
          @FailureReason = failurereason
          @Solution = solution
          @ErrorLog = errorlog
          @HelpDoc = helpdoc
          @SkipInfo = skipinfo
        end

        def deserialize(params)
          @CheckItemName = params['CheckItemName']
          @Description = params['Description']
          @CheckResult = params['CheckResult']
          @FailureReason = params['FailureReason']
          @Solution = params['Solution']
          @ErrorLog = params['ErrorLog']
          @HelpDoc = params['HelpDoc']
          @SkipInfo = params['SkipInfo']
        end
      end

      # 数据不一致的表详情
      class DifferenceDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据不一致的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 校验不一致的表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              differenceitem_tmp = DifferenceItem.new
              differenceitem_tmp.deserialize(i)
              @Items << differenceitem_tmp
            end
          end
        end
      end

      # 校验不一致的表详情
      class DifferenceItem < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Db: String
        # @param Table: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Chunk: 分块号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Chunk: Integer
        # @param SrcItem: 源库数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcItem: String
        # @param DstItem: 目标库数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstItem: String
        # @param IndexName: 索引名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexName: String
        # @param LowerBoundary: 索引下边界
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowerBoundary: String
        # @param UpperBoundary: 索引上边界
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpperBoundary: String
        # @param CostTime: 对比消耗时间,单位为 ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Float
        # @param FinishedAt: 完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedAt: String

        attr_accessor :Db, :Table, :Chunk, :SrcItem, :DstItem, :IndexName, :LowerBoundary, :UpperBoundary, :CostTime, :FinishedAt
        
        def initialize(db=nil, table=nil, chunk=nil, srcitem=nil, dstitem=nil, indexname=nil, lowerboundary=nil, upperboundary=nil, costtime=nil, finishedat=nil)
          @Db = db
          @Table = table
          @Chunk = chunk
          @SrcItem = srcitem
          @DstItem = dstitem
          @IndexName = indexname
          @LowerBoundary = lowerboundary
          @UpperBoundary = upperboundary
          @CostTime = costtime
          @FinishedAt = finishedat
        end

        def deserialize(params)
          @Db = params['Db']
          @Table = params['Table']
          @Chunk = params['Chunk']
          @SrcItem = params['SrcItem']
          @DstItem = params['DstItem']
          @IndexName = params['IndexName']
          @LowerBoundary = params['LowerBoundary']
          @UpperBoundary = params['UpperBoundary']
          @CostTime = params['CostTime']
          @FinishedAt = params['FinishedAt']
        end
      end

      # 数据同步中的描述源端和目的端的信息
      class Endpoint < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文名，如：ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param DbKernel: 数据库内核类型，tdsql中用于区分不同内核：percona,mariadb,mysql
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbKernel: String
        # @param InstanceId: 数据库实例ID，格式如：cdb-powiqx8q
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Ip: 实例的IP地址，接入类型为非cdb时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: 实例端口，接入类型为非cdb时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param User: 用户名，对于访问需要用户名密码认证的实例必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 密码，对于访问需要用户名密码认证的实例必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param DbName: 数据库名，数据库为cdwpg时，需要提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param VpcId: 私有网络ID，对于私有网络、专线、VPN的接入方式此项必填，格式如：vpc-92jblxto
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，对于私有网络、专线、VPN的接入方式此项必填，格式如：subnet-3paxmkdz
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param CvmInstanceId: CVM实例短ID，格式如：ins-olgl39y8，与云服务器控制台页面显示的实例ID相同。如果是CVM自建实例，需要传递此字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmInstanceId: String
        # @param UniqDcgId: 专线网关ID，对于专线接入类型此项必填，格式如：dcg-0rxtqqxb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqDcgId: String
        # @param UniqVpnGwId: VPN网关ID，对于vpn接入类型此项必填，格式如：vpngw-9ghexg7q
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpnGwId: String
        # @param CcnId: 云联网ID，对于云联网接入类型此项必填，如：ccn-afp6kltc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnId: String
        # @param Supplier: 云厂商类型，当实例为RDS实例时，填写为aliyun, 其他情况均填写others，默认为others
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Supplier: String
        # @param EngineVersion: 数据库版本，当实例为RDS实例时才有效，其他实例忽略，格式如：5.6或者5.7，默认为5.6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineVersion: String
        # @param AccountMode: 资源所属账号 为空或self(表示本账号内资源)、other(表示跨账号资源)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountMode: String
        # @param Account: 实例所属账号，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Account: String
        # @param AccountRole: 跨账号同步时的角色，只允许[a-zA-Z0-9\-\_]+，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountRole: String
        # @param TmpSecretId: 临时秘钥Id，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时秘钥Key，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param TmpToken: 临时Token，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpToken: String

        attr_accessor :Region, :DbKernel, :InstanceId, :Ip, :Port, :User, :Password, :DbName, :VpcId, :SubnetId, :CvmInstanceId, :UniqDcgId, :UniqVpnGwId, :CcnId, :Supplier, :EngineVersion, :AccountMode, :Account, :AccountRole, :TmpSecretId, :TmpSecretKey, :TmpToken
        
        def initialize(region=nil, dbkernel=nil, instanceid=nil, ip=nil, port=nil, user=nil, password=nil, dbname=nil, vpcid=nil, subnetid=nil, cvminstanceid=nil, uniqdcgid=nil, uniqvpngwid=nil, ccnid=nil, supplier=nil, engineversion=nil, accountmode=nil, account=nil, accountrole=nil, tmpsecretid=nil, tmpsecretkey=nil, tmptoken=nil)
          @Region = region
          @DbKernel = dbkernel
          @InstanceId = instanceid
          @Ip = ip
          @Port = port
          @User = user
          @Password = password
          @DbName = dbname
          @VpcId = vpcid
          @SubnetId = subnetid
          @CvmInstanceId = cvminstanceid
          @UniqDcgId = uniqdcgid
          @UniqVpnGwId = uniqvpngwid
          @CcnId = ccnid
          @Supplier = supplier
          @EngineVersion = engineversion
          @AccountMode = accountmode
          @Account = account
          @AccountRole = accountrole
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @TmpToken = tmptoken
        end

        def deserialize(params)
          @Region = params['Region']
          @DbKernel = params['DbKernel']
          @InstanceId = params['InstanceId']
          @Ip = params['Ip']
          @Port = params['Port']
          @User = params['User']
          @Password = params['Password']
          @DbName = params['DbName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CvmInstanceId = params['CvmInstanceId']
          @UniqDcgId = params['UniqDcgId']
          @UniqVpnGwId = params['UniqVpnGwId']
          @CcnId = params['CcnId']
          @Supplier = params['Supplier']
          @EngineVersion = params['EngineVersion']
          @AccountMode = params['AccountMode']
          @Account = params['Account']
          @AccountRole = params['AccountRole']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @TmpToken = params['TmpToken']
        end
      end

      # 任务错误信息
      class ErrorInfoItem < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param ErrorLog: 错误日志信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLog: String
        # @param HelpDoc: 文档提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HelpDoc: String

        attr_accessor :Code, :Solution, :ErrorLog, :HelpDoc
        
        def initialize(code=nil, solution=nil, errorlog=nil, helpdoc=nil)
          @Code = code
          @Solution = solution
          @ErrorLog = errorlog
          @HelpDoc = helpdoc
        end

        def deserialize(params)
          @Code = params['Code']
          @Solution = params['Solution']
          @ErrorLog = params['ErrorLog']
          @HelpDoc = params['HelpDoc']
        end
      end

      # IsolateMigrateJob请求参数结构体
      class IsolateMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # IsolateMigrateJob返回参数结构体
      class IsolateMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # IsolateSyncJob请求参数结构体
      class IsolateSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # IsolateSyncJob返回参数结构体
      class IsolateSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 迁移任务列表
      class JobItem < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param CreateTime: 任务创建(提交)时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param StartTime: 任务开始执行时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务执行结束时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param BriefMsg: 迁移任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefMsg: String
        # @param Status: 任务状态，取值为：creating(创建中)、created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RunMode: 任务运行模式，值包括：immediate(立即运行)，timed(定时运行)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunMode: String
        # @param ExpectRunTime: 期待启动时间，当RunMode取值为timed时，此值必填，形如：2022-07-11 16:20:49
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectRunTime: String
        # @param Action: 任务操作信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: :class:`Tencentcloud::Dts.v20211206.models.MigrateAction`
        # @param StepInfo: 迁移执行过程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfo: :class:`Tencentcloud::Dts.v20211206.models.MigrateDetailInfo`
        # @param SrcInfo: 源实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param DstInfo: 目标端信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param CompareTask: 数据一致性校验结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareTask: :class:`Tencentcloud::Dts.v20211206.models.CompareTaskInfo`
        # @param TradeInfo: 计费状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeInfo: :class:`Tencentcloud::Dts.v20211206.models.TradeInfo`
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :JobId, :JobName, :CreateTime, :UpdateTime, :StartTime, :EndTime, :BriefMsg, :Status, :RunMode, :ExpectRunTime, :Action, :StepInfo, :SrcInfo, :DstInfo, :CompareTask, :TradeInfo, :Tags
        
        def initialize(jobid=nil, jobname=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, briefmsg=nil, status=nil, runmode=nil, expectruntime=nil, action=nil, stepinfo=nil, srcinfo=nil, dstinfo=nil, comparetask=nil, tradeinfo=nil, tags=nil)
          @JobId = jobid
          @JobName = jobname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @BriefMsg = briefmsg
          @Status = status
          @RunMode = runmode
          @ExpectRunTime = expectruntime
          @Action = action
          @StepInfo = stepinfo
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @CompareTask = comparetask
          @TradeInfo = tradeinfo
          @Tags = tags
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BriefMsg = params['BriefMsg']
          @Status = params['Status']
          @RunMode = params['RunMode']
          @ExpectRunTime = params['ExpectRunTime']
          unless params['Action'].nil?
            @Action = MigrateAction.new
            @Action.deserialize(params['Action'])
          end
          unless params['StepInfo'].nil?
            @StepInfo = MigrateDetailInfo.new
            @StepInfo.deserialize(params['StepInfo'])
          end
          unless params['SrcInfo'].nil?
            @SrcInfo = DBEndpointInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['DstInfo'].nil?
            @DstInfo = DBEndpointInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          unless params['CompareTask'].nil?
            @CompareTask = CompareTaskInfo.new
            @CompareTask.deserialize(params['CompareTask'])
          end
          unless params['TradeInfo'].nil?
            @TradeInfo = TradeInfo.new
            @TradeInfo.deserialize(params['TradeInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
        end
      end

      # 存放配置时的额外信息
      class KeyValuePairOption < TencentCloud::Common::AbstractModel
        # @param Key: 选项key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 选项value
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

      # 任务操作信息，包含迁移任务的所有操作列表，及迁移任务在当前状态下允许的操作列表
      class MigrateAction < TencentCloud::Common::AbstractModel
        # @param AllAction: 任务的所有操作列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllAction: Array
        # @param AllowedAction: 任务在当前状态下允许的操作列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowedAction: Array

        attr_accessor :AllAction, :AllowedAction
        
        def initialize(allaction=nil, allowedaction=nil)
          @AllAction = allaction
          @AllowedAction = allowedaction
        end

        def deserialize(params)
          @AllAction = params['AllAction']
          @AllowedAction = params['AllowedAction']
        end
      end

      # 查询迁移实例列表的实例对象
      class MigrateDBItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Vip: 实例Vip
        # @type Vip: String
        # @param Vport: 实例Vport
        # @type Vport: Integer
        # @param Usable: 是否可以作为迁移对象，1-可以，0-不可以
        # @type Usable: Integer
        # @param Hint: 不可以作为迁移对象的原因
        # @type Hint: String

        attr_accessor :InstanceId, :InstanceName, :Vip, :Vport, :Usable, :Hint
        
        def initialize(instanceid=nil, instancename=nil, vip=nil, vport=nil, usable=nil, hint=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Vip = vip
          @Vport = vport
          @Usable = usable
          @Hint = hint
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Usable = params['Usable']
          @Hint = params['Hint']
        end
      end

      # 迁移执行过程信息
      class MigrateDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepAll: 总步骤数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepAll: Integer
        # @param StepNow: 当前步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNow: Integer
        # @param MasterSlaveDistance: 主从差距，MB；只在任务正常，迁移或者同步的最后一步（追Binlog的阶段才有校），如果是非法值，返回-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterSlaveDistance: Integer
        # @param SecondsBehindMaster: 主从差距，秒；只在任务正常，迁移或者同步的最后一步（追Binlog的阶段才有校），如果是非法值，返回-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondsBehindMaster: Integer
        # @param StepInfo: 步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfo: Array

        attr_accessor :StepAll, :StepNow, :MasterSlaveDistance, :SecondsBehindMaster, :StepInfo
        
        def initialize(stepall=nil, stepnow=nil, masterslavedistance=nil, secondsbehindmaster=nil, stepinfo=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @MasterSlaveDistance = masterslavedistance
          @SecondsBehindMaster = secondsbehindmaster
          @StepInfo = stepinfo
        end

        def deserialize(params)
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @MasterSlaveDistance = params['MasterSlaveDistance']
          @SecondsBehindMaster = params['SecondsBehindMaster']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              stepdetailinfo_tmp = StepDetailInfo.new
              stepdetailinfo_tmp.deserialize(i)
              @StepInfo << stepdetailinfo_tmp
            end
          end
        end
      end

      # 迁移选项，描述任务如何执行迁移等一系列配置信息
      class MigrateOption < TencentCloud::Common::AbstractModel
        # @param DatabaseTable: 迁移对象选项，需要告知迁移服务迁移哪些库表对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseTable: :class:`Tencentcloud::Dts.v20211206.models.DatabaseTableObject`
        # @param MigrateType: 迁移类型，full(全量迁移)，structure(结构迁移)，fullAndIncrement(全量加增量迁移)， 默认为fullAndIncrement
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrateType: String
        # @param Consistency: 数据一致性校验选项， 默认为不开启一致性校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Consistency: :class:`Tencentcloud::Dts.v20211206.models.ConsistencyOption`
        # @param IsMigrateAccount: 是否迁移账号，yes(迁移账号)，no(不迁移账号)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMigrateAccount: Boolean
        # @param IsOverrideRoot: 是否用源库Root账户覆盖目标库，值包括：false-不覆盖，true-覆盖，选择库表或者结构迁移时应该为false，注意只对旧版迁移有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOverrideRoot: Boolean
        # @param IsDstReadOnly: 是否在迁移时设置目标库只读(仅对mysql有效)，true(设置只读)、false(不设置只读，默认此值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDstReadOnly: Boolean
        # @param ExtraAttr: 其他附加信息，对于特定库可设置额外参数，Redis可定义如下的参数:
        # ["ClientOutputBufferHardLimit":512, 	从机缓冲区的硬性容量限制(MB) 	"ClientOutputBufferSoftLimit":512, 	从机缓冲区的软性容量限制(MB) 	"ClientOutputBufferPersistTime":60, 从机缓冲区的软性限制持续时间(秒) 	"ReplBacklogSize":512, 	环形缓冲区容量限制(MB) 	"ReplTimeout":120，		复制超时时间(秒) ]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttr: Array

        attr_accessor :DatabaseTable, :MigrateType, :Consistency, :IsMigrateAccount, :IsOverrideRoot, :IsDstReadOnly, :ExtraAttr
        
        def initialize(databasetable=nil, migratetype=nil, consistency=nil, ismigrateaccount=nil, isoverrideroot=nil, isdstreadonly=nil, extraattr=nil)
          @DatabaseTable = databasetable
          @MigrateType = migratetype
          @Consistency = consistency
          @IsMigrateAccount = ismigrateaccount
          @IsOverrideRoot = isoverrideroot
          @IsDstReadOnly = isdstreadonly
          @ExtraAttr = extraattr
        end

        def deserialize(params)
          unless params['DatabaseTable'].nil?
            @DatabaseTable = DatabaseTableObject.new
            @DatabaseTable.deserialize(params['DatabaseTable'])
          end
          @MigrateType = params['MigrateType']
          unless params['Consistency'].nil?
            @Consistency = ConsistencyOption.new
            @Consistency.deserialize(params['Consistency'])
          end
          @IsMigrateAccount = params['IsMigrateAccount']
          @IsOverrideRoot = params['IsOverrideRoot']
          @IsDstReadOnly = params['IsDstReadOnly']
          unless params['ExtraAttr'].nil?
            @ExtraAttr = []
            params['ExtraAttr'].each do |i|
              keyvaluepairoption_tmp = KeyValuePairOption.new
              keyvaluepairoption_tmp.deserialize(i)
              @ExtraAttr << keyvaluepairoption_tmp
            end
          end
        end
      end

      # ModifyCompareTaskName请求参数结构体
      class ModifyCompareTaskNameRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String
        # @param TaskName: 一致性校验任务名称
        # @type TaskName: String

        attr_accessor :JobId, :CompareTaskId, :TaskName
        
        def initialize(jobid=nil, comparetaskid=nil, taskname=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
          @TaskName = taskname
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
          @TaskName = params['TaskName']
        end
      end

      # ModifyCompareTaskName返回参数结构体
      class ModifyCompareTaskNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCompareTask请求参数结构体
      class ModifyCompareTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ObjectMode: 数据对比对象模式，sameAsMigrate(全部迁移对象， **默认为此项配置**)，custom(自定义模式)
        # @type ObjectMode: String
        # @param Objects: 对比对象，若CompareObjectMode取值为custom，则此项必填
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`

        attr_accessor :JobId, :CompareTaskId, :TaskName, :ObjectMode, :Objects
        
        def initialize(jobid=nil, comparetaskid=nil, taskname=nil, objectmode=nil, objects=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
          @TaskName = taskname
          @ObjectMode = objectmode
          @Objects = objects
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
          @TaskName = params['TaskName']
          @ObjectMode = params['ObjectMode']
          unless params['Objects'].nil?
            @Objects = CompareObject.new
            @Objects.deserialize(params['Objects'])
          end
        end
      end

      # ModifyCompareTask返回参数结构体
      class ModifyCompareTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrateJobSpec请求参数结构体
      class ModifyMigrateJobSpecRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String
        # @param NewInstanceClass: 新实例规格大小，包括：micro、small、medium、large、xlarge、2xlarge
        # @type NewInstanceClass: String

        attr_accessor :JobId, :NewInstanceClass
        
        def initialize(jobid=nil, newinstanceclass=nil)
          @JobId = jobid
          @NewInstanceClass = newinstanceclass
        end

        def deserialize(params)
          @JobId = params['JobId']
          @NewInstanceClass = params['NewInstanceClass']
        end
      end

      # ModifyMigrateJobSpec返回参数结构体
      class ModifyMigrateJobSpecResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrateName请求参数结构体
      class ModifyMigrateNameRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务id
        # @type JobId: String
        # @param JobName: 修改后的迁移任务名
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

      # ModifyMigrateName返回参数结构体
      class ModifyMigrateNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrationJob请求参数结构体
      class ModifyMigrationJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String
        # @param RunMode: 运行模式，取值如：immediate(表示立即运行)、timed(表示定时运行)
        # @type RunMode: String
        # @param MigrateOption: 迁移任务配置选项，描述任务如何执行迁移等一系列配置信息
        # @type MigrateOption: :class:`Tencentcloud::Dts.v20211206.models.MigrateOption`
        # @param SrcInfo: 源实例信息
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param DstInfo: 目标实例信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.DBEndpointInfo`
        # @param JobName: 迁移任务名称，最大长度128
        # @type JobName: String
        # @param ExpectRunTime: 期待启动时间，当RunMode取值为timed时，此值必填，形如："2006-01-02 15:04:05"
        # @type ExpectRunTime: String
        # @param Tags: 标签信息
        # @type Tags: Array

        attr_accessor :JobId, :RunMode, :MigrateOption, :SrcInfo, :DstInfo, :JobName, :ExpectRunTime, :Tags
        
        def initialize(jobid=nil, runmode=nil, migrateoption=nil, srcinfo=nil, dstinfo=nil, jobname=nil, expectruntime=nil, tags=nil)
          @JobId = jobid
          @RunMode = runmode
          @MigrateOption = migrateoption
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @JobName = jobname
          @ExpectRunTime = expectruntime
          @Tags = tags
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RunMode = params['RunMode']
          unless params['MigrateOption'].nil?
            @MigrateOption = MigrateOption.new
            @MigrateOption.deserialize(params['MigrateOption'])
          end
          unless params['SrcInfo'].nil?
            @SrcInfo = DBEndpointInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['DstInfo'].nil?
            @DstInfo = DBEndpointInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          @JobName = params['JobName']
          @ExpectRunTime = params['ExpectRunTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
        end
      end

      # ModifyMigrationJob返回参数结构体
      class ModifyMigrationJobResponse < TencentCloud::Common::AbstractModel
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

      # 同步的数据库对对象描述
      class Objects < TencentCloud::Common::AbstractModel
        # @param Mode: 迁移对象类型 Partial(部分对象)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Databases: 同步对象，当 Mode 为 Partial 时，不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param AdvancedObjects: 高级对象类型，如function、procedure，当需要同步高级对象时，初始化类型必须包含结构初始化类型，即Options.InitType字段值为Structure或Full
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedObjects: Array

        attr_accessor :Mode, :Databases, :AdvancedObjects
        
        def initialize(mode=nil, databases=nil, advancedobjects=nil)
          @Mode = mode
          @Databases = databases
          @AdvancedObjects = advancedobjects
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              database_tmp = Database.new
              database_tmp.deserialize(i)
              @Databases << database_tmp
            end
          end
          @AdvancedObjects = params['AdvancedObjects']
        end
      end

      # 数据同步中的选项
      class Options < TencentCloud::Common::AbstractModel
        # @param InitType: 同步初始化选项，Data(全量数据初始化)、Structure(结构初始化)、Full(全量数据且结构初始化，默认)、None(仅增量)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitType: String
        # @param DealOfExistSameTable: 同名表的处理，ReportErrorAfterCheck(前置校验并报错，默认)、InitializeAfterDelete(删除并重新初始化)、ExecuteAfterIgnore(忽略并继续执行)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealOfExistSameTable: String
        # @param ConflictHandleType: 冲突处理选项，ReportError(报错，默认为该值)、Ignore(忽略)、Cover(覆盖)、ConditionCover(条件覆盖)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictHandleType: String
        # @param AddAdditionalColumn: 是否添加附加列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddAdditionalColumn: Boolean
        # @param OpTypes: 所要同步的DML和DDL的选项，Insert(插入操作)、Update(更新操作)、Delete(删除操作)、DDL(结构同步)， 不填（不选），PartialDDL(自定义,和DdlOptions一起起作用 )
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpTypes: Array
        # @param ConflictHandleOption: 冲突处理的详细选项，如条件覆盖中的条件行和条件操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictHandleOption: :class:`Tencentcloud::Dts.v20211206.models.ConflictHandleOption`
        # @param DdlOptions: DDL同步选项，具体描述要同步那些DDL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdlOptions: Array

        attr_accessor :InitType, :DealOfExistSameTable, :ConflictHandleType, :AddAdditionalColumn, :OpTypes, :ConflictHandleOption, :DdlOptions
        
        def initialize(inittype=nil, dealofexistsametable=nil, conflicthandletype=nil, addadditionalcolumn=nil, optypes=nil, conflicthandleoption=nil, ddloptions=nil)
          @InitType = inittype
          @DealOfExistSameTable = dealofexistsametable
          @ConflictHandleType = conflicthandletype
          @AddAdditionalColumn = addadditionalcolumn
          @OpTypes = optypes
          @ConflictHandleOption = conflicthandleoption
          @DdlOptions = ddloptions
        end

        def deserialize(params)
          @InitType = params['InitType']
          @DealOfExistSameTable = params['DealOfExistSameTable']
          @ConflictHandleType = params['ConflictHandleType']
          @AddAdditionalColumn = params['AddAdditionalColumn']
          @OpTypes = params['OpTypes']
          unless params['ConflictHandleOption'].nil?
            @ConflictHandleOption = ConflictHandleOption.new
            @ConflictHandleOption.deserialize(params['ConflictHandleOption'])
          end
          unless params['DdlOptions'].nil?
            @DdlOptions = []
            params['DdlOptions'].each do |i|
              ddloption_tmp = DdlOption.new
              ddloption_tmp.deserialize(i)
              @DdlOptions << ddloption_tmp
            end
          end
        end
      end

      # 任务步骤信息
      class ProcessProgress < TencentCloud::Common::AbstractModel
        # @param Status: 步骤的状态， 包括：notStarted(未开始)、running(运行中)、success(成功)、failed(失败)等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Percent: 进度信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param StepAll: 总的步骤数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepAll: Integer
        # @param StepNow: 当前进行的步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNow: Integer
        # @param Message: 当前步骤输出提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Steps: 步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Steps: Array

        attr_accessor :Status, :Percent, :StepAll, :StepNow, :Message, :Steps
        
        def initialize(status=nil, percent=nil, stepall=nil, stepnow=nil, message=nil, steps=nil)
          @Status = status
          @Percent = percent
          @StepAll = stepall
          @StepNow = stepnow
          @Message = message
          @Steps = steps
        end

        def deserialize(params)
          @Status = params['Status']
          @Percent = params['Percent']
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @Message = params['Message']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              stepdetailinfo_tmp = StepDetailInfo.new
              stepdetailinfo_tmp.deserialize(i)
              @Steps << stepdetailinfo_tmp
            end
          end
        end
      end

      # 错误信息及告警信息对象
      class ProcessStepTip < TencentCloud::Common::AbstractModel
        # @param Message: 提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param HelpDoc: 文档提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HelpDoc: String

        attr_accessor :Message, :Solution, :HelpDoc
        
        def initialize(message=nil, solution=nil, helpdoc=nil)
          @Message = message
          @Solution = solution
          @HelpDoc = helpdoc
        end

        def deserialize(params)
          @Message = params['Message']
          @Solution = params['Solution']
          @HelpDoc = params['HelpDoc']
        end
      end

      # RecoverMigrateJob请求参数结构体
      class RecoverMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # RecoverMigrateJob返回参数结构体
      class RecoverMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # RecoverSyncJob请求参数结构体
      class RecoverSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步实例id（即标识一个同步作业），形如sync-werwfs23
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # RecoverSyncJob返回参数结构体
      class RecoverSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # ResizeSyncJob请求参数结构体
      class ResizeSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String
        # @param NewInstanceClass: 任务规格
        # @type NewInstanceClass: String

        attr_accessor :JobId, :NewInstanceClass
        
        def initialize(jobid=nil, newinstanceclass=nil)
          @JobId = jobid
          @NewInstanceClass = newinstanceclass
        end

        def deserialize(params)
          @JobId = params['JobId']
          @NewInstanceClass = params['NewInstanceClass']
        end
      end

      # ResizeSyncJob返回参数结构体
      class ResizeSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # ResumeMigrateJob请求参数结构体
      class ResumeMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param ResumeOption: 恢复任务的模式，目前的取值有：clearData 清空目标实例数据，overwrite 以覆盖写的方式执行任务，normal 跟正常流程一样，不做额外动作
        # @type ResumeOption: String

        attr_accessor :JobId, :ResumeOption
        
        def initialize(jobid=nil, resumeoption=nil)
          @JobId = jobid
          @ResumeOption = resumeoption
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ResumeOption = params['ResumeOption']
        end
      end

      # ResumeMigrateJob返回参数结构体
      class ResumeMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # ResumeSyncJob请求参数结构体
      class ResumeSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # ResumeSyncJob返回参数结构体
      class ResumeSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 角色对象，postgresql独有参数
      class RoleItem < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param NewRoleName: 迁移后的角色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewRoleName: String

        attr_accessor :RoleName, :NewRoleName
        
        def initialize(rolename=nil, newrolename=nil)
          @RoleName = rolename
          @NewRoleName = newrolename
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @NewRoleName = params['NewRoleName']
        end
      end

      # 跳过校验的表详情
      class SkippedDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 跳过的表数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 跳过校验的表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :TotalCount, :Items
        
        def initialize(totalcount=nil, items=nil)
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              skippeditem_tmp = SkippedItem.new
              skippeditem_tmp.deserialize(i)
              @Items << skippeditem_tmp
            end
          end
        end
      end

      # 跳过校验的表详情
      class SkippedItem < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Db: String
        # @param Table: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Reason: 未发起检查的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :Db, :Table, :Reason
        
        def initialize(db=nil, table=nil, reason=nil)
          @Db = db
          @Table = table
          @Reason = reason
        end

        def deserialize(params)
          @Db = params['Db']
          @Table = params['Table']
          @Reason = params['Reason']
        end
      end

      # StartCompare请求参数结构体
      class StartCompareRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String

        attr_accessor :JobId, :CompareTaskId
        
        def initialize(jobid=nil, comparetaskid=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
        end
      end

      # StartCompare返回参数结构体
      class StartCompareResponse < TencentCloud::Common::AbstractModel
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

      # StartMigrateJob请求参数结构体
      class StartMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StartMigrateJob返回参数结构体
      class StartMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # StartSyncJob请求参数结构体
      class StartSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StartSyncJob返回参数结构体
      class StartSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 步骤信息
      class StepDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤序列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNo: Integer
        # @param StepName: 步骤展现名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepName: String
        # @param StepId: 步骤英文标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepId: String
        # @param Status: 步骤状态:success(成功)、failed(失败)、running(执行中)、notStarted(未执行)、默认为notStarted
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: 当前步骤开始的时间，格式为"yyyy-mm-dd hh:mm:ss"，该字段不存在或者为空是无意义 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param StepMessage: 步骤错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepMessage: String
        # @param Percent: 执行进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param Errors: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param Warnings: 告警提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warnings: Array

        attr_accessor :StepNo, :StepName, :StepId, :Status, :StartTime, :StepMessage, :Percent, :Errors, :Warnings
        
        def initialize(stepno=nil, stepname=nil, stepid=nil, status=nil, starttime=nil, stepmessage=nil, percent=nil, errors=nil, warnings=nil)
          @StepNo = stepno
          @StepName = stepname
          @StepId = stepid
          @Status = status
          @StartTime = starttime
          @StepMessage = stepmessage
          @Percent = percent
          @Errors = errors
          @Warnings = warnings
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @StepId = params['StepId']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @StepMessage = params['StepMessage']
          @Percent = params['Percent']
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              processsteptip_tmp = ProcessStepTip.new
              processsteptip_tmp.deserialize(i)
              @Errors << processsteptip_tmp
            end
          end
          unless params['Warnings'].nil?
            @Warnings = []
            params['Warnings'].each do |i|
              processsteptip_tmp = ProcessStepTip.new
              processsteptip_tmp.deserialize(i)
              @Warnings << processsteptip_tmp
            end
          end
        end
      end

      # 单个步骤的详细信息
      class StepInfo < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNo: Integer
        # @param StepName: 步骤名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepName: String
        # @param StepId: 步骤标号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepId: String
        # @param Status: 当前状态，是否完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: 步骤开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param Errors: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param Warnings: 警告信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warnings: Array
        # @param Progress: 当前步骤进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer

        attr_accessor :StepNo, :StepName, :StepId, :Status, :StartTime, :Errors, :Warnings, :Progress
        
        def initialize(stepno=nil, stepname=nil, stepid=nil, status=nil, starttime=nil, errors=nil, warnings=nil, progress=nil)
          @StepNo = stepno
          @StepName = stepname
          @StepId = stepid
          @Status = status
          @StartTime = starttime
          @Errors = errors
          @Warnings = warnings
          @Progress = progress
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @StepId = params['StepId']
          @Status = params['Status']
          @StartTime = params['StartTime']
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              steptip_tmp = StepTip.new
              steptip_tmp.deserialize(i)
              @Errors << steptip_tmp
            end
          end
          unless params['Warnings'].nil?
            @Warnings = []
            params['Warnings'].each do |i|
              steptip_tmp = StepTip.new
              steptip_tmp.deserialize(i)
              @Warnings << steptip_tmp
            end
          end
          @Progress = params['Progress']
        end
      end

      # 当前步骤错误信息或者警告信息
      class StepTip < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Solution: 解决方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param HelpDoc: 帮助文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HelpDoc: String

        attr_accessor :Code, :Message, :Solution, :HelpDoc
        
        def initialize(code=nil, message=nil, solution=nil, helpdoc=nil)
          @Code = code
          @Message = message
          @Solution = solution
          @HelpDoc = helpdoc
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Solution = params['Solution']
          @HelpDoc = params['HelpDoc']
        end
      end

      # StopCompare请求参数结构体
      class StopCompareRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String

        attr_accessor :JobId, :CompareTaskId
        
        def initialize(jobid=nil, comparetaskid=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompareTaskId = params['CompareTaskId']
        end
      end

      # StopCompare返回参数结构体
      class StopCompareResponse < TencentCloud::Common::AbstractModel
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

      # StopMigrateJob请求参数结构体
      class StopMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StopMigrateJob返回参数结构体
      class StopMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # StopSyncJob请求参数结构体
      class StopSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StopSyncJob返回参数结构体
      class StopSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # 同步任务的步骤信息
      class SyncDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepAll: 总步骤数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepAll: Integer
        # @param StepNow: 当前步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNow: Integer
        # @param Progress: 总体进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param CurrentStepProgress: 当前步骤进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentStepProgress: Integer
        # @param MasterSlaveDistance: 同步两端数据量差距
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterSlaveDistance: Integer
        # @param SecondsBehindMaster: 同步两端时间差距
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondsBehindMaster: Integer
        # @param Message: 总体描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param StepInfos: 详细步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfos: Array

        attr_accessor :StepAll, :StepNow, :Progress, :CurrentStepProgress, :MasterSlaveDistance, :SecondsBehindMaster, :Message, :StepInfos
        
        def initialize(stepall=nil, stepnow=nil, progress=nil, currentstepprogress=nil, masterslavedistance=nil, secondsbehindmaster=nil, message=nil, stepinfos=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @Progress = progress
          @CurrentStepProgress = currentstepprogress
          @MasterSlaveDistance = masterslavedistance
          @SecondsBehindMaster = secondsbehindmaster
          @Message = message
          @StepInfos = stepinfos
        end

        def deserialize(params)
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @Progress = params['Progress']
          @CurrentStepProgress = params['CurrentStepProgress']
          @MasterSlaveDistance = params['MasterSlaveDistance']
          @SecondsBehindMaster = params['SecondsBehindMaster']
          @Message = params['Message']
          unless params['StepInfos'].nil?
            @StepInfos = []
            params['StepInfos'].each do |i|
              stepinfo_tmp = StepInfo.new
              stepinfo_tmp.deserialize(i)
              @StepInfos << stepinfo_tmp
            end
          end
        end
      end

      # 同步任务信息
      class SyncJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 同步任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param PayMode: 付款方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param RunMode: 运行模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunMode: String
        # @param ExpectRunTime: 期待运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectRunTime: String
        # @param AllActions: 支持的所有操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllActions: Array
        # @param Actions: 当前状态能进行的操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Actions: Array
        # @param Options: 同步选项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.Options`
        # @param Objects: 同步库表对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.Objects`
        # @param Specification: 任务规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Specification: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param SrcRegion: 源端地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcRegion: String
        # @param SrcDatabaseType: 源端数据库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcDatabaseType: String
        # @param SrcAccessType: 源端接入类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcAccessType: String
        # @param SrcInfo: 源端信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param DstRegion: 目标端地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstRegion: String
        # @param DstDatabaseType: 目标端数据库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstDatabaseType: String
        # @param DstAccessType: 目标端接入类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstAccessType: String
        # @param DstInfo: 目标端信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Tags: 标签相关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Detail: 同步任务运行步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Dts.v20211206.models.SyncDetailInfo`

        attr_accessor :JobId, :JobName, :PayMode, :RunMode, :ExpectRunTime, :AllActions, :Actions, :Options, :Objects, :Specification, :ExpireTime, :SrcRegion, :SrcDatabaseType, :SrcAccessType, :SrcInfo, :DstRegion, :DstDatabaseType, :DstAccessType, :DstInfo, :CreateTime, :StartTime, :EndTime, :Status, :Tags, :Detail
        
        def initialize(jobid=nil, jobname=nil, paymode=nil, runmode=nil, expectruntime=nil, allactions=nil, actions=nil, options=nil, objects=nil, specification=nil, expiretime=nil, srcregion=nil, srcdatabasetype=nil, srcaccesstype=nil, srcinfo=nil, dstregion=nil, dstdatabasetype=nil, dstaccesstype=nil, dstinfo=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, tags=nil, detail=nil)
          @JobId = jobid
          @JobName = jobname
          @PayMode = paymode
          @RunMode = runmode
          @ExpectRunTime = expectruntime
          @AllActions = allactions
          @Actions = actions
          @Options = options
          @Objects = objects
          @Specification = specification
          @ExpireTime = expiretime
          @SrcRegion = srcregion
          @SrcDatabaseType = srcdatabasetype
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstRegion = dstregion
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Tags = tags
          @Detail = detail
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @PayMode = params['PayMode']
          @RunMode = params['RunMode']
          @ExpectRunTime = params['ExpectRunTime']
          @AllActions = params['AllActions']
          @Actions = params['Actions']
          unless params['Options'].nil?
            @Options = Options.new
            @Options.deserialize(params['Options'])
          end
          unless params['Objects'].nil?
            @Objects = Objects.new
            @Objects.deserialize(params['Objects'])
          end
          @Specification = params['Specification']
          @ExpireTime = params['ExpireTime']
          @SrcRegion = params['SrcRegion']
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = Endpoint.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          @DstRegion = params['DstRegion']
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = Endpoint.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          unless params['Detail'].nil?
            @Detail = SyncDetailInfo.new
            @Detail.deserialize(params['Detail'])
          end
        end
      end

      # 数据同步库表信息描述
      class Table < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param NewTableName: 新表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewTableName: String
        # @param FilterCondition: 过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterCondition: String

        attr_accessor :TableName, :NewTableName, :FilterCondition
        
        def initialize(tablename=nil, newtablename=nil, filtercondition=nil)
          @TableName = tablename
          @NewTableName = newtablename
          @FilterCondition = filtercondition
        end

        def deserialize(params)
          @TableName = params['TableName']
          @NewTableName = params['NewTableName']
          @FilterCondition = params['FilterCondition']
        end
      end

      # 表图对象集合，当 TableMode 为 partial 时，此项需要填写
      class TableItem < TencentCloud::Common::AbstractModel
        # @param TableName: 迁移的表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param NewTableName: 迁移后的表名，当TableEditMode为rename时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewTableName: String
        # @param TmpTables: 迁移临时表，针对pt-osc等工具在迁移过程中产生的临时表同步，需要提前将可能的临时表配置在这里，当TableEditMode为pt时此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpTables: Array
        # @param TableEditMode: 编辑表类型，rename(表映射)，pt(同步附加表)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableEditMode: String

        attr_accessor :TableName, :NewTableName, :TmpTables, :TableEditMode
        
        def initialize(tablename=nil, newtablename=nil, tmptables=nil, tableeditmode=nil)
          @TableName = tablename
          @NewTableName = newtablename
          @TmpTables = tmptables
          @TableEditMode = tableeditmode
        end

        def deserialize(params)
          @TableName = params['TableName']
          @NewTableName = params['NewTableName']
          @TmpTables = params['TmpTables']
          @TableEditMode = params['TableEditMode']
        end
      end

      # 标签过滤
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键值
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

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

      # 标签
      class TagItem < TencentCloud::Common::AbstractModel
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

      # 计费状态信息
      class TradeInfo < TencentCloud::Common::AbstractModel
        # @param DealName: 交易订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param LastDealName: 上一次交易订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastDealName: String
        # @param InstanceClass: 实例规格，包括：micro、small、medium、large、xlarge、2xlarge等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceClass: String
        # @param TradeStatus: 计费任务状态， normal(计费或待计费)、resizing(变配中)、reversing(冲正中，比较短暂的状态)、isolating(隔离中，比较短暂的状态)、isolated(已隔离)、offlining(下线中)、offlined(已下线)、notBilled(未计费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeStatus: String
        # @param ExpireTime: 到期时间，格式为"yyyy-mm-dd hh:mm:ss"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param OfflineTime: 下线时间，格式为"yyyy-mm-dd hh:mm:ss"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param IsolateTime: 隔离时间，格式为"yyyy-mm-dd hh:mm:ss"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String
        # @param OfflineReason: 下线原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineReason: String
        # @param IsolateReason: 隔离原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateReason: String
        # @param PayType: 付费类型，包括：postpay(后付费)、prepay(预付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayType: String
        # @param BillingType: 任务计费类型，包括：billing(计费)、notBilling(不计费)、 promotions(促销活动中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingType: String

        attr_accessor :DealName, :LastDealName, :InstanceClass, :TradeStatus, :ExpireTime, :OfflineTime, :IsolateTime, :OfflineReason, :IsolateReason, :PayType, :BillingType
        
        def initialize(dealname=nil, lastdealname=nil, instanceclass=nil, tradestatus=nil, expiretime=nil, offlinetime=nil, isolatetime=nil, offlinereason=nil, isolatereason=nil, paytype=nil, billingtype=nil)
          @DealName = dealname
          @LastDealName = lastdealname
          @InstanceClass = instanceclass
          @TradeStatus = tradestatus
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @IsolateTime = isolatetime
          @OfflineReason = offlinereason
          @IsolateReason = isolatereason
          @PayType = paytype
          @BillingType = billingtype
        end

        def deserialize(params)
          @DealName = params['DealName']
          @LastDealName = params['LastDealName']
          @InstanceClass = params['InstanceClass']
          @TradeStatus = params['TradeStatus']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @IsolateTime = params['IsolateTime']
          @OfflineReason = params['OfflineReason']
          @IsolateReason = params['IsolateReason']
          @PayType = params['PayType']
          @BillingType = params['BillingType']
        end
      end

      # 数据同步view的描述
      class View < TencentCloud::Common::AbstractModel
        # @param ViewName: view名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewName: String
        # @param NewViewName: 新view名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewViewName: String

        attr_accessor :ViewName, :NewViewName
        
        def initialize(viewname=nil, newviewname=nil)
          @ViewName = viewname
          @NewViewName = newviewname
        end

        def deserialize(params)
          @ViewName = params['ViewName']
          @NewViewName = params['NewViewName']
        end
      end

      # 视图对象
      class ViewItem < TencentCloud::Common::AbstractModel
        # @param ViewName: 视图名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewName: String
        # @param NewViewName: 迁移后的视图名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewViewName: String

        attr_accessor :ViewName, :NewViewName
        
        def initialize(viewname=nil, newviewname=nil)
          @ViewName = viewname
          @NewViewName = newviewname
        end

        def deserialize(params)
          @ViewName = params['ViewName']
          @NewViewName = params['NewViewName']
        end
      end

    end
  end
end

