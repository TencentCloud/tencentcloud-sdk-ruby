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
  module Omics
    module V20221128
      # DescribeRunGroups请求参数结构体
      class DescribeRunGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - Name：任务批次名称
        # - RunGroupId：任务批次ID
        # - Status：任务批次状态
        # @type Filters: Array

        attr_accessor :ProjectId, :Limit, :Offset, :Filters
        
        def initialize(projectid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
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
        end
      end

      # DescribeRunGroups返回参数结构体
      class DescribeRunGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的数量。
        # @type TotalCount: Integer
        # @param RunGroups: 任务批次列表。
        # @type RunGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RunGroups, :RequestId
        
        def initialize(totalcount=nil, rungroups=nil, requestid=nil)
          @TotalCount = totalcount
          @RunGroups = rungroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RunGroups'].nil?
            @RunGroups = []
            params['RunGroups'].each do |i|
              rungroup_tmp = RunGroup.new
              rungroup_tmp.deserialize(i)
              @RunGroups << rungroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuns请求参数结构体
      class DescribeRunsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤器，支持过滤字段：
        # - RunGroupId：任务批次ID
        # - Status：任务状态
        # - RunUuid：任务UUID
        # - UserDefinedId：用户定义ID
        # @type Filters: Array

        attr_accessor :ProjectId, :Limit, :Offset, :Filters
        
        def initialize(projectid=nil, limit=nil, offset=nil, filters=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
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
        end
      end

      # DescribeRuns返回参数结构体
      class DescribeRunsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的数量。
        # @type TotalCount: Integer
        # @param Runs: 任务列表。
        # @type Runs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Runs, :RequestId
        
        def initialize(totalcount=nil, runs=nil, requestid=nil)
          @TotalCount = totalcount
          @Runs = runs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Runs'].nil?
            @Runs = []
            params['Runs'].each do |i|
              run_tmp = Run.new
              run_tmp.deserialize(i)
              @Runs << run_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 执行时间。
      class ExecutionTime < TencentCloud::Common::AbstractModel
        # @param SubmitTime: 提交时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitTime: String
        # @param StartTime: 开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :SubmitTime, :StartTime, :EndTime
        
        def initialize(submittime=nil, starttime=nil, endtime=nil)
          @SubmitTime = submittime
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SubmitTime = params['SubmitTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。

      # - 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。

      # - 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段。
        # @type Name: String
        # @param Values: 过滤字段值。
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

      # GetRunCalls请求参数结构体
      class GetRunCallsRequest < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务Uuid。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param Path: 作业路径
        # @type Path: String

        attr_accessor :RunUuid, :ProjectId, :Path
        
        def initialize(runuuid=nil, projectid=nil, path=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
          @Path = path
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
          @Path = params['Path']
        end
      end

      # GetRunCalls返回参数结构体
      class GetRunCallsResponse < TencentCloud::Common::AbstractModel
        # @param Calls: 作业详情。
        # @type Calls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Calls, :RequestId
        
        def initialize(calls=nil, requestid=nil)
          @Calls = calls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Calls'].nil?
            @Calls = []
            params['Calls'].each do |i|
              runmetadata_tmp = RunMetadata.new
              runmetadata_tmp.deserialize(i)
              @Calls << runmetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRunStatus请求参数结构体
      class GetRunStatusRequest < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务Uuid。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String

        attr_accessor :RunUuid, :ProjectId
        
        def initialize(runuuid=nil, projectid=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
        end
      end

      # GetRunStatus返回参数结构体
      class GetRunStatusResponse < TencentCloud::Common::AbstractModel
        # @param Metadata: 作业详情。
        # @type Metadata: :class:`Tencentcloud::Omics.v20221128.models.RunMetadata`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metadata, :RequestId
        
        def initialize(metadata=nil, requestid=nil)
          @Metadata = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metadata'].nil?
            @Metadata = RunMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ImportTableFile请求参数结构体
      class ImportTableFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 表格关联的项目ID。
        # @type ProjectId: String
        # @param Name: 表格名称，支持20个字符内的英文字符、数字和下划线。
        # @type Name: String
        # @param CosUri: 表格文件Cos对象路径。
        # @type CosUri: String
        # @param DataType: 表格文件中每列的数据类型，支持的类型包括：Int、String、File、Array[File]
        # @type DataType: Array
        # @param Description: 表格描述。
        # @type Description: String

        attr_accessor :ProjectId, :Name, :CosUri, :DataType, :Description
        
        def initialize(projectid=nil, name=nil, cosuri=nil, datatype=nil, description=nil)
          @ProjectId = projectid
          @Name = name
          @CosUri = cosuri
          @DataType = datatype
          @Description = description
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @CosUri = params['CosUri']
          @DataType = params['DataType']
          @Description = params['Description']
        end
      end

      # ImportTableFile返回参数结构体
      class ImportTableFileResponse < TencentCloud::Common::AbstractModel
        # @param TableId: 表格ID。
        # @type TableId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableId, :RequestId
        
        def initialize(tableid=nil, requestid=nil)
          @TableId = tableid
          @RequestId = requestid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @RequestId = params['RequestId']
        end
      end

      # 任务。
      class Run < TencentCloud::Common::AbstractModel
        # @param RunUuid: 任务UUID。
        # @type RunUuid: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param UserDefinedId: 用户定义ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefinedId: String
        # @param TableId: 表格ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableRowUuid: 表格行UUID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableRowUuid: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Input: 任务输入。
        # @type Input: String
        # @param Option: 运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param ExecutionTime: 执行时间。
        # @type ExecutionTime: :class:`Tencentcloud::Omics.v20221128.models.ExecutionTime`
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :RunUuid, :ProjectId, :ApplicationId, :RunGroupId, :EnvironmentId, :UserDefinedId, :TableId, :TableRowUuid, :Status, :Input, :Option, :ExecutionTime, :ErrorMessage, :CreateTime, :UpdateTime
        
        def initialize(runuuid=nil, projectid=nil, applicationid=nil, rungroupid=nil, environmentid=nil, userdefinedid=nil, tableid=nil, tablerowuuid=nil, status=nil, input=nil, option=nil, executiontime=nil, errormessage=nil, createtime=nil, updatetime=nil)
          @RunUuid = runuuid
          @ProjectId = projectid
          @ApplicationId = applicationid
          @RunGroupId = rungroupid
          @EnvironmentId = environmentid
          @UserDefinedId = userdefinedid
          @TableId = tableid
          @TableRowUuid = tablerowuuid
          @Status = status
          @Input = input
          @Option = option
          @ExecutionTime = executiontime
          @ErrorMessage = errormessage
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RunUuid = params['RunUuid']
          @ProjectId = params['ProjectId']
          @ApplicationId = params['ApplicationId']
          @RunGroupId = params['RunGroupId']
          @EnvironmentId = params['EnvironmentId']
          @UserDefinedId = params['UserDefinedId']
          @TableId = params['TableId']
          @TableRowUuid = params['TableRowUuid']
          @Status = params['Status']
          @Input = params['Input']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          unless params['ExecutionTime'].nil?
            @ExecutionTime = ExecutionTime.new
            @ExecutionTime.deserialize(params['ExecutionTime'])
          end
          @ErrorMessage = params['ErrorMessage']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # RunApplication请求参数结构体
      class RunApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param Name: 任务批次名称。
        # @type Name: String
        # @param EnvironmentId: 投递环境ID。
        # @type EnvironmentId: String
        # @param InputBase64: 任务输入JSON。需要进行base64编码。
        # @type InputBase64: String
        # @param CacheClearDelay: 任务缓存清理时间。不填表示不清理。
        # @type CacheClearDelay: Integer
        # @param Option: 运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param Description: 任务批次描述。
        # @type Description: String
        # @param TableId: 批量投递表格ID，不填表示单例投递。
        # @type TableId: String
        # @param TableRowUuids: 批量投递表格行UUID。不填表示表格全部行。
        # @type TableRowUuids: Array

        attr_accessor :ApplicationId, :ProjectId, :Name, :EnvironmentId, :InputBase64, :CacheClearDelay, :Option, :Description, :TableId, :TableRowUuids
        
        def initialize(applicationid=nil, projectid=nil, name=nil, environmentid=nil, inputbase64=nil, cachecleardelay=nil, option=nil, description=nil, tableid=nil, tablerowuuids=nil)
          @ApplicationId = applicationid
          @ProjectId = projectid
          @Name = name
          @EnvironmentId = environmentid
          @InputBase64 = inputbase64
          @CacheClearDelay = cachecleardelay
          @Option = option
          @Description = description
          @TableId = tableid
          @TableRowUuids = tablerowuuids
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @EnvironmentId = params['EnvironmentId']
          @InputBase64 = params['InputBase64']
          @CacheClearDelay = params['CacheClearDelay']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          @Description = params['Description']
          @TableId = params['TableId']
          @TableRowUuids = params['TableRowUuids']
        end
      end

      # RunApplication返回参数结构体
      class RunApplicationResponse < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RunGroupId, :RequestId
        
        def initialize(rungroupid=nil, requestid=nil)
          @RunGroupId = rungroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 任务。
      class RunGroup < TencentCloud::Common::AbstractModel
        # @param RunGroupId: 任务批次ID。
        # @type RunGroupId: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: String
        # @param ProjectName: 项目名称。
        # @type ProjectName: String
        # @param ApplicationId: 应用ID。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称。
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型。
        # @type ApplicationType: String
        # @param EnvironmentId: 环境ID。
        # @type EnvironmentId: String
        # @param EnvironmentName: 环境名称。
        # @type EnvironmentName: String
        # @param TableId: 表格ID，单例运行为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param Name: 任务名称。
        # @type Name: String
        # @param Description: 任务描述。
        # @type Description: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Input: 任务输入。
        # @type Input: String
        # @param Option: 运行选项。
        # @type Option: :class:`Tencentcloud::Omics.v20221128.models.RunOption`
        # @param TotalRun: 任务总数量。
        # @type TotalRun: Integer
        # @param RunStatusCounts: 各状态任务的数量。
        # @type RunStatusCounts: Array
        # @param ExecutionTime: 执行时间。
        # @type ExecutionTime: :class:`Tencentcloud::Omics.v20221128.models.ExecutionTime`
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :RunGroupId, :ProjectId, :ProjectName, :ApplicationId, :ApplicationName, :ApplicationType, :EnvironmentId, :EnvironmentName, :TableId, :Name, :Description, :Status, :Input, :Option, :TotalRun, :RunStatusCounts, :ExecutionTime, :ErrorMessage, :CreateTime, :UpdateTime
        
        def initialize(rungroupid=nil, projectid=nil, projectname=nil, applicationid=nil, applicationname=nil, applicationtype=nil, environmentid=nil, environmentname=nil, tableid=nil, name=nil, description=nil, status=nil, input=nil, option=nil, totalrun=nil, runstatuscounts=nil, executiontime=nil, errormessage=nil, createtime=nil, updatetime=nil)
          @RunGroupId = rungroupid
          @ProjectId = projectid
          @ProjectName = projectname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @EnvironmentId = environmentid
          @EnvironmentName = environmentname
          @TableId = tableid
          @Name = name
          @Description = description
          @Status = status
          @Input = input
          @Option = option
          @TotalRun = totalrun
          @RunStatusCounts = runstatuscounts
          @ExecutionTime = executiontime
          @ErrorMessage = errormessage
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RunGroupId = params['RunGroupId']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @EnvironmentId = params['EnvironmentId']
          @EnvironmentName = params['EnvironmentName']
          @TableId = params['TableId']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          @Input = params['Input']
          unless params['Option'].nil?
            @Option = RunOption.new
            @Option.deserialize(params['Option'])
          end
          @TotalRun = params['TotalRun']
          unless params['RunStatusCounts'].nil?
            @RunStatusCounts = []
            params['RunStatusCounts'].each do |i|
              runstatuscount_tmp = RunStatusCount.new
              runstatuscount_tmp.deserialize(i)
              @RunStatusCounts << runstatuscount_tmp
            end
          end
          unless params['ExecutionTime'].nil?
            @ExecutionTime = ExecutionTime.new
            @ExecutionTime.deserialize(params['ExecutionTime'])
          end
          @ErrorMessage = params['ErrorMessage']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 任务作业详情。
      class RunMetadata < TencentCloud::Common::AbstractModel
        # @param RunType: 任务类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunType: String
        # @param RunId: 任务ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunId: String
        # @param ParentId: 父层ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param JobId: 作业ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CallName: 作业名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallName: String
        # @param ScatterIndex: Scatter索引。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScatterIndex: String
        # @param Input: 输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: 输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrorMessage: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param SubmitTime: 提交时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitTime: String
        # @param EndTime: 结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Command: 命令行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String
        # @param Runtime: 运行时。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param Preprocess: 预处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preprocess: Boolean
        # @param PostProcess: 后处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostProcess: Boolean
        # @param CallCached: Cache命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallCached: Boolean
        # @param Stdout: 标准输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stdout: String
        # @param Stderr: 错误输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stderr: String

        attr_accessor :RunType, :RunId, :ParentId, :JobId, :CallName, :ScatterIndex, :Input, :Output, :Status, :ErrorMessage, :StartTime, :SubmitTime, :EndTime, :Command, :Runtime, :Preprocess, :PostProcess, :CallCached, :Stdout, :Stderr
        
        def initialize(runtype=nil, runid=nil, parentid=nil, jobid=nil, callname=nil, scatterindex=nil, input=nil, output=nil, status=nil, errormessage=nil, starttime=nil, submittime=nil, endtime=nil, command=nil, runtime=nil, preprocess=nil, postprocess=nil, callcached=nil, stdout=nil, stderr=nil)
          @RunType = runtype
          @RunId = runid
          @ParentId = parentid
          @JobId = jobid
          @CallName = callname
          @ScatterIndex = scatterindex
          @Input = input
          @Output = output
          @Status = status
          @ErrorMessage = errormessage
          @StartTime = starttime
          @SubmitTime = submittime
          @EndTime = endtime
          @Command = command
          @Runtime = runtime
          @Preprocess = preprocess
          @PostProcess = postprocess
          @CallCached = callcached
          @Stdout = stdout
          @Stderr = stderr
        end

        def deserialize(params)
          @RunType = params['RunType']
          @RunId = params['RunId']
          @ParentId = params['ParentId']
          @JobId = params['JobId']
          @CallName = params['CallName']
          @ScatterIndex = params['ScatterIndex']
          @Input = params['Input']
          @Output = params['Output']
          @Status = params['Status']
          @ErrorMessage = params['ErrorMessage']
          @StartTime = params['StartTime']
          @SubmitTime = params['SubmitTime']
          @EndTime = params['EndTime']
          @Command = params['Command']
          @Runtime = params['Runtime']
          @Preprocess = params['Preprocess']
          @PostProcess = params['PostProcess']
          @CallCached = params['CallCached']
          @Stdout = params['Stdout']
          @Stderr = params['Stderr']
        end
      end

      # 运行应用选项。
      class RunOption < TencentCloud::Common::AbstractModel
        # @param FailureMode: 运行失败模式，取值范围：
        # - ContinueWhilePossible
        # - NoNewCalls
        # @type FailureMode: String
        # @param UseCallCache: 是否使用Call-Caching功能。
        # @type UseCallCache: Boolean
        # @param UseErrorOnHold: 是否使用错误挂起功能。
        # @type UseErrorOnHold: Boolean

        attr_accessor :FailureMode, :UseCallCache, :UseErrorOnHold
        
        def initialize(failuremode=nil, usecallcache=nil, useerroronhold=nil)
          @FailureMode = failuremode
          @UseCallCache = usecallcache
          @UseErrorOnHold = useerroronhold
        end

        def deserialize(params)
          @FailureMode = params['FailureMode']
          @UseCallCache = params['UseCallCache']
          @UseErrorOnHold = params['UseErrorOnHold']
        end
      end

      # 任务运行状态。
      class RunStatusCount < TencentCloud::Common::AbstractModel
        # @param Status: 状态。
        # @type Status: String
        # @param Count: 数量。
        # @type Count: Integer

        attr_accessor :Status, :Count
        
        def initialize(status=nil, count=nil)
          @Status = status
          @Count = count
        end

        def deserialize(params)
          @Status = params['Status']
          @Count = params['Count']
        end
      end

    end
  end
end

