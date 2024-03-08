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
      # 数据库不一致的详情，mongodb业务用到
      class AdvancedObjectsItem < TencentCloud::Common::AbstractModel
        # @param ObjectType: 对象类型,可能得值有：account,index,shardkey,schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectType: String
        # @param SrcChunk: 源端分块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcChunk: String
        # @param DstChunk: 目标端分块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstChunk: String
        # @param SrcItem: 源端值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcItem: String
        # @param DstItem: 目标端值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstItem: String

        attr_accessor :ObjectType, :SrcChunk, :DstChunk, :SrcItem, :DstItem

        def initialize(objecttype=nil, srcchunk=nil, dstchunk=nil, srcitem=nil, dstitem=nil)
          @ObjectType = objecttype
          @SrcChunk = srcchunk
          @DstChunk = dstchunk
          @SrcItem = srcitem
          @DstItem = dstitem
        end

        def deserialize(params)
          @ObjectType = params['ObjectType']
          @SrcChunk = params['SrcChunk']
          @DstChunk = params['DstChunk']
          @SrcItem = params['SrcItem']
          @DstItem = params['DstItem']
        end
      end

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

      # 数据同步中的列信息
      class Column < TencentCloud::Common::AbstractModel
        # @param ColumnName: 列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnName: String
        # @param NewColumnName: 新列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewColumnName: String

        attr_accessor :ColumnName, :NewColumnName

        def initialize(columnname=nil, newcolumnname=nil)
          @ColumnName = columnname
          @NewColumnName = newcolumnname
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
          @NewColumnName = params['NewColumnName']
        end
      end

      # 一致性校验摘要信息
      class CompareAbstractInfo < TencentCloud::Common::AbstractModel
        # @param Options: 校验配置参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.CompareOptions`
        # @param Objects: 一致性校验对比对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`
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
        # @param NearlyTableCount: 预估表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NearlyTableCount: Integer
        # @param DifferentRows: 不一致的数据行数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferentRows: Integer
        # @param SrcSampleRows: 源库行数，当对比类型为**行数对比**时此项有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcSampleRows: Integer
        # @param DstSampleRows: 目标库行数，当对比类型为**行数对比**时此项有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstSampleRows: Integer
        # @param StartedAt: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartedAt: String
        # @param FinishedAt: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedAt: String

        attr_accessor :Options, :Objects, :Conclusion, :Status, :TotalTables, :CheckedTables, :DifferentTables, :SkippedTables, :NearlyTableCount, :DifferentRows, :SrcSampleRows, :DstSampleRows, :StartedAt, :FinishedAt

        def initialize(options=nil, objects=nil, conclusion=nil, status=nil, totaltables=nil, checkedtables=nil, differenttables=nil, skippedtables=nil, nearlytablecount=nil, differentrows=nil, srcsamplerows=nil, dstsamplerows=nil, startedat=nil, finishedat=nil)
          @Options = options
          @Objects = objects
          @Conclusion = conclusion
          @Status = status
          @TotalTables = totaltables
          @CheckedTables = checkedtables
          @DifferentTables = differenttables
          @SkippedTables = skippedtables
          @NearlyTableCount = nearlytablecount
          @DifferentRows = differentrows
          @SrcSampleRows = srcsamplerows
          @DstSampleRows = dstsamplerows
          @StartedAt = startedat
          @FinishedAt = finishedat
        end

        def deserialize(params)
          unless params['Options'].nil?
            @Options = CompareOptions.new
            @Options.deserialize(params['Options'])
          end
          unless params['Objects'].nil?
            @Objects = CompareObject.new
            @Objects.deserialize(params['Objects'])
          end
          @Conclusion = params['Conclusion']
          @Status = params['Status']
          @TotalTables = params['TotalTables']
          @CheckedTables = params['CheckedTables']
          @DifferentTables = params['DifferentTables']
          @SkippedTables = params['SkippedTables']
          @NearlyTableCount = params['NearlyTableCount']
          @DifferentRows = params['DifferentRows']
          @SrcSampleRows = params['SrcSampleRows']
          @DstSampleRows = params['DstSampleRows']
          @StartedAt = params['StartedAt']
          @FinishedAt = params['FinishedAt']
        end
      end

      # 列选项
      class CompareColumnItem < TencentCloud::Common::AbstractModel
        # @param ColumnName: 列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnName: String

        attr_accessor :ColumnName

        def initialize(columnname=nil)
          @ColumnName = columnname
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
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
        # @param DifferenceAdvancedObjects: 数据库不一致的详情，mongodb业务用到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferenceAdvancedObjects: :class:`Tencentcloud::Dts.v20211206.models.DifferenceAdvancedObjectsDetail`
        # @param DifferenceData: 数据不一致的详情，mongodb业务用到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferenceData: :class:`Tencentcloud::Dts.v20211206.models.DifferenceDataDetail`
        # @param DifferenceRow: 数据行不一致的详情，mongodb业务用到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferenceRow: :class:`Tencentcloud::Dts.v20211206.models.DifferenceRowDetail`

        attr_accessor :Difference, :Skipped, :DifferenceAdvancedObjects, :DifferenceData, :DifferenceRow

        def initialize(difference=nil, skipped=nil, differenceadvancedobjects=nil, differencedata=nil, differencerow=nil)
          @Difference = difference
          @Skipped = skipped
          @DifferenceAdvancedObjects = differenceadvancedobjects
          @DifferenceData = differencedata
          @DifferenceRow = differencerow
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
          unless params['DifferenceAdvancedObjects'].nil?
            @DifferenceAdvancedObjects = DifferenceAdvancedObjectsDetail.new
            @DifferenceAdvancedObjects.deserialize(params['DifferenceAdvancedObjects'])
          end
          unless params['DifferenceData'].nil?
            @DifferenceData = DifferenceDataDetail.new
            @DifferenceData.deserialize(params['DifferenceData'])
          end
          unless params['DifferenceRow'].nil?
            @DifferenceRow = DifferenceRowDetail.new
            @DifferenceRow.deserialize(params['DifferenceRow'])
          end
        end
      end

      # 一致性对比对象配置
      class CompareObject < TencentCloud::Common::AbstractModel
        # @param ObjectMode: 对象模式 整实例-all,部分对象-partial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectMode: String
        # @param ObjectItems: 对象列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectItems: Array
        # @param AdvancedObjects: 高级对象类型，如account(账号),index(索引),shardkey(片键，后面可能会调整),schema(库表结构)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedObjects: Array

        attr_accessor :ObjectMode, :ObjectItems, :AdvancedObjects

        def initialize(objectmode=nil, objectitems=nil, advancedobjects=nil)
          @ObjectMode = objectmode
          @ObjectItems = objectitems
          @AdvancedObjects = advancedobjects
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
          @AdvancedObjects = params['AdvancedObjects']
        end
      end

      # 一致性校验库表对象
      class CompareObjectItem < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param DbMode: 数据库选择模式: all 为当前对象下的所有对象,partial 为部分对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param SchemaName: schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TableMode: 表选择模式: all 为当前对象下的所有表对象,partial 为部分表对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMode: String
        # @param Tables: 用于一致性校验的表配置，当 TableMode 为 partial 时，需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param ViewMode: 视图选择模式: all 为当前对象下的所有视图对象,partial 为部分视图对象(一致性校验不校验视图，当前参数未启作用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewMode: String
        # @param Views: 用于一致性校验的视图配置，当 ViewMode 为 partial 时， 需要填写(一致性校验不校验视图，当前参数未启作用)
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

      # 一致性校验选项
      class CompareOptions < TencentCloud::Common::AbstractModel
        # @param Method: 对比方式：dataCheck(完整数据对比)、sampleDataCheck(抽样数据对比)、rowsCount(行数对比)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param SampleRate: 抽样比例;范围0,100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleRate: Integer
        # @param ThreadCount: 线程数，取值1-5，默认为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThreadCount: Integer

        attr_accessor :Method, :SampleRate, :ThreadCount

        def initialize(method=nil, samplerate=nil, threadcount=nil)
          @Method = method
          @SampleRate = samplerate
          @ThreadCount = threadcount
        end

        def deserialize(params)
          @Method = params['Method']
          @SampleRate = params['SampleRate']
          @ThreadCount = params['ThreadCount']
        end
      end

      # 用于一致性校验的表配置
      class CompareTableItem < TencentCloud::Common::AbstractModel
        # @param TableName: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param ColumnMode: column 模式，all 为全部，partial 表示部分(该参数仅对数据同步任务有效)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnMode: String
        # @param Columns: 当 ColumnMode 为 partial 时必填(该参数仅对数据同步任务有效)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array

        attr_accessor :TableName, :ColumnMode, :Columns

        def initialize(tablename=nil, columnmode=nil, columns=nil)
          @TableName = tablename
          @ColumnMode = columnmode
          @Columns = columns
        end

        def deserialize(params)
          @TableName = params['TableName']
          @ColumnMode = params['ColumnMode']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              comparecolumnitem_tmp = CompareColumnItem.new
              comparecolumnitem_tmp.deserialize(i)
              @Columns << comparecolumnitem_tmp
            end
          end
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
        # @param JobId: 任务id
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
        # @param Method: 对比类型，dataCheck(完整数据对比)、sampleDataCheck(抽样数据对比)、rowsCount(行数对比)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Options: 对比配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.CompareOptions`
        # @param Message: 一致性校验提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :JobId, :CompareTaskId, :TaskName, :Status, :Config, :CheckProcess, :CompareProcess, :Conclusion, :CreatedAt, :StartedAt, :FinishedAt, :Method, :Options, :Message

        def initialize(jobid=nil, comparetaskid=nil, taskname=nil, status=nil, config=nil, checkprocess=nil, compareprocess=nil, conclusion=nil, createdat=nil, startedat=nil, finishedat=nil, method=nil, options=nil, message=nil)
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
          @Method = method
          @Options = options
          @Message = message
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
          @Method = params['Method']
          unless params['Options'].nil?
            @Options = CompareOptions.new
            @Options.deserialize(params['Options'])
          end
          @Message = params['Message']
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

      # ConfigureSubscribeJob请求参数结构体
      class ConfigureSubscribeJobRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String
        # @param SubscribeMode: 数据订阅的类型，当 DatabaseType 不为 mongodb 时，枚举值为：all-全实例更新；dml-数据更新；ddl-结构更新；dmlAndDdl-数据更新+结构更新。当 DatabaseType 为 mongodb 时，枚举值为 all-全实例更新；database-订阅单库；collection-订阅单集合
        # @type SubscribeMode: String
        # @param AccessType: 源数据库接入类型，如：extranet(公网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、cdb(云数据库)、cvm(云服务器自建)、intranet(自研上云)、vpc(私有网络vpc)。注意具体可选值依赖当前链路支持能力
        # @type AccessType: String
        # @param Endpoints: 数据库节点信息
        # @type Endpoints: Array
        # @param KafkaConfig: Kafka配置
        # @type KafkaConfig: :class:`Tencentcloud::Dts.v20211206.models.SubscribeKafkaConfig`
        # @param SubscribeObjects: 订阅的数据库表信息，当 SubscribeMode 不为 all和ddl 时，SubscribeObjects 为必选参数
        # @type SubscribeObjects: Array
        # @param Protocol: 订阅数据格式，如：protobuf、json、avro。注意具体可选值依赖当前链路支持能力，数据格式详情参考官网的消费demo文档
        # @type Protocol: String
        # @param PipelineInfo: mongo选填参数：输出聚合设置。
        # @type PipelineInfo: Array
        # @param ExtraAttr: 为业务添加的额外信息。参数名作key，参数值作value。
        # mysql选填参数：ProcessXA-是否处理XA事务，填true处理，不填或填其他值不处理。
        # mongo选填参数：SubscribeType-订阅类型，目前只支持changeStream，不填也是默认changeStream。
        # 其他业务暂没有可选参数。
        # @type ExtraAttr: Array

        attr_accessor :SubscribeId, :SubscribeMode, :AccessType, :Endpoints, :KafkaConfig, :SubscribeObjects, :Protocol, :PipelineInfo, :ExtraAttr

        def initialize(subscribeid=nil, subscribemode=nil, accesstype=nil, endpoints=nil, kafkaconfig=nil, subscribeobjects=nil, protocol=nil, pipelineinfo=nil, extraattr=nil)
          @SubscribeId = subscribeid
          @SubscribeMode = subscribemode
          @AccessType = accesstype
          @Endpoints = endpoints
          @KafkaConfig = kafkaconfig
          @SubscribeObjects = subscribeobjects
          @Protocol = protocol
          @PipelineInfo = pipelineinfo
          @ExtraAttr = extraattr
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeMode = params['SubscribeMode']
          @AccessType = params['AccessType']
          unless params['Endpoints'].nil?
            @Endpoints = []
            params['Endpoints'].each do |i|
              endpointitem_tmp = EndpointItem.new
              endpointitem_tmp.deserialize(i)
              @Endpoints << endpointitem_tmp
            end
          end
          unless params['KafkaConfig'].nil?
            @KafkaConfig = SubscribeKafkaConfig.new
            @KafkaConfig.deserialize(params['KafkaConfig'])
          end
          unless params['SubscribeObjects'].nil?
            @SubscribeObjects = []
            params['SubscribeObjects'].each do |i|
              subscribeobject_tmp = SubscribeObject.new
              subscribeobject_tmp.deserialize(i)
              @SubscribeObjects << subscribeobject_tmp
            end
          end
          @Protocol = params['Protocol']
          unless params['PipelineInfo'].nil?
            @PipelineInfo = []
            params['PipelineInfo'].each do |i|
              pipelineinfo_tmp = PipelineInfo.new
              pipelineinfo_tmp.deserialize(i)
              @PipelineInfo << pipelineinfo_tmp
            end
          end
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

      # ConfigureSubscribeJob返回参数结构体
      class ConfigureSubscribeJobResponse < TencentCloud::Common::AbstractModel
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
        # @param SrcAccessType: 源端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云),注意具体可选值依赖当前链路
        # @type SrcAccessType: String
        # @param DstAccessType: 目标端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)、ckafka(CKafka实例),注意具体可选值依赖当前链路
        # @type DstAccessType: String
        # @param Objects: 同步库表对象信息
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.Objects`
        # @param JobName: 同步任务名称
        # @type JobName: String
        # @param JobMode: 枚举值是 liteMode 和 fullMode ，分别对应精简模式或正常模式
        # @type JobMode: String
        # @param RunMode: 运行模式，取值如：Immediate(表示立即运行，默认为此项值)、Timed(表示定时运行)
        # @type RunMode: String
        # @param ExpectRunTime: 期待启动时间，当RunMode取值为Timed时，此值必填，形如："2006-01-02 15:04:05"
        # @type ExpectRunTime: String
        # @param SrcInfo: 源端信息，单节点数据库使用，且SrcNodeType传single
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param SrcInfos: 源端信息，多节点数据库使用，且SrcNodeType传cluster
        # @type SrcInfos: :class:`Tencentcloud::Dts.v20211206.models.SyncDBEndpointInfos`
        # @param SrcNodeType: 枚举值：cluster、single。源库为单节点数据库使用single，多节点使用cluster
        # @type SrcNodeType: String
        # @param DstInfo: 目标端信息，单节点数据库使用
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param DstInfos: 目标端信息，多节点数据库使用，且DstNodeType传cluster
        # @type DstInfos: :class:`Tencentcloud::Dts.v20211206.models.SyncDBEndpointInfos`
        # @param DstNodeType: 枚举值：cluster、single。目标库为单节点数据库使用single，多节点使用cluster
        # @type DstNodeType: String
        # @param Options: 同步任务选项；该字段下的RateLimitOption暂时无法生效、如果需要修改限速、可通过ModifySyncRateLimit接口完成限速
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.Options`
        # @param AutoRetryTimeRangeMinutes: 自动重试的时间段、可设置5至720分钟、0表示不重试
        # @type AutoRetryTimeRangeMinutes: Integer

        attr_accessor :JobId, :SrcAccessType, :DstAccessType, :Objects, :JobName, :JobMode, :RunMode, :ExpectRunTime, :SrcInfo, :SrcInfos, :SrcNodeType, :DstInfo, :DstInfos, :DstNodeType, :Options, :AutoRetryTimeRangeMinutes

        def initialize(jobid=nil, srcaccesstype=nil, dstaccesstype=nil, objects=nil, jobname=nil, jobmode=nil, runmode=nil, expectruntime=nil, srcinfo=nil, srcinfos=nil, srcnodetype=nil, dstinfo=nil, dstinfos=nil, dstnodetype=nil, options=nil, autoretrytimerangeminutes=nil)
          @JobId = jobid
          @SrcAccessType = srcaccesstype
          @DstAccessType = dstaccesstype
          @Objects = objects
          @JobName = jobname
          @JobMode = jobmode
          @RunMode = runmode
          @ExpectRunTime = expectruntime
          @SrcInfo = srcinfo
          @SrcInfos = srcinfos
          @SrcNodeType = srcnodetype
          @DstInfo = dstinfo
          @DstInfos = dstinfos
          @DstNodeType = dstnodetype
          @Options = options
          @AutoRetryTimeRangeMinutes = autoretrytimerangeminutes
        end

        def deserialize(params)
          @JobId = params['JobId']
          @SrcAccessType = params['SrcAccessType']
          @DstAccessType = params['DstAccessType']
          unless params['Objects'].nil?
            @Objects = Objects.new
            @Objects.deserialize(params['Objects'])
          end
          @JobName = params['JobName']
          @JobMode = params['JobMode']
          @RunMode = params['RunMode']
          @ExpectRunTime = params['ExpectRunTime']
          unless params['SrcInfo'].nil?
            @SrcInfo = Endpoint.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['SrcInfos'].nil?
            @SrcInfos = SyncDBEndpointInfos.new
            @SrcInfos.deserialize(params['SrcInfos'])
          end
          @SrcNodeType = params['SrcNodeType']
          unless params['DstInfo'].nil?
            @DstInfo = Endpoint.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          unless params['DstInfos'].nil?
            @DstInfos = SyncDBEndpointInfos.new
            @DstInfos.deserialize(params['DstInfos'])
          end
          @DstNodeType = params['DstNodeType']
          unless params['Options'].nil?
            @Options = Options.new
            @Options.deserialize(params['Options'])
          end
          @AutoRetryTimeRangeMinutes = params['AutoRetryTimeRangeMinutes']
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

      # ContinueMigrateJob请求参数结构体
      class ContinueMigrateJobRequest < TencentCloud::Common::AbstractModel
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

      # ContinueMigrateJob返回参数结构体
      class ContinueMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # ContinueSyncJob请求参数结构体
      class ContinueSyncJobRequest < TencentCloud::Common::AbstractModel
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

      # ContinueSyncJob返回参数结构体
      class ContinueSyncJobResponse < TencentCloud::Common::AbstractModel
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
        # @param JobId: 任务 Id
        # @type JobId: String
        # @param TaskName: 数据对比任务名称，若为空则默认给CompareTaskId相同值
        # @type TaskName: String
        # @param ObjectMode: 数据对比对象模式，sameAsMigrate(全部迁移对象， 默认为此项配置)，custom(自定义模式)
        # @type ObjectMode: String
        # @param Objects: 一致性对比对象配置
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`
        # @param Options: 一致性校验选项
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.CompareOptions`

        attr_accessor :JobId, :TaskName, :ObjectMode, :Objects, :Options

        def initialize(jobid=nil, taskname=nil, objectmode=nil, objects=nil, options=nil)
          @JobId = jobid
          @TaskName = taskname
          @ObjectMode = objectmode
          @Objects = objects
          @Options = options
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskName = params['TaskName']
          @ObjectMode = params['ObjectMode']
          unless params['Objects'].nil?
            @Objects = CompareObject.new
            @Objects.deserialize(params['Objects'])
          end
          unless params['Options'].nil?
            @Options = CompareOptions.new
            @Options.deserialize(params['Options'])
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

      # CreateConsumerGroup请求参数结构体
      class CreateConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例id
        # @type SubscribeId: String
        # @param ConsumerGroupName: 消费组名称，以数字、字母(大小写)或者_ - .开头，以数字、字母(大小写)结尾。实际生成的消费组全称形如：consumer-grp-#{SubscribeId}-#{ConsumerGroupName}
        # @type ConsumerGroupName: String
        # @param AccountName: 账号名称。以数字、字母(大小写)或者_ - .开头，以数字、字母(大小写)结尾。实际生成的账户全称形如：account-#{SubscribeId}-#{AccountName}
        # @type AccountName: String
        # @param Password: 消费组密码，长度必须大于3
        # @type Password: String
        # @param Description: 消费组备注
        # @type Description: String

        attr_accessor :SubscribeId, :ConsumerGroupName, :AccountName, :Password, :Description

        def initialize(subscribeid=nil, consumergroupname=nil, accountname=nil, password=nil, description=nil)
          @SubscribeId = subscribeid
          @ConsumerGroupName = consumergroupname
          @AccountName = accountname
          @Password = password
          @Description = description
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @ConsumerGroupName = params['ConsumerGroupName']
          @AccountName = params['AccountName']
          @Password = params['Password']
          @Description = params['Description']
        end
      end

      # CreateConsumerGroup返回参数结构体
      class CreateConsumerGroupResponse < TencentCloud::Common::AbstractModel
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
        # @param SrcDatabaseType: 源实例数据库类型，如mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb,cynosdbmysql
        # @type SrcDatabaseType: String
        # @param DstDatabaseType: 目标实例数据库类型，如mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb,cynosdbmysql
        # @type DstDatabaseType: String
        # @param SrcRegion: 源实例地域，如：ap-guangzhou
        # @type SrcRegion: String
        # @param DstRegion: 目标实例地域，如：ap-guangzhou。注意，目标地域必须和API请求地域保持一致。
        # @type DstRegion: String
        # @param InstanceClass: 实例规格，包括：small、medium、large、xlarge、2xlarge
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
        # @param JobIds: 下单成功随机生成的迁移任务id列表，形如：dts-c1f6rs21
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

      # CreateModifyCheckSyncJob请求参数结构体
      class CreateModifyCheckSyncJobRequest < TencentCloud::Common::AbstractModel
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

      # CreateModifyCheckSyncJob返回参数结构体
      class CreateModifyCheckSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateSubscribeCheckJob请求参数结构体
      class CreateSubscribeCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # CreateSubscribeCheckJob返回参数结构体
      class CreateSubscribeCheckJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateSubscribe请求参数结构体
      class CreateSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param Product: 订阅的数据库类型，目前支持 cynosdbmysql(tdsql-c mysql版),mariadb,mongodb,mysql,percona,tdpg(tdsql postgresql版),tdsqlpercona(tdsql mysql版)
        # @type Product: String
        # @param PayType: 付费方式，枚举值：0-包年包月，1-按量计费
        # @type PayType: Integer
        # @param Duration: 购买时长。当 payType 为包年包月时，该项需要填，单位为月，最小值为 1，最大值为 120。不填默认1
        # @type Duration: Integer
        # @param AutoRenew: 是否自动续费。当 payType 为包年包月时，该项需要填。枚举值：0-不自动续费，1-自动续费。默认不自动续费。按量计费设置该标识无效。
        # @type AutoRenew: Integer
        # @param Count: 购买数量,默认为1，最大为10
        # @type Count: Integer
        # @param Tags: 实例资源标签
        # @type Tags: Array
        # @param Name: 任务名，自定义
        # @type Name: String

        attr_accessor :Product, :PayType, :Duration, :AutoRenew, :Count, :Tags, :Name

        def initialize(product=nil, paytype=nil, duration=nil, autorenew=nil, count=nil, tags=nil, name=nil)
          @Product = product
          @PayType = paytype
          @Duration = duration
          @AutoRenew = autorenew
          @Count = count
          @Tags = tags
          @Name = name
        end

        def deserialize(params)
          @Product = params['Product']
          @PayType = params['PayType']
          @Duration = params['Duration']
          @AutoRenew = params['AutoRenew']
          @Count = params['Count']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # CreateSubscribe返回参数结构体
      class CreateSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param SubscribeIds: 数据订阅实例的ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscribeIds, :RequestId

        def initialize(subscribeids=nil, requestid=nil)
          @SubscribeIds = subscribeids
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscribeIds = params['SubscribeIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSyncJob请求参数结构体
      class CreateSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 付款类型, 如：PrePay(表示包年包月)、PostPay(表示按时按量)
        # @type PayMode: String
        # @param SrcDatabaseType: 源端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        # @type SrcDatabaseType: String
        # @param SrcRegion: 源端数据库所在地域,如ap-guangzhou
        # @type SrcRegion: String
        # @param DstDatabaseType: 目标端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql,kafka等
        # @type DstDatabaseType: String
        # @param DstRegion: 目标端数据库所在地域,如ap-guangzhou
        # @type DstRegion: String
        # @param Specification: 同步任务规格，Standard:标准版
        # @type Specification: String
        # @param Tags: 标签信息
        # @type Tags: Array
        # @param Count: 一次购买的同步任务数量，取值范围为[1, 10]，默认为1
        # @type Count: Integer
        # @param AutoRenew: 自动续费标识，当PayMode值为PrePay则此项配置有意义，取值为：1（表示自动续费）、0（不自动续费，默认为此值）
        # @type AutoRenew: Integer
        # @param InstanceClass: 同步链路规格，如micro,small,medium,large，默认为medium
        # @type InstanceClass: String
        # @param JobName: 同步任务名称
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
        # @param NodeType: 节点类型，为空或者simple表示普通节点、cluster表示集群节点；对于mongo业务，取值为replicaset(mongodb副本集)、standalone(mongodb单节点)、cluster(mongodb集群)；对于redis实例，为空或simple(单节点)、cluster(集群)、cluster-cache(cache集群)、cluster-proxy(代理集群)
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
        # @param DatabaseNetEnv: 数据库所属网络环境，AccessType为云联网(ccn)时必填， UserIDC表示用户IDC、TencentVPC表示腾讯云VPC；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNetEnv: String

        attr_accessor :Region, :AccessType, :DatabaseType, :NodeType, :Info, :Supplier, :ExtraAttr, :DatabaseNetEnv

        def initialize(region=nil, accesstype=nil, databasetype=nil, nodetype=nil, info=nil, supplier=nil, extraattr=nil, databasenetenv=nil)
          @Region = region
          @AccessType = accesstype
          @DatabaseType = databasetype
          @NodeType = nodetype
          @Info = info
          @Supplier = supplier
          @ExtraAttr = extraattr
          @DatabaseNetEnv = databasenetenv
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
          @DatabaseNetEnv = params['DatabaseNetEnv']
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
        # @param TmpSecretId: 临时密钥Id，可通过 获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥Key，可通过 获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param TmpToken: 临时Token，可通过 获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195
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

      # 迁移对象信息，在配置库表视图等对象信息时大小写敏感
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
        # @param DbMode: DB选择模式: All(为当前对象下的所有对象)，Partial(部分对象)，当Mode为Partial时，此项必填。注意，高级对象的同步不依赖此值，如果整库同步此处应该为All。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param SchemaName: 迁移或同步的 schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param NewSchemaName: 迁移或同步后的 schema name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewSchemaName: String
        # @param TableMode: 表选择模式: All(为当前对象下的所有对象)，Partial(部分对象)，当DBMode为Partial时此项必填，如果整库同步此处应该为All。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMode: String
        # @param Tables: 表图对象集合，当 TableMode 为 Partial 时，此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param ViewMode: 视图选择模式: All 为当前对象下的所有视图对象,Partial 为部分视图对象，如果整库同步此处应该为All。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewMode: String
        # @param Views: 视图对象集合，当 ViewMode 为 Partial 时， 此项需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array
        # @param FunctionMode: 选择要同步的模式，Partial为部分，All为整选，如果整库同步此处应该为All。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionMode: String
        # @param Functions: FunctionMode取值为Partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Functions: Array
        # @param ProcedureMode: 选择要同步的模式，Partial为部分，All为整选，如果整库同步此处应该为All。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureMode: String
        # @param Procedures: ProcedureMode取值为Partial时需要填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedures: Array
        # @param TriggerMode: 触发器迁移模式，All(为当前对象下的所有对象)，Partial(部分对象)，如果整库同步此处应该为All。数据同步暂不支持此高级对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMode: String
        # @param Triggers: 当TriggerMode为partial，指定要迁移的触发器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Triggers: Array
        # @param EventMode: 事件迁移模式，All(为当前对象下的所有对象)，Partial(部分对象)，如果整库同步此处应该为All。数据同步暂不支持此高级对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventMode: String
        # @param Events: 当EventMode为partial，指定要迁移的事件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array

        attr_accessor :DbName, :NewDbName, :DbMode, :SchemaName, :NewSchemaName, :TableMode, :Tables, :ViewMode, :Views, :FunctionMode, :Functions, :ProcedureMode, :Procedures, :TriggerMode, :Triggers, :EventMode, :Events

        def initialize(dbname=nil, newdbname=nil, dbmode=nil, schemaname=nil, newschemaname=nil, tablemode=nil, tables=nil, viewmode=nil, views=nil, functionmode=nil, functions=nil, proceduremode=nil, procedures=nil, triggermode=nil, triggers=nil, eventmode=nil, events=nil)
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
          @TriggerMode = triggermode
          @Triggers = triggers
          @EventMode = eventmode
          @Events = events
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
          @TriggerMode = params['TriggerMode']
          @Triggers = params['Triggers']
          @EventMode = params['EventMode']
          @Events = params['Events']
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
        # @param AdvancedObjects: 高级对象类型，如trigger、function、procedure、event。注意：如果要迁移同步高级对象，此配置中应该包含对应的高级对象类型
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

      # DeleteConsumerGroup请求参数结构体
      class DeleteConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String
        # @param ConsumerGroupName: 消费组名称。实际的消费组全称形如：consumer-grp-#{SubscribeId}-#{ConsumerGroupName}。
        # 请务必保证消费组名称正确。
        # @type ConsumerGroupName: String
        # @param AccountName: 账号名称。实际的账户全称形如：account-#{SubscribeId}-#{AccountName}。
        # 请务必保证账户名称正确。
        # @type AccountName: String

        attr_accessor :SubscribeId, :ConsumerGroupName, :AccountName

        def initialize(subscribeid=nil, consumergroupname=nil, accountname=nil)
          @SubscribeId = subscribeid
          @ConsumerGroupName = consumergroupname
          @AccountName = accountname
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @ConsumerGroupName = params['ConsumerGroupName']
          @AccountName = params['AccountName']
        end
      end

      # DeleteConsumerGroup返回参数结构体
      class DeleteConsumerGroupResponse < TencentCloud::Common::AbstractModel
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
        # @param JobId: 同步实例id（即标识一个同步作业），形如sync-werwfs23，此值必填
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
        # @param Status: 校验任务执行状态，如：notStarted(未开始)、running(校验中)、failed(校验任务失败)、success(任务成功)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StepCount: 步骤总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCount: Integer
        # @param StepCur: 当前所在步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCur: Integer
        # @param Progress: 总体进度，范围为[0,100]
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
        # @param CompareTaskId: 校验任务 ID
        # @type CompareTaskId: String
        # @param Status: 任务状态过滤，可能的值：created - 创建完成；readyRun - 等待运行；running - 运行中；success - 成功；stopping - 结束中；failed - 失败；canceled - 已终止
        # @type Status: Array

        attr_accessor :JobId, :Limit, :Offset, :CompareTaskId, :Status

        def initialize(jobid=nil, limit=nil, offset=nil, comparetaskid=nil, status=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
          @CompareTaskId = comparetaskid
          @Status = status
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CompareTaskId = params['CompareTaskId']
          @Status = params['Status']
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

      # DescribeConsumerGroups请求参数结构体
      class DescribeConsumerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例id
        # @type SubscribeId: String
        # @param Offset: 返回记录的起始偏移量。默认0
        # @type Offset: Integer
        # @param Limit: 单次返回的记录数量。默认10
        # @type Limit: Integer

        attr_accessor :SubscribeId, :Offset, :Limit

        def initialize(subscribeid=nil, offset=nil, limit=nil)
          @SubscribeId = subscribeid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeConsumerGroups返回参数结构体
      class DescribeConsumerGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 指定实例下的消费者组总数
        # @type TotalCount: Integer
        # @param Items: 消费者组列表
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
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Items << groupinfo_tmp
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
        # @param TmpSecretId: 临时密钥Id，若为跨账号资源此项必填
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥Key，若为跨账号资源此项必填
        # @type TmpSecretKey: String
        # @param TmpToken: 临时密钥Token，若为跨账号资源此项必填
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
        # @param Status: 任务状态，取值为：created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行中)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)、
        # pausing(暂停中)、
        # manualPaused(已暂停)
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
        # @param DumperResumeCtrl: 全量导出可重入标识：enum::"yes"/"no"。yes表示当前任务可重入、no表示当前任务处于全量导出且不可重入阶段；如果在该值为no时重启任务导出流程不支持断点续传
        # @type DumperResumeCtrl: String
        # @param RateLimitOption: 任务的限速信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitOption: :class:`Tencentcloud::Dts.v20211206.models.RateLimitOption`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :JobName, :CreateTime, :UpdateTime, :StartTime, :EndTime, :BriefMsg, :Status, :Action, :StepInfo, :SrcInfo, :DstInfo, :CompareTask, :Tags, :RunMode, :ExpectRunTime, :MigrateOption, :CheckStepInfo, :TradeInfo, :ErrorInfo, :DumperResumeCtrl, :RateLimitOption, :RequestId

        def initialize(jobid=nil, jobname=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, briefmsg=nil, status=nil, action=nil, stepinfo=nil, srcinfo=nil, dstinfo=nil, comparetask=nil, tags=nil, runmode=nil, expectruntime=nil, migrateoption=nil, checkstepinfo=nil, tradeinfo=nil, errorinfo=nil, dumperresumectrl=nil, ratelimitoption=nil, requestid=nil)
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
          @DumperResumeCtrl = dumperresumectrl
          @RateLimitOption = ratelimitoption
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
          @DumperResumeCtrl = params['DumperResumeCtrl']
          unless params['RateLimitOption'].nil?
            @RateLimitOption = RateLimitOption.new
            @RateLimitOption.deserialize(params['RateLimitOption'])
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

      # DescribeModifyCheckSyncJobResult请求参数结构体
      class DescribeModifyCheckSyncJobResultRequest < TencentCloud::Common::AbstractModel
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

      # DescribeModifyCheckSyncJobResult返回参数结构体
      class DescribeModifyCheckSyncJobResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 校验任务执行状态，如：notStarted(未开始)、running(校验中)、failed(校验任务失败)、success(任务成功)
        # @type Status: String
        # @param StepCount: 校验的步骤总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCount: Integer
        # @param StepCur: 当前所在步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepCur: Integer
        # @param Progress: 总体进度，范围为[0,100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param StepInfos: 步骤详细信息
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

      # DescribeOffsetByTime请求参数结构体
      class DescribeOffsetByTimeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String
        # @param Time: 时间点，格式为：Y-m-d h:m:s。如果输入时间比当前时间晚的多，相当于查询最新offset；如果输入时间比当前时间早的多，相当于查询最老offset；如果输入空，默认0时间，等价于查询最老offset。
        # @type Time: String

        attr_accessor :SubscribeId, :Time

        def initialize(subscribeid=nil, time=nil)
          @SubscribeId = subscribeid
          @Time = time
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @Time = params['Time']
        end
      end

      # DescribeOffsetByTime返回参数结构体
      class DescribeOffsetByTimeResponse < TencentCloud::Common::AbstractModel
        # @param Items: 时间与Offset的对应
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              offsettimemap_tmp = OffsetTimeMap.new
              offsettimemap_tmp.deserialize(i)
              @Items << offsettimemap_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribeCheckJob请求参数结构体
      class DescribeSubscribeCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # DescribeSubscribeCheckJob返回参数结构体
      class DescribeSubscribeCheckJobResponse < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String
        # @param Message: 失败或者报错提示，成功则提示success。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Status: 任务运行状态，可能值为 running,failed,success
        # @type Status: String
        # @param Progress: 当前总体进度，范围 0~100
        # @type Progress: Integer
        # @param StepAll: 校验总步骤数
        # @type StepAll: Integer
        # @param StepNow: 当前执行步骤
        # @type StepNow: Integer
        # @param Steps: 各个步骤运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Steps: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscribeId, :Message, :Status, :Progress, :StepAll, :StepNow, :Steps, :RequestId

        def initialize(subscribeid=nil, message=nil, status=nil, progress=nil, stepall=nil, stepnow=nil, steps=nil, requestid=nil)
          @SubscribeId = subscribeid
          @Message = message
          @Status = status
          @Progress = progress
          @StepAll = stepall
          @StepNow = stepnow
          @Steps = steps
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @Message = params['Message']
          @Status = params['Status']
          @Progress = params['Progress']
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              subscribecheckstepinfo_tmp = SubscribeCheckStepInfo.new
              subscribecheckstepinfo_tmp.deserialize(i)
              @Steps << subscribecheckstepinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribeDetail请求参数结构体
      class DescribeSubscribeDetailRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # DescribeSubscribeDetail返回参数结构体
      class DescribeSubscribeDetailResponse < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅的ID，形如subs-b6x64o31tm
        # @type SubscribeId: String
        # @param SubscribeName: 数据订阅实例的名称
        # @type SubscribeName: String
        # @param Product: 订阅的数据库类型，目前支持 cynosdbmysql(tdsql-c mysql版),mariadb,mongodb,mysql,percona,tdpg(tdsql postgresql版),tdsqlpercona(tdsql mysql版)
        # @type Product: String
        # @param InstanceId: 订阅的云数据库实例ID，只有订阅云数据库该值才有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceStatus: 订阅的云数据库实例状态，只有订阅云数据库该值才有意义。可能值为：running, isolated, offline
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param Status: 订阅任务计费状态，可能值为：正常normal, 隔离中isolating, 已隔离isolated, 下线中offlining, 按量转包年包月中 post2PrePayIng
        # @type Status: String
        # @param SubsStatus: 订阅任务状态，可能值为：未启动notStarted, 校验中checking, 校验不通过checkNotPass, 校验通过checkPass, 启动中starting, 运行中running, 异常出错error
        # @type SubsStatus: String
        # @param ModifyTime: 修改时间，时间格式如：Y-m-d h:m:s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param CreateTime: 创建时间，时间格式如：Y-m-d h:m:s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param IsolateTime: 隔离时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String
        # @param ExpireTime: 包年包月任务的到期时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param OfflineTime: 下线时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param PayType: 付费方式，可能值为：0-包年包月，1-按量计费
        # @type PayType: Integer
        # @param AutoRenewFlag: 自动续费标识。只有当 PayType=0，该值才有意义。枚举值：0-不自动续费，1-自动续费
        # @type AutoRenewFlag: Integer
        # @param Region: 任务所在地域
        # @type Region: String
        # @param Topic: Kafka topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param Broker: Kafka服务Broker地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Broker: String
        # @param SubscribeMode: 数据订阅的类型，当 Product 不为 mongodb 时，可能值为：all-全实例更新；dml-数据更新；ddl-结构更新；dmlAndDdl-数据更新+结构更新。当 Product 为 mongodb 时，可能值为 all-全实例更新；database-订阅单库；collection-订阅单集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeMode: String
        # @param Protocol: 订阅数据格式。如果为空则用的默认格式: mysql\cynosdbmysql\mariadb\percona\tdsqlpercona\tdpg是protobuf，mongo是json。当 DatabaseType 为 mysql和cynosdbmysql 时有三种可选协议：protobuf\avro\json。数据格式详情参考官网的消费demo文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param SubscribeObjects: 订阅的数据库表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeObjects: Array
        # @param KafkaConfig: kafka配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaConfig: :class:`Tencentcloud::Dts.v20211206.models.SubscribeKafkaConfig`
        # @param AccessType: 源数据库接入类型，如：extranet(公网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、cdb(云数据库)、cvm(云服务器自建)、intranet(自研上云)、vpc(私有网络vpc)。注意具体可选值依赖当前链路支持能力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: String
        # @param Endpoints: 接入类型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoints: Array
        # @param PipelineInfo: mongo输出聚合设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PipelineInfo: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Errors: 订阅任务报错信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param ExtraAttr: 为业务添加的额外信息。参数名作key，参数值作value。
        # mysql选填参数：ProcessXA-是否处理XA事务，为true处理，其他不处理。
        # mongo选填参数：SubscribeType-订阅类型，目前只支持changeStream。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttr: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscribeId, :SubscribeName, :Product, :InstanceId, :InstanceStatus, :Status, :SubsStatus, :ModifyTime, :CreateTime, :IsolateTime, :ExpireTime, :OfflineTime, :PayType, :AutoRenewFlag, :Region, :Topic, :Broker, :SubscribeMode, :Protocol, :SubscribeObjects, :KafkaConfig, :AccessType, :Endpoints, :PipelineInfo, :Tags, :Errors, :ExtraAttr, :RequestId

        def initialize(subscribeid=nil, subscribename=nil, product=nil, instanceid=nil, instancestatus=nil, status=nil, subsstatus=nil, modifytime=nil, createtime=nil, isolatetime=nil, expiretime=nil, offlinetime=nil, paytype=nil, autorenewflag=nil, region=nil, topic=nil, broker=nil, subscribemode=nil, protocol=nil, subscribeobjects=nil, kafkaconfig=nil, accesstype=nil, endpoints=nil, pipelineinfo=nil, tags=nil, errors=nil, extraattr=nil, requestid=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @Product = product
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
          @Status = status
          @SubsStatus = subsstatus
          @ModifyTime = modifytime
          @CreateTime = createtime
          @IsolateTime = isolatetime
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @PayType = paytype
          @AutoRenewFlag = autorenewflag
          @Region = region
          @Topic = topic
          @Broker = broker
          @SubscribeMode = subscribemode
          @Protocol = protocol
          @SubscribeObjects = subscribeobjects
          @KafkaConfig = kafkaconfig
          @AccessType = accesstype
          @Endpoints = endpoints
          @PipelineInfo = pipelineinfo
          @Tags = tags
          @Errors = errors
          @ExtraAttr = extraattr
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
          @Status = params['Status']
          @SubsStatus = params['SubsStatus']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @IsolateTime = params['IsolateTime']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @PayType = params['PayType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Region = params['Region']
          @Topic = params['Topic']
          @Broker = params['Broker']
          @SubscribeMode = params['SubscribeMode']
          @Protocol = params['Protocol']
          unless params['SubscribeObjects'].nil?
            @SubscribeObjects = []
            params['SubscribeObjects'].each do |i|
              subscribeobject_tmp = SubscribeObject.new
              subscribeobject_tmp.deserialize(i)
              @SubscribeObjects << subscribeobject_tmp
            end
          end
          unless params['KafkaConfig'].nil?
            @KafkaConfig = SubscribeKafkaConfig.new
            @KafkaConfig.deserialize(params['KafkaConfig'])
          end
          @AccessType = params['AccessType']
          unless params['Endpoints'].nil?
            @Endpoints = []
            params['Endpoints'].each do |i|
              endpointitem_tmp = EndpointItem.new
              endpointitem_tmp.deserialize(i)
              @Endpoints << endpointitem_tmp
            end
          end
          unless params['PipelineInfo'].nil?
            @PipelineInfo = []
            params['PipelineInfo'].each do |i|
              pipelineinfo_tmp = PipelineInfo.new
              pipelineinfo_tmp.deserialize(i)
              @PipelineInfo << pipelineinfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              subserr_tmp = SubsErr.new
              subserr_tmp.deserialize(i)
              @Errors << subserr_tmp
            end
          end
          unless params['ExtraAttr'].nil?
            @ExtraAttr = []
            params['ExtraAttr'].each do |i|
              keyvaluepairoption_tmp = KeyValuePairOption.new
              keyvaluepairoption_tmp.deserialize(i)
              @ExtraAttr << keyvaluepairoption_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribeJobs请求参数结构体
      class DescribeSubscribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅 ID 筛选，精确匹配
        # @type SubscribeId: String
        # @param SubscribeName: 订阅名称，前缀模糊匹配
        # @type SubscribeName: String
        # @param InstanceId: 订阅的云上数据库实例的 ID，精确匹配
        # @type InstanceId: String
        # @param PayType: 计费模式筛选，可能的值：0-包年包月，1-按量计费
        # @type PayType: Integer
        # @param Product: 订阅的数据库产品，目前支持 cynosdbmysql,mariadb,mongodb,mysql,percona,tdpg,tdsqlpercona(tdsqlmysql)
        # @type Product: String
        # @param Status: 数据订阅生命周期状态，可能的值为：正常 normal, 隔离中 isolating, 已隔离 isolated, 下线中 offlining，按量转包年包月中 post2PrePayIng
        # @type Status: Array
        # @param SubsStatus: 数据订阅状态，可能的值为：未启动 notStarted, 校验中 checking, 校验不通过 checkNotPass, 校验通过 checkPass, 启动中 starting, 运行中 running, 异常出错 error
        # @type SubsStatus: Array
        # @param Offset: 返回记录的起始偏移量。默认0
        # @type Offset: Integer
        # @param Limit: 单次返回的记录数量。默认20，最大100
        # @type Limit: Integer
        # @param OrderDirection: 排序方向，可选的值为"DESC"和"ASC"，默认为"DESC"，按创建时间逆序排序
        # @type OrderDirection: String
        # @param TagFilters: tag 过滤条件，多个 TagFilter 之间关系为且
        # @type TagFilters: Array

        attr_accessor :SubscribeId, :SubscribeName, :InstanceId, :PayType, :Product, :Status, :SubsStatus, :Offset, :Limit, :OrderDirection, :TagFilters

        def initialize(subscribeid=nil, subscribename=nil, instanceid=nil, paytype=nil, product=nil, status=nil, subsstatus=nil, offset=nil, limit=nil, orderdirection=nil, tagfilters=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @InstanceId = instanceid
          @PayType = paytype
          @Product = product
          @Status = status
          @SubsStatus = subsstatus
          @Offset = offset
          @Limit = limit
          @OrderDirection = orderdirection
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @InstanceId = params['InstanceId']
          @PayType = params['PayType']
          @Product = params['Product']
          @Status = params['Status']
          @SubsStatus = params['SubsStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderDirection = params['OrderDirection']
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

      # DescribeSubscribeJobs返回参数结构体
      class DescribeSubscribeJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数
        # @type TotalCount: Integer
        # @param Items: 数据订阅实例的信息列表
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
              subscribeinfo_tmp = SubscribeInfo.new
              subscribeinfo_tmp.deserialize(i)
              @Items << subscribeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribeReturnable请求参数结构体
      class DescribeSubscribeReturnableRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # DescribeSubscribeReturnable返回参数结构体
      class DescribeSubscribeReturnableResponse < TencentCloud::Common::AbstractModel
        # @param IsReturnable: 实例是否支持退还/退货
        # @type IsReturnable: Boolean
        # @param ReturnFailMessage: 不支持退还的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnFailMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsReturnable, :ReturnFailMessage, :RequestId

        def initialize(isreturnable=nil, returnfailmessage=nil, requestid=nil)
          @IsReturnable = isreturnable
          @ReturnFailMessage = returnfailmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @IsReturnable = params['IsReturnable']
          @ReturnFailMessage = params['ReturnFailMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSyncJobs请求参数结构体
      class DescribeSyncJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id，如sync-werwfs23
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

      # DestroyIsolatedSubscribe请求参数结构体
      class DestroyIsolatedSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # DestroyIsolatedSubscribe返回参数结构体
      class DestroyIsolatedSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # 数据库不一致的详情，mongodb业务用到
      class DifferenceAdvancedObjectsDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 不一致详情
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
              advancedobjectsitem_tmp = AdvancedObjectsItem.new
              advancedobjectsitem_tmp.deserialize(i)
              @Items << advancedobjectsitem_tmp
            end
          end
        end
      end

      # 数据不一致详情
      class DifferenceData < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Db: String
        # @param Table: 集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param SrcChunk: 源端ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcChunk: String
        # @param DstChunk: 目标端ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstChunk: String
        # @param SrcItem: 源端值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcItem: String
        # @param DstItem: 目标端值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstItem: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :Db, :Table, :SrcChunk, :DstChunk, :SrcItem, :DstItem, :UpdatedAt

        def initialize(db=nil, table=nil, srcchunk=nil, dstchunk=nil, srcitem=nil, dstitem=nil, updatedat=nil)
          @Db = db
          @Table = table
          @SrcChunk = srcchunk
          @DstChunk = dstchunk
          @SrcItem = srcitem
          @DstItem = dstitem
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Db = params['Db']
          @Table = params['Table']
          @SrcChunk = params['SrcChunk']
          @DstChunk = params['DstChunk']
          @SrcItem = params['SrcItem']
          @DstItem = params['DstItem']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # mongodb数据不一致性详情
      class DifferenceDataDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: mongo数据不一致详细列表
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
              differencedata_tmp = DifferenceData.new
              differencedata_tmp.deserialize(i)
              @Items << differencedata_tmp
            end
          end
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

      # mongodb行数校验不一致性详情结果
      class DifferenceRowDetail < TencentCloud::Common::AbstractModel
        # @param TotalCount: 不一致总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 不一致列表
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
              rowscountdifference_tmp = RowsCountDifference.new
              rowscountdifference_tmp.deserialize(i)
              @Items << rowscountdifference_tmp
            end
          end
        end
      end

      # 订阅任务的kafka分区规则。符合库名和表名正则表达式的数据将按照RuleType计算该条数据将被投递的kafka分区。如果配置了多个规则，将按照配置的顺序，第一条命中的规则生效。
      class DistributeRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型。非mongo产品的枚举值为: table-按表名分区，pk-按表名+主键分区，cols-按列名分区。mongo的枚举值为：collection-按集合名分区、collectionAndObjectId-按集合+主键分区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param DbPattern: 库名匹配规则，请填写正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbPattern: String
        # @param TablePattern: 表名匹配规则，如果 DatabaseType 为 mongodb，则匹配集合名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TablePattern: String
        # @param Columns: 列名。如果 RuleType 为 cols，此项必填。订阅任务会用该列的值计算分区。mongo没有按列分区，因此也不用传这个字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array

        attr_accessor :RuleType, :DbPattern, :TablePattern, :Columns

        def initialize(ruletype=nil, dbpattern=nil, tablepattern=nil, columns=nil)
          @RuleType = ruletype
          @DbPattern = dbpattern
          @TablePattern = tablepattern
          @Columns = columns
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @DbPattern = params['DbPattern']
          @TablePattern = params['TablePattern']
          @Columns = params['Columns']
        end
      end

      # 数据同步中的选项
      class DynamicOptions < TencentCloud::Common::AbstractModel
        # @param OpTypes: 所要同步的DML和DDL的选项，Insert(插入操作)、Update(更新操作)、Delete(删除操作)、DDL(结构同步)，PartialDDL(自定义,和DdlOptions一起起作用 )；必填、dts会用该值覆盖原有的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpTypes: Array
        # @param DdlOptions: DDL同步选项，具体描述要同步那些DDL; 当OpTypes取值PartialDDL时、字段不能为空；必填、dts会用该值覆盖原有的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdlOptions: Array
        # @param ConflictHandleType: 冲突处理选项，ReportError(报错)、Ignore(忽略)、Cover(覆盖)、ConditionCover(条件覆盖); 目前目标端为kafka的链路不支持修改该配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictHandleType: String
        # @param ConflictHandleOption: 冲突处理的详细选项，如条件覆盖中的条件行和条件操作；不能部分更新该选项的内部字段；有更新时、需要全量更新该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictHandleOption: :class:`Tencentcloud::Dts.v20211206.models.ConflictHandleOption`

        attr_accessor :OpTypes, :DdlOptions, :ConflictHandleType, :ConflictHandleOption

        def initialize(optypes=nil, ddloptions=nil, conflicthandletype=nil, conflicthandleoption=nil)
          @OpTypes = optypes
          @DdlOptions = ddloptions
          @ConflictHandleType = conflicthandletype
          @ConflictHandleOption = conflicthandleoption
        end

        def deserialize(params)
          @OpTypes = params['OpTypes']
          unless params['DdlOptions'].nil?
            @DdlOptions = []
            params['DdlOptions'].each do |i|
              ddloption_tmp = DdlOption.new
              ddloption_tmp.deserialize(i)
              @DdlOptions << ddloption_tmp
            end
          end
          @ConflictHandleType = params['ConflictHandleType']
          unless params['ConflictHandleOption'].nil?
            @ConflictHandleOption = ConflictHandleOption.new
            @ConflictHandleOption.deserialize(params['ConflictHandleOption'])
          end
        end
      end

      # 数据同步中的描述源端和目的端的信息
      class Endpoint < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文名，如：ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Role: tdsql mysql版的节点类型，枚举值为proxy、set
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
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
        # @param Account: 实例所属账号，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Account: String
        # @param AccountMode: 资源所属账号 为空或self(表示本账号内资源)、other(表示跨账号资源)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountMode: String
        # @param AccountRole: 跨账号同步时的角色，只允许[a-zA-Z0-9\-\_]+，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountRole: String
        # @param RoleExternalId: 外部角色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleExternalId: String
        # @param TmpSecretId: 临时密钥Id，可通过获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥Key，可通过获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195，，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param TmpToken: 临时Token，可通过获取联合身份临时访问凭证获取临时密钥https://cloud.tencent.com/document/product/1312/48195，，如果为跨账号实例此项必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpToken: String
        # @param EncryptConn: 是否走加密传输、UnEncrypted表示不走加密传输，Encrypted表示走加密传输，默认UnEncrypted
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptConn: String
        # @param DatabaseNetEnv: 数据库所属网络环境，AccessType为云联网(ccn)时必填， UserIDC表示用户IDC、TencentVPC表示腾讯云VPC；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNetEnv: String
        # @param CcnOwnerUin: 数据库为跨账号云联网下的实例时、表示云联网所属主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnOwnerUin: String

        attr_accessor :Region, :Role, :DbKernel, :InstanceId, :Ip, :Port, :User, :Password, :DbName, :VpcId, :SubnetId, :CvmInstanceId, :UniqDcgId, :UniqVpnGwId, :CcnId, :Supplier, :EngineVersion, :Account, :AccountMode, :AccountRole, :RoleExternalId, :TmpSecretId, :TmpSecretKey, :TmpToken, :EncryptConn, :DatabaseNetEnv, :CcnOwnerUin

        def initialize(region=nil, role=nil, dbkernel=nil, instanceid=nil, ip=nil, port=nil, user=nil, password=nil, dbname=nil, vpcid=nil, subnetid=nil, cvminstanceid=nil, uniqdcgid=nil, uniqvpngwid=nil, ccnid=nil, supplier=nil, engineversion=nil, account=nil, accountmode=nil, accountrole=nil, roleexternalid=nil, tmpsecretid=nil, tmpsecretkey=nil, tmptoken=nil, encryptconn=nil, databasenetenv=nil, ccnowneruin=nil)
          @Region = region
          @Role = role
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
          @Account = account
          @AccountMode = accountmode
          @AccountRole = accountrole
          @RoleExternalId = roleexternalid
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @TmpToken = tmptoken
          @EncryptConn = encryptconn
          @DatabaseNetEnv = databasenetenv
          @CcnOwnerUin = ccnowneruin
        end

        def deserialize(params)
          @Region = params['Region']
          @Role = params['Role']
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
          @Account = params['Account']
          @AccountMode = params['AccountMode']
          @AccountRole = params['AccountRole']
          @RoleExternalId = params['RoleExternalId']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @TmpToken = params['TmpToken']
          @EncryptConn = params['EncryptConn']
          @DatabaseNetEnv = params['DatabaseNetEnv']
          @CcnOwnerUin = params['CcnOwnerUin']
        end
      end

      # 数据订阅的实例节点信息
      class EndpointItem < TencentCloud::Common::AbstractModel
        # @param DatabaseRegion: 源库所在地域。如果 AccessType 为 ccn，请填vpc所在地域，因为此时不知道源库在哪个地域。其他接入方式，请填订阅任务所在地域，因为确保订阅任务与源库在同一地域是最优的网络方案。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseRegion: String
        # @param User: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Password: 密码。作为入参时必填，作为出参时为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param InstanceId: 目标实例ID。如果 AccessType 为 cdb，此项必填。配置InstanceId时会查询并校验实例信息。mysql的查询接口经过了鉴权，请确保子用户有 cdb:DescribeDBInstances 的接口权限。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param CvmInstanceId: 云主机ID。如果 AccessType 为 cvm，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmInstanceId: String
        # @param UniqDcgId: 专线网关ID。如果 AccessType 为 dcg，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqDcgId: String
        # @param CcnId: 云联网ID。如果 AccessType 为 ccn，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnId: String
        # @param UniqVpnGwId: vpn网关ID。如果 AccessType 为 vpncloud，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpnGwId: String
        # @param VpcId: VpcID。如果 AccessType 为 dcg\ccn\vpncloud\vpc，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID。如果 AccessType 为 dcg\ccn\vpncloud\vpc，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param HostName: 数据库地址，支持域名与IP。如果 AccessType 为 dcg\ccn\vpncloud\vpc\extranet\intranet，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param Port: 数据库端口。如果 AccessType 为 dcg\ccn\vpncloud\vpc\extranet\intranet\cvm，此项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param EncryptConn: 是否走加密传输，枚举值：UnEncrypted-不加密，Encrypted-加密。只有mysql支持，不填默认不加密，其他产品不填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptConn: String
        # @param DatabaseNetEnv: 数据库网络环境。如果 AccessType 为 ccn 此项必填。枚举值：UserIDC-自建idc，TencentVPC-腾讯云，Aws-aws，AliYun-阿里云，Others-其他。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNetEnv: String
        # @param CcnOwnerUin: 云联网网关所属的主账号uin、跨账号云联网需要。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnOwnerUin: String
        # @param ExtraAttr: 为业务添加的额外信息。参数名作key，参数值作value。 tdpg必填参数：PgDatabase-订阅的库名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttr: Array

        attr_accessor :DatabaseRegion, :User, :Password, :InstanceId, :CvmInstanceId, :UniqDcgId, :CcnId, :UniqVpnGwId, :VpcId, :SubnetId, :HostName, :Port, :EncryptConn, :DatabaseNetEnv, :CcnOwnerUin, :ExtraAttr

        def initialize(databaseregion=nil, user=nil, password=nil, instanceid=nil, cvminstanceid=nil, uniqdcgid=nil, ccnid=nil, uniqvpngwid=nil, vpcid=nil, subnetid=nil, hostname=nil, port=nil, encryptconn=nil, databasenetenv=nil, ccnowneruin=nil, extraattr=nil)
          @DatabaseRegion = databaseregion
          @User = user
          @Password = password
          @InstanceId = instanceid
          @CvmInstanceId = cvminstanceid
          @UniqDcgId = uniqdcgid
          @CcnId = ccnid
          @UniqVpnGwId = uniqvpngwid
          @VpcId = vpcid
          @SubnetId = subnetid
          @HostName = hostname
          @Port = port
          @EncryptConn = encryptconn
          @DatabaseNetEnv = databasenetenv
          @CcnOwnerUin = ccnowneruin
          @ExtraAttr = extraattr
        end

        def deserialize(params)
          @DatabaseRegion = params['DatabaseRegion']
          @User = params['User']
          @Password = params['Password']
          @InstanceId = params['InstanceId']
          @CvmInstanceId = params['CvmInstanceId']
          @UniqDcgId = params['UniqDcgId']
          @CcnId = params['CcnId']
          @UniqVpnGwId = params['UniqVpnGwId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @HostName = params['HostName']
          @Port = params['Port']
          @EncryptConn = params['EncryptConn']
          @DatabaseNetEnv = params['DatabaseNetEnv']
          @CcnOwnerUin = params['CcnOwnerUin']
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

      # 错误信息及其解决方案
      class ErrInfo < TencentCloud::Common::AbstractModel
        # @param Reason: 错误原因
        # @type Reason: String
        # @param Message: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String

        attr_accessor :Reason, :Message, :Solution

        def initialize(reason=nil, message=nil, solution=nil)
          @Reason = reason
          @Message = message
          @Solution = solution
        end

        def deserialize(params)
          @Reason = params['Reason']
          @Message = params['Message']
          @Solution = params['Solution']
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

      # kafka消费者组详情
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param Account: 消费者组账号
        # @type Account: String
        # @param ConsumerGroupName: 消费者组名称
        # @type ConsumerGroupName: String
        # @param Description: 消费者组备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ConsumerGroupOffset: 消费组偏移量。该字段是为了兼容以前单Partition的情况，取值为最后一个分区的偏移量。各分区的偏移量详见StateOfPartition字段
        # @type ConsumerGroupOffset: Integer
        # @param ConsumerGroupLag: 消费组未消费的数据量。该字段是为了兼容以前单Partition的情况，取值为最后一个分区未消费的数据量。各分区未消费数据量详见StateOfPartition字段
        # @type ConsumerGroupLag: Integer
        # @param Latency: 消费延迟(单位为秒)
        # @type Latency: Integer
        # @param StateOfPartition: 各分区的消费状态
        # @type StateOfPartition: Array
        # @param CreatedAt: 消费者组创建时间，格式为YYYY-MM-DD hh:mm:ss
        # @type CreatedAt: String
        # @param UpdatedAt: 消费者组修改时间，格式为YYYY-MM-DD hh:mm:ss
        # @type UpdatedAt: String
        # @param ConsumerGroupState: 消费者组状态，包括Dead、Empty、Stable等，只有Dead和Empty两种状态可以执行reset操作
        # @type ConsumerGroupState: String
        # @param PartitionAssignment: 每个消费者正在消费的分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionAssignment: Array

        attr_accessor :Account, :ConsumerGroupName, :Description, :ConsumerGroupOffset, :ConsumerGroupLag, :Latency, :StateOfPartition, :CreatedAt, :UpdatedAt, :ConsumerGroupState, :PartitionAssignment

        def initialize(account=nil, consumergroupname=nil, description=nil, consumergroupoffset=nil, consumergrouplag=nil, latency=nil, stateofpartition=nil, createdat=nil, updatedat=nil, consumergroupstate=nil, partitionassignment=nil)
          @Account = account
          @ConsumerGroupName = consumergroupname
          @Description = description
          @ConsumerGroupOffset = consumergroupoffset
          @ConsumerGroupLag = consumergrouplag
          @Latency = latency
          @StateOfPartition = stateofpartition
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @ConsumerGroupState = consumergroupstate
          @PartitionAssignment = partitionassignment
        end

        def deserialize(params)
          @Account = params['Account']
          @ConsumerGroupName = params['ConsumerGroupName']
          @Description = params['Description']
          @ConsumerGroupOffset = params['ConsumerGroupOffset']
          @ConsumerGroupLag = params['ConsumerGroupLag']
          @Latency = params['Latency']
          unless params['StateOfPartition'].nil?
            @StateOfPartition = []
            params['StateOfPartition'].each do |i|
              monitorinfo_tmp = MonitorInfo.new
              monitorinfo_tmp.deserialize(i)
              @StateOfPartition << monitorinfo_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @ConsumerGroupState = params['ConsumerGroupState']
          unless params['PartitionAssignment'].nil?
            @PartitionAssignment = []
            params['PartitionAssignment'].each do |i|
              partitionassignment_tmp = PartitionAssignment.new
              partitionassignment_tmp.deserialize(i)
              @PartitionAssignment << partitionassignment_tmp
            end
          end
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

      # IsolateSubscribe请求参数结构体
      class IsolateSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # IsolateSubscribe返回参数结构体
      class IsolateSubscribeResponse < TencentCloud::Common::AbstractModel
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
        # @param Status: 任务状态，取值为：creating(创建中)、created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)、
        # pausing(暂停中)、
        # manualPaused(已暂停)
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
        # @param AutoRetryTimeRangeMinutes: 自动重试时间段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRetryTimeRangeMinutes: Integer
        # @param DumperResumeCtrl: 全量导出可重入标识：enum::"yes"/"no"。yes表示当前任务可重入、no表示当前任务处于全量导出且不可重入阶段；如果在该值为no时重启任务导出流程不支持断点续传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DumperResumeCtrl: String

        attr_accessor :JobId, :JobName, :CreateTime, :UpdateTime, :StartTime, :EndTime, :BriefMsg, :Status, :RunMode, :ExpectRunTime, :Action, :StepInfo, :SrcInfo, :DstInfo, :CompareTask, :TradeInfo, :Tags, :AutoRetryTimeRangeMinutes, :DumperResumeCtrl

        def initialize(jobid=nil, jobname=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, briefmsg=nil, status=nil, runmode=nil, expectruntime=nil, action=nil, stepinfo=nil, srcinfo=nil, dstinfo=nil, comparetask=nil, tradeinfo=nil, tags=nil, autoretrytimerangeminutes=nil, dumperresumectrl=nil)
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
          @AutoRetryTimeRangeMinutes = autoretrytimerangeminutes
          @DumperResumeCtrl = dumperresumectrl
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
          @AutoRetryTimeRangeMinutes = params['AutoRetryTimeRangeMinutes']
          @DumperResumeCtrl = params['DumperResumeCtrl']
        end
      end

      # 目标端为kakfa时添加的同步选项字段
      class KafkaOption < TencentCloud::Common::AbstractModel
        # @param DataType: 投递到kafka的数据类型，如Avro,Json,canal-pb,canal-json
        # @type DataType: String
        # @param TopicType: 同步topic策略，如Single（集中投递到单topic）,Multi (自定义topic名称)
        # @type TopicType: String
        # @param DDLTopicName: 用于存储ddl的topic
        # @type DDLTopicName: String
        # @param TopicRules: 单topic和自定义topic的描述
        # @type TopicRules: Array

        attr_accessor :DataType, :TopicType, :DDLTopicName, :TopicRules

        def initialize(datatype=nil, topictype=nil, ddltopicname=nil, topicrules=nil)
          @DataType = datatype
          @TopicType = topictype
          @DDLTopicName = ddltopicname
          @TopicRules = topicrules
        end

        def deserialize(params)
          @DataType = params['DataType']
          @TopicType = params['TopicType']
          @DDLTopicName = params['DDLTopicName']
          unless params['TopicRules'].nil?
            @TopicRules = []
            params['TopicRules'].each do |i|
              topicrule_tmp = TopicRule.new
              topicrule_tmp.deserialize(i)
              @TopicRules << topicrule_tmp
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
        # ["DstWriteMode":normal, 	目标库写入模式,可取值clearData(清空目标实例数据)、overwrite(以覆盖写的方式执行任务)、normal(跟正常流程一样，不做额外动作) 	"IsDstReadOnly":true, 	是否在迁移时设置目标库只读,true(设置只读)、false(不设置只读) 	"ClientOutputBufferHardLimit":512, 	从机缓冲区的硬性容量限制(MB) 	"ClientOutputBufferSoftLimit":512, 	从机缓冲区的软性容量限制(MB) 	"ClientOutputBufferPersistTime":60, 从机缓冲区的软性限制持续时间(秒) 	"ReplBacklogSize":512, 	环形缓冲区容量限制(MB) 	"ReplTimeout":120，		复制超时时间(秒)]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraAttr: Array
        # @param MigrateWay: pgsql迁移分类：logical(逻辑迁移)、physical(物理迁移)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrateWay: String

        attr_accessor :DatabaseTable, :MigrateType, :Consistency, :IsMigrateAccount, :IsOverrideRoot, :IsDstReadOnly, :ExtraAttr, :MigrateWay

        def initialize(databasetable=nil, migratetype=nil, consistency=nil, ismigrateaccount=nil, isoverrideroot=nil, isdstreadonly=nil, extraattr=nil, migrateway=nil)
          @DatabaseTable = databasetable
          @MigrateType = migratetype
          @Consistency = consistency
          @IsMigrateAccount = ismigrateaccount
          @IsOverrideRoot = isoverrideroot
          @IsDstReadOnly = isdstreadonly
          @ExtraAttr = extraattr
          @MigrateWay = migrateway
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
          @MigrateWay = params['MigrateWay']
        end
      end

      # 数据数据订阅的对象，用于修改订阅对象接口。与SubscribeObject结构类似，只是类型和参数名不同。
      class ModifiedSubscribeObject < TencentCloud::Common::AbstractModel
        # @param ObjectsType: 订阅对象的类型，枚举值为：0-库，1-表(该值对于mongo任务来说，是集合) 。
        # 注意：mongo只支持全实例、单库或者单集合订阅，因此该字段不要与SubscribeObjectType冲突。如：SubscribeObjectType=4，表示mongo单库订阅，那么该字段应该传0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectsType: Integer
        # @param DatabaseName: 订阅数据库的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param TableNames: 订阅数据库中表(或集合)的名称。如果 ObjectsType 为 1，那么此字段为必填，且不为空；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNames: Array

        attr_accessor :ObjectsType, :DatabaseName, :TableNames

        def initialize(objectstype=nil, databasename=nil, tablenames=nil)
          @ObjectsType = objectstype
          @DatabaseName = databasename
          @TableNames = tablenames
        end

        def deserialize(params)
          @ObjectsType = params['ObjectsType']
          @DatabaseName = params['DatabaseName']
          @TableNames = params['TableNames']
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
        # @param JobId: 任务 Id
        # @type JobId: String
        # @param CompareTaskId: 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        # @type CompareTaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ObjectMode: 数据对比对象模式，sameAsMigrate(全部迁移对象， 默认为此项配置)、custom(自定义)，注意自定义对比对象必须是迁移对象的子集
        # @type ObjectMode: String
        # @param Objects: 对比对象，若CompareObjectMode取值为custom，则此项必填
        # @type Objects: :class:`Tencentcloud::Dts.v20211206.models.CompareObject`
        # @param Options: 一致性校验选项
        # @type Options: :class:`Tencentcloud::Dts.v20211206.models.CompareOptions`

        attr_accessor :JobId, :CompareTaskId, :TaskName, :ObjectMode, :Objects, :Options

        def initialize(jobid=nil, comparetaskid=nil, taskname=nil, objectmode=nil, objects=nil, options=nil)
          @JobId = jobid
          @CompareTaskId = comparetaskid
          @TaskName = taskname
          @ObjectMode = objectmode
          @Objects = objects
          @Options = options
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
          unless params['Options'].nil?
            @Options = CompareOptions.new
            @Options.deserialize(params['Options'])
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

      # ModifyConsumerGroupDescription请求参数结构体
      class ModifyConsumerGroupDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String
        # @param ConsumerGroupName: 消费组名称。实际的消费组全称形如：consumer-grp-#{SubscribeId}-#{ConsumerGroupName}。
        # 请务必保证消费组名称正确。
        # @type ConsumerGroupName: String
        # @param AccountName: 账户名称。实际的账户全称形如：account-#{SubscribeId}-#{AccountName}。
        # 请务必保证账户名称正确。
        # @type AccountName: String
        # @param Description: 修改之后的消费组描述
        # @type Description: String

        attr_accessor :SubscribeId, :ConsumerGroupName, :AccountName, :Description

        def initialize(subscribeid=nil, consumergroupname=nil, accountname=nil, description=nil)
          @SubscribeId = subscribeid
          @ConsumerGroupName = consumergroupname
          @AccountName = accountname
          @Description = description
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @ConsumerGroupName = params['ConsumerGroupName']
          @AccountName = params['AccountName']
          @Description = params['Description']
        end
      end

      # ModifyConsumerGroupDescription返回参数结构体
      class ModifyConsumerGroupDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyConsumerGroupPassword请求参数结构体
      class ModifyConsumerGroupPasswordRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String
        # @param AccountName: 账号名称。实际的账户全称形如：account-#{SubscribeId}-#{AccountName}
        # @type AccountName: String
        # @param ConsumerGroupName: 消费组名称。实际的消费组全称形如：consumer-grp-#{SubscribeId}-#{ConsumerGroupName}
        # @type ConsumerGroupName: String
        # @param OldPassword: 旧密码
        # @type OldPassword: String
        # @param NewPassword: 新密码。字符长度不小于3，不大于32
        # @type NewPassword: String

        attr_accessor :SubscribeId, :AccountName, :ConsumerGroupName, :OldPassword, :NewPassword

        def initialize(subscribeid=nil, accountname=nil, consumergroupname=nil, oldpassword=nil, newpassword=nil)
          @SubscribeId = subscribeid
          @AccountName = accountname
          @ConsumerGroupName = consumergroupname
          @OldPassword = oldpassword
          @NewPassword = newpassword
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @AccountName = params['AccountName']
          @ConsumerGroupName = params['ConsumerGroupName']
          @OldPassword = params['OldPassword']
          @NewPassword = params['NewPassword']
        end
      end

      # ModifyConsumerGroupPassword返回参数结构体
      class ModifyConsumerGroupPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrateRateLimit请求参数结构体
      class ModifyMigrateRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务ID
        # @type JobId: String
        # @param DumpThread: 迁移任务全量导出线程数、有效值为 1-16
        # @type DumpThread: Integer
        # @param DumpRps: 迁移全量导出的 Rps 限制、需要大于 0
        # @type DumpRps: Integer
        # @param LoadThread: 迁移任务全量导入线程数、有效值为 1-16
        # @type LoadThread: Integer
        # @param SinkerThread: 迁移任务增量导入线程数、有效值为 1-128
        # @type SinkerThread: Integer
        # @param LoadRps: 全量导入Rps限制
        # @type LoadRps: Integer

        attr_accessor :JobId, :DumpThread, :DumpRps, :LoadThread, :SinkerThread, :LoadRps

        def initialize(jobid=nil, dumpthread=nil, dumprps=nil, loadthread=nil, sinkerthread=nil, loadrps=nil)
          @JobId = jobid
          @DumpThread = dumpthread
          @DumpRps = dumprps
          @LoadThread = loadthread
          @SinkerThread = sinkerthread
          @LoadRps = loadrps
        end

        def deserialize(params)
          @JobId = params['JobId']
          @DumpThread = params['DumpThread']
          @DumpRps = params['DumpRps']
          @LoadThread = params['LoadThread']
          @SinkerThread = params['SinkerThread']
          @LoadRps = params['LoadRps']
        end
      end

      # ModifyMigrateRateLimit返回参数结构体
      class ModifyMigrateRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrateRuntimeAttribute请求参数结构体
      class ModifyMigrateRuntimeAttributeRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务id，如：dts-2rgv0f09
        # @type JobId: String
        # @param OtherOptions: 需要修改的属性，此结构设计为通用结构，用于屏蔽多个业务的定制属性。<br>例如对于Redis:<br>{<br>	 "Key": "DstWriteMode",	//目标库写入模式<br> 	"Value": "normal"	          //clearData(清空目标实例数据)、overwrite(以覆盖写的方式执行任务)、normal(跟正常流程一样，不做额外动作，默认为此值) <br>},<br>{<br/>	 "Key": "IsDstReadOnly",	//是否在迁移时设置目标库只读<br/> 	"Value": "true"	          //true(设置只读)、false(不设置只读) <br/>}
        # @type OtherOptions: Array

        attr_accessor :JobId, :OtherOptions

        def initialize(jobid=nil, otheroptions=nil)
          @JobId = jobid
          @OtherOptions = otheroptions
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['OtherOptions'].nil?
            @OtherOptions = []
            params['OtherOptions'].each do |i|
              keyvaluepairoption_tmp = KeyValuePairOption.new
              keyvaluepairoption_tmp.deserialize(i)
              @OtherOptions << keyvaluepairoption_tmp
            end
          end
        end
      end

      # ModifyMigrateRuntimeAttribute返回参数结构体
      class ModifyMigrateRuntimeAttributeResponse < TencentCloud::Common::AbstractModel
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
        # @param MigrateOption: 迁移任务配置选项，描述任务如何执行迁移等一系列配置信息；字段下的RateLimitOption不可配置、如果需要修改任务的限速信息、请在任务运行后通过ModifyMigrateRateLimit接口修改
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
        # @param AutoRetryTimeRangeMinutes: 自动重试的时间段、可设置5至720分钟、0表示不重试
        # @type AutoRetryTimeRangeMinutes: Integer

        attr_accessor :JobId, :RunMode, :MigrateOption, :SrcInfo, :DstInfo, :JobName, :ExpectRunTime, :Tags, :AutoRetryTimeRangeMinutes

        def initialize(jobid=nil, runmode=nil, migrateoption=nil, srcinfo=nil, dstinfo=nil, jobname=nil, expectruntime=nil, tags=nil, autoretrytimerangeminutes=nil)
          @JobId = jobid
          @RunMode = runmode
          @MigrateOption = migrateoption
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @JobName = jobname
          @ExpectRunTime = expectruntime
          @Tags = tags
          @AutoRetryTimeRangeMinutes = autoretrytimerangeminutes
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
          @AutoRetryTimeRangeMinutes = params['AutoRetryTimeRangeMinutes']
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

      # ModifySubscribeAutoRenewFlag请求参数结构体
      class ModifySubscribeAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String
        # @param AutoRenewFlag: 自动续费标识。1-自动续费，0-不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :SubscribeId, :AutoRenewFlag

        def initialize(subscribeid=nil, autorenewflag=nil)
          @SubscribeId = subscribeid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifySubscribeAutoRenewFlag返回参数结构体
      class ModifySubscribeAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeName请求参数结构体
      class ModifySubscribeNameRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param SubscribeName: 修改后的数据订阅实例的名称，长度限制为[1,60]
        # @type SubscribeName: String

        attr_accessor :SubscribeId, :SubscribeName

        def initialize(subscribeid=nil, subscribename=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
        end
      end

      # ModifySubscribeName返回参数结构体
      class ModifySubscribeNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeObjects请求参数结构体
      class ModifySubscribeObjectsRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param SubscribeObjectType: 数据订阅的类型，非mongo任务的枚举值：0-全实例更新；1-数据更新；2-结构更新；3-数据更新+结构更新。mongo任务的枚举值：0-全实例更新；4-订阅单库；5-订阅单集合
        # @type SubscribeObjectType: Integer
        # @param Objects: 修改后的订阅数据库表信息。会覆盖原来的订阅对象，所以除非 SubscribeObjectType = 0或2，否则改字段必填。
        # @type Objects: Array
        # @param DistributeRules: kafka分区策略。如果不填，默认不修改。如果填了，会覆盖原来的策略。
        # @type DistributeRules: Array
        # @param DefaultRuleType: 默认分区策略。不满足DistributeRules中正则表达式的数据，将按照默认分区策略计算分区。
        # 非mongo产品支持的默认策略: table-按表名分区，pk-按表名+主键分区。mongo的默认策略仅支持：collection-按集合名分区。
        # 该字段与DistributeRules搭配使用。如果配置了DistributeRules，该字段也必填。如果配置了该字段，视为配置了一条DistributeRules，原来的分区策略也会被覆盖。
        # @type DefaultRuleType: String
        # @param PipelineInfo: mongo输出聚合设置，mongo任务可选。如果不填，默认不修改。
        # @type PipelineInfo: Array

        attr_accessor :SubscribeId, :SubscribeObjectType, :Objects, :DistributeRules, :DefaultRuleType, :PipelineInfo

        def initialize(subscribeid=nil, subscribeobjecttype=nil, objects=nil, distributerules=nil, defaultruletype=nil, pipelineinfo=nil)
          @SubscribeId = subscribeid
          @SubscribeObjectType = subscribeobjecttype
          @Objects = objects
          @DistributeRules = distributerules
          @DefaultRuleType = defaultruletype
          @PipelineInfo = pipelineinfo
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeObjectType = params['SubscribeObjectType']
          unless params['Objects'].nil?
            @Objects = []
            params['Objects'].each do |i|
              modifiedsubscribeobject_tmp = ModifiedSubscribeObject.new
              modifiedsubscribeobject_tmp.deserialize(i)
              @Objects << modifiedsubscribeobject_tmp
            end
          end
          unless params['DistributeRules'].nil?
            @DistributeRules = []
            params['DistributeRules'].each do |i|
              distributerule_tmp = DistributeRule.new
              distributerule_tmp.deserialize(i)
              @DistributeRules << distributerule_tmp
            end
          end
          @DefaultRuleType = params['DefaultRuleType']
          unless params['PipelineInfo'].nil?
            @PipelineInfo = []
            params['PipelineInfo'].each do |i|
              pipelineinfo_tmp = PipelineInfo.new
              pipelineinfo_tmp.deserialize(i)
              @PipelineInfo << pipelineinfo_tmp
            end
          end
        end
      end

      # ModifySubscribeObjects返回参数结构体
      class ModifySubscribeObjectsResponse < TencentCloud::Common::AbstractModel
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

      # ModifySyncJobConfig请求参数结构体
      class ModifySyncJobConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id
        # @type JobId: String
        # @param DynamicObjects: 修改后的同步对象
        # @type DynamicObjects: :class:`Tencentcloud::Dts.v20211206.models.Objects`
        # @param DynamicOptions: 修改后的同步任务选项
        # @type DynamicOptions: :class:`Tencentcloud::Dts.v20211206.models.DynamicOptions`

        attr_accessor :JobId, :DynamicObjects, :DynamicOptions

        def initialize(jobid=nil, dynamicobjects=nil, dynamicoptions=nil)
          @JobId = jobid
          @DynamicObjects = dynamicobjects
          @DynamicOptions = dynamicoptions
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['DynamicObjects'].nil?
            @DynamicObjects = Objects.new
            @DynamicObjects.deserialize(params['DynamicObjects'])
          end
          unless params['DynamicOptions'].nil?
            @DynamicOptions = DynamicOptions.new
            @DynamicOptions.deserialize(params['DynamicOptions'])
          end
        end
      end

      # ModifySyncJobConfig返回参数结构体
      class ModifySyncJobConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifySyncRateLimit请求参数结构体
      class ModifySyncRateLimitRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 迁移任务ID
        # @type JobId: String
        # @param DumpThread: 同步任务全量导出线程数、有效值为 1-16
        # @type DumpThread: Integer
        # @param DumpRps: 同步任务全量导出的 Rps 限制、需要大于 0
        # @type DumpRps: Integer
        # @param LoadThread: 同步任务全量导入线程数、有效值为 1-16
        # @type LoadThread: Integer
        # @param SinkerThread: 同步任务增量导入线程数、有效值为 1-128
        # @type SinkerThread: Integer
        # @param LoadRps: 同步任务全量导入的Rps
        # @type LoadRps: Integer

        attr_accessor :JobId, :DumpThread, :DumpRps, :LoadThread, :SinkerThread, :LoadRps

        def initialize(jobid=nil, dumpthread=nil, dumprps=nil, loadthread=nil, sinkerthread=nil, loadrps=nil)
          @JobId = jobid
          @DumpThread = dumpthread
          @DumpRps = dumprps
          @LoadThread = loadthread
          @SinkerThread = sinkerthread
          @LoadRps = loadrps
        end

        def deserialize(params)
          @JobId = params['JobId']
          @DumpThread = params['DumpThread']
          @DumpRps = params['DumpRps']
          @LoadThread = params['LoadThread']
          @SinkerThread = params['SinkerThread']
          @LoadRps = params['LoadRps']
        end
      end

      # ModifySyncRateLimit返回参数结构体
      class ModifySyncRateLimitResponse < TencentCloud::Common::AbstractModel
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

      # kafka消费者组的分区详情
      class MonitorInfo < TencentCloud::Common::AbstractModel
        # @param PartitionNo: 当前分区的编号，从0开始
        # @type PartitionNo: Integer
        # @param ConsumerGroupOffset: 当前分区的偏移量
        # @type ConsumerGroupOffset: Integer
        # @param ConsumerGroupLag: 当前分区未消费的数据量
        # @type ConsumerGroupLag: Integer
        # @param Latency: 当前分区的消费延迟(单位为秒)
        # @type Latency: Integer

        attr_accessor :PartitionNo, :ConsumerGroupOffset, :ConsumerGroupLag, :Latency

        def initialize(partitionno=nil, consumergroupoffset=nil, consumergrouplag=nil, latency=nil)
          @PartitionNo = partitionno
          @ConsumerGroupOffset = consumergroupoffset
          @ConsumerGroupLag = consumergrouplag
          @Latency = latency
        end

        def deserialize(params)
          @PartitionNo = params['PartitionNo']
          @ConsumerGroupOffset = params['ConsumerGroupOffset']
          @ConsumerGroupLag = params['ConsumerGroupLag']
          @Latency = params['Latency']
        end
      end

      # 同步的数据库对对象描述
      class Objects < TencentCloud::Common::AbstractModel
        # @param Mode: 同步对象类型 Partial(部分对象)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Databases: 同步对象，当 Mode 为 Partial 时，不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param AdvancedObjects: 高级对象类型，如function、procedure。注意：如果要迁移同步高级对象，此配置中应该包含对应的高级对象类型。当需要同步高级对象时，初始化类型必须包含结构初始化类型，即任务的Options.InitType字段值为Structure或Full
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedObjects: Array
        # @param OnlineDDL: OnlineDDL类型，冗余字段不做配置用途
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineDDL: :class:`Tencentcloud::Dts.v20211206.models.OnlineDDL`

        attr_accessor :Mode, :Databases, :AdvancedObjects, :OnlineDDL

        def initialize(mode=nil, databases=nil, advancedobjects=nil, onlineddl=nil)
          @Mode = mode
          @Databases = databases
          @AdvancedObjects = advancedobjects
          @OnlineDDL = onlineddl
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
          unless params['OnlineDDL'].nil?
            @OnlineDDL = OnlineDDL.new
            @OnlineDDL.deserialize(params['OnlineDDL'])
          end
        end
      end

      # 数据订阅kafka分区中checkpoint信息
      class OffsetTimeMap < TencentCloud::Common::AbstractModel
        # @param PartitionNo: kafka分区编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNo: Integer
        # @param Offset: kafka offset
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer

        attr_accessor :PartitionNo, :Offset

        def initialize(partitionno=nil, offset=nil)
          @PartitionNo = partitionno
          @Offset = offset
        end

        def deserialize(params)
          @PartitionNo = params['PartitionNo']
          @Offset = params['Offset']
        end
      end

      # OnlineDDL类型
      class OnlineDDL < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
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
        # @param KafkaOption: kafka同步选项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaOption: :class:`Tencentcloud::Dts.v20211206.models.KafkaOption`
        # @param RateLimitOption: 任务限速信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitOption: :class:`Tencentcloud::Dts.v20211206.models.RateLimitOption`
        # @param AutoRetryTimeRangeMinutes: 自动重试的时间窗口设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRetryTimeRangeMinutes: Integer
        # @param FilterBeginCommit: 同步到kafka链路是否过滤掉begin和commit消息。目前仅mysql2kafka链路支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterBeginCommit: Boolean
        # @param FilterCheckpoint: 同步到kafka链路是否过滤掉checkpoint消息。目前仅mysql2kafka链路支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterCheckpoint: Boolean

        attr_accessor :InitType, :DealOfExistSameTable, :ConflictHandleType, :AddAdditionalColumn, :OpTypes, :ConflictHandleOption, :DdlOptions, :KafkaOption, :RateLimitOption, :AutoRetryTimeRangeMinutes, :FilterBeginCommit, :FilterCheckpoint

        def initialize(inittype=nil, dealofexistsametable=nil, conflicthandletype=nil, addadditionalcolumn=nil, optypes=nil, conflicthandleoption=nil, ddloptions=nil, kafkaoption=nil, ratelimitoption=nil, autoretrytimerangeminutes=nil, filterbegincommit=nil, filtercheckpoint=nil)
          @InitType = inittype
          @DealOfExistSameTable = dealofexistsametable
          @ConflictHandleType = conflicthandletype
          @AddAdditionalColumn = addadditionalcolumn
          @OpTypes = optypes
          @ConflictHandleOption = conflicthandleoption
          @DdlOptions = ddloptions
          @KafkaOption = kafkaoption
          @RateLimitOption = ratelimitoption
          @AutoRetryTimeRangeMinutes = autoretrytimerangeminutes
          @FilterBeginCommit = filterbegincommit
          @FilterCheckpoint = filtercheckpoint
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
          unless params['KafkaOption'].nil?
            @KafkaOption = KafkaOption.new
            @KafkaOption.deserialize(params['KafkaOption'])
          end
          unless params['RateLimitOption'].nil?
            @RateLimitOption = RateLimitOption.new
            @RateLimitOption.deserialize(params['RateLimitOption'])
          end
          @AutoRetryTimeRangeMinutes = params['AutoRetryTimeRangeMinutes']
          @FilterBeginCommit = params['FilterBeginCommit']
          @FilterCheckpoint = params['FilterCheckpoint']
        end
      end

      # 数据订阅中kafka消费者组的分区分配情况。该数据是实时查询的，如果需要最新数据，需重新掉接口查询。
      class PartitionAssignment < TencentCloud::Common::AbstractModel
        # @param ClientId: 消费者的clientId
        # @type ClientId: String
        # @param PartitionNo: 该消费者正在消费的分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNo: Array

        attr_accessor :ClientId, :PartitionNo

        def initialize(clientid=nil, partitionno=nil)
          @ClientId = clientid
          @PartitionNo = partitionno
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @PartitionNo = params['PartitionNo']
        end
      end

      # PauseMigrateJob请求参数结构体
      class PauseMigrateJobRequest < TencentCloud::Common::AbstractModel
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

      # PauseMigrateJob返回参数结构体
      class PauseMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # PauseSyncJob请求参数结构体
      class PauseSyncJobRequest < TencentCloud::Common::AbstractModel
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

      # PauseSyncJob返回参数结构体
      class PauseSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # mongo输出聚合设置。输出默认 Change Event
      class PipelineInfo < TencentCloud::Common::AbstractModel
        # @param AggOp: 聚合运算符：$addFields、$match、$project、$replaceRoot、$redact、$replaceWith、$set、$unset。其中 $replaceWith、$set、$unset 只有当订阅实例是4.2及以上版本可选。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggOp: String
        # @param AggCmd: 聚合表达式。必须是json格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggCmd: String

        attr_accessor :AggOp, :AggCmd

        def initialize(aggop=nil, aggcmd=nil)
          @AggOp = aggop
          @AggCmd = aggcmd
        end

        def deserialize(params)
          @AggOp = params['AggOp']
          @AggCmd = params['AggCmd']
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

      # 迁移和同步任务限速的详细信息
      class RateLimitOption < TencentCloud::Common::AbstractModel
        # @param CurrentDumpThread: 当前生效的全量导出线程数，配置任务时可调整该字段值，注意：如果不设置或设置为0则表示保持当前值，最大值为16
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentDumpThread: Integer
        # @param DefaultDumpThread: 默认的全量导出线程数，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDumpThread: Integer
        # @param CurrentDumpRps: 当前生效的全量导出Rps，配置任务时可调整该字段值，注意：如果不设置或设置为0则表示保持当前值，最大值为50000000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentDumpRps: Integer
        # @param DefaultDumpRps: 默认的全量导出Rps，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDumpRps: Integer
        # @param CurrentLoadThread: 当前生效的全量导入线程数，配置任务时可调整该字段值，注意：如果不设置或设置为0则表示保持当前值，最大值为16
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentLoadThread: Integer
        # @param DefaultLoadThread: 默认的全量导入线程数，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultLoadThread: Integer
        # @param CurrentLoadRps: 当前生效的全量导入Rps，配置任务时可调整该字段值，注意：如果不设置或设置为0则表示保持当前值，最大值为50000000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentLoadRps: Integer
        # @param DefaultLoadRps: 默认的全量导入Rps，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultLoadRps: Integer
        # @param CurrentSinkerThread: 当前生效的增量导入线程数，配置任务时可调整该字段值，注意：如果不设置或设置为0则表示保持当前值，最大值为128
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentSinkerThread: Integer
        # @param DefaultSinkerThread: 默认的增量导入线程数，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultSinkerThread: Integer
        # @param HasUserSetRateLimit: enum:"no"/"yes"、no表示用户未设置过限速、yes表示设置过限速，该字段仅在出参有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasUserSetRateLimit: String

        attr_accessor :CurrentDumpThread, :DefaultDumpThread, :CurrentDumpRps, :DefaultDumpRps, :CurrentLoadThread, :DefaultLoadThread, :CurrentLoadRps, :DefaultLoadRps, :CurrentSinkerThread, :DefaultSinkerThread, :HasUserSetRateLimit

        def initialize(currentdumpthread=nil, defaultdumpthread=nil, currentdumprps=nil, defaultdumprps=nil, currentloadthread=nil, defaultloadthread=nil, currentloadrps=nil, defaultloadrps=nil, currentsinkerthread=nil, defaultsinkerthread=nil, hasusersetratelimit=nil)
          @CurrentDumpThread = currentdumpthread
          @DefaultDumpThread = defaultdumpthread
          @CurrentDumpRps = currentdumprps
          @DefaultDumpRps = defaultdumprps
          @CurrentLoadThread = currentloadthread
          @DefaultLoadThread = defaultloadthread
          @CurrentLoadRps = currentloadrps
          @DefaultLoadRps = defaultloadrps
          @CurrentSinkerThread = currentsinkerthread
          @DefaultSinkerThread = defaultsinkerthread
          @HasUserSetRateLimit = hasusersetratelimit
        end

        def deserialize(params)
          @CurrentDumpThread = params['CurrentDumpThread']
          @DefaultDumpThread = params['DefaultDumpThread']
          @CurrentDumpRps = params['CurrentDumpRps']
          @DefaultDumpRps = params['DefaultDumpRps']
          @CurrentLoadThread = params['CurrentLoadThread']
          @DefaultLoadThread = params['DefaultLoadThread']
          @CurrentLoadRps = params['CurrentLoadRps']
          @DefaultLoadRps = params['DefaultLoadRps']
          @CurrentSinkerThread = params['CurrentSinkerThread']
          @DefaultSinkerThread = params['DefaultSinkerThread']
          @HasUserSetRateLimit = params['HasUserSetRateLimit']
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

      # ResetConsumerGroupOffset请求参数结构体
      class ResetConsumerGroupOffsetRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例id
        # @type SubscribeId: String
        # @param TopicName: 订阅的kafka topic
        # @type TopicName: String
        # @param ConsumerGroupName: 消费组名称。实际的消费组全称形如：consumer-grp-#{SubscribeId}-#{ConsumerGroupName}
        # @type ConsumerGroupName: String
        # @param PartitionNos: 需要修改offset的分区编号
        # @type PartitionNos: Array
        # @param ResetMode: 重置方式。枚举值为 earliest-从最开始位置开始消费；latest-从最新位置开始消费；datetime-从指定时间前最近的checkpoint开始消费
        # @type ResetMode: String
        # @param ResetDatetime: 当 ResetMode 为 datetime 时，该项需要填，格式为：Y-m-d h:m:s。如果不填，默认用0时间，效果与earliest相同。
        # @type ResetDatetime: String

        attr_accessor :SubscribeId, :TopicName, :ConsumerGroupName, :PartitionNos, :ResetMode, :ResetDatetime

        def initialize(subscribeid=nil, topicname=nil, consumergroupname=nil, partitionnos=nil, resetmode=nil, resetdatetime=nil)
          @SubscribeId = subscribeid
          @TopicName = topicname
          @ConsumerGroupName = consumergroupname
          @PartitionNos = partitionnos
          @ResetMode = resetmode
          @ResetDatetime = resetdatetime
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @TopicName = params['TopicName']
          @ConsumerGroupName = params['ConsumerGroupName']
          @PartitionNos = params['PartitionNos']
          @ResetMode = params['ResetMode']
          @ResetDatetime = params['ResetDatetime']
        end
      end

      # ResetConsumerGroupOffset返回参数结构体
      class ResetConsumerGroupOffsetResponse < TencentCloud::Common::AbstractModel
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

      # ResetSubscribe请求参数结构体
      class ResetSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # ResetSubscribe返回参数结构体
      class ResetSubscribeResponse < TencentCloud::Common::AbstractModel
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
        # @param ResumeOption: 恢复任务的模式，目前的取值有：clearData 清空目标实例数据，overwrite 以覆盖写的方式执行任务，normal 跟正常流程一样，不做额外动作；注意，clearData、overwrite仅对redis生效，normal仅针对非redis链路生效
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

      # ResumeSubscribe请求参数结构体
      class ResumeSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # ResumeSubscribe返回参数结构体
      class ResumeSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # mongodb行校验不一致详细信息
      class RowsCountDifference < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Db: String
        # @param Table: 集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param SrcCount: 源端行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcCount: Integer
        # @param DstCount: 目标端行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstCount: Integer

        attr_accessor :Db, :Table, :SrcCount, :DstCount

        def initialize(db=nil, table=nil, srccount=nil, dstcount=nil)
          @Db = db
          @Table = table
          @SrcCount = srccount
          @DstCount = dstcount
        end

        def deserialize(params)
          @Db = params['Db']
          @Table = params['Table']
          @SrcCount = params['SrcCount']
          @DstCount = params['DstCount']
        end
      end

      # SkipCheckItem请求参数结构体
      class SkipCheckItemRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param StepIds: 需要跳过校验项的步骤id，需要通过DescribeMigrationCheckJob接口返回StepInfo[i].StepId字段获取，例如：["OptimizeCheck"]
        # @type StepIds: Array
        # @param ForeignKeyFlag: 当出现外键依赖检查导致校验不通过时、可以通过该字段选择是否迁移外键依赖，当StepIds包含ConstraintCheck且该字段值为shield时表示不迁移外键依赖、当StepIds包含ConstraintCheck且值为migrate时表示迁移外键依赖
        # @type ForeignKeyFlag: String

        attr_accessor :JobId, :StepIds, :ForeignKeyFlag

        def initialize(jobid=nil, stepids=nil, foreignkeyflag=nil)
          @JobId = jobid
          @StepIds = stepids
          @ForeignKeyFlag = foreignkeyflag
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StepIds = params['StepIds']
          @ForeignKeyFlag = params['ForeignKeyFlag']
        end
      end

      # SkipCheckItem返回参数结构体
      class SkipCheckItemResponse < TencentCloud::Common::AbstractModel
        # @param Message: 跳过的提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Message, :RequestId

        def initialize(message=nil, requestid=nil)
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # SkipSyncCheckItem请求参数结构体
      class SkipSyncCheckItemRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id，如：sync-4ddgid2
        # @type JobId: String
        # @param StepIds: 需要跳过校验项的步骤id，需要通过`DescribeCheckSyncJobResult`接口返回StepInfos[i].StepId字段获取，例如：["OptimizeCheck"]
        # @type StepIds: Array

        attr_accessor :JobId, :StepIds

        def initialize(jobid=nil, stepids=nil)
          @JobId = jobid
          @StepIds = stepids
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StepIds = params['StepIds']
        end
      end

      # SkipSyncCheckItem返回参数结构体
      class SkipSyncCheckItemResponse < TencentCloud::Common::AbstractModel
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

      # StartModifySyncJob请求参数结构体
      class StartModifySyncJobRequest < TencentCloud::Common::AbstractModel
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

      # StartModifySyncJob返回参数结构体
      class StartModifySyncJobResponse < TencentCloud::Common::AbstractModel
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

      # StartSubscribe请求参数结构体
      class StartSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的 ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId

        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # StartSubscribe返回参数结构体
      class StartSubscribeResponse < TencentCloud::Common::AbstractModel
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
        # @param Status: 当前步骤状态,可能返回有 notStarted(未开始)、running(校验中)、failed(校验任务失败)、finished(完成)、skipped(跳过)、paused(暂停)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: 步骤开始时间，可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param Errors: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param Warnings: 警告信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warnings: Array
        # @param Progress: 当前步骤进度，范围为[0-100]，若为-1表示当前步骤不支持查看进度
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
        # @param SkipInfo: 当前步骤跳过信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipInfo: String

        attr_accessor :Code, :Message, :Solution, :HelpDoc, :SkipInfo

        def initialize(code=nil, message=nil, solution=nil, helpdoc=nil, skipinfo=nil)
          @Code = code
          @Message = message
          @Solution = solution
          @HelpDoc = helpdoc
          @SkipInfo = skipinfo
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Solution = params['Solution']
          @HelpDoc = params['HelpDoc']
          @SkipInfo = params['SkipInfo']
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

      # 订阅报错信息
      class SubsErr < TencentCloud::Common::AbstractModel
        # @param Message: 报错信息
        # @type Message: String

        attr_accessor :Message

        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          @Message = params['Message']
        end
      end

      # 订阅校验任务的各步骤信息。
      class SubscribeCheckStepInfo < TencentCloud::Common::AbstractModel
        # @param StepName: 步骤名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepName: String
        # @param StepId: 步骤Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepId: String
        # @param StepNo: 步骤编号，从 1 开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepNo: Integer
        # @param Status: 当前步骤状态，可能值为 notStarted,running,finished,failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Percent: 当前步骤进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param Errors: 错误提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param Warnings: 告警提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Warnings: Array

        attr_accessor :StepName, :StepId, :StepNo, :Status, :Percent, :Errors, :Warnings

        def initialize(stepname=nil, stepid=nil, stepno=nil, status=nil, percent=nil, errors=nil, warnings=nil)
          @StepName = stepname
          @StepId = stepid
          @StepNo = stepno
          @Status = status
          @Percent = percent
          @Errors = errors
          @Warnings = warnings
        end

        def deserialize(params)
          @StepName = params['StepName']
          @StepId = params['StepId']
          @StepNo = params['StepNo']
          @Status = params['Status']
          @Percent = params['Percent']
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              subscribechecksteptip_tmp = SubscribeCheckStepTip.new
              subscribechecksteptip_tmp.deserialize(i)
              @Errors << subscribechecksteptip_tmp
            end
          end
          unless params['Warnings'].nil?
            @Warnings = []
            params['Warnings'].each do |i|
              subscribechecksteptip_tmp = SubscribeCheckStepTip.new
              subscribechecksteptip_tmp.deserialize(i)
              @Warnings << subscribechecksteptip_tmp
            end
          end
        end
      end

      # 订阅校验任务的提示信息
      class SubscribeCheckStepTip < TencentCloud::Common::AbstractModel
        # @param Message: 错误或告警的详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param HelpDoc: 帮助文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HelpDoc: String

        attr_accessor :Message, :HelpDoc

        def initialize(message=nil, helpdoc=nil)
          @Message = message
          @HelpDoc = helpdoc
        end

        def deserialize(params)
          @Message = params['Message']
          @HelpDoc = params['HelpDoc']
        end
      end

      # 订阅实例信息
      class SubscribeInfo < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅的实例ID
        # @type SubscribeId: String
        # @param SubscribeName: 数据订阅实例的名称
        # @type SubscribeName: String
        # @param Topic: 订阅实例发送数据的kafka topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param Product: 订阅实例的类型，目前支持 cynosdbmysql,mariadb,mongodb,mysql,percona,tdpg,tdsqlpercona(tdsqlmysql)
        # @type Product: String
        # @param InstanceId: 订阅的数据库实例ID（如果订阅的是云数据库）如果实例不是腾讯云上的，此值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceStatus: 云数据库状态：running 运行中，isolated 已隔离，offline 已下线。如果不是云上，此值为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param Status: 数据订阅生命周期状态，可能的值为：正常 normal, 隔离中 isolating, 已隔离 isolated, 下线中 offlining, 按量转包年包月中 post2PrePayIng
        # @type Status: String
        # @param SubsStatus: 数据订阅状态，可能的值为：未启动 notStarted, 校验中 checking, 校验不通过 checkNotPass, 校验通过 checkPass, 启动中 starting, 运行中 running, 异常出错 error
        # @type SubsStatus: String
        # @param ModifyTime: 上次修改时间，时间格式如：Y-m-d h:m:s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param CreateTime: 创建时间，时间格式如：Y-m-d h:m:s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param IsolateTime: 隔离时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String
        # @param ExpireTime: 包年包月任务的到期时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param OfflineTime: 下线时间，时间格式如：Y-m-d h:m:s。默认：0000-00-00 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param PayType: 计费方式，0 - 包年包月，1 - 按量计费
        # @type PayType: Integer
        # @param AutoRenewFlag: 自动续费标识。只有当 PayType=0，该值才有意义。枚举值：0-不自动续费，1-自动续费
        # @type AutoRenewFlag: Integer
        # @param Region: 数据订阅实例所属地域
        # @type Region: String
        # @param AccessType: 接入方式。枚举值：extranet(公网) vpncloud(vpn接入) dcg(专线接入) ccn(云联网) cdb(云数据库) cvm(云主机自建) intranet(自研上云) vpc(私有网络vpc)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: String
        # @param Endpoints: 数据库节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Endpoints: Array
        # @param SubscribeVersion: 数据订阅版本, 当前只支持 kafka 版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeVersion: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Errors: 任务报错信息，如果有的话。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array

        attr_accessor :SubscribeId, :SubscribeName, :Topic, :Product, :InstanceId, :InstanceStatus, :Status, :SubsStatus, :ModifyTime, :CreateTime, :IsolateTime, :ExpireTime, :OfflineTime, :PayType, :AutoRenewFlag, :Region, :AccessType, :Endpoints, :SubscribeVersion, :Tags, :Errors

        def initialize(subscribeid=nil, subscribename=nil, topic=nil, product=nil, instanceid=nil, instancestatus=nil, status=nil, subsstatus=nil, modifytime=nil, createtime=nil, isolatetime=nil, expiretime=nil, offlinetime=nil, paytype=nil, autorenewflag=nil, region=nil, accesstype=nil, endpoints=nil, subscribeversion=nil, tags=nil, errors=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @Topic = topic
          @Product = product
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
          @Status = status
          @SubsStatus = subsstatus
          @ModifyTime = modifytime
          @CreateTime = createtime
          @IsolateTime = isolatetime
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @PayType = paytype
          @AutoRenewFlag = autorenewflag
          @Region = region
          @AccessType = accesstype
          @Endpoints = endpoints
          @SubscribeVersion = subscribeversion
          @Tags = tags
          @Errors = errors
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @Topic = params['Topic']
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
          @Status = params['Status']
          @SubsStatus = params['SubsStatus']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @IsolateTime = params['IsolateTime']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @PayType = params['PayType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Region = params['Region']
          @AccessType = params['AccessType']
          unless params['Endpoints'].nil?
            @Endpoints = []
            params['Endpoints'].each do |i|
              endpointitem_tmp = EndpointItem.new
              endpointitem_tmp.deserialize(i)
              @Endpoints << endpointitem_tmp
            end
          end
          @SubscribeVersion = params['SubscribeVersion']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @Tags << tagitem_tmp
            end
          end
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              subserr_tmp = SubsErr.new
              subserr_tmp.deserialize(i)
              @Errors << subserr_tmp
            end
          end
        end
      end

      # 订阅的kafka分区数和分区规则。mariadb，percona，tdsqlmysql，tdpg不支持自定义分区，所以DistributeRules和DefaultRuleType可以不填，但是NumberOfPartitions是必填。
      class SubscribeKafkaConfig < TencentCloud::Common::AbstractModel
        # @param NumberOfPartitions: kafka分区数量，枚举值为1，4，8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberOfPartitions: Integer
        # @param DistributeRules: 分区规则。当NumberOfPartitions > 1时，该项必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeRules: Array
        # @param DefaultRuleType: 默认分区策略。当NumberOfPartitions > 1时，该项必填。不满足DistributeRules中正则表达式的数据，将按照默认分区策略计算分区。
        # 非mongo产品的枚举值为: table-按表名分区，pk-按表名+主键分区。mongo的枚举值为：collection-按集合名分区。
        # 该字段与DistributeRules搭配使用，如果配置了该字段，视为配置了一条DistributeRules。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultRuleType: String

        attr_accessor :NumberOfPartitions, :DistributeRules, :DefaultRuleType

        def initialize(numberofpartitions=nil, distributerules=nil, defaultruletype=nil)
          @NumberOfPartitions = numberofpartitions
          @DistributeRules = distributerules
          @DefaultRuleType = defaultruletype
        end

        def deserialize(params)
          @NumberOfPartitions = params['NumberOfPartitions']
          unless params['DistributeRules'].nil?
            @DistributeRules = []
            params['DistributeRules'].each do |i|
              distributerule_tmp = DistributeRule.new
              distributerule_tmp.deserialize(i)
              @DistributeRules << distributerule_tmp
            end
          end
          @DefaultRuleType = params['DefaultRuleType']
        end
      end

      # 订阅的数据库表信息，用于配置和查询订阅任务接口。
      class SubscribeObject < TencentCloud::Common::AbstractModel
        # @param ObjectType: 订阅数据的类型，枚举值：database-数据库，table-数据库的表(如果 DatabaseType 为 mongodb，则表示集合)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectType: String
        # @param Database: 订阅的数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Tables: 订阅数据库中表的名称。如果 DatabaseType 为 mongodb，填集合名。mongodb只支持订阅单库或者单集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array

        attr_accessor :ObjectType, :Database, :Tables

        def initialize(objecttype=nil, database=nil, tables=nil)
          @ObjectType = objecttype
          @Database = database
          @Tables = tables
        end

        def deserialize(params)
          @ObjectType = params['ObjectType']
          @Database = params['Database']
          @Tables = params['Tables']
        end
      end

      # 数据同步配置多节点数据库的节点信息。多节点数据库，如tdsqlmysql使用该结构；单节点数据库，如mysql使用Endpoint。
      class SyncDBEndpointInfos < TencentCloud::Common::AbstractModel
        # @param Region: 数据库所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AccessType: 实例网络接入类型，如：extranet(外网)、ipv6(公网ipv6)、cvm(云主机自建)、dcg(专线接入)、vpncloud(vpn接入的实例)、cdb(云数据库)、ccn(云联网)、intranet(自研上云)、vpc(私有网络)等，注意具体可选值依赖当前链路
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: String
        # @param DatabaseType: 实例数据库类型，如：mysql,redis,mongodb,postgresql,mariadb,percona 等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseType: String
        # @param Info: 数据库信息。注意：如果数据类型为tdsqlmysql，此处Endpoint数组的顺序应该与set顺序对应，第一个分片（shardkey范围起始为0的分片）必须要输入在第一个位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: Array

        attr_accessor :Region, :AccessType, :DatabaseType, :Info

        def initialize(region=nil, accesstype=nil, databasetype=nil, info=nil)
          @Region = region
          @AccessType = accesstype
          @DatabaseType = databasetype
          @Info = info
        end

        def deserialize(params)
          @Region = params['Region']
          @AccessType = params['AccessType']
          @DatabaseType = params['DatabaseType']
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              endpoint_tmp = Endpoint.new
              endpoint_tmp.deserialize(i)
              @Info << endpoint_tmp
            end
          end
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
        # @param CurrentStepProgress: 当前步骤进度，范围为[0-100]，若为-1表示当前步骤不支持查看进度
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
        # @param CauseOfCompareDisable: 不能发起一致性校验的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CauseOfCompareDisable: String
        # @param ErrInfo: 任务的错误和解决方案信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrInfo: :class:`Tencentcloud::Dts.v20211206.models.ErrInfo`

        attr_accessor :StepAll, :StepNow, :Progress, :CurrentStepProgress, :MasterSlaveDistance, :SecondsBehindMaster, :Message, :StepInfos, :CauseOfCompareDisable, :ErrInfo

        def initialize(stepall=nil, stepnow=nil, progress=nil, currentstepprogress=nil, masterslavedistance=nil, secondsbehindmaster=nil, message=nil, stepinfos=nil, causeofcomparedisable=nil, errinfo=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @Progress = progress
          @CurrentStepProgress = currentstepprogress
          @MasterSlaveDistance = masterslavedistance
          @SecondsBehindMaster = secondsbehindmaster
          @Message = message
          @StepInfos = stepinfos
          @CauseOfCompareDisable = causeofcomparedisable
          @ErrInfo = errinfo
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
          @CauseOfCompareDisable = params['CauseOfCompareDisable']
          unless params['ErrInfo'].nil?
            @ErrInfo = ErrInfo.new
            @ErrInfo.deserialize(params['ErrInfo'])
          end
        end
      end

      # 同步任务信息
      class SyncJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: 同步任务id，如：sync-btso140
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 同步任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param PayMode: 付款方式，PostPay(按量付费)、PrePay(包年包月)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param RunMode: 运行模式，Immediate(表示立即运行，默认为此项值)、Timed(表示定时运行)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunMode: String
        # @param ExpectRunTime: 期待运行时间，格式为 yyyy-mm-dd hh:mm:ss
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
        # @param ExpireTime: 过期时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param SrcRegion: 源端地域，如：ap-guangzhou等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcRegion: String
        # @param SrcDatabaseType: 源端数据库类型，mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcDatabaseType: String
        # @param SrcAccessType: 源端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcAccessType: String
        # @param SrcInfo: 源端信息，单节点数据库使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param SrcNodeType: 枚举值：cluster、single。源库为单节点数据库使用single，多节点使用cluster
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcNodeType: String
        # @param SrcInfos: 源端信息，多节点数据库使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInfos: :class:`Tencentcloud::Dts.v20211206.models.SyncDBEndpointInfos`
        # @param DstRegion: 目标端地域，如：ap-guangzhou等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstRegion: String
        # @param DstDatabaseType: 目标端数据库类型，mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstDatabaseType: String
        # @param DstAccessType: 目标端接入类型，cdb(云数据库)、cvm(云主机自建)、vpc(私有网络)、extranet(外网)、vpncloud(vpn接入)、dcg(专线接入)、ccn(云联网)、intranet(自研上云)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstAccessType: String
        # @param DstInfo: 目标端信息，单节点数据库使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfo: :class:`Tencentcloud::Dts.v20211206.models.Endpoint`
        # @param DstNodeType: 枚举值：cluster、single。目标库为单节点数据库使用single，多节点使用cluster
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstNodeType: String
        # @param DstInfos: 目标端信息，多节点数据库使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstInfos: :class:`Tencentcloud::Dts.v20211206.models.SyncDBEndpointInfos`
        # @param CreateTime: 创建时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StartTime: 开始时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param Status: 任务状态，UnInitialized(未初始化)、Initialized(已初始化)、Checking(校验中)、CheckPass(校验通过)、CheckNotPass(校验不通过)、ReadyRunning(准备运行)、Running(运行中)、Pausing(暂停中)、Paused(已暂停)、Stopping(停止中)、Stopped(已结束)、ResumableErr(任务错误)、Resuming(恢复中)、Failed(失败)、Released(已释放)、Resetting(重置中)、Unknown(未知)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param EndTime: 结束时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Tags: 标签相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Detail: 同步任务运行步骤信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Dts.v20211206.models.SyncDetailInfo`
        # @param TradeStatus: 用于计费的状态，可能取值有：Normal(正常状态)、Resizing(变配中)、Renewing(续费中)、Isolating(隔离中)、Isolated(已隔离)、Offlining(下线中)、Offlined(已下线)、NotBilled(未计费)、Recovering(解隔离)、PostPay2Prepaying(按量计费转包年包月中)、PrePay2Postpaying(包年包月转按量计费中)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeStatus: String
        # @param InstanceClass: 同步链路规格，如micro,small,medium,large
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceClass: String
        # @param AutoRenew: 自动续费标识，当PayMode值为PrePay则此项配置有意义，取值为：1（表示自动续费）、0（不自动续费）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenew: Integer
        # @param OfflineTime: 下线时间，格式为 yyyy-mm-dd hh:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param AutoRetryTimeRangeMinutes: 自动重试时间段设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRetryTimeRangeMinutes: Integer
        # @param DumperResumeCtrl: 全量导出可重入标识：enum::"yes"/"no"。yes表示当前任务可重入、no表示当前任务处于全量导出且不可重入阶段；如果在该值为no时重启任务导出流程不支持断点续传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DumperResumeCtrl: String

        attr_accessor :JobId, :JobName, :PayMode, :RunMode, :ExpectRunTime, :AllActions, :Actions, :Options, :Objects, :Specification, :ExpireTime, :SrcRegion, :SrcDatabaseType, :SrcAccessType, :SrcInfo, :SrcNodeType, :SrcInfos, :DstRegion, :DstDatabaseType, :DstAccessType, :DstInfo, :DstNodeType, :DstInfos, :CreateTime, :StartTime, :Status, :EndTime, :Tags, :Detail, :TradeStatus, :InstanceClass, :AutoRenew, :OfflineTime, :AutoRetryTimeRangeMinutes, :DumperResumeCtrl

        def initialize(jobid=nil, jobname=nil, paymode=nil, runmode=nil, expectruntime=nil, allactions=nil, actions=nil, options=nil, objects=nil, specification=nil, expiretime=nil, srcregion=nil, srcdatabasetype=nil, srcaccesstype=nil, srcinfo=nil, srcnodetype=nil, srcinfos=nil, dstregion=nil, dstdatabasetype=nil, dstaccesstype=nil, dstinfo=nil, dstnodetype=nil, dstinfos=nil, createtime=nil, starttime=nil, status=nil, endtime=nil, tags=nil, detail=nil, tradestatus=nil, instanceclass=nil, autorenew=nil, offlinetime=nil, autoretrytimerangeminutes=nil, dumperresumectrl=nil)
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
          @SrcNodeType = srcnodetype
          @SrcInfos = srcinfos
          @DstRegion = dstregion
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @DstNodeType = dstnodetype
          @DstInfos = dstinfos
          @CreateTime = createtime
          @StartTime = starttime
          @Status = status
          @EndTime = endtime
          @Tags = tags
          @Detail = detail
          @TradeStatus = tradestatus
          @InstanceClass = instanceclass
          @AutoRenew = autorenew
          @OfflineTime = offlinetime
          @AutoRetryTimeRangeMinutes = autoretrytimerangeminutes
          @DumperResumeCtrl = dumperresumectrl
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
          @SrcNodeType = params['SrcNodeType']
          unless params['SrcInfos'].nil?
            @SrcInfos = SyncDBEndpointInfos.new
            @SrcInfos.deserialize(params['SrcInfos'])
          end
          @DstRegion = params['DstRegion']
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = Endpoint.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          @DstNodeType = params['DstNodeType']
          unless params['DstInfos'].nil?
            @DstInfos = SyncDBEndpointInfos.new
            @DstInfos.deserialize(params['DstInfos'])
          end
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @Status = params['Status']
          @EndTime = params['EndTime']
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
          @TradeStatus = params['TradeStatus']
          @InstanceClass = params['InstanceClass']
          @AutoRenew = params['AutoRenew']
          @OfflineTime = params['OfflineTime']
          @AutoRetryTimeRangeMinutes = params['AutoRetryTimeRangeMinutes']
          @DumperResumeCtrl = params['DumperResumeCtrl']
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
        # @param ColumnMode: 是否同步表中所有列，All：当前表下的所有列,Partial(ModifySyncJobConfig接口里的对应字段ColumnMode暂不支持Partial)：当前表下的部分列，通过填充Columns字段详细表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnMode: String
        # @param Columns: 同步的列信息，当ColumnMode为Partial时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param TmpTables: 同步临时表，注意此配置与NewTableName互斥，只能使用其中一种。当配置的同步对象为表级别且TableEditMode为pt时此项有意义，针对pt-osc等工具在同步过程中产生的临时表进行同步，需要提前将可能的临时表配置在这里，否则不会同步任何临时表。示例，如要对t1进行pt-osc操作，此项配置应该为["\_t1\_new","\_t1\_old"]；如要对t1进行gh-ost操作，此项配置应该为["\_t1\_ghc","\_t1\_gho","\_t1\_del"]，pt-osc与gh-ost产生的临时表可同时配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpTables: Array
        # @param TableEditMode: 编辑表类型，rename(表映射)，pt(同步附加表)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableEditMode: String

        attr_accessor :TableName, :NewTableName, :FilterCondition, :ColumnMode, :Columns, :TmpTables, :TableEditMode

        def initialize(tablename=nil, newtablename=nil, filtercondition=nil, columnmode=nil, columns=nil, tmptables=nil, tableeditmode=nil)
          @TableName = tablename
          @NewTableName = newtablename
          @FilterCondition = filtercondition
          @ColumnMode = columnmode
          @Columns = columns
          @TmpTables = tmptables
          @TableEditMode = tableeditmode
        end

        def deserialize(params)
          @TableName = params['TableName']
          @NewTableName = params['NewTableName']
          @FilterCondition = params['FilterCondition']
          @ColumnMode = params['ColumnMode']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          @TmpTables = params['TmpTables']
          @TableEditMode = params['TableEditMode']
        end
      end

      # 表对象集合，当 TableMode 为 partial 时，此项需要填写
      class TableItem < TencentCloud::Common::AbstractModel
        # @param TableName: 迁移的表名，大小写敏感
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param NewTableName: 迁移后的表名，当TableEditMode为rename时此项必填，注意此配置与TmpTables互斥，只能使用其中一种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewTableName: String
        # @param TmpTables: 迁移临时表，注意此配置与NewTableName互斥，只能使用其中一种。当配置的同步对象为表级别且TableEditMode为pt时此项有意义，针对pt-osc等工具在迁移过程中产生的临时表进行同步，需要提前将可能的临时表配置在这里，否则不会同步任何临时表。示例，如要对t1进行pt-osc操作，此项配置应该为["\_t1\_new","\_t1\_old"]；如要对t1进行gh-ost操作，此项配置应该为["\_t1\_ghc","\_t1\_gho","\_t1\_del"]，pt-osc与gh-ost产生的临时表可同时配置。
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

      # 单topic和自定义topic的描述。投递到单topic时，该数组的最后一项会被视为默认分区策略，所有未匹配到的数据都会按该策略投递，默认策略只支持 投递至partition0、按表名、表名+主键三种。
      class TopicRule < TencentCloud::Common::AbstractModel
        # @param TopicName: topic名。单topic时，所有的TopicName必须相同
        # @type TopicName: String
        # @param PartitionType: topic分区策略，自定义topic时支持：Random（随机投递），集中投递到单Topic时支持：AllInPartitionZero（全部投递至partition0）、PartitionByTable(按表名分区)、PartitionByTableAndKey(按表名加主键分区)、PartitionByCols(按列分区)
        # @type PartitionType: String
        # @param DbMatchMode: 库名匹配规则，如Regular（正则匹配）, Default(不符合匹配规则的剩余库)，数组中最后一项必须为‘Default’
        # @type DbMatchMode: String
        # @param DbName: 库名，DbMatchMode=Regular时生效
        # @type DbName: String
        # @param TableMatchMode: 表名匹配规则，如Regular（正则匹配）, Default(不符合匹配规则的剩余表)，数组中最后一项必须为‘Default’
        # @type TableMatchMode: String
        # @param TableName: 表名，仅TableMatchMode=Regular时生效
        # @type TableName: String
        # @param Columns: 按列分区时需要选择配置列名，可以选择多列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array

        attr_accessor :TopicName, :PartitionType, :DbMatchMode, :DbName, :TableMatchMode, :TableName, :Columns

        def initialize(topicname=nil, partitiontype=nil, dbmatchmode=nil, dbname=nil, tablematchmode=nil, tablename=nil, columns=nil)
          @TopicName = topicname
          @PartitionType = partitiontype
          @DbMatchMode = dbmatchmode
          @DbName = dbname
          @TableMatchMode = tablematchmode
          @TableName = tablename
          @Columns = columns
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @PartitionType = params['PartitionType']
          @DbMatchMode = params['DbMatchMode']
          @DbName = params['DbName']
          @TableMatchMode = params['TableMatchMode']
          @TableName = params['TableName']
          @Columns = params['Columns']
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
        # @param NewViewName: 预留字段、目前暂时不支持view的重命名
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

