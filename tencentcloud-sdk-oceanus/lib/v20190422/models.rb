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

        attr_accessor :JobId, :EntrypointClass, :ProgramArgs, :Remark, :ResourceRefs, :DefaultParallelism, :Properties, :AutoDelete, :COSBucket
        
        def initialize(jobid=nil, entrypointclass=nil, programargs=nil, remark=nil, resourcerefs=nil, defaultparallelism=nil, properties=nil, autodelete=nil, cosbucket=nil)
          @JobId = jobid
          @EntrypointClass = entrypointclass
          @ProgramArgs = programargs
          @Remark = remark
          @ResourceRefs = resourcerefs
          @DefaultParallelism = defaultparallelism
          @Properties = properties
          @AutoDelete = autodelete
          @COSBucket = cosbucket
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EntrypointClass = params['EntrypointClass']
          @ProgramArgs = params['ProgramArgs']
          @Remark = params['Remark']
          @ResourceRefs = params['ResourceRefs']
          @DefaultParallelism = params['DefaultParallelism']
          @Properties = params['Properties']
          @AutoDelete = params['AutoDelete']
          @COSBucket = params['COSBucket']
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

        attr_accessor :Name, :JobType, :ClusterType, :ClusterId, :CuMem, :Remark
        
        def initialize(name=nil, jobtype=nil, clustertype=nil, clusterid=nil, cumem=nil, remark=nil)
          @Name = name
          @JobType = jobtype
          @ClusterType = clustertype
          @ClusterId = clusterid
          @CuMem = cumem
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @JobType = params['JobType']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @CuMem = params['CuMem']
          @Remark = params['Remark']
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

        attr_accessor :ResourceId, :ResourceLoc, :Remark, :AutoDelete
        
        def initialize(resourceid=nil, resourceloc=nil, remark=nil, autodelete=nil)
          @ResourceId = resourceid
          @ResourceLoc = resourceloc
          @Remark = remark
          @AutoDelete = autodelete
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new.deserialize(params[ResourceLoc])
          end
          @Remark = params['Remark']
          @AutoDelete = params['AutoDelete']
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
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceType: 资源类型，占时只支持jar，填1
        # @type ResourceType: Integer
        # @param Remark: 资源描述
        # @type Remark: String
        # @param ResourceConfigRemark: 资源版本描述
        # @type ResourceConfigRemark: String

        attr_accessor :ResourceLoc, :Name, :ResourceType, :Remark, :ResourceConfigRemark
        
        def initialize(resourceloc=nil, name=nil, resourcetype=nil, remark=nil, resourceconfigremark=nil)
          @ResourceLoc = resourceloc
          @Name = name
          @ResourceType = resourcetype
          @Remark = remark
          @ResourceConfigRemark = resourceconfigremark
        end

        def deserialize(params)
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new.deserialize(params[ResourceLoc])
          end
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @ResourceConfigRemark = params['ResourceConfigRemark']
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

      # DeleteTableConfig请求参数结构体
      class DeleteTableConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param DebugId: 调试作业ID
        # @type DebugId: Integer
        # @param TableName: 表名
        # @type TableName: String

        attr_accessor :JobId, :DebugId, :TableName
        
        def initialize(jobid=nil, debugid=nil, tablename=nil)
          @JobId = jobid
          @DebugId = debugid
          @TableName = tablename
        end

        def deserialize(params)
          @JobId = params['JobId']
          @DebugId = params['DebugId']
          @TableName = params['TableName']
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

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 按照一个或者多个作业ID查询。作业ID形如：cql-11112222，每次请求的作业上限为100。参数不支持同时指定JobIds和Filters。
        # @type JobIds: Array
        # @param Filters: 过滤条件，详见作业过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定JobIds和Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :JobIds, :Filters, :Offset, :Limit
        
        def initialize(jobids=nil, filters=nil, offset=nil, limit=nil)
          @JobIds = jobids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @JobIds = params['JobIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
          @JobSet = params['JobSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemResources请求参数结构体
      class DescribeSystemResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需要查询的资源ID数组
        # @type ResourceIds: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 条数限制
        # @type Limit: Integer
        # @param Filters: 查询资源配置列表， 如果不填写，返回该ResourceId下所有作业配置列表
        # @type Filters: Array
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ResourceIds, :Offset, :Limit, :Filters, :ClusterId
        
        def initialize(resourceids=nil, offset=nil, limit=nil, filters=nil, clusterid=nil)
          @ResourceIds = resourceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filters = params['Filters']
          @ClusterId = params['ClusterId']
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
          @ResourceSet = params['ResourceSet']
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
        # @param JobType: 作业类型
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

        attr_accessor :JobId, :Region, :Zone, :AppId, :OwnerUin, :CreatorUin, :Name, :JobType, :Status, :CreateTime, :StartTime, :StopTime, :UpdateTime, :TotalRunMillis, :Remark, :LastOpResult, :ClusterName, :LatestJobConfigVersion, :PublishedJobConfigVersion, :RunningCuNum, :CuMem, :StatusDesc, :CurrentRunMillis, :ClusterId, :WebUIUrl, :SchedulerType, :ClusterStatus
        
        def initialize(jobid=nil, region=nil, zone=nil, appid=nil, owneruin=nil, creatoruin=nil, name=nil, jobtype=nil, status=nil, createtime=nil, starttime=nil, stoptime=nil, updatetime=nil, totalrunmillis=nil, remark=nil, lastopresult=nil, clustername=nil, latestjobconfigversion=nil, publishedjobconfigversion=nil, runningcunum=nil, cumem=nil, statusdesc=nil, currentrunmillis=nil, clusterid=nil, webuiurl=nil, schedulertype=nil, clusterstatus=nil)
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

      # 资源位置描述
      class ResourceLoc < TencentCloud::Common::AbstractModel
        # @param StorageType: 资源位置的存储类型，目前只支持COS
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
            @Param = ResourceLocParam.new.deserialize(params[Param])
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

      # 作业启动详情
      class RunJobDescription < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param RunType: 运行类型，1：启动，2：恢复
        # @type RunType: Integer
        # @param StartMode: SQL类型作业启动参数：指定数据源消费起始时间点
        # @type StartMode: String
        # @param JobConfigVersion: 已发布上线的作业配置版本
        # @type JobConfigVersion: Integer

        attr_accessor :JobId, :RunType, :StartMode, :JobConfigVersion
        
        def initialize(jobid=nil, runtype=nil, startmode=nil, jobconfigversion=nil)
          @JobId = jobid
          @RunType = runtype
          @StartMode = startmode
          @JobConfigVersion = jobconfigversion
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RunType = params['RunType']
          @StartMode = params['StartMode']
          @JobConfigVersion = params['JobConfigVersion']
        end
      end

      # RunJobs请求参数结构体
      class RunJobsRequest < TencentCloud::Common::AbstractModel
        # @param RunJobDescriptions: 批量启动作业的描述信息
        # @type RunJobDescriptions: Array

        attr_accessor :RunJobDescriptions
        
        def initialize(runjobdescriptions=nil)
          @RunJobDescriptions = runjobdescriptions
        end

        def deserialize(params)
          @RunJobDescriptions = params['RunJobDescriptions']
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

        attr_accessor :StopJobDescriptions
        
        def initialize(stopjobdescriptions=nil)
          @StopJobDescriptions = stopjobdescriptions
        end

        def deserialize(params)
          @StopJobDescriptions = params['StopJobDescriptions']
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
        # @param ResourceType: 资源类型
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

    end
  end
end

