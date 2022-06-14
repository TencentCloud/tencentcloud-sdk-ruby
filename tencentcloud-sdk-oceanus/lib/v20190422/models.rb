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
  module Oceanus
    module V20190422
      # CheckSavepoint请求参数结构体
      class CheckSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 id
        # @type JobId: String
        # @param SerialId: 快照资源 id
        # @type SerialId: String
        # @param RecordType: 快照类型 1: savepoint；2: checkpoint；3: cancelWithSavepoint
        # @type RecordType: Integer
        # @param SavepointPath: 快照路径，目前只支持 cos 路径
        # @type SavepointPath: String
        # @param WorkSpaceId: 工作空间 id
        # @type WorkSpaceId: String

        attr_accessor :JobId, :SerialId, :RecordType, :SavepointPath, :WorkSpaceId
        
        def initialize(jobid=nil, serialid=nil, recordtype=nil, savepointpath=nil, workspaceid=nil)
          @JobId = jobid
          @SerialId = serialid
          @RecordType = recordtype
          @SavepointPath = savepointpath
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @SerialId = params['SerialId']
          @RecordType = params['RecordType']
          @SavepointPath = params['SavepointPath']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CheckSavepoint返回参数结构体
      class CheckSavepointResponse < TencentCloud::Common::AbstractModel
        # @param SerialId: 资源 id
        # @type SerialId: String
        # @param SavepointStatus: 1=可用，2=不可用
        # @type SavepointStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SerialId, :SavepointStatus, :RequestId
        
        def initialize(serialid=nil, savepointstatus=nil, requestid=nil)
          @SerialId = serialid
          @SavepointStatus = savepointstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SerialId = params['SerialId']
          @SavepointStatus = params['SavepointStatus']
          @RequestId = params['RequestId']
        end
      end

      # CreateJobConfig请求参数结构体
      class CreateJobConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param EntrypointClass: 主类
        # @type EntrypointClass: String
        # @param ProgramArgs: 主类入参
        # @type ProgramArgs: String
        # @param Remark: 备注
        # @type Remark: String
        # @param ResourceRefs: 资源引用数组
        # @type ResourceRefs: Array
        # @param DefaultParallelism: 作业默认并行度
        # @type DefaultParallelism: Integer
        # @param Properties: 系统参数
        # @type Properties: Array
        # @param AutoDelete: 1: 作业配置达到上限之后，自动删除可删除的最早版本
        # @type AutoDelete: Integer
        # @param COSBucket: 作业使用的 COS 存储桶名
        # @type COSBucket: String
        # @param LogCollect: 是否采集作业日志
        # @type LogCollect: Boolean
        # @param JobManagerSpec: JobManager规格
        # @type JobManagerSpec: Float
        # @param TaskManagerSpec: TaskManager规格
        # @type TaskManagerSpec: Float
        # @param ClsLogsetId: CLS日志集ID
        # @type ClsLogsetId: String
        # @param ClsTopicId: CLS日志主题ID
        # @type ClsTopicId: String
        # @param LogCollectType: 日志采集类型 2：CLS；3：COS
        # @type LogCollectType: Integer
        # @param PythonVersion: pyflink作业运行时使用的python版本
        # @type PythonVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :EntrypointClass, :ProgramArgs, :Remark, :ResourceRefs, :DefaultParallelism, :Properties, :AutoDelete, :COSBucket, :LogCollect, :JobManagerSpec, :TaskManagerSpec, :ClsLogsetId, :ClsTopicId, :LogCollectType, :PythonVersion, :WorkSpaceId
        
        def initialize(jobid=nil, entrypointclass=nil, programargs=nil, remark=nil, resourcerefs=nil, defaultparallelism=nil, properties=nil, autodelete=nil, cosbucket=nil, logcollect=nil, jobmanagerspec=nil, taskmanagerspec=nil, clslogsetid=nil, clstopicid=nil, logcollecttype=nil, pythonversion=nil, workspaceid=nil)
          @JobId = jobid
          @EntrypointClass = entrypointclass
          @ProgramArgs = programargs
          @Remark = remark
          @ResourceRefs = resourcerefs
          @DefaultParallelism = defaultparallelism
          @Properties = properties
          @AutoDelete = autodelete
          @COSBucket = cosbucket
          @LogCollect = logcollect
          @JobManagerSpec = jobmanagerspec
          @TaskManagerSpec = taskmanagerspec
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @LogCollectType = logcollecttype
          @PythonVersion = pythonversion
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EntrypointClass = params['EntrypointClass']
          @ProgramArgs = params['ProgramArgs']
          @Remark = params['Remark']
          unless params['ResourceRefs'].nil?
            @ResourceRefs = []
            params['ResourceRefs'].each do |i|
              resourceref_tmp = ResourceRef.new
              resourceref_tmp.deserialize(i)
              @ResourceRefs << resourceref_tmp
            end
          end
          @DefaultParallelism = params['DefaultParallelism']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @AutoDelete = params['AutoDelete']
          @COSBucket = params['COSBucket']
          @LogCollect = params['LogCollect']
          @JobManagerSpec = params['JobManagerSpec']
          @TaskManagerSpec = params['TaskManagerSpec']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @LogCollectType = params['LogCollectType']
          @PythonVersion = params['PythonVersion']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateJobConfig返回参数结构体
      class CreateJobConfigResponse < TencentCloud::Common::AbstractModel
        # @param Version: 作业配置版本号
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId
        
        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreateJob请求参数结构体
      class CreateJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 作业名称，允许输入长度小于等于50个字符的中文、英文、数字、-（横线）、_（下划线）、.（点），且符号必须半角字符。注意作业名不能和现有作业同名
        # @type Name: String
        # @param JobType: 作业的类型，1 表示 SQL 作业，2 表示 JAR 作业
        # @type JobType: Integer
        # @param ClusterType: 集群的类型，1 表示共享集群，2 表示独享集群
        # @type ClusterType: Integer
        # @param ClusterId: 当 ClusterType=2 时，必选，用来指定该作业提交的独享集群 ID
        # @type ClusterId: String
        # @param CuMem: 设置每 CU 的内存规格，单位为 GB，支持 2、4、8、16（需申请开通白名单后使用）。默认为 4，即 1 CU 对应 4 GB 的运行内存
        # @type CuMem: Integer
        # @param Remark: 作业的备注信息，可以随意设置
        # @type Remark: String
        # @param FolderId: 作业名所属文件夹ID，根目录为"root"
        # @type FolderId: String
        # @param FlinkVersion: 作业运行的Flink版本
        # @type FlinkVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :Name, :JobType, :ClusterType, :ClusterId, :CuMem, :Remark, :FolderId, :FlinkVersion, :WorkSpaceId
        
        def initialize(name=nil, jobtype=nil, clustertype=nil, clusterid=nil, cumem=nil, remark=nil, folderid=nil, flinkversion=nil, workspaceid=nil)
          @Name = name
          @JobType = jobtype
          @ClusterType = clustertype
          @ClusterId = clusterid
          @CuMem = cumem
          @Remark = remark
          @FolderId = folderid
          @FlinkVersion = flinkversion
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @Name = params['Name']
          @JobType = params['JobType']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @CuMem = params['CuMem']
          @Remark = params['Remark']
          @FolderId = params['FolderId']
          @FlinkVersion = params['FlinkVersion']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateJob返回参数结构体
      class CreateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateResourceConfig请求参数结构体
      class CreateResourceConfigRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceLoc: 位置信息
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param Remark: 资源描述信息
        # @type Remark: String
        # @param AutoDelete: 1： 资源版本达到上限，自动删除最早可删除的版本
        # @type AutoDelete: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :ResourceLoc, :Remark, :AutoDelete, :WorkSpaceId
        
        def initialize(resourceid=nil, resourceloc=nil, remark=nil, autodelete=nil, workspaceid=nil)
          @ResourceId = resourceid
          @ResourceLoc = resourceloc
          @Remark = remark
          @AutoDelete = autodelete
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @Remark = params['Remark']
          @AutoDelete = params['AutoDelete']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateResourceConfig返回参数结构体
      class CreateResourceConfigResponse < TencentCloud::Common::AbstractModel
        # @param Version: 资源版本ID
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId
        
        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreateResource请求参数结构体
      class CreateResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceLoc: 资源位置
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param ResourceType: 资源类型。目前只支持 JAR，取值为 1
        # @type ResourceType: Integer
        # @param Remark: 资源描述
        # @type Remark: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceConfigRemark: 资源版本描述
        # @type ResourceConfigRemark: String
        # @param FolderId: 目录ID
        # @type FolderId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceLoc, :ResourceType, :Remark, :Name, :ResourceConfigRemark, :FolderId, :WorkSpaceId
        
        def initialize(resourceloc=nil, resourcetype=nil, remark=nil, name=nil, resourceconfigremark=nil, folderid=nil, workspaceid=nil)
          @ResourceLoc = resourceloc
          @ResourceType = resourcetype
          @Remark = remark
          @Name = name
          @ResourceConfigRemark = resourceconfigremark
          @FolderId = folderid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @Name = params['Name']
          @ResourceConfigRemark = params['ResourceConfigRemark']
          @FolderId = params['FolderId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateResource返回参数结构体
      class CreateResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Version: 资源版本
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :Version, :RequestId
        
        def initialize(resourceid=nil, version=nil, requestid=nil)
          @ResourceId = resourceid
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # DeleteResourceConfigs请求参数结构体
      class DeleteResourceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceConfigVersions: 资源版本数组
        # @type ResourceConfigVersions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :ResourceConfigVersions, :WorkSpaceId
        
        def initialize(resourceid=nil, resourceconfigversions=nil, workspaceid=nil)
          @ResourceId = resourceid
          @ResourceConfigVersions = resourceconfigversions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceConfigVersions = params['ResourceConfigVersions']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteResourceConfigs返回参数结构体
      class DeleteResourceConfigsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteResources请求参数结构体
      class DeleteResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 待删除资源ID列表
        # @type ResourceIds: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceIds, :WorkSpaceId
        
        def initialize(resourceids=nil, workspaceid=nil)
          @ResourceIds = resourceids
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteResources返回参数结构体
      class DeleteResourcesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTableConfig请求参数结构体
      class DeleteTableConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param DebugId: 调试作业ID
        # @type DebugId: Integer
        # @param TableName: 表名
        # @type TableName: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :DebugId, :TableName, :WorkSpaceId
        
        def initialize(jobid=nil, debugid=nil, tablename=nil, workspaceid=nil)
          @JobId = jobid
          @DebugId = debugid
          @TableName = tablename
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @DebugId = params['DebugId']
          @TableName = params['TableName']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteTableConfig返回参数结构体
      class DeleteTableConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeJobConfigs请求参数结构体
      class DescribeJobConfigsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param JobConfigVersions: 作业配置版本
        # @type JobConfigVersions: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认20，最大100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OnlyDraft: true 表示只展示草稿
        # @type OnlyDraft: Boolean
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :JobConfigVersions, :Offset, :Limit, :Filters, :OnlyDraft, :WorkSpaceId
        
        def initialize(jobid=nil, jobconfigversions=nil, offset=nil, limit=nil, filters=nil, onlydraft=nil, workspaceid=nil)
          @JobId = jobid
          @JobConfigVersions = jobconfigversions
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @OnlyDraft = onlydraft
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobConfigVersions = params['JobConfigVersions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OnlyDraft = params['OnlyDraft']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeJobConfigs返回参数结构体
      class DescribeJobConfigsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总的配置版本数量
        # @type TotalCount: Integer
        # @param JobConfigSet: 作业配置列表
        # @type JobConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobConfigSet, :RequestId
        
        def initialize(totalcount=nil, jobconfigset=nil, requestid=nil)
          @TotalCount = totalcount
          @JobConfigSet = jobconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobConfigSet'].nil?
            @JobConfigSet = []
            params['JobConfigSet'].each do |i|
              jobconfig_tmp = JobConfig.new
              jobconfig_tmp.deserialize(i)
              @JobConfigSet << jobconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobSavepoint请求参数结构体
      class DescribeJobSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 SerialId
        # @type JobId: String
        # @param Limit: 分页参数，单页总数
        # @type Limit: Integer
        # @param Offset: 分页参数，偏移量
        # @type Offset: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :Limit, :Offset, :WorkSpaceId
        
        def initialize(jobid=nil, limit=nil, offset=nil, workspaceid=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeJobSavepoint返回参数结构体
      class DescribeJobSavepointResponse < TencentCloud::Common::AbstractModel
        # @param TotalNumber: 快照列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNumber: Integer
        # @param Savepoint: 快照列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Savepoint: Array
        # @param RunningSavepoint: 进行中的快照列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningSavepoint: Array
        # @param RunningTotalNumber: 进行中的快照列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningTotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNumber, :Savepoint, :RunningSavepoint, :RunningTotalNumber, :RequestId
        
        def initialize(totalnumber=nil, savepoint=nil, runningsavepoint=nil, runningtotalnumber=nil, requestid=nil)
          @TotalNumber = totalnumber
          @Savepoint = savepoint
          @RunningSavepoint = runningsavepoint
          @RunningTotalNumber = runningtotalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNumber = params['TotalNumber']
          unless params['Savepoint'].nil?
            @Savepoint = []
            params['Savepoint'].each do |i|
              savepoint_tmp = Savepoint.new
              savepoint_tmp.deserialize(i)
              @Savepoint << savepoint_tmp
            end
          end
          unless params['RunningSavepoint'].nil?
            @RunningSavepoint = []
            params['RunningSavepoint'].each do |i|
              savepoint_tmp = Savepoint.new
              savepoint_tmp.deserialize(i)
              @RunningSavepoint << savepoint_tmp
            end
          end
          @RunningTotalNumber = params['RunningTotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 按照一个或者多个作业ID查询。作业ID形如：cql-11112222，每次请求的作业上限为100。参数不支持同时指定JobIds和Filters。
        # @type JobIds: Array
        # @param Filters: 过滤条件，支持的 Filter.Name 为：作业名 Name、作业状态 Status、所属集群 ClusterId、作业id JobId、集群名称 ClusterName。 每次请求的 Filters 个数的上限为 5，Filter.Values 的个数上限为 5。参数不支持同时指定 JobIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认为20，最大值为100
        # @type Limit: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobIds, :Filters, :Offset, :Limit, :WorkSpaceId
        
        def initialize(jobids=nil, filters=nil, offset=nil, limit=nil, workspaceid=nil)
          @JobIds = jobids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobIds = params['JobIds']
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
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeJobs返回参数结构体
      class DescribeJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 作业总数
        # @type TotalCount: Integer
        # @param JobSet: 作业列表
        # @type JobSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobSet, :RequestId
        
        def initialize(totalcount=nil, jobset=nil, requestid=nil)
          @TotalCount = totalcount
          @JobSet = jobset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              jobv1_tmp = JobV1.new
              jobv1_tmp.deserialize(i)
              @JobSet << jobv1_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceConfigs请求参数结构体
      class DescribeResourceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Offset: 偏移量，仅当设置 Limit 时该参数有效
        # @type Offset: Integer
        # @param Limit: 返回值大小，不填则返回全量数据
        # @type Limit: Integer
        # @param ResourceConfigVersions: 资源配置Versions集合
        # @type ResourceConfigVersions: Array
        # @param JobConfigVersion: 作业配置版本
        # @type JobConfigVersion: Integer
        # @param JobId: 作业ID
        # @type JobId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :Offset, :Limit, :ResourceConfigVersions, :JobConfigVersion, :JobId, :WorkSpaceId
        
        def initialize(resourceid=nil, offset=nil, limit=nil, resourceconfigversions=nil, jobconfigversion=nil, jobid=nil, workspaceid=nil)
          @ResourceId = resourceid
          @Offset = offset
          @Limit = limit
          @ResourceConfigVersions = resourceconfigversions
          @JobConfigVersion = jobconfigversion
          @JobId = jobid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceConfigVersions = params['ResourceConfigVersions']
          @JobConfigVersion = params['JobConfigVersion']
          @JobId = params['JobId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResourceConfigs返回参数结构体
      class DescribeResourceConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ResourceConfigSet: 资源配置描述数组
        # @type ResourceConfigSet: Array
        # @param TotalCount: 资源配置数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceConfigSet, :TotalCount, :RequestId
        
        def initialize(resourceconfigset=nil, totalcount=nil, requestid=nil)
          @ResourceConfigSet = resourceconfigset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceConfigSet'].nil?
            @ResourceConfigSet = []
            params['ResourceConfigSet'].each do |i|
              resourceconfigitem_tmp = ResourceConfigItem.new
              resourceconfigitem_tmp.deserialize(i)
              @ResourceConfigSet << resourceconfigitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceRelatedJobs请求参数结构体
      class DescribeResourceRelatedJobsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param DESCByJobConfigCreateTime: 默认0;   1： 按照作业版本创建时间降序
        # @type DESCByJobConfigCreateTime: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认为20，最大值为100
        # @type Limit: Integer
        # @param ResourceConfigVersion: 资源版本号
        # @type ResourceConfigVersion: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :DESCByJobConfigCreateTime, :Offset, :Limit, :ResourceConfigVersion, :WorkSpaceId
        
        def initialize(resourceid=nil, descbyjobconfigcreatetime=nil, offset=nil, limit=nil, resourceconfigversion=nil, workspaceid=nil)
          @ResourceId = resourceid
          @DESCByJobConfigCreateTime = descbyjobconfigcreatetime
          @Offset = offset
          @Limit = limit
          @ResourceConfigVersion = resourceconfigversion
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @DESCByJobConfigCreateTime = params['DESCByJobConfigCreateTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceConfigVersion = params['ResourceConfigVersion']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResourceRelatedJobs返回参数结构体
      class DescribeResourceRelatedJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RefJobInfos: 关联作业信息
        # @type RefJobInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RefJobInfos, :RequestId
        
        def initialize(totalcount=nil, refjobinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @RefJobInfos = refjobinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RefJobInfos'].nil?
            @RefJobInfos = []
            params['RefJobInfos'].each do |i|
              resourcerefjobinfo_tmp = ResourceRefJobInfo.new
              resourcerefjobinfo_tmp.deserialize(i)
              @RefJobInfos << resourcerefjobinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需要查询的资源ID数组，数量不超过100个。如果填写了该参数则忽略Filters参数。
        # @type ResourceIds: Array
        # @param Offset: 偏移量，仅当设置 Limit 参数时有效
        # @type Offset: Integer
        # @param Limit: 条数限制。如果不填，默认返回 20 条
        # @type Limit: Integer
        # @param Filters: <li><strong>ResourceName</strong></li>
        # <p style="padding-left: 30px;">按照资源名字过滤，支持模糊过滤。传入的过滤名字不超过5个</p><p style="padding-left: 30px;">类型: String</p><p style="padding-left: 30px;">必选: 否</p>
        # @type Filters: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceIds, :Offset, :Limit, :Filters, :WorkSpaceId
        
        def initialize(resourceids=nil, offset=nil, limit=nil, filters=nil, workspaceid=nil)
          @ResourceIds = resourceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 资源详细信息集合
        # @type ResourceSet: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :TotalCount, :RequestId
        
        def initialize(resourceset=nil, totalcount=nil, requestid=nil)
          @ResourceSet = resourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resourceitem_tmp = ResourceItem.new
              resourceitem_tmp.deserialize(i)
              @ResourceSet << resourceitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemResources请求参数结构体
      class DescribeSystemResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需要查询的资源ID数组
        # @type ResourceIds: Array
        # @param Offset: 偏移量，仅当设置 Limit 参数时有效
        # @type Offset: Integer
        # @param Limit: 条数限制，默认返回 20 条
        # @type Limit: Integer
        # @param Filters: 查询资源配置列表， 如果不填写，返回该 ResourceIds.N 下所有作业配置列表
        # @type Filters: Array
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param FlinkVersion: 查询对应Flink版本的内置connector
        # @type FlinkVersion: String

        attr_accessor :ResourceIds, :Offset, :Limit, :Filters, :ClusterId, :FlinkVersion
        
        def initialize(resourceids=nil, offset=nil, limit=nil, filters=nil, clusterid=nil, flinkversion=nil)
          @ResourceIds = resourceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ClusterId = clusterid
          @FlinkVersion = flinkversion
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @FlinkVersion = params['FlinkVersion']
        end
      end

      # DescribeSystemResources返回参数结构体
      class DescribeSystemResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 资源详细信息集合
        # @type ResourceSet: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :TotalCount, :RequestId
        
        def initialize(resourceset=nil, totalcount=nil, requestid=nil)
          @ResourceSet = resourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              systemresourceitem_tmp = SystemResourceItem.new
              systemresourceitem_tmp.deserialize(i)
              @ResourceSet << systemresourceitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 查询作业列表时的过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要过滤的字段
        # @type Name: String
        # @param Values: 字段的过滤值
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

      # 作业配置详情
      class JobConfig < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param EntrypointClass: 主类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntrypointClass: String
        # @param ProgramArgs: 主类入参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramArgs: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 作业配置创建时间
        # @type CreateTime: String
        # @param Version: 作业配置的版本号
        # @type Version: Integer
        # @param DefaultParallelism: 作业默认并行度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultParallelism: Integer
        # @param Properties: 系统参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param ResourceRefDetails: 引用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRefDetails: Array
        # @param CreatorUin: 创建者uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param UpdateTime: 作业配置上次启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param COSBucket: 作业绑定的存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type COSBucket: String
        # @param LogCollect: 是否启用日志收集，0-未启用，1-已启用，2-历史集群未设置日志集，3-历史集群已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogCollect: Integer
        # @param MaxParallelism: 作业的最大并行度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxParallelism: Integer
        # @param JobManagerSpec: JobManager规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobManagerSpec: Float
        # @param TaskManagerSpec: TaskManager规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskManagerSpec: Float
        # @param ClsLogsetId: CLS日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsLogsetId: String
        # @param ClsTopicId: CLS日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsTopicId: String
        # @param PythonVersion: pyflink作业运行的python版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PythonVersion: String

        attr_accessor :JobId, :EntrypointClass, :ProgramArgs, :Remark, :CreateTime, :Version, :DefaultParallelism, :Properties, :ResourceRefDetails, :CreatorUin, :UpdateTime, :COSBucket, :LogCollect, :MaxParallelism, :JobManagerSpec, :TaskManagerSpec, :ClsLogsetId, :ClsTopicId, :PythonVersion
        
        def initialize(jobid=nil, entrypointclass=nil, programargs=nil, remark=nil, createtime=nil, version=nil, defaultparallelism=nil, properties=nil, resourcerefdetails=nil, creatoruin=nil, updatetime=nil, cosbucket=nil, logcollect=nil, maxparallelism=nil, jobmanagerspec=nil, taskmanagerspec=nil, clslogsetid=nil, clstopicid=nil, pythonversion=nil)
          @JobId = jobid
          @EntrypointClass = entrypointclass
          @ProgramArgs = programargs
          @Remark = remark
          @CreateTime = createtime
          @Version = version
          @DefaultParallelism = defaultparallelism
          @Properties = properties
          @ResourceRefDetails = resourcerefdetails
          @CreatorUin = creatoruin
          @UpdateTime = updatetime
          @COSBucket = cosbucket
          @LogCollect = logcollect
          @MaxParallelism = maxparallelism
          @JobManagerSpec = jobmanagerspec
          @TaskManagerSpec = taskmanagerspec
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @PythonVersion = pythonversion
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EntrypointClass = params['EntrypointClass']
          @ProgramArgs = params['ProgramArgs']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @DefaultParallelism = params['DefaultParallelism']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          unless params['ResourceRefDetails'].nil?
            @ResourceRefDetails = []
            params['ResourceRefDetails'].each do |i|
              resourcerefdetail_tmp = ResourceRefDetail.new
              resourcerefdetail_tmp.deserialize(i)
              @ResourceRefDetails << resourcerefdetail_tmp
            end
          end
          @CreatorUin = params['CreatorUin']
          @UpdateTime = params['UpdateTime']
          @COSBucket = params['COSBucket']
          @LogCollect = params['LogCollect']
          @MaxParallelism = params['MaxParallelism']
          @JobManagerSpec = params['JobManagerSpec']
          @TaskManagerSpec = params['TaskManagerSpec']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @PythonVersion = params['PythonVersion']
        end
      end

      # Job详细信息
      class JobV1 < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param OwnerUin: 用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreatorUin: 创建者UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param Name: 作业名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param JobType: 作业类型，1：sql作业，2：Jar作业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: Integer
        # @param Status: 作业状态，1：未初始化，2：未发布，3：操作中，4：运行中，5：停止，6：暂停，-1：故障
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 作业创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StartTime: 作业启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param StopTime: 作业停止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopTime: String
        # @param UpdateTime: 作业更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TotalRunMillis: 作业累计运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRunMillis: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param LastOpResult: 操作错误提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpResult: String
        # @param ClusterName: 集群名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param LatestJobConfigVersion: 最新配置版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestJobConfigVersion: Integer
        # @param PublishedJobConfigVersion: 已发布的配置版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedJobConfigVersion: Integer
        # @param RunningCuNum: 运行的CU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCuNum: Integer
        # @param CuMem: 作业内存规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CuMem: Integer
        # @param StatusDesc: 作业状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param CurrentRunMillis: 运行状态时表示单次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentRunMillis: Integer
        # @param ClusterId: 作业所在的集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param WebUIUrl: 作业管理WEB UI 入口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebUIUrl: String
        # @param SchedulerType: 作业所在集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerType: Integer
        # @param ClusterStatus: 作业所在集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: Integer
        # @param RunningCu: 细粒度下的运行的CU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCu: Float
        # @param FlinkVersion: 作业运行的 Flink 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlinkVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceId: String
        # @param WorkSpaceName: 工作空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceName: String

        attr_accessor :JobId, :Region, :Zone, :AppId, :OwnerUin, :CreatorUin, :Name, :JobType, :Status, :CreateTime, :StartTime, :StopTime, :UpdateTime, :TotalRunMillis, :Remark, :LastOpResult, :ClusterName, :LatestJobConfigVersion, :PublishedJobConfigVersion, :RunningCuNum, :CuMem, :StatusDesc, :CurrentRunMillis, :ClusterId, :WebUIUrl, :SchedulerType, :ClusterStatus, :RunningCu, :FlinkVersion, :WorkSpaceId, :WorkSpaceName
        
        def initialize(jobid=nil, region=nil, zone=nil, appid=nil, owneruin=nil, creatoruin=nil, name=nil, jobtype=nil, status=nil, createtime=nil, starttime=nil, stoptime=nil, updatetime=nil, totalrunmillis=nil, remark=nil, lastopresult=nil, clustername=nil, latestjobconfigversion=nil, publishedjobconfigversion=nil, runningcunum=nil, cumem=nil, statusdesc=nil, currentrunmillis=nil, clusterid=nil, webuiurl=nil, schedulertype=nil, clusterstatus=nil, runningcu=nil, flinkversion=nil, workspaceid=nil, workspacename=nil)
          @JobId = jobid
          @Region = region
          @Zone = zone
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @Name = name
          @JobType = jobtype
          @Status = status
          @CreateTime = createtime
          @StartTime = starttime
          @StopTime = stoptime
          @UpdateTime = updatetime
          @TotalRunMillis = totalrunmillis
          @Remark = remark
          @LastOpResult = lastopresult
          @ClusterName = clustername
          @LatestJobConfigVersion = latestjobconfigversion
          @PublishedJobConfigVersion = publishedjobconfigversion
          @RunningCuNum = runningcunum
          @CuMem = cumem
          @StatusDesc = statusdesc
          @CurrentRunMillis = currentrunmillis
          @ClusterId = clusterid
          @WebUIUrl = webuiurl
          @SchedulerType = schedulertype
          @ClusterStatus = clusterstatus
          @RunningCu = runningcu
          @FlinkVersion = flinkversion
          @WorkSpaceId = workspaceid
          @WorkSpaceName = workspacename
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @Name = params['Name']
          @JobType = params['JobType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @StopTime = params['StopTime']
          @UpdateTime = params['UpdateTime']
          @TotalRunMillis = params['TotalRunMillis']
          @Remark = params['Remark']
          @LastOpResult = params['LastOpResult']
          @ClusterName = params['ClusterName']
          @LatestJobConfigVersion = params['LatestJobConfigVersion']
          @PublishedJobConfigVersion = params['PublishedJobConfigVersion']
          @RunningCuNum = params['RunningCuNum']
          @CuMem = params['CuMem']
          @StatusDesc = params['StatusDesc']
          @CurrentRunMillis = params['CurrentRunMillis']
          @ClusterId = params['ClusterId']
          @WebUIUrl = params['WebUIUrl']
          @SchedulerType = params['SchedulerType']
          @ClusterStatus = params['ClusterStatus']
          @RunningCu = params['RunningCu']
          @FlinkVersion = params['FlinkVersion']
          @WorkSpaceId = params['WorkSpaceId']
          @WorkSpaceName = params['WorkSpaceName']
        end
      end

      # ModifyJob请求参数结构体
      class ModifyJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param Name: 作业名称，支持长度小于50的中文/英文/数字/”-”/”_”/”.”，不能重名
        # @type Name: String
        # @param Remark: 描述
        # @type Remark: String
        # @param TargetFolderId: 拖拽文件需传入此参数
        # @type TargetFolderId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :Name, :Remark, :TargetFolderId, :WorkSpaceId
        
        def initialize(jobid=nil, name=nil, remark=nil, targetfolderid=nil, workspaceid=nil)
          @JobId = jobid
          @Name = name
          @Remark = remark
          @TargetFolderId = targetfolderid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Name = params['Name']
          @Remark = params['Remark']
          @TargetFolderId = params['TargetFolderId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # ModifyJob返回参数结构体
      class ModifyJobResponse < TencentCloud::Common::AbstractModel
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

      # 系统配置属性
      class Property < TencentCloud::Common::AbstractModel
        # @param Key: 系统配置的Key
        # @type Key: String
        # @param Value: 系统配置的Value
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

      # 描述资源配置的返回参数
      class ResourceConfigItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer
        # @param Region: 资源所属地域
        # @type Region: String
        # @param AppId: 资源所属AppId
        # @type AppId: Integer
        # @param OwnerUin: 主账号Uin
        # @type OwnerUin: String
        # @param CreatorUin: 子账号Uin
        # @type CreatorUin: String
        # @param ResourceLoc: 资源位置描述
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param Version: 资源版本
        # @type Version: Integer
        # @param Remark: 资源描述
        # @type Remark: String
        # @param Status: 资源状态：0: 资源同步中，1:资源已就绪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RefJobCount: 关联作业个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobCount: Integer

        attr_accessor :ResourceId, :ResourceType, :Region, :AppId, :OwnerUin, :CreatorUin, :ResourceLoc, :CreateTime, :Version, :Remark, :Status, :RefJobCount
        
        def initialize(resourceid=nil, resourcetype=nil, region=nil, appid=nil, owneruin=nil, creatoruin=nil, resourceloc=nil, createtime=nil, version=nil, remark=nil, status=nil, refjobcount=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Region = region
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @ResourceLoc = resourceloc
          @CreateTime = createtime
          @Version = version
          @Remark = remark
          @Status = status
          @RefJobCount = refjobcount
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Region = params['Region']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @Remark = params['Remark']
          @Status = params['Status']
          @RefJobCount = params['RefJobCount']
        end
      end

      # 资源详细描述
      class ResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer
        # @param ResourceLoc: 资源位置
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param Region: 资源地域
        # @type Region: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param OwnerUin: 主账号Uin
        # @type OwnerUin: String
        # @param CreatorUin: 子账号Uin
        # @type CreatorUin: String
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param UpdateTime: 资源最后更新时间
        # @type UpdateTime: String
        # @param LatestResourceConfigVersion: 资源的资源版本ID
        # @type LatestResourceConfigVersion: Integer
        # @param Remark: 资源备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param VersionCount: 版本个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionCount: Integer
        # @param RefJobCount: 关联作业数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobCount: Integer

        attr_accessor :ResourceId, :Name, :ResourceType, :ResourceLoc, :Region, :AppId, :OwnerUin, :CreatorUin, :CreateTime, :UpdateTime, :LatestResourceConfigVersion, :Remark, :VersionCount, :RefJobCount
        
        def initialize(resourceid=nil, name=nil, resourcetype=nil, resourceloc=nil, region=nil, appid=nil, owneruin=nil, creatoruin=nil, createtime=nil, updatetime=nil, latestresourceconfigversion=nil, remark=nil, versioncount=nil, refjobcount=nil)
          @ResourceId = resourceid
          @Name = name
          @ResourceType = resourcetype
          @ResourceLoc = resourceloc
          @Region = region
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LatestResourceConfigVersion = latestresourceconfigversion
          @Remark = remark
          @VersionCount = versioncount
          @RefJobCount = refjobcount
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @Region = params['Region']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LatestResourceConfigVersion = params['LatestResourceConfigVersion']
          @Remark = params['Remark']
          @VersionCount = params['VersionCount']
          @RefJobCount = params['RefJobCount']
        end
      end

      # 资源位置描述
      class ResourceLoc < TencentCloud::Common::AbstractModel
        # @param StorageType: 资源位置的存储类型，目前只支持1:COS
        # @type StorageType: Integer
        # @param Param: 描述资源位置的json
        # @type Param: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLocParam`

        attr_accessor :StorageType, :Param
        
        def initialize(storagetype=nil, param=nil)
          @StorageType = storagetype
          @Param = param
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          unless params['Param'].nil?
            @Param = ResourceLocParam.new
            @Param.deserialize(params['Param'])
          end
        end
      end

      # 资源参数描述
      class ResourceLocParam < TencentCloud::Common::AbstractModel
        # @param Bucket: 资源bucket
        # @type Bucket: String
        # @param Path: 资源路径
        # @type Path: String
        # @param Region: 资源所在地域，如果不填，则使用Resource的Region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Bucket, :Path, :Region
        
        def initialize(bucket=nil, path=nil, region=nil)
          @Bucket = bucket
          @Path = path
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Path = params['Path']
          @Region = params['Region']
        end
      end

      # 资源引用参数
      class ResourceRef < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Version: 资源版本ID，-1表示使用最新版本
        # @type Version: Integer
        # @param Type: 引用资源类型，例如主资源设置为1，代表main class所在的jar包
        # @type Type: Integer

        attr_accessor :ResourceId, :Version, :Type
        
        def initialize(resourceid=nil, version=nil, type=nil)
          @ResourceId = resourceid
          @Version = version
          @Type = type
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @Type = params['Type']
        end
      end

      # JobConfig引用资源信息
      class ResourceRefDetail < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param Version: 资源版本，-1表示使用最新版本
        # @type Version: Integer
        # @param Name: 资源名称
        # @type Name: String
        # @param Type: 1: 主资源
        # @type Type: Integer
        # @param SystemProvide: 1: 系统内置资源
        # @type SystemProvide: Integer

        attr_accessor :ResourceId, :Version, :Name, :Type, :SystemProvide
        
        def initialize(resourceid=nil, version=nil, name=nil, type=nil, systemprovide=nil)
          @ResourceId = resourceid
          @Version = version
          @Name = name
          @Type = type
          @SystemProvide = systemprovide
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @Name = params['Name']
          @Type = params['Type']
          @SystemProvide = params['SystemProvide']
        end
      end

      # 资源被Job 引用信息
      class ResourceRefJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: Job id
        # @type JobId: String
        # @param JobConfigVersion: Job配置版本
        # @type JobConfigVersion: Integer
        # @param ResourceVersion: 资源版本
        # @type ResourceVersion: Integer

        attr_accessor :JobId, :JobConfigVersion, :ResourceVersion
        
        def initialize(jobid=nil, jobconfigversion=nil, resourceversion=nil)
          @JobId = jobid
          @JobConfigVersion = jobconfigversion
          @ResourceVersion = resourceversion
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobConfigVersion = params['JobConfigVersion']
          @ResourceVersion = params['ResourceVersion']
        end
      end

      # 作业启动详情
      class RunJobDescription < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param RunType: 运行类型，1：启动，2：恢复
        # @type RunType: Integer
        # @param StartMode: 已废弃。旧版 SQL 类型作业启动参数：指定数据源消费起始时间点
        # @type StartMode: String
        # @param JobConfigVersion: 当前作业的某个版本
        # @type JobConfigVersion: Integer
        # @param SavepointPath: Savepoint路径
        # @type SavepointPath: String
        # @param SavepointId: Savepoint的Id
        # @type SavepointId: String

        attr_accessor :JobId, :RunType, :StartMode, :JobConfigVersion, :SavepointPath, :SavepointId
        
        def initialize(jobid=nil, runtype=nil, startmode=nil, jobconfigversion=nil, savepointpath=nil, savepointid=nil)
          @JobId = jobid
          @RunType = runtype
          @StartMode = startmode
          @JobConfigVersion = jobconfigversion
          @SavepointPath = savepointpath
          @SavepointId = savepointid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RunType = params['RunType']
          @StartMode = params['StartMode']
          @JobConfigVersion = params['JobConfigVersion']
          @SavepointPath = params['SavepointPath']
          @SavepointId = params['SavepointId']
        end
      end

      # RunJobs请求参数结构体
      class RunJobsRequest < TencentCloud::Common::AbstractModel
        # @param RunJobDescriptions: 批量启动作业的描述信息
        # @type RunJobDescriptions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :RunJobDescriptions, :WorkSpaceId
        
        def initialize(runjobdescriptions=nil, workspaceid=nil)
          @RunJobDescriptions = runjobdescriptions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['RunJobDescriptions'].nil?
            @RunJobDescriptions = []
            params['RunJobDescriptions'].each do |i|
              runjobdescription_tmp = RunJobDescription.new
              runjobdescription_tmp.deserialize(i)
              @RunJobDescriptions << runjobdescription_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # RunJobs返回参数结构体
      class RunJobsResponse < TencentCloud::Common::AbstractModel
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

      # 描述Savepoint信息
      class Savepoint < TencentCloud::Common::AbstractModel
        # @param Id: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param VersionId: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param Status: 状态 1: Active; 2: Expired; 3: InProgress; 4: Failed; 5: Timeout
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param RecordType: 快照类型 1: savepoint；2: checkpoint；3: cancelWithSavepoint
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: Integer
        # @param JobRuntimeId: 运行作业实例的顺序 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobRuntimeId: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Timeout: 固定超时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param SerialId: 快照 serialId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialId: String

        attr_accessor :Id, :VersionId, :Status, :CreateTime, :UpdateTime, :Path, :Size, :RecordType, :JobRuntimeId, :Description, :Timeout, :SerialId
        
        def initialize(id=nil, versionid=nil, status=nil, createtime=nil, updatetime=nil, path=nil, size=nil, recordtype=nil, jobruntimeid=nil, description=nil, timeout=nil, serialid=nil)
          @Id = id
          @VersionId = versionid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Path = path
          @Size = size
          @RecordType = recordtype
          @JobRuntimeId = jobruntimeid
          @Description = description
          @Timeout = timeout
          @SerialId = serialid
        end

        def deserialize(params)
          @Id = params['Id']
          @VersionId = params['VersionId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Path = params['Path']
          @Size = params['Size']
          @RecordType = params['RecordType']
          @JobRuntimeId = params['JobRuntimeId']
          @Description = params['Description']
          @Timeout = params['Timeout']
          @SerialId = params['SerialId']
        end
      end

      # 停止作业的描述信息
      class StopJobDescription < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param StopType: 停止类型，1 停止 2 暂停
        # @type StopType: Integer

        attr_accessor :JobId, :StopType
        
        def initialize(jobid=nil, stoptype=nil)
          @JobId = jobid
          @StopType = stoptype
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StopType = params['StopType']
        end
      end

      # StopJobs请求参数结构体
      class StopJobsRequest < TencentCloud::Common::AbstractModel
        # @param StopJobDescriptions: 批量停止作业的描述信息
        # @type StopJobDescriptions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :StopJobDescriptions, :WorkSpaceId
        
        def initialize(stopjobdescriptions=nil, workspaceid=nil)
          @StopJobDescriptions = stopjobdescriptions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['StopJobDescriptions'].nil?
            @StopJobDescriptions = []
            params['StopJobDescriptions'].each do |i|
              stopjobdescription_tmp = StopJobDescription.new
              stopjobdescription_tmp.deserialize(i)
              @StopJobDescriptions << stopjobdescription_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # StopJobs返回参数结构体
      class StopJobsResponse < TencentCloud::Common::AbstractModel
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

      # 系统资源返回值
      class SystemResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceType: 资源类型。1 表示 JAR 包，目前只支持该值。
        # @type ResourceType: Integer
        # @param Remark: 资源备注
        # @type Remark: String
        # @param Region: 资源所属地域
        # @type Region: String
        # @param LatestResourceConfigVersion: 资源的最新版本
        # @type LatestResourceConfigVersion: Integer

        attr_accessor :ResourceId, :Name, :ResourceType, :Remark, :Region, :LatestResourceConfigVersion
        
        def initialize(resourceid=nil, name=nil, resourcetype=nil, remark=nil, region=nil, latestresourceconfigversion=nil)
          @ResourceId = resourceid
          @Name = name
          @ResourceType = resourcetype
          @Remark = remark
          @Region = region
          @LatestResourceConfigVersion = latestresourceconfigversion
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @Region = params['Region']
          @LatestResourceConfigVersion = params['LatestResourceConfigVersion']
        end
      end

      # TriggerJobSavepoint请求参数结构体
      class TriggerJobSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 SerialId
        # @type JobId: String
        # @param Description: 描述
        # @type Description: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :Description, :WorkSpaceId
        
        def initialize(jobid=nil, description=nil, workspaceid=nil)
          @JobId = jobid
          @Description = description
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Description = params['Description']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # TriggerJobSavepoint返回参数结构体
      class TriggerJobSavepointResponse < TencentCloud::Common::AbstractModel
        # @param SavepointTrigger: 是否成功
        # @type SavepointTrigger: Boolean
        # @param ErrorMsg: 错误消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param FinalSavepointPath: 快照路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalSavepointPath: String
        # @param SavepointId: 快照 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SavepointId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SavepointTrigger, :ErrorMsg, :FinalSavepointPath, :SavepointId, :RequestId
        
        def initialize(savepointtrigger=nil, errormsg=nil, finalsavepointpath=nil, savepointid=nil, requestid=nil)
          @SavepointTrigger = savepointtrigger
          @ErrorMsg = errormsg
          @FinalSavepointPath = finalsavepointpath
          @SavepointId = savepointid
          @RequestId = requestid
        end

        def deserialize(params)
          @SavepointTrigger = params['SavepointTrigger']
          @ErrorMsg = params['ErrorMsg']
          @FinalSavepointPath = params['FinalSavepointPath']
          @SavepointId = params['SavepointId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

