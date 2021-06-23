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
  module Msp
    module V20180319
      # DeregisterMigrationTask请求参数结构体
      class DeregisterMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeregisterMigrationTask返回参数结构体
      class DeregisterMigrationTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeMigrationTask请求参数结构体
      class DescribeMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，例如msp-jitoh33n
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeMigrationTask返回参数结构体
      class DescribeMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 迁移详情列表
        # @type TaskStatus: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :RequestId
        
        def initialize(taskstatus=nil, requestid=nil)
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskStatus'].nil?
            @TaskStatus = []
            params['TaskStatus'].each do |i|
              taskstatus_tmp = TaskStatus.new
              taskstatus_tmp.deserialize(i)
              @TaskStatus << taskstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 迁移目的信息
      class DstInfo < TencentCloud::Common::AbstractModel
        # @param Region: 迁移目的地域
        # @type Region: String
        # @param Ip: 迁移目的Ip
        # @type Ip: String
        # @param Port: 迁移目的端口
        # @type Port: String
        # @param InstanceId: 迁移目的实例Id
        # @type InstanceId: String

        attr_accessor :Region, :Ip, :Port, :InstanceId
        
        def initialize(region=nil, ip=nil, port=nil, instanceid=nil)
          @Region = region
          @Ip = ip
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Region = params['Region']
          @Ip = params['Ip']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # ListMigrationProject请求参数结构体
      class ListMigrationProjectRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 记录起始数，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回条数，默认值为500
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListMigrationProject返回参数结构体
      class ListMigrationProjectResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目列表
        # @type Projects: Array
        # @param TotalCount: 项目总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :TotalCount, :RequestId
        
        def initialize(projects=nil, totalcount=nil, requestid=nil)
          @Projects = projects
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @Projects << project_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListMigrationTask请求参数结构体
      class ListMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 记录起始数，默认值为0
        # @type Offset: Integer
        # @param Limit: 记录条数，默认值为10
        # @type Limit: Integer
        # @param ProjectId: 项目ID，默认值为空
        # @type ProjectId: Integer

        attr_accessor :Offset, :Limit, :ProjectId
        
        def initialize(offset=nil, limit=nil, projectid=nil)
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
        end
      end

      # ListMigrationTask返回参数结构体
      class ListMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总条数
        # @type TotalCount: Integer
        # @param Tasks: 迁移任务列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyMigrationTaskBelongToProject请求参数结构体
      class ModifyMigrationTaskBelongToProjectRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，例如msp-jitoh33n
        # @type TaskId: String
        # @param ProjectId: 项目ID，例如10005
        # @type ProjectId: Integer

        attr_accessor :TaskId, :ProjectId
        
        def initialize(taskid=nil, projectid=nil)
          @TaskId = taskid
          @ProjectId = projectid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyMigrationTaskBelongToProject返回参数结构体
      class ModifyMigrationTaskBelongToProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigrationTaskStatus请求参数结构体
      class ModifyMigrationTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，取值为unstart，migrating，finish，fail之一，分别代表该迁移任务状态为迁移未开始，迁移中，迁移完成，迁移失败
        # @type Status: String
        # @param TaskId: 任务ID，例如msp-jitoh33n
        # @type TaskId: String

        attr_accessor :Status, :TaskId
        
        def initialize(status=nil, taskid=nil)
          @Status = status
          @TaskId = taskid
        end

        def deserialize(params)
          @Status = params['Status']
          @TaskId = params['TaskId']
        end
      end

      # ModifyMigrationTaskStatus返回参数结构体
      class ModifyMigrationTaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # 列表类型
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称
        # @type ProjectName: String

        attr_accessor :ProjectId, :ProjectName
        
        def initialize(projectid=nil, projectname=nil)
          @ProjectId = projectid
          @ProjectName = projectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
        end
      end

      # RegisterMigrationTask请求参数结构体
      class RegisterMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，取值database（数据库迁移）、file（文件迁移）、host（主机迁移）
        # @type TaskType: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ServiceSupplier: 服务提供商名称
        # @type ServiceSupplier: String
        # @param CreateTime: 迁移任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 迁移任务更新时间
        # @type UpdateTime: String
        # @param MigrateClass: 迁移类别，如数据库迁移中mysql:mysql代表从mysql迁移到mysql，文件迁移中oss:cos代表从阿里云oss迁移到腾讯云cos
        # @type MigrateClass: String
        # @param SrcInfo: 迁移任务源信息
        # @type SrcInfo: :class:`Tencentcloud::Msp.v20180319.models.SrcInfo`
        # @param DstInfo: 迁移任务目的信息
        # @type DstInfo: :class:`Tencentcloud::Msp.v20180319.models.DstInfo`
        # @param SrcAccessType: 源实例接入类型，数据库迁移时填写值为：extranet(外网),cvm(cvm自建实例),dcg(专线接入的实例),vpncloud(云vpn接入的实例),vpnselfbuild(自建vpn接入的实例)，cdb(云上cdb实例)
        # @type SrcAccessType: String
        # @param SrcDatabaseType: 源实例数据库类型，数据库迁移时填写，取值为mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb 之一
        # @type SrcDatabaseType: String
        # @param DstAccessType: 目标实例接入类型，数据库迁移时填写值为：extranet(外网),cvm(cvm自建实例),dcg(专线接入的实例),vpncloud(云vpn接入的实例),vpnselfbuild(自建vpn接入的实例)，cdb(云上cdb实例)
        # @type DstAccessType: String
        # @param DstDatabaseType: 目标实例数据库类型,数据库迁移时填写，取值为mysql,redis,percona,mongodb,postgresql,sqlserver,mariadb 之一
        # @type DstDatabaseType: String

        attr_accessor :TaskType, :TaskName, :ServiceSupplier, :CreateTime, :UpdateTime, :MigrateClass, :SrcInfo, :DstInfo, :SrcAccessType, :SrcDatabaseType, :DstAccessType, :DstDatabaseType
        
        def initialize(tasktype=nil, taskname=nil, servicesupplier=nil, createtime=nil, updatetime=nil, migrateclass=nil, srcinfo=nil, dstinfo=nil, srcaccesstype=nil, srcdatabasetype=nil, dstaccesstype=nil, dstdatabasetype=nil)
          @TaskType = tasktype
          @TaskName = taskname
          @ServiceSupplier = servicesupplier
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MigrateClass = migrateclass
          @SrcInfo = srcinfo
          @DstInfo = dstinfo
          @SrcAccessType = srcaccesstype
          @SrcDatabaseType = srcdatabasetype
          @DstAccessType = dstaccesstype
          @DstDatabaseType = dstdatabasetype
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @TaskName = params['TaskName']
          @ServiceSupplier = params['ServiceSupplier']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MigrateClass = params['MigrateClass']
          unless params['SrcInfo'].nil?
            @SrcInfo = SrcInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['DstInfo'].nil?
            @DstInfo = DstInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
          @SrcAccessType = params['SrcAccessType']
          @SrcDatabaseType = params['SrcDatabaseType']
          @DstAccessType = params['DstAccessType']
          @DstDatabaseType = params['DstDatabaseType']
        end
      end

      # RegisterMigrationTask返回参数结构体
      class RegisterMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # 迁移源信息
      class SrcInfo < TencentCloud::Common::AbstractModel
        # @param Region: 迁移源地域
        # @type Region: String
        # @param Ip: 迁移源Ip
        # @type Ip: String
        # @param Port: 迁移源端口
        # @type Port: String
        # @param InstanceId: 迁移源实例Id
        # @type InstanceId: String

        attr_accessor :Region, :Ip, :Port, :InstanceId
        
        def initialize(region=nil, ip=nil, port=nil, instanceid=nil)
          @Region = region
          @Ip = ip
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Region = params['Region']
          @Ip = params['Ip']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # 迁移任务类别
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param MigrationType: 迁移类型
        # @type MigrationType: String
        # @param Status: 迁移状态
        # @type Status: String
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param SrcInfo: 迁移源信息
        # @type SrcInfo: :class:`Tencentcloud::Msp.v20180319.models.SrcInfo`
        # @param MigrationTimeLine: 迁移时间信息
        # @type MigrationTimeLine: :class:`Tencentcloud::Msp.v20180319.models.TimeObj`
        # @param Updated: 状态更新时间
        # @type Updated: String
        # @param DstInfo: 迁移目的信息
        # @type DstInfo: :class:`Tencentcloud::Msp.v20180319.models.DstInfo`

        attr_accessor :TaskId, :TaskName, :MigrationType, :Status, :ProjectId, :ProjectName, :SrcInfo, :MigrationTimeLine, :Updated, :DstInfo
        
        def initialize(taskid=nil, taskname=nil, migrationtype=nil, status=nil, projectid=nil, projectname=nil, srcinfo=nil, migrationtimeline=nil, updated=nil, dstinfo=nil)
          @TaskId = taskid
          @TaskName = taskname
          @MigrationType = migrationtype
          @Status = status
          @ProjectId = projectid
          @ProjectName = projectname
          @SrcInfo = srcinfo
          @MigrationTimeLine = migrationtimeline
          @Updated = updated
          @DstInfo = dstinfo
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @MigrationType = params['MigrationType']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          unless params['SrcInfo'].nil?
            @SrcInfo = SrcInfo.new
            @SrcInfo.deserialize(params['SrcInfo'])
          end
          unless params['MigrationTimeLine'].nil?
            @MigrationTimeLine = TimeObj.new
            @MigrationTimeLine.deserialize(params['MigrationTimeLine'])
          end
          @Updated = params['Updated']
          unless params['DstInfo'].nil?
            @DstInfo = DstInfo.new
            @DstInfo.deserialize(params['DstInfo'])
          end
        end
      end

      # 迁移详情列表
      class TaskStatus < TencentCloud::Common::AbstractModel
        # @param Status: 迁移状态
        # @type Status: String
        # @param Progress: 迁移进度
        # @type Progress: String
        # @param UpdateTime: 迁移日期
        # @type UpdateTime: String

        attr_accessor :Status, :Progress, :UpdateTime
        
        def initialize(status=nil, progress=nil, updatetime=nil)
          @Status = status
          @Progress = progress
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Status = params['Status']
          @Progress = params['Progress']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 时间对象
      class TimeObj < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :CreateTime, :EndTime
        
        def initialize(createtime=nil, endtime=nil)
          @CreateTime = createtime
          @EndTime = endtime
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
        end
      end

    end
  end
end

