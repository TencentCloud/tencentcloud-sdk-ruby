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
  module Pts
    module V20210728
      # AbortCronJobs请求参数结构体
      class AbortCronJobsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CronJobIds: 定时任务ID数组
        # @type CronJobIds: Array

        attr_accessor :ProjectId, :CronJobIds
        
        def initialize(projectid=nil, cronjobids=nil)
          @ProjectId = projectid
          @CronJobIds = cronjobids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CronJobIds = params['CronJobIds']
        end
      end

      # AbortCronJobs返回参数结构体
      class AbortCronJobsResponse < TencentCloud::Common::AbstractModel
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

      # AbortJob请求参数结构体
      class AbortJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param AbortReason: 中断原因
        # @type AbortReason: Integer

        attr_accessor :JobId, :ProjectId, :ScenarioId, :AbortReason
        
        def initialize(jobid=nil, projectid=nil, scenarioid=nil, abortreason=nil)
          @JobId = jobid
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @AbortReason = abortreason
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @AbortReason = params['AbortReason']
        end
      end

      # AbortJob返回参数结构体
      class AbortJobResponse < TencentCloud::Common::AbstractModel
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

      # AdjustJobSpeed请求参数结构体
      class AdjustJobSpeedRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param TargetRequestsPerSecond: 目标RPS
        # @type TargetRequestsPerSecond: Integer

        attr_accessor :JobId, :TargetRequestsPerSecond
        
        def initialize(jobid=nil, targetrequestspersecond=nil)
          @JobId = jobid
          @TargetRequestsPerSecond = targetrequestspersecond
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TargetRequestsPerSecond = params['TargetRequestsPerSecond']
        end
      end

      # AdjustJobSpeed返回参数结构体
      class AdjustJobSpeedResponse < TencentCloud::Common::AbstractModel
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

      # 聚合函数
      class AggregationLegend < TencentCloud::Common::AbstractModel
        # @param Aggregation: 指标支持的聚合函数
        # @type Aggregation: String
        # @param Legend: 聚合函数作用于指标后对应的描述
        # @type Legend: String
        # @param Unit: 聚合之后的指标单位
        # @type Unit: String

        attr_accessor :Aggregation, :Legend, :Unit
        
        def initialize(aggregation=nil, legend=nil, unit=nil)
          @Aggregation = aggregation
          @Legend = legend
          @Unit = unit
        end

        def deserialize(params)
          @Aggregation = params['Aggregation']
          @Legend = params['Legend']
          @Unit = params['Unit']
        end
      end

      # 告警通知渠道
      class AlertChannel < TencentCloud::Common::AbstractModel
        # @param NoticeId: 通知模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeId: String
        # @param AMPConsumerId: AMP consumer ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AMPConsumerId: String

        attr_accessor :NoticeId, :AMPConsumerId
        
        def initialize(noticeid=nil, ampconsumerid=nil)
          @NoticeId = noticeid
          @AMPConsumerId = ampconsumerid
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @AMPConsumerId = params['AMPConsumerId']
        end
      end

      # 告警通知接收组
      class AlertChannelRecord < TencentCloud::Common::AbstractModel
        # @param NoticeId: Notice ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeId: String
        # @param AMPConsumerId: Consumer ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AMPConsumerId: String
        # @param ProjectId: 项目 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param AppId: App ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 子账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String

        attr_accessor :NoticeId, :AMPConsumerId, :ProjectId, :Status, :CreatedAt, :UpdatedAt, :AppId, :Uin, :SubAccountUin
        
        def initialize(noticeid=nil, ampconsumerid=nil, projectid=nil, status=nil, createdat=nil, updatedat=nil, appid=nil, uin=nil, subaccountuin=nil)
          @NoticeId = noticeid
          @AMPConsumerId = ampconsumerid
          @ProjectId = projectid
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @AMPConsumerId = params['AMPConsumerId']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
        end
      end

      # 告警历史记录项
      class AlertRecord < TencentCloud::Common::AbstractModel
        # @param AlertRecordId: 告警历史记录项 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRecordId: String
        # @param ProjectId: 项目 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ScenarioId: 场景 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioId: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: :class:`Tencentcloud::Pts.v20210728.models.AlertRecordStatus`
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param JobId: 任务 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param AppId: App ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 子账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param ScenarioName: 场景名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioName: String
        # @param Target: 告警对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Target: String
        # @param JobSLAId: 告警规则 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSLAId: String
        # @param JobSLADescription: 告警规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSLADescription: String

        attr_accessor :AlertRecordId, :ProjectId, :ScenarioId, :Status, :CreatedAt, :UpdatedAt, :JobId, :AppId, :Uin, :SubAccountUin, :ScenarioName, :Target, :JobSLAId, :JobSLADescription
        
        def initialize(alertrecordid=nil, projectid=nil, scenarioid=nil, status=nil, createdat=nil, updatedat=nil, jobid=nil, appid=nil, uin=nil, subaccountuin=nil, scenarioname=nil, target=nil, jobslaid=nil, jobsladescription=nil)
          @AlertRecordId = alertrecordid
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @JobId = jobid
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
          @ScenarioName = scenarioname
          @Target = target
          @JobSLAId = jobslaid
          @JobSLADescription = jobsladescription
        end

        def deserialize(params)
          @AlertRecordId = params['AlertRecordId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          unless params['Status'].nil?
            @Status = AlertRecordStatus.new
            @Status.deserialize(params['Status'])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @JobId = params['JobId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          @ScenarioName = params['ScenarioName']
          @Target = params['Target']
          @JobSLAId = params['JobSLAId']
          @JobSLADescription = params['JobSLADescription']
        end
      end

      # 告警历史项的状态
      class AlertRecordStatus < TencentCloud::Common::AbstractModel
        # @param AbortJob: 停止压测任务成功与否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbortJob: Integer
        # @param SendNotice: 发送告警通知成功与否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendNotice: Integer

        attr_accessor :AbortJob, :SendNotice
        
        def initialize(abortjob=nil, sendnotice=nil)
          @AbortJob = abortjob
          @SendNotice = sendnotice
        end

        def deserialize(params)
          @AbortJob = params['AbortJob']
          @SendNotice = params['SendNotice']
        end
      end

      # 采样日志附带属性
      class Attributes < TencentCloud::Common::AbstractModel
        # @param Status: 采用请求返回码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Result: 采样请求结果码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param Service: 采样请求API
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: String
        # @param Method: 采样请求调用方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Duration: 采样请求延时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String

        attr_accessor :Status, :Result, :Service, :Method, :Duration
        
        def initialize(status=nil, result=nil, service=nil, method=nil, duration=nil)
          @Status = status
          @Result = result
          @Service = service
          @Method = method
          @Duration = duration
        end

        def deserialize(params)
          @Status = params['Status']
          @Result = params['Result']
          @Service = params['Service']
          @Method = params['Method']
          @Duration = params['Duration']
        end
      end

      # 检查点汇总结果
      class CheckSummary < TencentCloud::Common::AbstractModel
        # @param Name: 检查点名字
        # @type Name: String
        # @param Step: 检查点所在步骤名字
        # @type Step: String
        # @param SuccessCount: 检查点成功次数
        # @type SuccessCount: Integer
        # @param FailCount: 检查失败次数
        # @type FailCount: Integer
        # @param ErrorRate: 错误比例
        # @type ErrorRate: Float

        attr_accessor :Name, :Step, :SuccessCount, :FailCount, :ErrorRate
        
        def initialize(name=nil, step=nil, successcount=nil, failcount=nil, errorrate=nil)
          @Name = name
          @Step = step
          @SuccessCount = successcount
          @FailCount = failcount
          @ErrorRate = errorrate
        end

        def deserialize(params)
          @Name = params['Name']
          @Step = params['Step']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @ErrorRate = params['ErrorRate']
        end
      end

      # 并发模式的施压配置
      class Concurrency < TencentCloud::Common::AbstractModel
        # @param Stages: 多阶段配置数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stages: Array
        # @param IterationCount: 运行次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationCount: Integer
        # @param MaxRequestsPerSecond: 最大RPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestsPerSecond: Integer

        attr_accessor :Stages, :IterationCount, :MaxRequestsPerSecond
        
        def initialize(stages=nil, iterationcount=nil, maxrequestspersecond=nil)
          @Stages = stages
          @IterationCount = iterationcount
          @MaxRequestsPerSecond = maxrequestspersecond
        end

        def deserialize(params)
          unless params['Stages'].nil?
            @Stages = []
            params['Stages'].each do |i|
              stage_tmp = Stage.new
              stage_tmp.deserialize(i)
              @Stages << stage_tmp
            end
          end
          @IterationCount = params['IterationCount']
          @MaxRequestsPerSecond = params['MaxRequestsPerSecond']
        end
      end

      # CopyScenario请求参数结构体
      class CopyScenarioRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param ScenarioId: 场景 ID
        # @type ScenarioId: String

        attr_accessor :ProjectId, :ScenarioId
        
        def initialize(projectid=nil, scenarioid=nil)
          @ProjectId = projectid
          @ScenarioId = scenarioid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
        end
      end

      # CopyScenario返回参数结构体
      class CopyScenarioResponse < TencentCloud::Common::AbstractModel
        # @param ScenarioId: 复制出的新场景 ID
        # @type ScenarioId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScenarioId, :RequestId
        
        def initialize(scenarioid=nil, requestid=nil)
          @ScenarioId = scenarioid
          @RequestId = requestid
        end

        def deserialize(params)
          @ScenarioId = params['ScenarioId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlertChannel请求参数结构体
      class CreateAlertChannelRequest < TencentCloud::Common::AbstractModel
        # @param NoticeId: Notice ID
        # @type NoticeId: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param AMPConsumerId: AMP Consumer ID
        # @type AMPConsumerId: String

        attr_accessor :NoticeId, :ProjectId, :AMPConsumerId
        
        def initialize(noticeid=nil, projectid=nil, ampconsumerid=nil)
          @NoticeId = noticeid
          @ProjectId = projectid
          @AMPConsumerId = ampconsumerid
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @ProjectId = params['ProjectId']
          @AMPConsumerId = params['AMPConsumerId']
        end
      end

      # CreateAlertChannel返回参数结构体
      class CreateAlertChannelResponse < TencentCloud::Common::AbstractModel
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

      # CreateCronJob请求参数结构体
      class CreateCronJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 定时任务名字
        # @type Name: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param ScenarioName: 场景名称
        # @type ScenarioName: String
        # @param FrequencyType: 执行频率类型，1:只执行一次; 2:日粒度; 3:周粒度; 4:高级
        # @type FrequencyType: Integer
        # @param CronExpression: cron表达式
        # @type CronExpression: String
        # @param JobOwner: 任务发起人
        # @type JobOwner: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param NoticeId: Notice ID
        # @type NoticeId: String
        # @param Note: 备注
        # @type Note: String

        attr_accessor :Name, :ProjectId, :ScenarioId, :ScenarioName, :FrequencyType, :CronExpression, :JobOwner, :EndTime, :NoticeId, :Note
        
        def initialize(name=nil, projectid=nil, scenarioid=nil, scenarioname=nil, frequencytype=nil, cronexpression=nil, jobowner=nil, endtime=nil, noticeid=nil, note=nil)
          @Name = name
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @ScenarioName = scenarioname
          @FrequencyType = frequencytype
          @CronExpression = cronexpression
          @JobOwner = jobowner
          @EndTime = endtime
          @NoticeId = noticeid
          @Note = note
        end

        def deserialize(params)
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @ScenarioName = params['ScenarioName']
          @FrequencyType = params['FrequencyType']
          @CronExpression = params['CronExpression']
          @JobOwner = params['JobOwner']
          @EndTime = params['EndTime']
          @NoticeId = params['NoticeId']
          @Note = params['Note']
        end
      end

      # CreateCronJob返回参数结构体
      class CreateCronJobResponse < TencentCloud::Common::AbstractModel
        # @param CronJobId: 定时任务ID
        # @type CronJobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CronJobId, :RequestId
        
        def initialize(cronjobid=nil, requestid=nil)
          @CronJobId = cronjobid
          @RequestId = requestid
        end

        def deserialize(params)
          @CronJobId = params['CronJobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFile请求参数结构体
      class CreateFileRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 文件 ID
        # @type FileId: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param Kind: 文件种类，参数文件-1，协议文件-2，请求文件-3
        # @type Kind: Integer
        # @param Name: 文件名
        # @type Name: String
        # @param Size: 文件大小
        # @type Size: Integer
        # @param Type: 文件类型，文件夹-folder
        # @type Type: String
        # @param LineCount: 行数
        # @type LineCount: Integer
        # @param HeadLines: 前几行数据
        # @type HeadLines: Array
        # @param TailLines: 后几行数据
        # @type TailLines: Array
        # @param HeaderInFile: 表头是否在文件内
        # @type HeaderInFile: Boolean
        # @param HeaderColumns: 表头
        # @type HeaderColumns: Array
        # @param FileInfos: 文件夹中的文件
        # @type FileInfos: Array

        attr_accessor :FileId, :ProjectId, :Kind, :Name, :Size, :Type, :LineCount, :HeadLines, :TailLines, :HeaderInFile, :HeaderColumns, :FileInfos
        
        def initialize(fileid=nil, projectid=nil, kind=nil, name=nil, size=nil, type=nil, linecount=nil, headlines=nil, taillines=nil, headerinfile=nil, headercolumns=nil, fileinfos=nil)
          @FileId = fileid
          @ProjectId = projectid
          @Kind = kind
          @Name = name
          @Size = size
          @Type = type
          @LineCount = linecount
          @HeadLines = headlines
          @TailLines = taillines
          @HeaderInFile = headerinfile
          @HeaderColumns = headercolumns
          @FileInfos = fileinfos
        end

        def deserialize(params)
          @FileId = params['FileId']
          @ProjectId = params['ProjectId']
          @Kind = params['Kind']
          @Name = params['Name']
          @Size = params['Size']
          @Type = params['Type']
          @LineCount = params['LineCount']
          @HeadLines = params['HeadLines']
          @TailLines = params['TailLines']
          @HeaderInFile = params['HeaderInFile']
          @HeaderColumns = params['HeaderColumns']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileInfos << fileinfo_tmp
            end
          end
        end
      end

      # CreateFile返回参数结构体
      class CreateFileResponse < TencentCloud::Common::AbstractModel
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

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Description: 项目描述
        # @type Description: String
        # @param Tags: 标签数组
        # @type Tags: Array

        attr_accessor :Name, :Description, :Tags
        
        def initialize(name=nil, description=nil, tags=nil)
          @Name = name
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspec_tmp = TagSpec.new
              tagspec_tmp.deserialize(i)
              @Tags << tagspec_tmp
            end
          end
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :RequestId
        
        def initialize(projectid=nil, requestid=nil)
          @ProjectId = projectid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScenario请求参数结构体
      class CreateScenarioRequest < TencentCloud::Common::AbstractModel
        # @param Name: 场景名
        # @type Name: String
        # @param Type: 压测引擎类型
        # @type Type: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Description: 场景描述
        # @type Description: String
        # @param Load: 施压配置
        # @type Load: :class:`Tencentcloud::Pts.v20210728.models.Load`
        # @param Configs: deprecated
        # @type Configs: Array
        # @param Datasets: 测试数据集
        # @type Datasets: Array
        # @param Extensions: deprecated
        # @type Extensions: Array
        # @param SLAId: deprecated
        # @type SLAId: String
        # @param CronId: cron job ID
        # @type CronId: String
        # @param Scripts: deprecated
        # @type Scripts: Array
        # @param TestScripts: 测试脚本文件信息
        # @type TestScripts: Array
        # @param Protocols: 协议文件路径
        # @type Protocols: Array
        # @param RequestFiles: 请求文件路径
        # @type RequestFiles: Array
        # @param SLAPolicy: SLA 策略
        # @type SLAPolicy: :class:`Tencentcloud::Pts.v20210728.models.SLAPolicy`
        # @param Plugins: 拓展包文件路径
        # @type Plugins: Array
        # @param DomainNameConfig: 域名解析配置
        # @type DomainNameConfig: :class:`Tencentcloud::Pts.v20210728.models.DomainNameConfig`

        attr_accessor :Name, :Type, :ProjectId, :Description, :Load, :Configs, :Datasets, :Extensions, :SLAId, :CronId, :Scripts, :TestScripts, :Protocols, :RequestFiles, :SLAPolicy, :Plugins, :DomainNameConfig
        
        def initialize(name=nil, type=nil, projectid=nil, description=nil, load=nil, configs=nil, datasets=nil, extensions=nil, slaid=nil, cronid=nil, scripts=nil, testscripts=nil, protocols=nil, requestfiles=nil, slapolicy=nil, plugins=nil, domainnameconfig=nil)
          @Name = name
          @Type = type
          @ProjectId = projectid
          @Description = description
          @Load = load
          @Configs = configs
          @Datasets = datasets
          @Extensions = extensions
          @SLAId = slaid
          @CronId = cronid
          @Scripts = scripts
          @TestScripts = testscripts
          @Protocols = protocols
          @RequestFiles = requestfiles
          @SLAPolicy = slapolicy
          @Plugins = plugins
          @DomainNameConfig = domainnameconfig
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          unless params['Load'].nil?
            @Load = Load.new
            @Load.deserialize(params['Load'])
          end
          @Configs = params['Configs']
          unless params['Datasets'].nil?
            @Datasets = []
            params['Datasets'].each do |i|
              testdata_tmp = TestData.new
              testdata_tmp.deserialize(i)
              @Datasets << testdata_tmp
            end
          end
          @Extensions = params['Extensions']
          @SLAId = params['SLAId']
          @CronId = params['CronId']
          @Scripts = params['Scripts']
          unless params['TestScripts'].nil?
            @TestScripts = []
            params['TestScripts'].each do |i|
              scriptinfo_tmp = ScriptInfo.new
              scriptinfo_tmp.deserialize(i)
              @TestScripts << scriptinfo_tmp
            end
          end
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              protocolinfo_tmp = ProtocolInfo.new
              protocolinfo_tmp.deserialize(i)
              @Protocols << protocolinfo_tmp
            end
          end
          unless params['RequestFiles'].nil?
            @RequestFiles = []
            params['RequestFiles'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @RequestFiles << fileinfo_tmp
            end
          end
          unless params['SLAPolicy'].nil?
            @SLAPolicy = SLAPolicy.new
            @SLAPolicy.deserialize(params['SLAPolicy'])
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @Plugins << fileinfo_tmp
            end
          end
          unless params['DomainNameConfig'].nil?
            @DomainNameConfig = DomainNameConfig.new
            @DomainNameConfig.deserialize(params['DomainNameConfig'])
          end
        end
      end

      # CreateScenario返回参数结构体
      class CreateScenarioResponse < TencentCloud::Common::AbstractModel
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScenarioId, :RequestId
        
        def initialize(scenarioid=nil, requestid=nil)
          @ScenarioId = scenarioid
          @RequestId = requestid
        end

        def deserialize(params)
          @ScenarioId = params['ScenarioId']
          @RequestId = params['RequestId']
        end
      end

      # COS临时凭证
      class Credentials < TencentCloud::Common::AbstractModel
        # @param TmpSecretId: 临时secret ID
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时secret key
        # @type TmpSecretKey: String
        # @param Token: 临时token
        # @type Token: String

        attr_accessor :TmpSecretId, :TmpSecretKey, :Token
        
        def initialize(tmpsecretid=nil, tmpsecretkey=nil, token=nil)
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @Token = token
        end

        def deserialize(params)
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @Token = params['Token']
        end
      end

      # 定时任务
      class CronJob < TencentCloud::Common::AbstractModel
        # @param CronJobId: 定时任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronJobId: String
        # @param Name: 定时任务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioId: String
        # @param ScenarioName: 场景名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioName: String
        # @param CronExpression: cron 表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronExpression: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param AbortReason: 中止原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbortReason: Integer
        # @param Status: 定时任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param NoticeId: Notice ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeId: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param FrequencyType: 执行频率类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrequencyType: Integer
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param JobOwner: tom
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobOwner: String
        # @param AppId: App ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 子账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String

        attr_accessor :CronJobId, :Name, :ProjectId, :ScenarioId, :ScenarioName, :CronExpression, :EndTime, :AbortReason, :Status, :NoticeId, :CreatedAt, :UpdatedAt, :FrequencyType, :Note, :JobOwner, :AppId, :Uin, :SubAccountUin
        
        def initialize(cronjobid=nil, name=nil, projectid=nil, scenarioid=nil, scenarioname=nil, cronexpression=nil, endtime=nil, abortreason=nil, status=nil, noticeid=nil, createdat=nil, updatedat=nil, frequencytype=nil, note=nil, jobowner=nil, appid=nil, uin=nil, subaccountuin=nil)
          @CronJobId = cronjobid
          @Name = name
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @ScenarioName = scenarioname
          @CronExpression = cronexpression
          @EndTime = endtime
          @AbortReason = abortreason
          @Status = status
          @NoticeId = noticeid
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @FrequencyType = frequencytype
          @Note = note
          @JobOwner = jobowner
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
        end

        def deserialize(params)
          @CronJobId = params['CronJobId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @ScenarioName = params['ScenarioName']
          @CronExpression = params['CronExpression']
          @EndTime = params['EndTime']
          @AbortReason = params['AbortReason']
          @Status = params['Status']
          @NoticeId = params['NoticeId']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @FrequencyType = params['FrequencyType']
          @Note = params['Note']
          @JobOwner = params['JobOwner']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
        end
      end

      # sample附带原始查询语句中的metric, aggregation
      class CustomSample < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名
        # @type Metric: String
        # @param Aggregation: 聚合条件
        # @type Aggregation: String
        # @param Labels: 过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Value: 查询值
        # @type Value: Float
        # @param Timestamp: Time is the number of milliseconds since the epoch
        # // (1970-01-01 00:00 UTC) excluding leap seconds.
        # @type Timestamp: Integer
        # @param Unit: 指标对应的单位，当前单位有：s,bytes,bytes/s,reqs,reqs/s,checks,checks/s,iters,iters/s,VUs, %
        # @type Unit: String

        attr_accessor :Metric, :Aggregation, :Labels, :Value, :Timestamp, :Unit
        
        def initialize(metric=nil, aggregation=nil, labels=nil, value=nil, timestamp=nil, unit=nil)
          @Metric = metric
          @Aggregation = aggregation
          @Labels = labels
          @Value = value
          @Timestamp = timestamp
          @Unit = unit
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          @Value = params['Value']
          @Timestamp = params['Timestamp']
          @Unit = params['Unit']
        end
      end

      # 指标矩阵，可包含多条指标序列
      class CustomSampleMatrix < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名字
        # @type Metric: String
        # @param Aggregation: 聚合函数
        # @type Aggregation: String
        # @param Unit: 指标单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Streams: 指标序列数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Streams: Array

        attr_accessor :Metric, :Aggregation, :Unit, :Streams
        
        def initialize(metric=nil, aggregation=nil, unit=nil, streams=nil)
          @Metric = metric
          @Aggregation = aggregation
          @Unit = unit
          @Streams = streams
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          @Unit = params['Unit']
          unless params['Streams'].nil?
            @Streams = []
            params['Streams'].each do |i|
              samplestream_tmp = SampleStream.new
              samplestream_tmp.deserialize(i)
              @Streams << samplestream_tmp
            end
          end
        end
      end

      # 施压机 DNS 配置
      class DNSConfig < TencentCloud::Common::AbstractModel
        # @param Nameservers: DNS IP 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nameservers: Array

        attr_accessor :Nameservers
        
        def initialize(nameservers=nil)
          @Nameservers = nameservers
        end

        def deserialize(params)
          @Nameservers = params['Nameservers']
        end
      end

      # DeleteAlertChannel请求参数结构体
      class DeleteAlertChannelRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param NoticeId: Notice ID
        # @type NoticeId: String

        attr_accessor :ProjectId, :NoticeId
        
        def initialize(projectid=nil, noticeid=nil)
          @ProjectId = projectid
          @NoticeId = noticeid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @NoticeId = params['NoticeId']
        end
      end

      # DeleteAlertChannel返回参数结构体
      class DeleteAlertChannelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCronJobs请求参数结构体
      class DeleteCronJobsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CronJobIds: 定时任务ID数组
        # @type CronJobIds: Array

        attr_accessor :ProjectId, :CronJobIds
        
        def initialize(projectid=nil, cronjobids=nil)
          @ProjectId = projectid
          @CronJobIds = cronjobids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CronJobIds = params['CronJobIds']
        end
      end

      # DeleteCronJobs返回参数结构体
      class DeleteCronJobsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFiles请求参数结构体
      class DeleteFilesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param FileIds: 文件 ID 数组
        # @type FileIds: Array

        attr_accessor :ProjectId, :FileIds
        
        def initialize(projectid=nil, fileids=nil)
          @ProjectId = projectid
          @FileIds = fileids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @FileIds = params['FileIds']
        end
      end

      # DeleteFiles返回参数结构体
      class DeleteFilesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJobs请求参数结构体
      class DeleteJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 任务ID数组
        # @type JobIds: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioIds: 场景ID数组
        # @type ScenarioIds: Array

        attr_accessor :JobIds, :ProjectId, :ScenarioIds
        
        def initialize(jobids=nil, projectid=nil, scenarioids=nil)
          @JobIds = jobids
          @ProjectId = projectid
          @ScenarioIds = scenarioids
        end

        def deserialize(params)
          @JobIds = params['JobIds']
          @ProjectId = params['ProjectId']
          @ScenarioIds = params['ScenarioIds']
        end
      end

      # DeleteJobs返回参数结构体
      class DeleteJobsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProjects请求参数结构体
      class DeleteProjectsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param DeleteScenarios: 是否删除项目相关的场景。默认为否。
        # @type DeleteScenarios: Boolean
        # @param DeleteJobs: 是否删除项目相关的任务。默认为否。
        # @type DeleteJobs: Boolean

        attr_accessor :ProjectIds, :DeleteScenarios, :DeleteJobs
        
        def initialize(projectids=nil, deletescenarios=nil, deletejobs=nil)
          @ProjectIds = projectids
          @DeleteScenarios = deletescenarios
          @DeleteJobs = deletejobs
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @DeleteScenarios = params['DeleteScenarios']
          @DeleteJobs = params['DeleteJobs']
        end
      end

      # DeleteProjects返回参数结构体
      class DeleteProjectsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScenarios请求参数结构体
      class DeleteScenariosRequest < TencentCloud::Common::AbstractModel
        # @param ScenarioIds: 场景ID数组
        # @type ScenarioIds: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DeleteJobs: 是否删除场景相关的任务。默认为否。
        # @type DeleteJobs: Boolean

        attr_accessor :ScenarioIds, :ProjectId, :DeleteJobs
        
        def initialize(scenarioids=nil, projectid=nil, deletejobs=nil)
          @ScenarioIds = scenarioids
          @ProjectId = projectid
          @DeleteJobs = deletejobs
        end

        def deserialize(params)
          @ScenarioIds = params['ScenarioIds']
          @ProjectId = params['ProjectId']
          @DeleteJobs = params['DeleteJobs']
        end
      end

      # DeleteScenarios返回参数结构体
      class DeleteScenariosResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlertChannels请求参数结构体
      class DescribeAlertChannelsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目 ID 列表
        # @type ProjectIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大为100
        # @type Limit: Integer
        # @param NoticeIds: Notice ID 列表
        # @type NoticeIds: Array
        # @param OrderBy: 排序项
        # @type OrderBy: String
        # @param Ascend: 是否正序
        # @type Ascend: Boolean

        attr_accessor :ProjectIds, :Offset, :Limit, :NoticeIds, :OrderBy, :Ascend
        
        def initialize(projectids=nil, offset=nil, limit=nil, noticeids=nil, orderby=nil, ascend=nil)
          @ProjectIds = projectids
          @Offset = offset
          @Limit = limit
          @NoticeIds = noticeids
          @OrderBy = orderby
          @Ascend = ascend
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NoticeIds = params['NoticeIds']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
        end
      end

      # DescribeAlertChannels返回参数结构体
      class DescribeAlertChannelsResponse < TencentCloud::Common::AbstractModel
        # @param AlertChannelSet: 告警通知接收组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertChannelSet: Array
        # @param Total: 告警通知接收组数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlertChannelSet, :Total, :RequestId
        
        def initialize(alertchannelset=nil, total=nil, requestid=nil)
          @AlertChannelSet = alertchannelset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlertChannelSet'].nil?
            @AlertChannelSet = []
            params['AlertChannelSet'].each do |i|
              alertchannelrecord_tmp = AlertChannelRecord.new
              alertchannelrecord_tmp.deserialize(i)
              @AlertChannelSet << alertchannelrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlertRecords请求参数结构体
      class DescribeAlertRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目 ID 列表
        # @type ProjectIds: Array
        # @param ScenarioIds: 场景 ID 列表
        # @type ScenarioIds: Array
        # @param JobIds: 任务 ID 列表
        # @type JobIds: Array
        # @param Ascend: 是否正序
        # @type Ascend: Boolean
        # @param OrderBy: 排序项
        # @type OrderBy: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大为100
        # @type Limit: Integer
        # @param ScenarioNames: 按场景名筛选
        # @type ScenarioNames: Array

        attr_accessor :ProjectIds, :ScenarioIds, :JobIds, :Ascend, :OrderBy, :Offset, :Limit, :ScenarioNames
        
        def initialize(projectids=nil, scenarioids=nil, jobids=nil, ascend=nil, orderby=nil, offset=nil, limit=nil, scenarionames=nil)
          @ProjectIds = projectids
          @ScenarioIds = scenarioids
          @JobIds = jobids
          @Ascend = ascend
          @OrderBy = orderby
          @Offset = offset
          @Limit = limit
          @ScenarioNames = scenarionames
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @ScenarioIds = params['ScenarioIds']
          @JobIds = params['JobIds']
          @Ascend = params['Ascend']
          @OrderBy = params['OrderBy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ScenarioNames = params['ScenarioNames']
        end
      end

      # DescribeAlertRecords返回参数结构体
      class DescribeAlertRecordsResponse < TencentCloud::Common::AbstractModel
        # @param AlertRecordSet: 告警历史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertRecordSet: Array
        # @param Total: 告警历史记录的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlertRecordSet, :Total, :RequestId
        
        def initialize(alertrecordset=nil, total=nil, requestid=nil)
          @AlertRecordSet = alertrecordset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlertRecordSet'].nil?
            @AlertRecordSet = []
            params['AlertRecordSet'].each do |i|
              alertrecord_tmp = AlertRecord.new
              alertrecord_tmp.deserialize(i)
              @AlertRecordSet << alertrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableMetrics请求参数结构体
      class DescribeAvailableMetricsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailableMetrics返回参数结构体
      class DescribeAvailableMetricsResponse < TencentCloud::Common::AbstractModel
        # @param MetricSet: 系统支持的所有指标
        # @type MetricSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSet, :RequestId
        
        def initialize(metricset=nil, requestid=nil)
          @MetricSet = metricset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSet'].nil?
            @MetricSet = []
            params['MetricSet'].each do |i|
              metricinfo_tmp = MetricInfo.new
              metricinfo_tmp.deserialize(i)
              @MetricSet << metricinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCheckSummary请求参数结构体
      class DescribeCheckSummaryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :JobId, :ScenarioId, :ProjectId
        
        def initialize(jobid=nil, scenarioid=nil, projectid=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @ProjectId = projectid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeCheckSummary返回参数结构体
      class DescribeCheckSummaryResponse < TencentCloud::Common::AbstractModel
        # @param CheckSummarySet: 检查点汇总信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckSummarySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckSummarySet, :RequestId
        
        def initialize(checksummaryset=nil, requestid=nil)
          @CheckSummarySet = checksummaryset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CheckSummarySet'].nil?
            @CheckSummarySet = []
            params['CheckSummarySet'].each do |i|
              checksummary_tmp = CheckSummary.new
              checksummary_tmp.deserialize(i)
              @CheckSummarySet << checksummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCronJobs请求参数结构体
      class DescribeCronJobsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param CronJobIds: 定时任务ID数组
        # @type CronJobIds: Array
        # @param CronJobName: 定时任务名字，模糊查询
        # @type CronJobName: String
        # @param CronJobStatus: 定时任务状态数组
        # @type CronJobStatus: Array
        # @param OrderBy: 排序的列
        # @type OrderBy: String
        # @param Ascend: 是否正序
        # @type Ascend: Boolean

        attr_accessor :ProjectIds, :Offset, :Limit, :CronJobIds, :CronJobName, :CronJobStatus, :OrderBy, :Ascend
        
        def initialize(projectids=nil, offset=nil, limit=nil, cronjobids=nil, cronjobname=nil, cronjobstatus=nil, orderby=nil, ascend=nil)
          @ProjectIds = projectids
          @Offset = offset
          @Limit = limit
          @CronJobIds = cronjobids
          @CronJobName = cronjobname
          @CronJobStatus = cronjobstatus
          @OrderBy = orderby
          @Ascend = ascend
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CronJobIds = params['CronJobIds']
          @CronJobName = params['CronJobName']
          @CronJobStatus = params['CronJobStatus']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
        end
      end

      # DescribeCronJobs返回参数结构体
      class DescribeCronJobsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 定时任务总数
        # @type Total: Integer
        # @param CronJobSet: 定时任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronJobSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :CronJobSet, :RequestId
        
        def initialize(total=nil, cronjobset=nil, requestid=nil)
          @Total = total
          @CronJobSet = cronjobset
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CronJobSet'].nil?
            @CronJobSet = []
            params['CronJobSet'].each do |i|
              cronjob_tmp = CronJob.new
              cronjob_tmp.deserialize(i)
              @CronJobSet << cronjob_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFiles请求参数结构体
      class DescribeFilesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectIds: 项目 ID 数组
        # @type ProjectIds: Array
        # @param FileIds: 文件 ID 数组
        # @type FileIds: Array
        # @param FileName: 文件名
        # @type FileName: String
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大为 100
        # @type Limit: Integer
        # @param Kind: 文件种类，参数文件-1，协议文件-2，请求文件-3
        # @type Kind: Integer

        attr_accessor :ProjectIds, :FileIds, :FileName, :Offset, :Limit, :Kind
        
        def initialize(projectids=nil, fileids=nil, filename=nil, offset=nil, limit=nil, kind=nil)
          @ProjectIds = projectids
          @FileIds = fileids
          @FileName = filename
          @Offset = offset
          @Limit = limit
          @Kind = kind
        end

        def deserialize(params)
          @ProjectIds = params['ProjectIds']
          @FileIds = params['FileIds']
          @FileName = params['FileName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Kind = params['Kind']
        end
      end

      # DescribeFiles返回参数结构体
      class DescribeFilesResponse < TencentCloud::Common::AbstractModel
        # @param FileSet: 文件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSet: Array
        # @param Total: 文件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSet, :Total, :RequestId
        
        def initialize(fileset=nil, total=nil, requestid=nil)
          @FileSet = fileset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSet'].nil?
            @FileSet = []
            params['FileSet'].each do |i|
              file_tmp = File.new
              file_tmp.deserialize(i)
              @FileSet << file_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param ScenarioIds: 场景ID数组
        # @type ScenarioIds: Array
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param Offset: 分页起始位置
        # @type Offset: Integer
        # @param Limit: 每页最大数目
        # @type Limit: Integer
        # @param JobIds: 任务ID数组
        # @type JobIds: Array
        # @param OrderBy: 按字段排序
        # @type OrderBy: String
        # @param Ascend: 升序/降序
        # @type Ascend: Boolean
        # @param StartTime: 任务开始时间
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param Debug: 调试任务标记
        # @type Debug: Boolean
        # @param Status: 任务的状态
        # @type Status: Array

        attr_accessor :ScenarioIds, :ProjectIds, :Offset, :Limit, :JobIds, :OrderBy, :Ascend, :StartTime, :EndTime, :Debug, :Status
        
        def initialize(scenarioids=nil, projectids=nil, offset=nil, limit=nil, jobids=nil, orderby=nil, ascend=nil, starttime=nil, endtime=nil, debug=nil, status=nil)
          @ScenarioIds = scenarioids
          @ProjectIds = projectids
          @Offset = offset
          @Limit = limit
          @JobIds = jobids
          @OrderBy = orderby
          @Ascend = ascend
          @StartTime = starttime
          @EndTime = endtime
          @Debug = debug
          @Status = status
        end

        def deserialize(params)
          @ScenarioIds = params['ScenarioIds']
          @ProjectIds = params['ProjectIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @JobIds = params['JobIds']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Debug = params['Debug']
          @Status = params['Status']
        end
      end

      # DescribeJobs返回参数结构体
      class DescribeJobsResponse < TencentCloud::Common::AbstractModel
        # @param JobSet: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSet: Array
        # @param Total: 任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobSet, :Total, :RequestId
        
        def initialize(jobset=nil, total=nil, requestid=nil)
          @JobSet = jobset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              job_tmp = Job.new
              job_tmp.deserialize(i)
              @JobSet << job_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLabelValues请求参数结构体
      class DescribeLabelValuesRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Metric: 指标名称
        # @type Metric: String
        # @param LabelName: 查询标签名称
        # @type LabelName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :JobId, :ScenarioId, :Metric, :LabelName, :ProjectId
        
        def initialize(jobid=nil, scenarioid=nil, metric=nil, labelname=nil, projectid=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @Metric = metric
          @LabelName = labelname
          @ProjectId = projectid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          @Metric = params['Metric']
          @LabelName = params['LabelName']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeLabelValues返回参数结构体
      class DescribeLabelValuesResponse < TencentCloud::Common::AbstractModel
        # @param LabelValueSet: 标签值数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValueSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LabelValueSet, :RequestId
        
        def initialize(labelvalueset=nil, requestid=nil)
          @LabelValueSet = labelvalueset
          @RequestId = requestid
        end

        def deserialize(params)
          @LabelValueSet = params['LabelValueSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMetricLabelWithValues请求参数结构体
      class DescribeMetricLabelWithValuesRequest < TencentCloud::Common::AbstractModel
        # @param JobId: job id
        # @type JobId: String
        # @param ProjectId: project id
        # @type ProjectId: String
        # @param ScenarioId: scenario id
        # @type ScenarioId: String

        attr_accessor :JobId, :ProjectId, :ScenarioId
        
        def initialize(jobid=nil, projectid=nil, scenarioid=nil)
          @JobId = jobid
          @ProjectId = projectid
          @ScenarioId = scenarioid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
        end
      end

      # DescribeMetricLabelWithValues返回参数结构体
      class DescribeMetricLabelWithValuesResponse < TencentCloud::Common::AbstractModel
        # @param MetricLabelWithValuesSet: 指标所有的label和values数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricLabelWithValuesSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricLabelWithValuesSet, :RequestId
        
        def initialize(metriclabelwithvaluesset=nil, requestid=nil)
          @MetricLabelWithValuesSet = metriclabelwithvaluesset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricLabelWithValuesSet'].nil?
            @MetricLabelWithValuesSet = []
            params['MetricLabelWithValuesSet'].each do |i|
              metriclabelwithvalues_tmp = MetricLabelWithValues.new
              metriclabelwithvalues_tmp.deserialize(i)
              @MetricLabelWithValuesSet << metriclabelwithvalues_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNormalLogs请求参数结构体
      class DescribeNormalLogsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 压测项目ID
        # @type ProjectId: String
        # @param ScenarioId: 测试场景ID
        # @type ScenarioId: String
        # @param JobId: 压测任务ID
        # @type JobId: String
        # @param Context: 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        # @type Context: String
        # @param From: 日志开始时间
        # @type From: String
        # @param To: 日志结束时间
        # @type To: String
        # @param SeverityText: 日志级别，可取debug/info/error
        # @type SeverityText: String
        # @param Instance: 施压节点IP
        # @type Instance: String
        # @param InstanceRegion: 施压节点所在地域
        # @type InstanceRegion: String
        # @param LogType: 日志类型， console代表用户输出，engine代表引擎输出
        # @type LogType: String
        # @param Limit: 返回日志条数限制，最大100
        # @type Limit: Integer

        attr_accessor :ProjectId, :ScenarioId, :JobId, :Context, :From, :To, :SeverityText, :Instance, :InstanceRegion, :LogType, :Limit
        
        def initialize(projectid=nil, scenarioid=nil, jobid=nil, context=nil, from=nil, to=nil, severitytext=nil, instance=nil, instanceregion=nil, logtype=nil, limit=nil)
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @JobId = jobid
          @Context = context
          @From = from
          @To = to
          @SeverityText = severitytext
          @Instance = instance
          @InstanceRegion = instanceregion
          @LogType = logtype
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @JobId = params['JobId']
          @Context = params['Context']
          @From = params['From']
          @To = params['To']
          @SeverityText = params['SeverityText']
          @Instance = params['Instance']
          @InstanceRegion = params['InstanceRegion']
          @LogType = params['LogType']
          @Limit = params['Limit']
        end
      end

      # DescribeNormalLogs返回参数结构体
      class DescribeNormalLogsResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param NormalLogs: 日志数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :NormalLogs, :RequestId
        
        def initialize(context=nil, normallogs=nil, requestid=nil)
          @Context = context
          @NormalLogs = normallogs
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          unless params['NormalLogs'].nil?
            @NormalLogs = []
            params['NormalLogs'].each do |i|
              normallog_tmp = NormalLog.new
              normallog_tmp.deserialize(i)
              @NormalLogs << normallog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页offset
        # @type Offset: Integer
        # @param Limit: 每页limit
        # @type Limit: Integer
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param ProjectName: 项目名
        # @type ProjectName: String
        # @param OrderBy: 按字段排序
        # @type OrderBy: String
        # @param Ascend: 升序/降序
        # @type Ascend: Boolean
        # @param TagFilters: 标签数组
        # @type TagFilters: Array

        attr_accessor :Offset, :Limit, :ProjectIds, :ProjectName, :OrderBy, :Ascend, :TagFilters
        
        def initialize(offset=nil, limit=nil, projectids=nil, projectname=nil, orderby=nil, ascend=nil, tagfilters=nil)
          @Offset = offset
          @Limit = limit
          @ProjectIds = projectids
          @ProjectName = projectname
          @OrderBy = orderby
          @Ascend = ascend
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectIds = params['ProjectIds']
          @ProjectName = params['ProjectName']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagspec_tmp = TagSpec.new
              tagspec_tmp.deserialize(i)
              @TagFilters << tagspec_tmp
            end
          end
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param ProjectSet: 项目数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectSet: Array
        # @param Total: 项目数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectSet, :Total, :RequestId
        
        def initialize(projectset=nil, total=nil, requestid=nil)
          @ProjectSet = projectset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectSet'].nil?
            @ProjectSet = []
            params['ProjectSet'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @ProjectSet << project_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 地域数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId
        
        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regiondetail_tmp = RegionDetail.new
              regiondetail_tmp.deserialize(i)
              @RegionSet << regiondetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRequestSummary请求参数结构体
      class DescribeRequestSummaryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 压测任务ID
        # @type JobId: String
        # @param ScenarioId: 压测场景ID
        # @type ScenarioId: String
        # @param ProjectId: 压测项目ID
        # @type ProjectId: String

        attr_accessor :JobId, :ScenarioId, :ProjectId
        
        def initialize(jobid=nil, scenarioid=nil, projectid=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @ProjectId = projectid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeRequestSummary返回参数结构体
      class DescribeRequestSummaryResponse < TencentCloud::Common::AbstractModel
        # @param RequestSummarySet: 请求汇总信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestSummarySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestSummarySet, :RequestId
        
        def initialize(requestsummaryset=nil, requestid=nil)
          @RequestSummarySet = requestsummaryset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RequestSummarySet'].nil?
            @RequestSummarySet = []
            params['RequestSummarySet'].each do |i|
              requestsummary_tmp = RequestSummary.new
              requestsummary_tmp.deserialize(i)
              @RequestSummarySet << requestsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleBatchQuery请求参数结构体
      class DescribeSampleBatchQueryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: job id
        # @type JobId: String
        # @param ScenarioId: 场景id
        # @type ScenarioId: String
        # @param Queries: 查询指标数组
        # @type Queries: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :JobId, :ScenarioId, :Queries, :ProjectId
        
        def initialize(jobid=nil, scenarioid=nil, queries=nil, projectid=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @Queries = queries
          @ProjectId = projectid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          unless params['Queries'].nil?
            @Queries = []
            params['Queries'].each do |i|
              internalmetricquery_tmp = InternalMetricQuery.new
              internalmetricquery_tmp.deserialize(i)
              @Queries << internalmetricquery_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeSampleBatchQuery返回参数结构体
      class DescribeSampleBatchQueryResponse < TencentCloud::Common::AbstractModel
        # @param MetricSampleSet: 返回指标内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricSampleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSampleSet, :RequestId
        
        def initialize(metricsampleset=nil, requestid=nil)
          @MetricSampleSet = metricsampleset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSampleSet'].nil?
            @MetricSampleSet = []
            params['MetricSampleSet'].each do |i|
              customsample_tmp = CustomSample.new
              customsample_tmp.deserialize(i)
              @MetricSampleSet << customsample_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleLogs请求参数结构体
      class DescribeSampleLogsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 测试项目ID
        # @type ProjectId: String
        # @param ScenarioId: 测试场景ID
        # @type ScenarioId: String
        # @param JobId: 测试任务ID
        # @type JobId: String
        # @param Context: 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        # @type Context: String
        # @param From: 日志开始时间
        # @type From: String
        # @param To: 日志结束时间
        # @type To: String
        # @param SeverityText: 日志级别debug,info,error
        # @type SeverityText: String
        # @param InstanceRegion: ap-shanghai, ap-guangzhou
        # @type InstanceRegion: String
        # @param Instance: 施压引擎节点IP
        # @type Instance: String
        # @param LogType: request 代表采样日志,可为不填
        # @type LogType: String
        # @param Limit: 返回日志条数，最大100
        # @type Limit: Integer
        # @param ReactionTimeRange: 采样日志响应时间范围
        # @type ReactionTimeRange: :class:`Tencentcloud::Pts.v20210728.models.ReactionTimeRange`
        # @param Status: 采样请求状态码
        # @type Status: String
        # @param Result: 采样请求结果码
        # @type Result: String
        # @param Method: 采样请求方法
        # @type Method: String
        # @param Service: 采样服务API
        # @type Service: String

        attr_accessor :ProjectId, :ScenarioId, :JobId, :Context, :From, :To, :SeverityText, :InstanceRegion, :Instance, :LogType, :Limit, :ReactionTimeRange, :Status, :Result, :Method, :Service
        
        def initialize(projectid=nil, scenarioid=nil, jobid=nil, context=nil, from=nil, to=nil, severitytext=nil, instanceregion=nil, instance=nil, logtype=nil, limit=nil, reactiontimerange=nil, status=nil, result=nil, method=nil, service=nil)
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @JobId = jobid
          @Context = context
          @From = from
          @To = to
          @SeverityText = severitytext
          @InstanceRegion = instanceregion
          @Instance = instance
          @LogType = logtype
          @Limit = limit
          @ReactionTimeRange = reactiontimerange
          @Status = status
          @Result = result
          @Method = method
          @Service = service
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @JobId = params['JobId']
          @Context = params['Context']
          @From = params['From']
          @To = params['To']
          @SeverityText = params['SeverityText']
          @InstanceRegion = params['InstanceRegion']
          @Instance = params['Instance']
          @LogType = params['LogType']
          @Limit = params['Limit']
          unless params['ReactionTimeRange'].nil?
            @ReactionTimeRange = ReactionTimeRange.new
            @ReactionTimeRange.deserialize(params['ReactionTimeRange'])
          end
          @Status = params['Status']
          @Result = params['Result']
          @Method = params['Method']
          @Service = params['Service']
        end
      end

      # DescribeSampleLogs返回参数结构体
      class DescribeSampleLogsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 日志总数
        # @type Total: Integer
        # @param Context: 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param SampleLogs: 采样日志数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Context, :SampleLogs, :RequestId
        
        def initialize(total=nil, context=nil, samplelogs=nil, requestid=nil)
          @Total = total
          @Context = context
          @SampleLogs = samplelogs
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Context = params['Context']
          unless params['SampleLogs'].nil?
            @SampleLogs = []
            params['SampleLogs'].each do |i|
              samplelog_tmp = SampleLog.new
              samplelog_tmp.deserialize(i)
              @SampleLogs << samplelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleMatrixBatchQuery请求参数结构体
      class DescribeSampleMatrixBatchQueryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Queries: 查询语句
        # @type Queries: Array

        attr_accessor :JobId, :ProjectId, :ScenarioId, :Queries
        
        def initialize(jobid=nil, projectid=nil, scenarioid=nil, queries=nil)
          @JobId = jobid
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @Queries = queries
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          unless params['Queries'].nil?
            @Queries = []
            params['Queries'].each do |i|
              internalmetricquery_tmp = InternalMetricQuery.new
              internalmetricquery_tmp.deserialize(i)
              @Queries << internalmetricquery_tmp
            end
          end
        end
      end

      # DescribeSampleMatrixBatchQuery返回参数结构体
      class DescribeSampleMatrixBatchQueryResponse < TencentCloud::Common::AbstractModel
        # @param MetricSampleMatrixSet: 批量指标矩阵
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricSampleMatrixSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSampleMatrixSet, :RequestId
        
        def initialize(metricsamplematrixset=nil, requestid=nil)
          @MetricSampleMatrixSet = metricsamplematrixset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSampleMatrixSet'].nil?
            @MetricSampleMatrixSet = []
            params['MetricSampleMatrixSet'].each do |i|
              customsamplematrix_tmp = CustomSampleMatrix.new
              customsamplematrix_tmp.deserialize(i)
              @MetricSampleMatrixSet << customsamplematrix_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleMatrixQuery请求参数结构体
      class DescribeSampleMatrixQueryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Metric: 指标名字
        # @type Metric: String
        # @param Aggregation: 聚合函数
        # @type Aggregation: String
        # @param Filters: 指标过滤
        # @type Filters: Array
        # @param GroupBy: 分组
        # @type GroupBy: Array

        attr_accessor :JobId, :ProjectId, :ScenarioId, :Metric, :Aggregation, :Filters, :GroupBy
        
        def initialize(jobid=nil, projectid=nil, scenarioid=nil, metric=nil, aggregation=nil, filters=nil, groupby=nil)
          @JobId = jobid
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @Metric = metric
          @Aggregation = aggregation
          @Filters = filters
          @GroupBy = groupby
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @GroupBy = params['GroupBy']
        end
      end

      # DescribeSampleMatrixQuery返回参数结构体
      class DescribeSampleMatrixQueryResponse < TencentCloud::Common::AbstractModel
        # @param MetricSampleMatrix: 指标矩阵
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricSampleMatrix: :class:`Tencentcloud::Pts.v20210728.models.CustomSampleMatrix`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSampleMatrix, :RequestId
        
        def initialize(metricsamplematrix=nil, requestid=nil)
          @MetricSampleMatrix = metricsamplematrix
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSampleMatrix'].nil?
            @MetricSampleMatrix = CustomSampleMatrix.new
            @MetricSampleMatrix.deserialize(params['MetricSampleMatrix'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleQuery请求参数结构体
      class DescribeSampleQueryRequest < TencentCloud::Common::AbstractModel
        # @param JobId: job id
        # @type JobId: String
        # @param ScenarioId: 场景Id
        # @type ScenarioId: String
        # @param Metric: 指标名
        # @type Metric: String
        # @param Aggregation: 聚合条件
        # @type Aggregation: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Labels: 过滤条件
        # @type Labels: Array

        attr_accessor :JobId, :ScenarioId, :Metric, :Aggregation, :ProjectId, :Labels
        
        def initialize(jobid=nil, scenarioid=nil, metric=nil, aggregation=nil, projectid=nil, labels=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @Metric = metric
          @Aggregation = aggregation
          @ProjectId = projectid
          @Labels = labels
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          @ProjectId = params['ProjectId']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
        end
      end

      # DescribeSampleQuery返回参数结构体
      class DescribeSampleQueryResponse < TencentCloud::Common::AbstractModel
        # @param MetricSample: 返回指标内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricSample: :class:`Tencentcloud::Pts.v20210728.models.CustomSample`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSample, :RequestId
        
        def initialize(metricsample=nil, requestid=nil)
          @MetricSample = metricsample
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetricSample'].nil?
            @MetricSample = CustomSample.new
            @MetricSample.deserialize(params['MetricSample'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenarioWithJobs请求参数结构体
      class DescribeScenarioWithJobsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大为100
        # @type Limit: Integer
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param ScenarioIds: 场景ID数组
        # @type ScenarioIds: Array
        # @param ScenarioName: 场景名
        # @type ScenarioName: String
        # @param ScenarioStatus: 场景状态数组
        # @type ScenarioStatus: Integer
        # @param OrderBy: 排序的列
        # @type OrderBy: String
        # @param Ascend: 是否正序
        # @type Ascend: Boolean
        # @param ScenarioRelatedJobsParams: job相关参数
        # @type ScenarioRelatedJobsParams: :class:`Tencentcloud::Pts.v20210728.models.ScenarioRelatedJobsParams`
        # @param IgnoreScript: 是否需要返回场景的脚本内容
        # @type IgnoreScript: Boolean
        # @param IgnoreDataset: 是否需要返回测试数据文件信息
        # @type IgnoreDataset: Boolean

        attr_accessor :Offset, :Limit, :ProjectIds, :ScenarioIds, :ScenarioName, :ScenarioStatus, :OrderBy, :Ascend, :ScenarioRelatedJobsParams, :IgnoreScript, :IgnoreDataset
        
        def initialize(offset=nil, limit=nil, projectids=nil, scenarioids=nil, scenarioname=nil, scenariostatus=nil, orderby=nil, ascend=nil, scenariorelatedjobsparams=nil, ignorescript=nil, ignoredataset=nil)
          @Offset = offset
          @Limit = limit
          @ProjectIds = projectids
          @ScenarioIds = scenarioids
          @ScenarioName = scenarioname
          @ScenarioStatus = scenariostatus
          @OrderBy = orderby
          @Ascend = ascend
          @ScenarioRelatedJobsParams = scenariorelatedjobsparams
          @IgnoreScript = ignorescript
          @IgnoreDataset = ignoredataset
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectIds = params['ProjectIds']
          @ScenarioIds = params['ScenarioIds']
          @ScenarioName = params['ScenarioName']
          @ScenarioStatus = params['ScenarioStatus']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
          unless params['ScenarioRelatedJobsParams'].nil?
            @ScenarioRelatedJobsParams = ScenarioRelatedJobsParams.new
            @ScenarioRelatedJobsParams.deserialize(params['ScenarioRelatedJobsParams'])
          end
          @IgnoreScript = params['IgnoreScript']
          @IgnoreDataset = params['IgnoreDataset']
        end
      end

      # DescribeScenarioWithJobs返回参数结构体
      class DescribeScenarioWithJobsResponse < TencentCloud::Common::AbstractModel
        # @param ScenarioWithJobsSet: 场景配置以及附带的job内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioWithJobsSet: Array
        # @param Total: 场景总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScenarioWithJobsSet, :Total, :RequestId
        
        def initialize(scenariowithjobsset=nil, total=nil, requestid=nil)
          @ScenarioWithJobsSet = scenariowithjobsset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScenarioWithJobsSet'].nil?
            @ScenarioWithJobsSet = []
            params['ScenarioWithJobsSet'].each do |i|
              scenariowithjobs_tmp = ScenarioWithJobs.new
              scenariowithjobs_tmp.deserialize(i)
              @ScenarioWithJobsSet << scenariowithjobs_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenarios请求参数结构体
      class DescribeScenariosRequest < TencentCloud::Common::AbstractModel
        # @param ScenarioIds: 场景ID数组
        # @type ScenarioIds: Array
        # @param ScenarioName: 场景名
        # @type ScenarioName: String
        # @param ScenarioStatus: 场景状态数组
        # @type ScenarioStatus: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大为100
        # @type Limit: Integer
        # @param OrderBy: 排序的列
        # @type OrderBy: String
        # @param Ascend: 是否正序
        # @type Ascend: Boolean
        # @param ProjectIds: 项目ID数组
        # @type ProjectIds: Array
        # @param ScenarioType: 场景类型
        # @type ScenarioType: String

        attr_accessor :ScenarioIds, :ScenarioName, :ScenarioStatus, :Offset, :Limit, :OrderBy, :Ascend, :ProjectIds, :ScenarioType
        
        def initialize(scenarioids=nil, scenarioname=nil, scenariostatus=nil, offset=nil, limit=nil, orderby=nil, ascend=nil, projectids=nil, scenariotype=nil)
          @ScenarioIds = scenarioids
          @ScenarioName = scenarioname
          @ScenarioStatus = scenariostatus
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @Ascend = ascend
          @ProjectIds = projectids
          @ScenarioType = scenariotype
        end

        def deserialize(params)
          @ScenarioIds = params['ScenarioIds']
          @ScenarioName = params['ScenarioName']
          @ScenarioStatus = params['ScenarioStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
          @ProjectIds = params['ProjectIds']
          @ScenarioType = params['ScenarioType']
        end
      end

      # DescribeScenarios返回参数结构体
      class DescribeScenariosResponse < TencentCloud::Common::AbstractModel
        # @param ScenarioSet: 场景列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioSet: Array
        # @param Total: 场景总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScenarioSet, :Total, :RequestId
        
        def initialize(scenarioset=nil, total=nil, requestid=nil)
          @ScenarioSet = scenarioset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScenarioSet'].nil?
            @ScenarioSet = []
            params['ScenarioSet'].each do |i|
              scenario_tmp = Scenario.new
              scenario_tmp.deserialize(i)
              @ScenarioSet << scenario_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 施压机的域名解析相关配置
      class DomainNameConfig < TencentCloud::Common::AbstractModel
        # @param HostAliases: 域名绑定配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostAliases: Array
        # @param DNSConfig: DNS 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNSConfig: :class:`Tencentcloud::Pts.v20210728.models.DNSConfig`

        attr_accessor :HostAliases, :DNSConfig
        
        def initialize(hostaliases=nil, dnsconfig=nil)
          @HostAliases = hostaliases
          @DNSConfig = dnsconfig
        end

        def deserialize(params)
          unless params['HostAliases'].nil?
            @HostAliases = []
            params['HostAliases'].each do |i|
              hostalias_tmp = HostAlias.new
              hostalias_tmp.deserialize(i)
              @HostAliases << hostalias_tmp
            end
          end
          unless params['DNSConfig'].nil?
            @DNSConfig = DNSConfig.new
            @DNSConfig.deserialize(params['DNSConfig'])
          end
        end
      end

      # 文件列表
      class File < TencentCloud::Common::AbstractModel
        # @param FileId: 文件 ID
        # @type FileId: String
        # @param Kind: 文件种类，参数文件-1，协议文件-2，请求文件-3
        # @type Kind: Integer
        # @param Name: 文件名
        # @type Name: String
        # @param Size: 文件字节数
        # @type Size: Integer
        # @param Type: 文件类型
        # @type Type: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param LineCount: 文件行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineCount: Integer
        # @param HeadLines: 头部数据行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadLines: Array
        # @param TailLines: 尾部数据行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TailLines: Array
        # @param HeaderInFile: 首行是否为参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderInFile: Boolean
        # @param HeaderColumns: 参数名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderColumns: Array
        # @param FileInfos: 文件夹中的文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileInfos: Array
        # @param ScenarioSet: 关联场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioSet: Array
        # @param Status: 文件状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param ProjectId: 项目 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String

        attr_accessor :FileId, :Kind, :Name, :Size, :Type, :UpdatedAt, :LineCount, :HeadLines, :TailLines, :HeaderInFile, :HeaderColumns, :FileInfos, :ScenarioSet, :Status, :CreatedAt, :ProjectId
        
        def initialize(fileid=nil, kind=nil, name=nil, size=nil, type=nil, updatedat=nil, linecount=nil, headlines=nil, taillines=nil, headerinfile=nil, headercolumns=nil, fileinfos=nil, scenarioset=nil, status=nil, createdat=nil, projectid=nil)
          @FileId = fileid
          @Kind = kind
          @Name = name
          @Size = size
          @Type = type
          @UpdatedAt = updatedat
          @LineCount = linecount
          @HeadLines = headlines
          @TailLines = taillines
          @HeaderInFile = headerinfile
          @HeaderColumns = headercolumns
          @FileInfos = fileinfos
          @ScenarioSet = scenarioset
          @Status = status
          @CreatedAt = createdat
          @ProjectId = projectid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Kind = params['Kind']
          @Name = params['Name']
          @Size = params['Size']
          @Type = params['Type']
          @UpdatedAt = params['UpdatedAt']
          @LineCount = params['LineCount']
          @HeadLines = params['HeadLines']
          @TailLines = params['TailLines']
          @HeaderInFile = params['HeaderInFile']
          @HeaderColumns = params['HeaderColumns']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileInfos << fileinfo_tmp
            end
          end
          unless params['ScenarioSet'].nil?
            @ScenarioSet = []
            params['ScenarioSet'].each do |i|
              scenario_tmp = Scenario.new
              scenario_tmp.deserialize(i)
              @ScenarioSet << scenario_tmp
            end
          end
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @ProjectId = params['ProjectId']
        end
      end

      # 文件基本信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param Name: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Size: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Type: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param FileId: 文件 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String

        attr_accessor :Name, :Size, :Type, :UpdatedAt, :FileId
        
        def initialize(name=nil, size=nil, type=nil, updatedat=nil, fileid=nil)
          @Name = name
          @Size = size
          @Type = type
          @UpdatedAt = updatedat
          @FileId = fileid
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Type = params['Type']
          @UpdatedAt = params['UpdatedAt']
          @FileId = params['FileId']
        end
      end

      # 指标查询过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Operator: 等于：0，不等于：1
        # @type Operator: Integer
        # @param LabelName: 指标名
        # @type LabelName: String
        # @param LabelValue: 指标值
        # @type LabelValue: String

        attr_accessor :Operator, :LabelName, :LabelValue
        
        def initialize(operator=nil, labelname=nil, labelvalue=nil)
          @Operator = operator
          @LabelName = labelname
          @LabelValue = labelvalue
        end

        def deserialize(params)
          @Operator = params['Operator']
          @LabelName = params['LabelName']
          @LabelValue = params['LabelValue']
        end
      end

      # GenerateTmpKey请求参数结构体
      class GenerateTmpKeyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String

        attr_accessor :ProjectId, :ScenarioId
        
        def initialize(projectid=nil, scenarioid=nil)
          @ProjectId = projectid
          @ScenarioId = scenarioid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
        end
      end

      # GenerateTmpKey返回参数结构体
      class GenerateTmpKeyResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 临时访问凭证获取时刻的时间戳（单位秒）
        # @type StartTime: Integer
        # @param ExpiredTime: 临时访问凭证超时 时刻的时间戳（单位秒）
        # @type ExpiredTime: Integer
        # @param Credentials: 临时访问凭证
        # @type Credentials: :class:`Tencentcloud::Pts.v20210728.models.Credentials`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :ExpiredTime, :Credentials, :RequestId
        
        def initialize(starttime=nil, expiredtime=nil, credentials=nil, requestid=nil)
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 压力分布配置
      class GeoRegionsLoadItem < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Percentage: 百分比
        # @type Percentage: Integer

        attr_accessor :RegionId, :Region, :Percentage
        
        def initialize(regionid=nil, region=nil, percentage=nil)
          @RegionId = regionid
          @Region = region
          @Percentage = percentage
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Region = params['Region']
          @Percentage = params['Percentage']
        end
      end

      # 施压机域名绑定配置
      class HostAlias < TencentCloud::Common::AbstractModel
        # @param HostNames: 需绑定的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostNames: Array
        # @param IP: 需绑定的 IP 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String

        attr_accessor :HostNames, :IP
        
        def initialize(hostnames=nil, ip=nil)
          @HostNames = hostnames
          @IP = ip
        end

        def deserialize(params)
          @HostNames = params['HostNames']
          @IP = params['IP']
        end
      end

      # 查询结构封装
      class InternalMetricQuery < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名
        # @type Metric: String
        # @param Aggregation: 聚合函数
        # @type Aggregation: String
        # @param Labels: deprecated, 请使用Filters
        # @type Labels: Array
        # @param Filters: 指标过滤
        # @type Filters: Array
        # @param GroupBy: 指标分组
        # @type GroupBy: Array

        attr_accessor :Metric, :Aggregation, :Labels, :Filters, :GroupBy
        
        def initialize(metric=nil, aggregation=nil, labels=nil, filters=nil, groupby=nil)
          @Metric = metric
          @Aggregation = aggregation
          @Labels = labels
          @Filters = filters
          @GroupBy = groupby
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
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
          @GroupBy = params['GroupBy']
        end
      end

      # 任务
      class Job < TencentCloud::Common::AbstractModel
        # @param JobId: 任务的JobID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param ScenarioId: 任务的场景ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScenarioId: String
        # @param Load: 任务的施压配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Load: :class:`Tencentcloud::Pts.v20210728.models.Load`
        # @param Configs: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param Datasets: 任务的数据集文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Datasets: Array
        # @param Extensions: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extensions: Array
        # @param Status: 任务的运行状态, JobUnknown: 0,JobCreated:1,JobPending:2, JobPreparing:3,JobSelectClustering:4,JobCreateTasking:5,JobSyncTasking:6
        # JobRunning:11,JobFinished:12,JobPrepareException:13,JobFinishException:14,JobAborting:15,JobAborted:16,JobAbortException:17,JobDeleted:18,
        # JobSelectClusterException:19,JobCreateTaskException:20,JobSyncTaskException:21
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StartTime: 任务的开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务的结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param MaxVirtualUserCount: 任务的最大VU数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxVirtualUserCount: Integer
        # @param Note: 任务的备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param ErrorRate: 错误率百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorRate: Float
        # @param JobOwner: 任务发起人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobOwner: String
        # @param LoadSources: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadSources: :class:`Tencentcloud::Pts.v20210728.models.LoadSource`
        # @param Duration: 任务时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param MaxRequestsPerSecond: 最大每秒请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestsPerSecond: Integer
        # @param RequestTotal: 总请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestTotal: Float
        # @param RequestsPerSecond: 平均每秒请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestsPerSecond: Float
        # @param ResponseTimeAverage: 平均响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeAverage: Float
        # @param ResponseTimeP99: 响应时间第99百分位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeP99: Float
        # @param ResponseTimeP95: 响应时间第95百分位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeP95: Float
        # @param ResponseTimeP90: 响应时间第90百分位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeP90: Float
        # @param Scripts: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scripts: Array
        # @param ResponseTimeMax: 最大响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeMax: Float
        # @param ResponseTimeMin: 最小响应时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseTimeMin: Float
        # @param LoadSourceInfos: 发压host信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadSourceInfos: Array
        # @param TestScripts: 测试脚本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestScripts: Array
        # @param Protocols: 协议脚本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocols: Array
        # @param RequestFiles: 请求文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestFiles: Array
        # @param Plugins: 拓展包文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plugins: Array
        # @param CronId: 定时任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronId: String
        # @param Type: 场景类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DomainNameConfig: 域名绑定配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNameConfig: :class:`Tencentcloud::Pts.v20210728.models.DomainNameConfig`
        # @param Debug: false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Debug: Boolean
        # @param AbortReason: 中断原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbortReason: Integer
        # @param CreatedAt: 任务的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param NotificationHooks: 通知事件回调
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotificationHooks: Array

        attr_accessor :JobId, :ScenarioId, :Load, :Configs, :Datasets, :Extensions, :Status, :StartTime, :EndTime, :MaxVirtualUserCount, :Note, :ErrorRate, :JobOwner, :LoadSources, :Duration, :MaxRequestsPerSecond, :RequestTotal, :RequestsPerSecond, :ResponseTimeAverage, :ResponseTimeP99, :ResponseTimeP95, :ResponseTimeP90, :Scripts, :ResponseTimeMax, :ResponseTimeMin, :LoadSourceInfos, :TestScripts, :Protocols, :RequestFiles, :Plugins, :CronId, :Type, :DomainNameConfig, :Debug, :AbortReason, :CreatedAt, :ProjectId, :NotificationHooks
        
        def initialize(jobid=nil, scenarioid=nil, load=nil, configs=nil, datasets=nil, extensions=nil, status=nil, starttime=nil, endtime=nil, maxvirtualusercount=nil, note=nil, errorrate=nil, jobowner=nil, loadsources=nil, duration=nil, maxrequestspersecond=nil, requesttotal=nil, requestspersecond=nil, responsetimeaverage=nil, responsetimep99=nil, responsetimep95=nil, responsetimep90=nil, scripts=nil, responsetimemax=nil, responsetimemin=nil, loadsourceinfos=nil, testscripts=nil, protocols=nil, requestfiles=nil, plugins=nil, cronid=nil, type=nil, domainnameconfig=nil, debug=nil, abortreason=nil, createdat=nil, projectid=nil, notificationhooks=nil)
          @JobId = jobid
          @ScenarioId = scenarioid
          @Load = load
          @Configs = configs
          @Datasets = datasets
          @Extensions = extensions
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @MaxVirtualUserCount = maxvirtualusercount
          @Note = note
          @ErrorRate = errorrate
          @JobOwner = jobowner
          @LoadSources = loadsources
          @Duration = duration
          @MaxRequestsPerSecond = maxrequestspersecond
          @RequestTotal = requesttotal
          @RequestsPerSecond = requestspersecond
          @ResponseTimeAverage = responsetimeaverage
          @ResponseTimeP99 = responsetimep99
          @ResponseTimeP95 = responsetimep95
          @ResponseTimeP90 = responsetimep90
          @Scripts = scripts
          @ResponseTimeMax = responsetimemax
          @ResponseTimeMin = responsetimemin
          @LoadSourceInfos = loadsourceinfos
          @TestScripts = testscripts
          @Protocols = protocols
          @RequestFiles = requestfiles
          @Plugins = plugins
          @CronId = cronid
          @Type = type
          @DomainNameConfig = domainnameconfig
          @Debug = debug
          @AbortReason = abortreason
          @CreatedAt = createdat
          @ProjectId = projectid
          @NotificationHooks = notificationhooks
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ScenarioId = params['ScenarioId']
          unless params['Load'].nil?
            @Load = Load.new
            @Load.deserialize(params['Load'])
          end
          @Configs = params['Configs']
          unless params['Datasets'].nil?
            @Datasets = []
            params['Datasets'].each do |i|
              testdata_tmp = TestData.new
              testdata_tmp.deserialize(i)
              @Datasets << testdata_tmp
            end
          end
          @Extensions = params['Extensions']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MaxVirtualUserCount = params['MaxVirtualUserCount']
          @Note = params['Note']
          @ErrorRate = params['ErrorRate']
          @JobOwner = params['JobOwner']
          unless params['LoadSources'].nil?
            @LoadSources = LoadSource.new
            @LoadSources.deserialize(params['LoadSources'])
          end
          @Duration = params['Duration']
          @MaxRequestsPerSecond = params['MaxRequestsPerSecond']
          @RequestTotal = params['RequestTotal']
          @RequestsPerSecond = params['RequestsPerSecond']
          @ResponseTimeAverage = params['ResponseTimeAverage']
          @ResponseTimeP99 = params['ResponseTimeP99']
          @ResponseTimeP95 = params['ResponseTimeP95']
          @ResponseTimeP90 = params['ResponseTimeP90']
          @Scripts = params['Scripts']
          @ResponseTimeMax = params['ResponseTimeMax']
          @ResponseTimeMin = params['ResponseTimeMin']
          unless params['LoadSourceInfos'].nil?
            @LoadSourceInfos = []
            params['LoadSourceInfos'].each do |i|
              loadsource_tmp = LoadSource.new
              loadsource_tmp.deserialize(i)
              @LoadSourceInfos << loadsource_tmp
            end
          end
          unless params['TestScripts'].nil?
            @TestScripts = []
            params['TestScripts'].each do |i|
              scriptinfo_tmp = ScriptInfo.new
              scriptinfo_tmp.deserialize(i)
              @TestScripts << scriptinfo_tmp
            end
          end
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              protocolinfo_tmp = ProtocolInfo.new
              protocolinfo_tmp.deserialize(i)
              @Protocols << protocolinfo_tmp
            end
          end
          unless params['RequestFiles'].nil?
            @RequestFiles = []
            params['RequestFiles'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @RequestFiles << fileinfo_tmp
            end
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @Plugins << fileinfo_tmp
            end
          end
          @CronId = params['CronId']
          @Type = params['Type']
          unless params['DomainNameConfig'].nil?
            @DomainNameConfig = DomainNameConfig.new
            @DomainNameConfig.deserialize(params['DomainNameConfig'])
          end
          @Debug = params['Debug']
          @AbortReason = params['AbortReason']
          @CreatedAt = params['CreatedAt']
          @ProjectId = params['ProjectId']
          unless params['NotificationHooks'].nil?
            @NotificationHooks = []
            params['NotificationHooks'].each do |i|
              notificationhook_tmp = NotificationHook.new
              notificationhook_tmp.deserialize(i)
              @NotificationHooks << notificationhook_tmp
            end
          end
        end
      end

      # 包含labelName 和labelValue
      class Label < TencentCloud::Common::AbstractModel
        # @param LabelName: label名字
        # @type LabelName: String
        # @param LabelValue: label值
        # @type LabelValue: String

        attr_accessor :LabelName, :LabelValue
        
        def initialize(labelname=nil, labelvalue=nil)
          @LabelName = labelname
          @LabelValue = labelvalue
        end

        def deserialize(params)
          @LabelName = params['LabelName']
          @LabelValue = params['LabelValue']
        end
      end

      # 标签及对应的值
      class LabelWithValues < TencentCloud::Common::AbstractModel
        # @param LabelName: 标签名称
        # @type LabelName: String
        # @param LabelValues: 标签值
        # @type LabelValues: Array

        attr_accessor :LabelName, :LabelValues
        
        def initialize(labelname=nil, labelvalues=nil)
          @LabelName = labelname
          @LabelValues = labelvalues
        end

        def deserialize(params)
          @LabelName = params['LabelName']
          @LabelValues = params['LabelValues']
        end
      end

      # 施压配置
      class Load < TencentCloud::Common::AbstractModel
        # @param LoadSpec: 施压配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadSpec: :class:`Tencentcloud::Pts.v20210728.models.LoadSpec`
        # @param VpcLoadDistribution: 压力来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcLoadDistribution: :class:`Tencentcloud::Pts.v20210728.models.VpcLoadDistribution`
        # @param GeoRegionsLoadDistribution: 压力分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeoRegionsLoadDistribution: Array

        attr_accessor :LoadSpec, :VpcLoadDistribution, :GeoRegionsLoadDistribution
        
        def initialize(loadspec=nil, vpcloaddistribution=nil, georegionsloaddistribution=nil)
          @LoadSpec = loadspec
          @VpcLoadDistribution = vpcloaddistribution
          @GeoRegionsLoadDistribution = georegionsloaddistribution
        end

        def deserialize(params)
          unless params['LoadSpec'].nil?
            @LoadSpec = LoadSpec.new
            @LoadSpec.deserialize(params['LoadSpec'])
          end
          unless params['VpcLoadDistribution'].nil?
            @VpcLoadDistribution = VpcLoadDistribution.new
            @VpcLoadDistribution.deserialize(params['VpcLoadDistribution'])
          end
          unless params['GeoRegionsLoadDistribution'].nil?
            @GeoRegionsLoadDistribution = []
            params['GeoRegionsLoadDistribution'].each do |i|
              georegionsloaditem_tmp = GeoRegionsLoadItem.new
              georegionsloaditem_tmp.deserialize(i)
              @GeoRegionsLoadDistribution << georegionsloaditem_tmp
            end
          end
        end
      end

      # 发压host来源
      class LoadSource < TencentCloud::Common::AbstractModel
        # @param IP: 发压host的IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param PodName: 发压host所在的pod
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param Region: 所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :IP, :PodName, :Region
        
        def initialize(ip=nil, podname=nil, region=nil)
          @IP = ip
          @PodName = podname
          @Region = region
        end

        def deserialize(params)
          @IP = params['IP']
          @PodName = params['PodName']
          @Region = params['Region']
        end
      end

      # 施压配置
      class LoadSpec < TencentCloud::Common::AbstractModel
        # @param Concurrency: 并发施压模式的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Concurrency: :class:`Tencentcloud::Pts.v20210728.models.Concurrency`
        # @param RequestsPerSecond: RPS施压模式的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestsPerSecond: :class:`Tencentcloud::Pts.v20210728.models.RequestsPerSecond`
        # @param ScriptOrigin: 脚本内置压力模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptOrigin: :class:`Tencentcloud::Pts.v20210728.models.ScriptOrigin`

        attr_accessor :Concurrency, :RequestsPerSecond, :ScriptOrigin
        
        def initialize(concurrency=nil, requestspersecond=nil, scriptorigin=nil)
          @Concurrency = concurrency
          @RequestsPerSecond = requestspersecond
          @ScriptOrigin = scriptorigin
        end

        def deserialize(params)
          unless params['Concurrency'].nil?
            @Concurrency = Concurrency.new
            @Concurrency.deserialize(params['Concurrency'])
          end
          unless params['RequestsPerSecond'].nil?
            @RequestsPerSecond = RequestsPerSecond.new
            @RequestsPerSecond.deserialize(params['RequestsPerSecond'])
          end
          unless params['ScriptOrigin'].nil?
            @ScriptOrigin = ScriptOrigin.new
            @ScriptOrigin.deserialize(params['ScriptOrigin'])
          end
        end
      end

      # 指标结构
      class MetricInfo < TencentCloud::Common::AbstractModel
        # @param Metric: 后台指标
        # @type Metric: String
        # @param Alias: 前台展示指标名称
        # @type Alias: String
        # @param Description: 指标描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param MetricType: 指标类型
        # @type MetricType: String
        # @param Unit: 默认指标单位
        # @type Unit: String
        # @param Aggregations: 指标支持的聚合函数
        # @type Aggregations: Array
        # @param InnerMetric: 是否内部指标，内部指标不可在前台提供用户自由选择
        # @type InnerMetric: Boolean

        attr_accessor :Metric, :Alias, :Description, :MetricType, :Unit, :Aggregations, :InnerMetric
        
        def initialize(metric=nil, _alias=nil, description=nil, metrictype=nil, unit=nil, aggregations=nil, innermetric=nil)
          @Metric = metric
          @Alias = _alias
          @Description = description
          @MetricType = metrictype
          @Unit = unit
          @Aggregations = aggregations
          @InnerMetric = innermetric
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Alias = params['Alias']
          @Description = params['Description']
          @MetricType = params['MetricType']
          @Unit = params['Unit']
          unless params['Aggregations'].nil?
            @Aggregations = []
            params['Aggregations'].each do |i|
              aggregationlegend_tmp = AggregationLegend.new
              aggregationlegend_tmp.deserialize(i)
              @Aggregations << aggregationlegend_tmp
            end
          end
          @InnerMetric = params['InnerMetric']
        end
      end

      # PTS提供的指标名，指标对应的labels及values
      class MetricLabelWithValues < TencentCloud::Common::AbstractModel
        # @param MetricName: metric 名字
        # @type MetricName: String
        # @param LabelValuesSet: label及values 数组
        # @type LabelValuesSet: Array

        attr_accessor :MetricName, :LabelValuesSet
        
        def initialize(metricname=nil, labelvaluesset=nil)
          @MetricName = metricname
          @LabelValuesSet = labelvaluesset
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['LabelValuesSet'].nil?
            @LabelValuesSet = []
            params['LabelValuesSet'].each do |i|
              labelwithvalues_tmp = LabelWithValues.new
              labelwithvalues_tmp.deserialize(i)
              @LabelValuesSet << labelwithvalues_tmp
            end
          end
        end
      end

      # 通用日志
      class NormalLog < TencentCloud::Common::AbstractModel
        # @param Timestamp: 毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param SeverityText: 日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SeverityText: String
        # @param Body: 日志输出内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String

        attr_accessor :Timestamp, :SeverityText, :Body
        
        def initialize(timestamp=nil, severitytext=nil, body=nil)
          @Timestamp = timestamp
          @SeverityText = severitytext
          @Body = body
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @SeverityText = params['SeverityText']
          @Body = params['Body']
        end
      end

      # 测试启动前后的消息通知
      class Notification < TencentCloud::Common::AbstractModel
        # @param Events: 发生事件
        # @type Events: Array
        # @param URL: webhook的网址
        # @type URL: String

        attr_accessor :Events, :URL
        
        def initialize(events=nil, url=nil)
          @Events = events
          @URL = url
        end

        def deserialize(params)
          @Events = params['Events']
          @URL = params['URL']
        end
      end

      # 事件通知回调
      class NotificationHook < TencentCloud::Common::AbstractModel
        # @param Events: 通知事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param URL: 回调 URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URL: String

        attr_accessor :Events, :URL
        
        def initialize(events=nil, url=nil)
          @Events = events
          @URL = url
        end

        def deserialize(params)
          @Events = params['Events']
          @URL = params['URL']
        end
      end

      # 项目
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Name: 项目名
        # @type Name: String
        # @param Description: 项目描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Tags: 标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 项目状态
        # @type Status: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 修改时间
        # @type UpdatedAt: String
        # @param AppId: App ID
        # @type AppId: Integer
        # @param Uin: 用户ID
        # @type Uin: String
        # @param SubAccountUin: 子用户ID
        # @type SubAccountUin: String

        attr_accessor :ProjectId, :Name, :Description, :Tags, :Status, :CreatedAt, :UpdatedAt, :AppId, :Uin, :SubAccountUin
        
        def initialize(projectid=nil, name=nil, description=nil, tags=nil, status=nil, createdat=nil, updatedat=nil, appid=nil, uin=nil, subaccountuin=nil)
          @ProjectId = projectid
          @Name = name
          @Description = description
          @Tags = tags
          @Status = status
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspec_tmp = TagSpec.new
              tagspec_tmp.deserialize(i)
              @Tags << tagspec_tmp
            end
          end
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
        end
      end

      # 协议文件详情
      class ProtocolInfo < TencentCloud::Common::AbstractModel
        # @param Name: 协议详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Size: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Type: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param FileId: 文件 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String

        attr_accessor :Name, :Size, :Type, :UpdatedAt, :FileId
        
        def initialize(name=nil, size=nil, type=nil, updatedat=nil, fileid=nil)
          @Name = name
          @Size = size
          @Type = type
          @UpdatedAt = updatedat
          @FileId = fileid
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Type = params['Type']
          @UpdatedAt = params['UpdatedAt']
          @FileId = params['FileId']
        end
      end

      # 采用日志响应时间RT范围
      class ReactionTimeRange < TencentCloud::Common::AbstractModel
        # @param Min: 最小响应时间，单位ms
        # @type Min: String
        # @param Max: 最大响应时间，单位ms
        # @type Max: String

        attr_accessor :Min, :Max
        
        def initialize(min=nil, max=nil)
          @Min = min
          @Max = max
        end

        def deserialize(params)
          @Min = params['Min']
          @Max = params['Max']
        end
      end

      # 地域
      class RegionDetail < TencentCloud::Common::AbstractModel
        # @param Region: 地域代码
        # @type Region: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Area: 地域所在的地区
        # @type Area: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RegionState: 地域状态
        # @type RegionState: Integer
        # @param RegionShortName: 地域简称
        # @type RegionShortName: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String

        attr_accessor :Region, :RegionId, :Area, :RegionName, :RegionState, :RegionShortName, :CreatedAt, :UpdatedAt
        
        def initialize(region=nil, regionid=nil, area=nil, regionname=nil, regionstate=nil, regionshortname=nil, createdat=nil, updatedat=nil)
          @Region = region
          @RegionId = regionid
          @Area = area
          @RegionName = regionname
          @RegionState = regionstate
          @RegionShortName = regionshortname
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @Area = params['Area']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
          @RegionShortName = params['RegionShortName']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 压测请求明细
      class RequestSummary < TencentCloud::Common::AbstractModel
        # @param Service: 请求URL
        # @type Service: String
        # @param Method: 请求方法
        # @type Method: String
        # @param Count: 请求次数
        # @type Count: Integer
        # @param Average: 请求响应平均耗时，单位秒
        # @type Average: Float
        # @param P90: 请求p90耗时，单位秒
        # @type P90: Float
        # @param P95: 请求p95耗时，单位秒
        # @type P95: Float
        # @param Min: 请求最小耗时，单位秒
        # @type Min: Float
        # @param Max: 请求最大耗时，单位秒
        # @type Max: Float
        # @param ErrorPercentage: 请求错误率
        # @type ErrorPercentage: Float
        # @param P99: 请求p99耗时，单位秒
        # @type P99: Float
        # @param Status: 响应状态码
        # @type Status: String
        # @param Result: 响应详情
        # @type Result: String

        attr_accessor :Service, :Method, :Count, :Average, :P90, :P95, :Min, :Max, :ErrorPercentage, :P99, :Status, :Result
        
        def initialize(service=nil, method=nil, count=nil, average=nil, p90=nil, p95=nil, min=nil, max=nil, errorpercentage=nil, p99=nil, status=nil, result=nil)
          @Service = service
          @Method = method
          @Count = count
          @Average = average
          @P90 = p90
          @P95 = p95
          @Min = min
          @Max = max
          @ErrorPercentage = errorpercentage
          @P99 = p99
          @Status = status
          @Result = result
        end

        def deserialize(params)
          @Service = params['Service']
          @Method = params['Method']
          @Count = params['Count']
          @Average = params['Average']
          @P90 = params['P90']
          @P95 = params['P95']
          @Min = params['Min']
          @Max = params['Max']
          @ErrorPercentage = params['ErrorPercentage']
          @P99 = params['P99']
          @Status = params['Status']
          @Result = params['Result']
        end
      end

      # RPS模式的施压配置
      class RequestsPerSecond < TencentCloud::Common::AbstractModel
        # @param MaxRequestsPerSecond: 最大RPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestsPerSecond: Integer
        # @param DurationSeconds: 施压时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationSeconds: Integer
        # @param TargetVirtualUsers: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetVirtualUsers: Integer
        # @param Resources: 资源数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Integer
        # @param StartRequestsPerSecond: 起始RPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRequestsPerSecond: Integer
        # @param TargetRequestsPerSecond: 目标RPS，入参无效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetRequestsPerSecond: Integer

        attr_accessor :MaxRequestsPerSecond, :DurationSeconds, :TargetVirtualUsers, :Resources, :StartRequestsPerSecond, :TargetRequestsPerSecond
        
        def initialize(maxrequestspersecond=nil, durationseconds=nil, targetvirtualusers=nil, resources=nil, startrequestspersecond=nil, targetrequestspersecond=nil)
          @MaxRequestsPerSecond = maxrequestspersecond
          @DurationSeconds = durationseconds
          @TargetVirtualUsers = targetvirtualusers
          @Resources = resources
          @StartRequestsPerSecond = startrequestspersecond
          @TargetRequestsPerSecond = targetrequestspersecond
        end

        def deserialize(params)
          @MaxRequestsPerSecond = params['MaxRequestsPerSecond']
          @DurationSeconds = params['DurationSeconds']
          @TargetVirtualUsers = params['TargetVirtualUsers']
          @Resources = params['Resources']
          @StartRequestsPerSecond = params['StartRequestsPerSecond']
          @TargetRequestsPerSecond = params['TargetRequestsPerSecond']
        end
      end

      # RestartCronJobs请求参数结构体
      class RestartCronJobsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CronJobIds: 定时任务ID数组
        # @type CronJobIds: Array

        attr_accessor :ProjectId, :CronJobIds
        
        def initialize(projectid=nil, cronjobids=nil)
          @ProjectId = projectid
          @CronJobIds = cronjobids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CronJobIds = params['CronJobIds']
        end
      end

      # RestartCronJobs返回参数结构体
      class RestartCronJobsResponse < TencentCloud::Common::AbstractModel
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

      # SLA 标签
      class SLALabel < TencentCloud::Common::AbstractModel
        # @param LabelName: 标签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String
        # @param LabelValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String

        attr_accessor :LabelName, :LabelValue
        
        def initialize(labelname=nil, labelvalue=nil)
          @LabelName = labelname
          @LabelValue = labelvalue
        end

        def deserialize(params)
          @LabelName = params['LabelName']
          @LabelValue = params['LabelValue']
        end
      end

      # SLA 策略
      class SLAPolicy < TencentCloud::Common::AbstractModel
        # @param SLARules: SLA 规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SLARules: Array
        # @param AlertChannel: 告警通知渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlertChannel: :class:`Tencentcloud::Pts.v20210728.models.AlertChannel`

        attr_accessor :SLARules, :AlertChannel
        
        def initialize(slarules=nil, alertchannel=nil)
          @SLARules = slarules
          @AlertChannel = alertchannel
        end

        def deserialize(params)
          unless params['SLARules'].nil?
            @SLARules = []
            params['SLARules'].each do |i|
              slarule_tmp = SLARule.new
              slarule_tmp.deserialize(i)
              @SLARules << slarule_tmp
            end
          end
          unless params['AlertChannel'].nil?
            @AlertChannel = AlertChannel.new
            @AlertChannel.deserialize(params['AlertChannel'])
          end
        end
      end

      # SLA 规则
      class SLARule < TencentCloud::Common::AbstractModel
        # @param Metric: 压测指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param Aggregation: 压测指标聚合方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Aggregation: String
        # @param Condition: 压测指标条件判断符号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String
        # @param Value: 阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float
        # @param LabelFilter: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelFilter: Array
        # @param AbortFlag: 是否停止压测任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbortFlag: Boolean
        # @param For: 持续时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type For: String

        attr_accessor :Metric, :Aggregation, :Condition, :Value, :LabelFilter, :AbortFlag, :For
        
        def initialize(metric=nil, aggregation=nil, condition=nil, value=nil, labelfilter=nil, abortflag=nil, _for=nil)
          @Metric = metric
          @Aggregation = aggregation
          @Condition = condition
          @Value = value
          @LabelFilter = labelfilter
          @AbortFlag = abortflag
          @For = _for
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Aggregation = params['Aggregation']
          @Condition = params['Condition']
          @Value = params['Value']
          unless params['LabelFilter'].nil?
            @LabelFilter = []
            params['LabelFilter'].each do |i|
              slalabel_tmp = SLALabel.new
              slalabel_tmp.deserialize(i)
              @LabelFilter << slalabel_tmp
            end
          end
          @AbortFlag = params['AbortFlag']
          @For = params['For']
        end
      end

      # 采样日志
      class SampleLog < TencentCloud::Common::AbstractModel
        # @param Timestamp: 日志毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Attributes: 采样日志属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attributes: :class:`Tencentcloud::Pts.v20210728.models.Attributes`
        # @param Body: har格式的采样请求
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String

        attr_accessor :Timestamp, :Attributes, :Body
        
        def initialize(timestamp=nil, attributes=nil, body=nil)
          @Timestamp = timestamp
          @Attributes = attributes
          @Body = body
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          unless params['Attributes'].nil?
            @Attributes = Attributes.new
            @Attributes.deserialize(params['Attributes'])
          end
          @Body = params['Body']
        end
      end

      # sample采样值
      class SamplePair < TencentCloud::Common::AbstractModel
        # @param Timestamp: is the number of milliseconds since the epoch (1970-01-01 00:00 UTC) excluding leap seconds.
        # @type Timestamp: Integer
        # @param Value: is a representation of a value for a given sample at a given time.
        # @type Value: Float

        attr_accessor :Timestamp, :Value
        
        def initialize(timestamp=nil, value=nil)
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 连续指标采样内容
      class SampleStream < TencentCloud::Common::AbstractModel
        # @param Labels: labels描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Values: 指标采样数组
        # @type Values: Array
        # @param Name: 指标序列名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Labels, :Values, :Name
        
        def initialize(labels=nil, values=nil, name=nil)
          @Labels = labels
          @Values = values
          @Name = name
        end

        def deserialize(params)
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              samplepair_tmp = SamplePair.new
              samplepair_tmp.deserialize(i)
              @Values << samplepair_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # 场景列表
      class Scenario < TencentCloud::Common::AbstractModel
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Name: 场景名
        # @type Name: String
        # @param Description: 场景描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 场景类型，如pts-http, pts-js, pts-trpc, pts-jmeter
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 场景状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Load: 施压配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Load: :class:`Tencentcloud::Pts.v20210728.models.Load`
        # @param EncodedScripts: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncodedScripts: String
        # @param Configs: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configs: Array
        # @param Extensions: deprecated
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extensions: Array
        # @param Datasets: 测试数据集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Datasets: Array
        # @param SLAId: SLA规则的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SLAId: String
        # @param CronId: Cron Job规则的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronId: String
        # @param CreatedAt: 场景创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 场景修改时间
        # @type UpdatedAt: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param AppId: App ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 子用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param TestScripts: 测试脚本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestScripts: Array
        # @param Protocols: 协议文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocols: Array
        # @param RequestFiles: 请求文件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestFiles: Array
        # @param SLAPolicy: SLA 策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SLAPolicy: :class:`Tencentcloud::Pts.v20210728.models.SLAPolicy`
        # @param Plugins: 扩展包信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plugins: Array
        # @param DomainNameConfig: 域名解析配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNameConfig: :class:`Tencentcloud::Pts.v20210728.models.DomainNameConfig`
        # @param NotificationHooks: 通知事件回调
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotificationHooks: Array

        attr_accessor :ScenarioId, :Name, :Description, :Type, :Status, :Load, :EncodedScripts, :Configs, :Extensions, :Datasets, :SLAId, :CronId, :CreatedAt, :UpdatedAt, :ProjectId, :AppId, :Uin, :SubAccountUin, :TestScripts, :Protocols, :RequestFiles, :SLAPolicy, :Plugins, :DomainNameConfig, :NotificationHooks
        
        def initialize(scenarioid=nil, name=nil, description=nil, type=nil, status=nil, load=nil, encodedscripts=nil, configs=nil, extensions=nil, datasets=nil, slaid=nil, cronid=nil, createdat=nil, updatedat=nil, projectid=nil, appid=nil, uin=nil, subaccountuin=nil, testscripts=nil, protocols=nil, requestfiles=nil, slapolicy=nil, plugins=nil, domainnameconfig=nil, notificationhooks=nil)
          @ScenarioId = scenarioid
          @Name = name
          @Description = description
          @Type = type
          @Status = status
          @Load = load
          @EncodedScripts = encodedscripts
          @Configs = configs
          @Extensions = extensions
          @Datasets = datasets
          @SLAId = slaid
          @CronId = cronid
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @ProjectId = projectid
          @AppId = appid
          @Uin = uin
          @SubAccountUin = subaccountuin
          @TestScripts = testscripts
          @Protocols = protocols
          @RequestFiles = requestfiles
          @SLAPolicy = slapolicy
          @Plugins = plugins
          @DomainNameConfig = domainnameconfig
          @NotificationHooks = notificationhooks
        end

        def deserialize(params)
          @ScenarioId = params['ScenarioId']
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          @Status = params['Status']
          unless params['Load'].nil?
            @Load = Load.new
            @Load.deserialize(params['Load'])
          end
          @EncodedScripts = params['EncodedScripts']
          @Configs = params['Configs']
          @Extensions = params['Extensions']
          unless params['Datasets'].nil?
            @Datasets = []
            params['Datasets'].each do |i|
              testdata_tmp = TestData.new
              testdata_tmp.deserialize(i)
              @Datasets << testdata_tmp
            end
          end
          @SLAId = params['SLAId']
          @CronId = params['CronId']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @ProjectId = params['ProjectId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          unless params['TestScripts'].nil?
            @TestScripts = []
            params['TestScripts'].each do |i|
              scriptinfo_tmp = ScriptInfo.new
              scriptinfo_tmp.deserialize(i)
              @TestScripts << scriptinfo_tmp
            end
          end
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              protocolinfo_tmp = ProtocolInfo.new
              protocolinfo_tmp.deserialize(i)
              @Protocols << protocolinfo_tmp
            end
          end
          unless params['RequestFiles'].nil?
            @RequestFiles = []
            params['RequestFiles'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @RequestFiles << fileinfo_tmp
            end
          end
          unless params['SLAPolicy'].nil?
            @SLAPolicy = SLAPolicy.new
            @SLAPolicy.deserialize(params['SLAPolicy'])
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @Plugins << fileinfo_tmp
            end
          end
          unless params['DomainNameConfig'].nil?
            @DomainNameConfig = DomainNameConfig.new
            @DomainNameConfig.deserialize(params['DomainNameConfig'])
          end
          unless params['NotificationHooks'].nil?
            @NotificationHooks = []
            params['NotificationHooks'].each do |i|
              notificationhook_tmp = NotificationHook.new
              notificationhook_tmp.deserialize(i)
              @NotificationHooks << notificationhook_tmp
            end
          end
        end
      end

      # 查询与特定scenario关联的job的参数
      class ScenarioRelatedJobsParams < TencentCloud::Common::AbstractModel
        # @param Offset: job偏移量
        # @type Offset: Integer
        # @param Limit: 限制最多查询的job数
        # @type Limit: Integer
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param Ascend: 是否升序
        # @type Ascend: Boolean

        attr_accessor :Offset, :Limit, :OrderBy, :Ascend
        
        def initialize(offset=nil, limit=nil, orderby=nil, ascend=nil)
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @Ascend = ascend
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
        end
      end

      # 带已执行任务的scenario
      class ScenarioWithJobs < TencentCloud::Common::AbstractModel
        # @param Scenario: scecario结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scenario: :class:`Tencentcloud::Pts.v20210728.models.Scenario`
        # @param Jobs: job结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Jobs: Array

        attr_accessor :Scenario, :Jobs
        
        def initialize(scenario=nil, jobs=nil)
          @Scenario = scenario
          @Jobs = jobs
        end

        def deserialize(params)
          unless params['Scenario'].nil?
            @Scenario = Scenario.new
            @Scenario.deserialize(params['Scenario'])
          end
          unless params['Jobs'].nil?
            @Jobs = []
            params['Jobs'].each do |i|
              job_tmp = Job.new
              job_tmp.deserialize(i)
              @Jobs << job_tmp
            end
          end
        end
      end

      # 脚本信息
      class ScriptInfo < TencentCloud::Common::AbstractModel
        # @param Name: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Size: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Type: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param EncodedContent: base64编码后的文件内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncodedContent: String
        # @param EncodedHttpArchive: base64编码后的har结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncodedHttpArchive: String
        # @param LoadWeight: 脚本权重，范围 1-100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadWeight: Integer

        attr_accessor :Name, :Size, :Type, :UpdatedAt, :EncodedContent, :EncodedHttpArchive, :LoadWeight
        
        def initialize(name=nil, size=nil, type=nil, updatedat=nil, encodedcontent=nil, encodedhttparchive=nil, loadweight=nil)
          @Name = name
          @Size = size
          @Type = type
          @UpdatedAt = updatedat
          @EncodedContent = encodedcontent
          @EncodedHttpArchive = encodedhttparchive
          @LoadWeight = loadweight
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Type = params['Type']
          @UpdatedAt = params['UpdatedAt']
          @EncodedContent = params['EncodedContent']
          @EncodedHttpArchive = params['EncodedHttpArchive']
          @LoadWeight = params['LoadWeight']
        end
      end

      # 脚本内置压力模型
      class ScriptOrigin < TencentCloud::Common::AbstractModel
        # @param MachineNumber: 机器数量
        # @type MachineNumber: Integer
        # @param MachineSpecification: 机器规格
        # @type MachineSpecification: String
        # @param DurationSeconds: 压测时长
        # @type DurationSeconds: Integer

        attr_accessor :MachineNumber, :MachineSpecification, :DurationSeconds
        
        def initialize(machinenumber=nil, machinespecification=nil, durationseconds=nil)
          @MachineNumber = machinenumber
          @MachineSpecification = machinespecification
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @MachineNumber = params['MachineNumber']
          @MachineSpecification = params['MachineSpecification']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # 分阶段施压时，对单个阶段的配置
      class Stage < TencentCloud::Common::AbstractModel
        # @param DurationSeconds: 施压时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationSeconds: Integer
        # @param TargetVirtualUsers: 虚拟用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetVirtualUsers: Integer

        attr_accessor :DurationSeconds, :TargetVirtualUsers
        
        def initialize(durationseconds=nil, targetvirtualusers=nil)
          @DurationSeconds = durationseconds
          @TargetVirtualUsers = targetvirtualusers
        end

        def deserialize(params)
          @DurationSeconds = params['DurationSeconds']
          @TargetVirtualUsers = params['TargetVirtualUsers']
        end
      end

      # StartJob请求参数结构体
      class StartJobRequest < TencentCloud::Common::AbstractModel
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param JobOwner: 任务发起人
        # @type JobOwner: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Debug: 是否调试
        # @type Debug: Boolean
        # @param Note: 备注
        # @type Note: String

        attr_accessor :ScenarioId, :JobOwner, :ProjectId, :Debug, :Note
        
        def initialize(scenarioid=nil, jobowner=nil, projectid=nil, debug=nil, note=nil)
          @ScenarioId = scenarioid
          @JobOwner = jobowner
          @ProjectId = projectid
          @Debug = debug
          @Note = note
        end

        def deserialize(params)
          @ScenarioId = params['ScenarioId']
          @JobOwner = params['JobOwner']
          @ProjectId = params['ProjectId']
          @Debug = params['Debug']
          @Note = params['Note']
        end
      end

      # StartJob返回参数结构体
      class StartJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
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

      # 标签
      class TagSpec < TencentCloud::Common::AbstractModel
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

      # 测试数据集
      class TestData < TencentCloud::Common::AbstractModel
        # @param Name: 测试数据集所在的文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Split: 测试数据集是否分片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Split: Boolean
        # @param HeaderInFile: 首行是否为参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderInFile: Boolean
        # @param HeaderColumns: 参数名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderColumns: Array
        # @param LineCount: 文件行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineCount: Integer
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param Size: 文件字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param HeadLines: 头部数据行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadLines: Array
        # @param TailLines: 尾部数据行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TailLines: Array
        # @param Type: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param FileId: 文件 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String

        attr_accessor :Name, :Split, :HeaderInFile, :HeaderColumns, :LineCount, :UpdatedAt, :Size, :HeadLines, :TailLines, :Type, :FileId
        
        def initialize(name=nil, split=nil, headerinfile=nil, headercolumns=nil, linecount=nil, updatedat=nil, size=nil, headlines=nil, taillines=nil, type=nil, fileid=nil)
          @Name = name
          @Split = split
          @HeaderInFile = headerinfile
          @HeaderColumns = headercolumns
          @LineCount = linecount
          @UpdatedAt = updatedat
          @Size = size
          @HeadLines = headlines
          @TailLines = taillines
          @Type = type
          @FileId = fileid
        end

        def deserialize(params)
          @Name = params['Name']
          @Split = params['Split']
          @HeaderInFile = params['HeaderInFile']
          @HeaderColumns = params['HeaderColumns']
          @LineCount = params['LineCount']
          @UpdatedAt = params['UpdatedAt']
          @Size = params['Size']
          @HeadLines = params['HeadLines']
          @TailLines = params['TailLines']
          @Type = params['Type']
          @FileId = params['FileId']
        end
      end

      # UpdateCronJob请求参数结构体
      class UpdateCronJobRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param CronJobId: 定时任务ID
        # @type CronJobId: String
        # @param Note: 备注
        # @type Note: String
        # @param CronExpression: cron表达式
        # @type CronExpression: String
        # @param FrequencyType: 执行频率类型，1:只执行一次; 2:日粒度; 3:周粒度; 4:高级
        # @type FrequencyType: Integer
        # @param Name: 定时任务名字
        # @type Name: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param ScenarioName: 场景名称
        # @type ScenarioName: String
        # @param JobOwner: 任务发起人
        # @type JobOwner: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param NoticeId: Notice ID
        # @type NoticeId: String

        attr_accessor :ProjectId, :CronJobId, :Note, :CronExpression, :FrequencyType, :Name, :ScenarioId, :ScenarioName, :JobOwner, :EndTime, :NoticeId
        
        def initialize(projectid=nil, cronjobid=nil, note=nil, cronexpression=nil, frequencytype=nil, name=nil, scenarioid=nil, scenarioname=nil, jobowner=nil, endtime=nil, noticeid=nil)
          @ProjectId = projectid
          @CronJobId = cronjobid
          @Note = note
          @CronExpression = cronexpression
          @FrequencyType = frequencytype
          @Name = name
          @ScenarioId = scenarioid
          @ScenarioName = scenarioname
          @JobOwner = jobowner
          @EndTime = endtime
          @NoticeId = noticeid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CronJobId = params['CronJobId']
          @Note = params['Note']
          @CronExpression = params['CronExpression']
          @FrequencyType = params['FrequencyType']
          @Name = params['Name']
          @ScenarioId = params['ScenarioId']
          @ScenarioName = params['ScenarioName']
          @JobOwner = params['JobOwner']
          @EndTime = params['EndTime']
          @NoticeId = params['NoticeId']
        end
      end

      # UpdateCronJob返回参数结构体
      class UpdateCronJobResponse < TencentCloud::Common::AbstractModel
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

      # UpdateFileScenarioRelation请求参数结构体
      class UpdateFileScenarioRelationRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 文件 ID
        # @type FileId: String
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param ScenarioIds: 场景 ID 数组
        # @type ScenarioIds: Array

        attr_accessor :FileId, :ProjectId, :ScenarioIds
        
        def initialize(fileid=nil, projectid=nil, scenarioids=nil)
          @FileId = fileid
          @ProjectId = projectid
          @ScenarioIds = scenarioids
        end

        def deserialize(params)
          @FileId = params['FileId']
          @ProjectId = params['ProjectId']
          @ScenarioIds = params['ScenarioIds']
        end
      end

      # UpdateFileScenarioRelation返回参数结构体
      class UpdateFileScenarioRelationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateJob请求参数结构体
      class UpdateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Note: 任务备注信息
        # @type Note: String

        attr_accessor :JobId, :ProjectId, :ScenarioId, :Note
        
        def initialize(jobid=nil, projectid=nil, scenarioid=nil, note=nil)
          @JobId = jobid
          @ProjectId = projectid
          @ScenarioId = scenarioid
          @Note = note
        end

        def deserialize(params)
          @JobId = params['JobId']
          @ProjectId = params['ProjectId']
          @ScenarioId = params['ScenarioId']
          @Note = params['Note']
        end
      end

      # UpdateJob返回参数结构体
      class UpdateJobResponse < TencentCloud::Common::AbstractModel
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

      # UpdateProject请求参数结构体
      class UpdateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Name: 项目名
        # @type Name: String
        # @param Description: 项目描述
        # @type Description: String
        # @param Status: 项目状态，默认传递1
        # @type Status: Integer
        # @param Tags: 标签数组
        # @type Tags: Array

        attr_accessor :ProjectId, :Name, :Description, :Status, :Tags
        
        def initialize(projectid=nil, name=nil, description=nil, status=nil, tags=nil)
          @ProjectId = projectid
          @Name = name
          @Description = description
          @Status = status
          @Tags = tags
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Description = params['Description']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagspec_tmp = TagSpec.new
              tagspec_tmp.deserialize(i)
              @Tags << tagspec_tmp
            end
          end
        end
      end

      # UpdateProject返回参数结构体
      class UpdateProjectResponse < TencentCloud::Common::AbstractModel
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

      # UpdateScenario请求参数结构体
      class UpdateScenarioRequest < TencentCloud::Common::AbstractModel
        # @param ScenarioId: 场景ID
        # @type ScenarioId: String
        # @param Name: 场景名
        # @type Name: String
        # @param Description: 场景描述
        # @type Description: String
        # @param Type: 压测引擎类型
        # @type Type: String
        # @param Load: 施压配置
        # @type Load: :class:`Tencentcloud::Pts.v20210728.models.Load`
        # @param EncodedScripts: deprecated
        # @type EncodedScripts: String
        # @param Configs: deprecated
        # @type Configs: Array
        # @param Datasets: 测试数据集
        # @type Datasets: Array
        # @param Extensions: deprecated
        # @type Extensions: Array
        # @param SLAId: SLA规则ID
        # @type SLAId: String
        # @param CronId: cron job ID
        # @type CronId: String
        # @param Status: 场景状态（注：现已无需传递该参数）
        # @type Status: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param TestScripts: 测试脚本路径
        # @type TestScripts: Array
        # @param Protocols: 协议文件路径
        # @type Protocols: Array
        # @param RequestFiles: 请求文件路径
        # @type RequestFiles: Array
        # @param SLAPolicy: SLA 策略
        # @type SLAPolicy: :class:`Tencentcloud::Pts.v20210728.models.SLAPolicy`
        # @param Plugins: 拓展包文件路径
        # @type Plugins: Array
        # @param DomainNameConfig: 域名解析配置
        # @type DomainNameConfig: :class:`Tencentcloud::Pts.v20210728.models.DomainNameConfig`
        # @param NotificationHooks: WebHook请求配置
        # @type NotificationHooks: Array

        attr_accessor :ScenarioId, :Name, :Description, :Type, :Load, :EncodedScripts, :Configs, :Datasets, :Extensions, :SLAId, :CronId, :Status, :ProjectId, :TestScripts, :Protocols, :RequestFiles, :SLAPolicy, :Plugins, :DomainNameConfig, :NotificationHooks
        
        def initialize(scenarioid=nil, name=nil, description=nil, type=nil, load=nil, encodedscripts=nil, configs=nil, datasets=nil, extensions=nil, slaid=nil, cronid=nil, status=nil, projectid=nil, testscripts=nil, protocols=nil, requestfiles=nil, slapolicy=nil, plugins=nil, domainnameconfig=nil, notificationhooks=nil)
          @ScenarioId = scenarioid
          @Name = name
          @Description = description
          @Type = type
          @Load = load
          @EncodedScripts = encodedscripts
          @Configs = configs
          @Datasets = datasets
          @Extensions = extensions
          @SLAId = slaid
          @CronId = cronid
          @Status = status
          @ProjectId = projectid
          @TestScripts = testscripts
          @Protocols = protocols
          @RequestFiles = requestfiles
          @SLAPolicy = slapolicy
          @Plugins = plugins
          @DomainNameConfig = domainnameconfig
          @NotificationHooks = notificationhooks
        end

        def deserialize(params)
          @ScenarioId = params['ScenarioId']
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          unless params['Load'].nil?
            @Load = Load.new
            @Load.deserialize(params['Load'])
          end
          @EncodedScripts = params['EncodedScripts']
          @Configs = params['Configs']
          unless params['Datasets'].nil?
            @Datasets = []
            params['Datasets'].each do |i|
              testdata_tmp = TestData.new
              testdata_tmp.deserialize(i)
              @Datasets << testdata_tmp
            end
          end
          @Extensions = params['Extensions']
          @SLAId = params['SLAId']
          @CronId = params['CronId']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          unless params['TestScripts'].nil?
            @TestScripts = []
            params['TestScripts'].each do |i|
              scriptinfo_tmp = ScriptInfo.new
              scriptinfo_tmp.deserialize(i)
              @TestScripts << scriptinfo_tmp
            end
          end
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              protocolinfo_tmp = ProtocolInfo.new
              protocolinfo_tmp.deserialize(i)
              @Protocols << protocolinfo_tmp
            end
          end
          unless params['RequestFiles'].nil?
            @RequestFiles = []
            params['RequestFiles'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @RequestFiles << fileinfo_tmp
            end
          end
          unless params['SLAPolicy'].nil?
            @SLAPolicy = SLAPolicy.new
            @SLAPolicy.deserialize(params['SLAPolicy'])
          end
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @Plugins << fileinfo_tmp
            end
          end
          unless params['DomainNameConfig'].nil?
            @DomainNameConfig = DomainNameConfig.new
            @DomainNameConfig.deserialize(params['DomainNameConfig'])
          end
          unless params['NotificationHooks'].nil?
            @NotificationHooks = []
            params['NotificationHooks'].each do |i|
              notification_tmp = Notification.new
              notification_tmp.deserialize(i)
              @NotificationHooks << notification_tmp
            end
          end
        end
      end

      # UpdateScenario返回参数结构体
      class UpdateScenarioResponse < TencentCloud::Common::AbstractModel
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

      # 压力来源配置
      class VpcLoadDistribution < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetIds: 子网ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array

        attr_accessor :RegionId, :Region, :VpcId, :SubnetIds
        
        def initialize(regionid=nil, region=nil, vpcid=nil, subnetids=nil)
          @RegionId = regionid
          @Region = region
          @VpcId = vpcid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
        end
      end

    end
  end
end

