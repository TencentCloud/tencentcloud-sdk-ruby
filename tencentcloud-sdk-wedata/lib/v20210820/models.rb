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

    end
  end
end

