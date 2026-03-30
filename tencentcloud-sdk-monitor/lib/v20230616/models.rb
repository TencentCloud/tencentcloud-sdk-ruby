# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Monitor
    module V20230616
      # AI工作台SRE数字分身任务
      class AIWorkbenchSREDigitalTwinTask < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param TaskConfig: 任务配置
        # @type TaskConfig: String
        # @param ID: 唯一标识
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param TwinID: 所属数字分身ID
        # @type TwinID: Integer

        attr_accessor :Name, :TaskType, :TaskConfig, :ID, :CreatedAt, :TwinID

        def initialize(name=nil, tasktype=nil, taskconfig=nil, id=nil, createdat=nil, twinid=nil)
          @Name = name
          @TaskType = tasktype
          @TaskConfig = taskconfig
          @ID = id
          @CreatedAt = createdat
          @TwinID = twinid
        end

        def deserialize(params)
          @Name = params['Name']
          @TaskType = params['TaskType']
          @TaskConfig = params['TaskConfig']
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @TwinID = params['TwinID']
        end
      end

      # AI工作台SRE数字分身任务列表
      class AIWorkbenchSREDigitalTwinTaskList < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param Total: 任务总数
        # @type Total: Integer

        attr_accessor :Tasks, :Total

        def initialize(tasks=nil, total=nil)
          @Tasks = tasks
          @Total = total
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              aiworkbenchsredigitaltwintask_tmp = AIWorkbenchSREDigitalTwinTask.new
              aiworkbenchsredigitaltwintask_tmp.deserialize(i)
              @Tasks << aiworkbenchsredigitaltwintask_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # AI工作台SRE数字分身工作日志
      class AIWorkbenchSREDigitalTwinWorkLog < TencentCloud::Common::AbstractModel
        # @param ID: 唯一标识符
        # @type ID: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param TwinID: 所属数字分身ID
        # @type TwinID: Integer
        # @param TaskID: 所属数字分身任务ID
        # @type TaskID: Integer
        # @param StartTime: 分析时间
        # @type StartTime: String
        # @param Status: 分析状态
        # @type Status: String
        # @param Result: 分析结果摘要
        # @type Result: String
        # @param TaskName: 所属任务名称
        # @type TaskName: String
        # @param TaskType: 所属任务类型
        # @type TaskType: String

        attr_accessor :ID, :CreatedAt, :TwinID, :TaskID, :StartTime, :Status, :Result, :TaskName, :TaskType

        def initialize(id=nil, createdat=nil, twinid=nil, taskid=nil, starttime=nil, status=nil, result=nil, taskname=nil, tasktype=nil)
          @ID = id
          @CreatedAt = createdat
          @TwinID = twinid
          @TaskID = taskid
          @StartTime = starttime
          @Status = status
          @Result = result
          @TaskName = taskname
          @TaskType = tasktype
        end

        def deserialize(params)
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
          @TwinID = params['TwinID']
          @TaskID = params['TaskID']
          @StartTime = params['StartTime']
          @Status = params['Status']
          @Result = params['Result']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
        end
      end

      # AI工作台SRE数字分身工作日志详细信息
      class AIWorkbenchSREDigitalTwinWorkLogDetail < TencentCloud::Common::AbstractModel
        # @param Content: 工作日志详细内容
        # @type Content: String
        # @param TaskType: 工作日志任务类型
        # @type TaskType: String
        # @param DialogID: 工作日志相关对话ID
        # @type DialogID: Integer

        attr_accessor :Content, :TaskType, :DialogID

        def initialize(content=nil, tasktype=nil, dialogid=nil)
          @Content = content
          @TaskType = tasktype
          @DialogID = dialogid
        end

        def deserialize(params)
          @Content = params['Content']
          @TaskType = params['TaskType']
          @DialogID = params['DialogID']
        end
      end

      # AI工作台SRE数字分身工作日志列表
      class AIWorkbenchSREDigitalTwinWorkLogList < TencentCloud::Common::AbstractModel
        # @param WorkLogs: 工作日志列表
        # @type WorkLogs: Array
        # @param Total: 总数
        # @type Total: Integer

        attr_accessor :WorkLogs, :Total

        def initialize(worklogs=nil, total=nil)
          @WorkLogs = worklogs
          @Total = total
        end

        def deserialize(params)
          unless params['WorkLogs'].nil?
            @WorkLogs = []
            params['WorkLogs'].each do |i|
              aiworkbenchsredigitaltwinworklog_tmp = AIWorkbenchSREDigitalTwinWorkLog.new
              aiworkbenchsredigitaltwinworklog_tmp.deserialize(i)
              @WorkLogs << aiworkbenchsredigitaltwinworklog_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # 告警中的Label
      class AlarmLable < TencentCloud::Common::AbstractModel
        # @param Name: label name
        # @type Name: String
        # @param Value: label value
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

      # 单个告警通知历史
      class AlarmNotifyHistory < TencentCloud::Common::AbstractModel
        # @param NotifyId: 通知的唯一ID
        # @type NotifyId: String
        # @param PolicyId: 告警策略ID
        # @type PolicyId: String
        # @param SessionId: 告警周期iD
        # @type SessionId: String
        # @param NotifyTime: 通知时间 unix秒级时间戳
        # @type NotifyTime: Integer
        # @param TriggerTime: 触发时间 unix秒级时间戳
        # @type TriggerTime: Integer
        # @param TriggerLevel: 告警级别 None 非分级告警级别; Note 提示级别; Warn 严重级别; Serious 紧急级别
        # @type TriggerLevel: String
        # @param AlarmContent: 告警内容
        # @type AlarmContent: String
        # @param AlarmObject: 告警对象
        # @type AlarmObject: String
        # @param ChannelSet: 本次告警通知涉及到的渠道合集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelSet: Array
        # @param ChannelsReceivers: 渠道的接收人信息
        # @type ChannelsReceivers: Array
        # @param PolicyName: 告警策略名称
        # @type PolicyName: String
        # @param PromeInstanceID: Prometheus实例ID, 仅当 MT_PROME 时有效
        # @type PromeInstanceID: String
        # @param PromeInstanceRegion: Prometheus实例所在的地域, 仅当 MT_PROME 时有效
        # @type PromeInstanceRegion: String
        # @param Notices: 通知模板相关的配置信息
        # @type Notices: Array
        # @param TriggerStatus: 告警触发状态  Trigger 告警状态触发; Recovery 告警状态恢复
        # @type TriggerStatus: String
        # @param PromeConsoleURL: 与当前Prometheus通知历史相关控制台页面地址，仅当 MR_PROME 时有效
        # @type PromeConsoleURL: String
        # @param Labels: 告警的lable
        # @type Labels: Array

        attr_accessor :NotifyId, :PolicyId, :SessionId, :NotifyTime, :TriggerTime, :TriggerLevel, :AlarmContent, :AlarmObject, :ChannelSet, :ChannelsReceivers, :PolicyName, :PromeInstanceID, :PromeInstanceRegion, :Notices, :TriggerStatus, :PromeConsoleURL, :Labels

        def initialize(notifyid=nil, policyid=nil, sessionid=nil, notifytime=nil, triggertime=nil, triggerlevel=nil, alarmcontent=nil, alarmobject=nil, channelset=nil, channelsreceivers=nil, policyname=nil, promeinstanceid=nil, promeinstanceregion=nil, notices=nil, triggerstatus=nil, promeconsoleurl=nil, labels=nil)
          @NotifyId = notifyid
          @PolicyId = policyid
          @SessionId = sessionid
          @NotifyTime = notifytime
          @TriggerTime = triggertime
          @TriggerLevel = triggerlevel
          @AlarmContent = alarmcontent
          @AlarmObject = alarmobject
          @ChannelSet = channelset
          @ChannelsReceivers = channelsreceivers
          @PolicyName = policyname
          @PromeInstanceID = promeinstanceid
          @PromeInstanceRegion = promeinstanceregion
          @Notices = notices
          @TriggerStatus = triggerstatus
          @PromeConsoleURL = promeconsoleurl
          @Labels = labels
        end

        def deserialize(params)
          @NotifyId = params['NotifyId']
          @PolicyId = params['PolicyId']
          @SessionId = params['SessionId']
          @NotifyTime = params['NotifyTime']
          @TriggerTime = params['TriggerTime']
          @TriggerLevel = params['TriggerLevel']
          @AlarmContent = params['AlarmContent']
          @AlarmObject = params['AlarmObject']
          @ChannelSet = params['ChannelSet']
          unless params['ChannelsReceivers'].nil?
            @ChannelsReceivers = []
            params['ChannelsReceivers'].each do |i|
              channelsreceivers_tmp = ChannelsReceivers.new
              channelsreceivers_tmp.deserialize(i)
              @ChannelsReceivers << channelsreceivers_tmp
            end
          end
          @PolicyName = params['PolicyName']
          @PromeInstanceID = params['PromeInstanceID']
          @PromeInstanceRegion = params['PromeInstanceRegion']
          unless params['Notices'].nil?
            @Notices = []
            params['Notices'].each do |i|
              notifyrelatednotice_tmp = NotifyRelatedNotice.new
              notifyrelatednotice_tmp.deserialize(i)
              @Notices << notifyrelatednotice_tmp
            end
          end
          @TriggerStatus = params['TriggerStatus']
          @PromeConsoleURL = params['PromeConsoleURL']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              alarmlable_tmp = AlarmLable.new
              alarmlable_tmp.deserialize(i)
              @Labels << alarmlable_tmp
            end
          end
        end
      end

      # 接受人详情信息
      class ChannelsReceivers < TencentCloud::Common::AbstractModel
        # @param ChannelName: 通知渠道名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param Receivers: 接收者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Receivers: Array
        # @param SendStatus: 发送结果,0-无效,1-成功,2-失败,3-无需发送
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendStatus: String

        attr_accessor :ChannelName, :Receivers, :SendStatus

        def initialize(channelname=nil, receivers=nil, sendstatus=nil)
          @ChannelName = channelname
          @Receivers = receivers
          @SendStatus = sendstatus
        end

        def deserialize(params)
          @ChannelName = params['ChannelName']
          @Receivers = params['Receivers']
          @SendStatus = params['SendStatus']
        end
      end

      # CreateNoticeContentTmpl请求参数结构体
      class CreateNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param TmplName: 模板名称
        # @type TmplName: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param TmplContents: 模板内容
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param TmplLanguage: 模板语言 en/zh
        # @type TmplLanguage: String

        attr_accessor :TmplName, :MonitorType, :TmplContents, :TmplLanguage

        def initialize(tmplname=nil, monitortype=nil, tmplcontents=nil, tmpllanguage=nil)
          @TmplName = tmplname
          @MonitorType = monitortype
          @TmplContents = tmplcontents
          @TmplLanguage = tmpllanguage
        end

        def deserialize(params)
          @TmplName = params['TmplName']
          @MonitorType = params['MonitorType']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @TmplLanguage = params['TmplLanguage']
        end
      end

      # CreateNoticeContentTmpl返回参数结构体
      class CreateNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param TmplID: 自定义内容模板ID
        # @type TmplID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TmplID, :RequestId

        def initialize(tmplid=nil, requestid=nil)
          @TmplID = tmplid
          @RequestId = requestid
        end

        def deserialize(params)
          @TmplID = params['TmplID']
          @RequestId = params['RequestId']
        end
      end

      # DeleteNoticeContentTmpls请求参数结构体
      class DeleteNoticeContentTmplsRequest < TencentCloud::Common::AbstractModel
        # @param TmplIDs: 要删除的模板id
        # @type TmplIDs: Array

        attr_accessor :TmplIDs

        def initialize(tmplids=nil)
          @TmplIDs = tmplids
        end

        def deserialize(params)
          @TmplIDs = params['TmplIDs']
        end
      end

      # DeleteNoticeContentTmpls返回参数结构体
      class DeleteNoticeContentTmplsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinTaskList请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinTaskListRequest < TencentCloud::Common::AbstractModel
        # @param TwinID: 数字分身ID
        # @type TwinID: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer

        attr_accessor :TwinID, :Offset, :Limit

        def initialize(twinid=nil, offset=nil, limit=nil)
          @TwinID = twinid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TwinID = params['TwinID']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinTaskList返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinTaskListResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身任务列表
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinTaskList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinTaskList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogDetail请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogDetailRequest < TencentCloud::Common::AbstractModel
        # @param WorkLogID: 工作日志ID
        # @type WorkLogID: Integer

        attr_accessor :WorkLogID

        def initialize(worklogid=nil)
          @WorkLogID = worklogid
        end

        def deserialize(params)
          @WorkLogID = params['WorkLogID']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogDetail返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogDetailResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身详细信息
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinWorkLogDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinWorkLogDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogList请求参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogListRequest < TencentCloud::Common::AbstractModel
        # @param TwinID: 数字分身ID
        # @type TwinID: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页限制条数
        # @type Limit: Integer

        attr_accessor :TwinID, :Offset, :Limit

        def initialize(twinid=nil, offset=nil, limit=nil)
          @TwinID = twinid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TwinID = params['TwinID']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIWorkbenchSREDigitalTwinWorkLogList返回参数结构体
      class DescribeAIWorkbenchSREDigitalTwinWorkLogListResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身工作日志列表
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.AIWorkbenchSREDigitalTwinWorkLogList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = AIWorkbenchSREDigitalTwinWorkLogList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNotifyHistories请求参数结构体
      class DescribeAlarmNotifyHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param QueryBaseTime: 起始时间点，unix秒级时间戳
        # @type QueryBaseTime: Integer
        # @param QueryBeforeSeconds: 从 QueryBaseTime 开始，需要查询往前多久的时间，单位秒
        # @type QueryBeforeSeconds: Integer
        # @param PageParams: 分页参数
        # @type PageParams: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoParams`
        # @param Namespace: 当监控类型为 MT_QCE 时候需要填写，归属的命名空间
        # @type Namespace: String
        # @param ModelName: 当监控类型为 MT_QCE 时候需要填写， 告警策略类型
        # @type ModelName: String
        # @param PolicyId: 查询某个策略的通知历史
        # @type PolicyId: String

        attr_accessor :MonitorType, :QueryBaseTime, :QueryBeforeSeconds, :PageParams, :Namespace, :ModelName, :PolicyId

        def initialize(monitortype=nil, querybasetime=nil, querybeforeseconds=nil, pageparams=nil, namespace=nil, modelname=nil, policyid=nil)
          @MonitorType = monitortype
          @QueryBaseTime = querybasetime
          @QueryBeforeSeconds = querybeforeseconds
          @PageParams = pageparams
          @Namespace = namespace
          @ModelName = modelname
          @PolicyId = policyid
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @QueryBaseTime = params['QueryBaseTime']
          @QueryBeforeSeconds = params['QueryBeforeSeconds']
          unless params['PageParams'].nil?
            @PageParams = PageByNoParams.new
            @PageParams.deserialize(params['PageParams'])
          end
          @Namespace = params['Namespace']
          @ModelName = params['ModelName']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeAlarmNotifyHistories返回参数结构体
      class DescribeAlarmNotifyHistoriesResponse < TencentCloud::Common::AbstractModel
        # @param AlarmNotifyHistoryList: 告警历史
        # @type AlarmNotifyHistoryList: Array
        # @param PageResult: 分页情况
        # @type PageResult: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmNotifyHistoryList, :PageResult, :RequestId

        def initialize(alarmnotifyhistorylist=nil, pageresult=nil, requestid=nil)
          @AlarmNotifyHistoryList = alarmnotifyhistorylist
          @PageResult = pageresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmNotifyHistoryList'].nil?
            @AlarmNotifyHistoryList = []
            params['AlarmNotifyHistoryList'].each do |i|
              alarmnotifyhistory_tmp = AlarmNotifyHistory.new
              alarmnotifyhistory_tmp.deserialize(i)
              @AlarmNotifyHistoryList << alarmnotifyhistory_tmp
            end
          end
          unless params['PageResult'].nil?
            @PageResult = PageByNoResult.new
            @PageResult.deserialize(params['PageResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNoticeContentTmpl请求参数结构体
      class DescribeNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TmplIDs: 指定模板ID查询，查询参数都为空则默认查询账号下所有模板
        # @type TmplIDs: Array
        # @param TmplName: 指定模板名称查询，查询参数都为空则默认查询账号下所有模板
        # @type TmplName: String
        # @param NoticeID: 指定通知模板ID查询，查询参数都为空则默认查询账号下所有模板
        # @type NoticeID: String
        # @param TmplLanguage: 模板语言 en/zh 缺省不过滤
        # @type TmplLanguage: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String

        attr_accessor :PageNumber, :PageSize, :TmplIDs, :TmplName, :NoticeID, :TmplLanguage, :MonitorType

        def initialize(pagenumber=nil, pagesize=nil, tmplids=nil, tmplname=nil, noticeid=nil, tmpllanguage=nil, monitortype=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TmplIDs = tmplids
          @TmplName = tmplname
          @NoticeID = noticeid
          @TmplLanguage = tmpllanguage
          @MonitorType = monitortype
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TmplIDs = params['TmplIDs']
          @TmplName = params['TmplName']
          @NoticeID = params['NoticeID']
          @TmplLanguage = params['TmplLanguage']
          @MonitorType = params['MonitorType']
        end
      end

      # DescribeNoticeContentTmpl返回参数结构体
      class DescribeNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param NoticeContentTmpls: 自定义通知内容模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoticeContentTmpls: Array
        # @param NoticeContentTmplBindPolicyCounts: 通知内容模板绑定的告警策略数量
        # @type NoticeContentTmplBindPolicyCounts: Array
        # @param PageNumber: 分页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoticeContentTmpls, :NoticeContentTmplBindPolicyCounts, :PageNumber, :PageSize, :TotalCount, :RequestId

        def initialize(noticecontenttmpls=nil, noticecontenttmplbindpolicycounts=nil, pagenumber=nil, pagesize=nil, totalcount=nil, requestid=nil)
          @NoticeContentTmpls = noticecontenttmpls
          @NoticeContentTmplBindPolicyCounts = noticecontenttmplbindpolicycounts
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NoticeContentTmpls'].nil?
            @NoticeContentTmpls = []
            params['NoticeContentTmpls'].each do |i|
              noticecontenttmpl_tmp = NoticeContentTmpl.new
              noticecontenttmpl_tmp.deserialize(i)
              @NoticeContentTmpls << noticecontenttmpl_tmp
            end
          end
          unless params['NoticeContentTmplBindPolicyCounts'].nil?
            @NoticeContentTmplBindPolicyCounts = []
            params['NoticeContentTmplBindPolicyCounts'].each do |i|
              noticecontenttmplbindpolicycount_tmp = NoticeContentTmplBindPolicyCount.new
              noticecontenttmplbindpolicycount_tmp.deserialize(i)
              @NoticeContentTmplBindPolicyCounts << noticecontenttmplbindpolicycount_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 钉钉机器人内容模板配置
      class DingDingRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 钉钉机器人通知模板的匹配器
      class DingDingRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.DingDingRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = DingDingRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 飞书机器人内容模板配置
      class FeiShuRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 飞书机器人通知模板的匹配器
      class FeiShuRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.FeiShuRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = FeiShuRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # Google Chat 机器人内容模板配置
      class GoogleChatRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # Google Chat 机器人通知模板的匹配器
      class GoogleChatRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.GoogleChatRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = GoogleChatRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # ModifyNoticeContentTmpl请求参数结构体
      class ModifyNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param TmplName: 模板名称
        # @type TmplName: String
        # @param TmplContents: 模板内容
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param TmplID: 需要修改的模板ID
        # @type TmplID: String

        attr_accessor :TmplName, :TmplContents, :TmplID

        def initialize(tmplname=nil, tmplcontents=nil, tmplid=nil)
          @TmplName = tmplname
          @TmplContents = tmplcontents
          @TmplID = tmplid
        end

        def deserialize(params)
          @TmplName = params['TmplName']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @TmplID = params['TmplID']
        end
      end

      # ModifyNoticeContentTmpl返回参数结构体
      class ModifyNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 自定义通知内容模板
      class NoticeContentTmpl < TencentCloud::Common::AbstractModel
        # @param TmplID: 自定义通知内容模板id，唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplID: String
        # @param TmplName: 自定义通知内容模板名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplName: String
        # @param TmplContents: 通知内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param CreateTime: Unix时间戳，秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: Unix时间戳，秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param LastModifier: 最后修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifier: String
        # @param Creator: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param TmplLanguage: 模板语言 en/zh
        # @type TmplLanguage: String

        attr_accessor :TmplID, :TmplName, :TmplContents, :CreateTime, :UpdateTime, :LastModifier, :Creator, :MonitorType, :TmplLanguage

        def initialize(tmplid=nil, tmplname=nil, tmplcontents=nil, createtime=nil, updatetime=nil, lastmodifier=nil, creator=nil, monitortype=nil, tmpllanguage=nil)
          @TmplID = tmplid
          @TmplName = tmplname
          @TmplContents = tmplcontents
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LastModifier = lastmodifier
          @Creator = creator
          @MonitorType = monitortype
          @TmplLanguage = tmpllanguage
        end

        def deserialize(params)
          @TmplID = params['TmplID']
          @TmplName = params['TmplName']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LastModifier = params['LastModifier']
          @Creator = params['Creator']
          @MonitorType = params['MonitorType']
          @TmplLanguage = params['TmplLanguage']
        end
      end

      # 通知内容模板绑定告警策略数量
      class NoticeContentTmplBindPolicyCount < TencentCloud::Common::AbstractModel
        # @param NoticeContentTmplID: 通知内容模板ID
        # @type NoticeContentTmplID: String
        # @param BindCount: 绑定告警策略数量
        # @type BindCount: Integer

        attr_accessor :NoticeContentTmplID, :BindCount

        def initialize(noticecontenttmplid=nil, bindcount=nil)
          @NoticeContentTmplID = noticecontenttmplid
          @BindCount = bindcount
        end

        def deserialize(params)
          @NoticeContentTmplID = params['NoticeContentTmplID']
          @BindCount = params['BindCount']
        end
      end

      # 内容通知模板元素
      class NoticeContentTmplItem < TencentCloud::Common::AbstractModel
        # @param QCloudYehe: 官网通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QCloudYehe: Array
        # @param WeWorkRobot: 企业微信机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeWorkRobot: Array
        # @param DingDingRobot: 钉钉机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DingDingRobot: Array
        # @param FeiShuRobot: 飞书机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeiShuRobot: Array
        # @param Webhook: 自定义Webhook通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Webhook: Array
        # @param TeamsRobot: Teams机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeamsRobot: Array
        # @param PagerDutyRobot: PagerDutyRobot机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PagerDutyRobot: Array
        # @param GoogleChatRobot: GoogleChat
        # @type GoogleChatRobot: Array

        attr_accessor :QCloudYehe, :WeWorkRobot, :DingDingRobot, :FeiShuRobot, :Webhook, :TeamsRobot, :PagerDutyRobot, :GoogleChatRobot

        def initialize(qcloudyehe=nil, weworkrobot=nil, dingdingrobot=nil, feishurobot=nil, webhook=nil, teamsrobot=nil, pagerdutyrobot=nil, googlechatrobot=nil)
          @QCloudYehe = qcloudyehe
          @WeWorkRobot = weworkrobot
          @DingDingRobot = dingdingrobot
          @FeiShuRobot = feishurobot
          @Webhook = webhook
          @TeamsRobot = teamsrobot
          @PagerDutyRobot = pagerdutyrobot
          @GoogleChatRobot = googlechatrobot
        end

        def deserialize(params)
          unless params['QCloudYehe'].nil?
            @QCloudYehe = []
            params['QCloudYehe'].each do |i|
              qcloudyehenoticetmplmatcher_tmp = QCloudYeheNoticeTmplMatcher.new
              qcloudyehenoticetmplmatcher_tmp.deserialize(i)
              @QCloudYehe << qcloudyehenoticetmplmatcher_tmp
            end
          end
          unless params['WeWorkRobot'].nil?
            @WeWorkRobot = []
            params['WeWorkRobot'].each do |i|
              weworkrobotnoticetmplmatcher_tmp = WeWorkRobotNoticeTmplMatcher.new
              weworkrobotnoticetmplmatcher_tmp.deserialize(i)
              @WeWorkRobot << weworkrobotnoticetmplmatcher_tmp
            end
          end
          unless params['DingDingRobot'].nil?
            @DingDingRobot = []
            params['DingDingRobot'].each do |i|
              dingdingrobotnoticetmplmatcher_tmp = DingDingRobotNoticeTmplMatcher.new
              dingdingrobotnoticetmplmatcher_tmp.deserialize(i)
              @DingDingRobot << dingdingrobotnoticetmplmatcher_tmp
            end
          end
          unless params['FeiShuRobot'].nil?
            @FeiShuRobot = []
            params['FeiShuRobot'].each do |i|
              feishurobotnoticetmplmatcher_tmp = FeiShuRobotNoticeTmplMatcher.new
              feishurobotnoticetmplmatcher_tmp.deserialize(i)
              @FeiShuRobot << feishurobotnoticetmplmatcher_tmp
            end
          end
          unless params['Webhook'].nil?
            @Webhook = []
            params['Webhook'].each do |i|
              webhooknoticetmplmatcher_tmp = WebhookNoticeTmplMatcher.new
              webhooknoticetmplmatcher_tmp.deserialize(i)
              @Webhook << webhooknoticetmplmatcher_tmp
            end
          end
          unless params['TeamsRobot'].nil?
            @TeamsRobot = []
            params['TeamsRobot'].each do |i|
              teamsrobotnoticetmplmatcher_tmp = TeamsRobotNoticeTmplMatcher.new
              teamsrobotnoticetmplmatcher_tmp.deserialize(i)
              @TeamsRobot << teamsrobotnoticetmplmatcher_tmp
            end
          end
          unless params['PagerDutyRobot'].nil?
            @PagerDutyRobot = []
            params['PagerDutyRobot'].each do |i|
              pagerdutyrobotnoticetmplmatcher_tmp = PagerDutyRobotNoticeTmplMatcher.new
              pagerdutyrobotnoticetmplmatcher_tmp.deserialize(i)
              @PagerDutyRobot << pagerdutyrobotnoticetmplmatcher_tmp
            end
          end
          unless params['GoogleChatRobot'].nil?
            @GoogleChatRobot = []
            params['GoogleChatRobot'].each do |i|
              googlechatrobotnoticetmplmatcher_tmp = GoogleChatRobotNoticeTmplMatcher.new
              googlechatrobotnoticetmplmatcher_tmp.deserialize(i)
              @GoogleChatRobot << googlechatrobotnoticetmplmatcher_tmp
            end
          end
        end
      end

      # 通知历史中关联的通知模板信息
      class NotifyRelatedNotice < TencentCloud::Common::AbstractModel
        # @param NoticeId: 通知模板ID
        # @type NoticeId: String
        # @param NoticeName: 通知模板的名称
        # @type NoticeName: String

        attr_accessor :NoticeId, :NoticeName

        def initialize(noticeid=nil, noticename=nil)
          @NoticeId = noticeid
          @NoticeName = noticename
        end

        def deserialize(params)
          @NoticeId = params['NoticeId']
          @NoticeName = params['NoticeName']
        end
      end

      # 分页请求参数
      class PageByNoParams < TencentCloud::Common::AbstractModel
        # @param PerPage: 每个分页的数量是多少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PerPage: Integer
        # @param PageNo: 第几个分页，从1开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: String

        attr_accessor :PerPage, :PageNo

        def initialize(perpage=nil, pageno=nil)
          @PerPage = perpage
          @PageNo = pageno
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
        end
      end

      # 分页结果参数
      class PageByNoResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总共有多少数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPage: 总共有多少个分页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param CurrentPageNo: 当前的分页号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentPageNo: Integer
        # @param IsEnd: 【已弃用】是否遍历到末尾
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEnd: Boolean
        # @param End: 是否遍历到末尾
        # @type End: Boolean

        attr_accessor :TotalCount, :TotalPage, :CurrentPageNo, :IsEnd, :End
        extend Gem::Deprecate
        deprecate :IsEnd, :none, 2026, 3
        deprecate :IsEnd=, :none, 2026, 3

        def initialize(totalcount=nil, totalpage=nil, currentpageno=nil, isend=nil, _end=nil)
          @TotalCount = totalcount
          @TotalPage = totalpage
          @CurrentPageNo = currentpageno
          @IsEnd = isend
          @End = _end
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalPage = params['TotalPage']
          @CurrentPageNo = params['CurrentPageNo']
          @IsEnd = params['IsEnd']
          @End = params['End']
        end
      end

      # 告警通知自定义PagerDutyRobot内容模板
      class PagerDutyRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体模板 仅支持json
        # @type Body: String
        # @param Headers: 请求头 暂时未支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :Body, :Headers, :TitleTmpl

        def initialize(body=nil, headers=nil, titletmpl=nil)
          @Body = body
          @Headers = headers
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              pagerdutyrobotnoticetmplheader_tmp = PagerDutyRobotNoticeTmplHeader.new
              pagerdutyrobotnoticetmplheader_tmp.deserialize(i)
              @Headers << pagerdutyrobotnoticetmplheader_tmp
            end
          end
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 告警通知自定义PagerDutyRobot模板中的请求体头部描述
      class PagerDutyRobotNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 告警通知自定义PagerDutyRobot的通知内容模板匹配器
      class PagerDutyRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义PagerDutyRobot内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.PagerDutyRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = PagerDutyRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 官网通知内容模板
      class QCloudYeheNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Email: 邮件通知渠道
        # @type Email: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param QYWX: 企业微信通知渠道
        # @type QYWX: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param SMS: 短信通知渠道
        # @type SMS: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Voice: 语音通知渠道
        # @type Voice: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param WeChat: 微信通知渠道
        # @type WeChat: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheWeChatNoticeTmplItem`
        # @param Site: 站内信通知渠道
        # @type Site: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Andon: 安灯通知渠道
        # @type Andon: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`

        attr_accessor :Email, :QYWX, :SMS, :Voice, :WeChat, :Site, :Andon

        def initialize(email=nil, qywx=nil, sms=nil, voice=nil, wechat=nil, site=nil, andon=nil)
          @Email = email
          @QYWX = qywx
          @SMS = sms
          @Voice = voice
          @WeChat = wechat
          @Site = site
          @Andon = andon
        end

        def deserialize(params)
          unless params['Email'].nil?
            @Email = QCloudYeheNoticeTmplItem.new
            @Email.deserialize(params['Email'])
          end
          unless params['QYWX'].nil?
            @QYWX = QCloudYeheNoticeTmplItem.new
            @QYWX.deserialize(params['QYWX'])
          end
          unless params['SMS'].nil?
            @SMS = QCloudYeheNoticeTmplItem.new
            @SMS.deserialize(params['SMS'])
          end
          unless params['Voice'].nil?
            @Voice = QCloudYeheNoticeTmplItem.new
            @Voice.deserialize(params['Voice'])
          end
          unless params['WeChat'].nil?
            @WeChat = QCloudYeheWeChatNoticeTmplItem.new
            @WeChat.deserialize(params['WeChat'])
          end
          unless params['Site'].nil?
            @Site = QCloudYeheNoticeTmplItem.new
            @Site.deserialize(params['Site'])
          end
          unless params['Andon'].nil?
            @Andon = QCloudYeheNoticeTmplItem.new
            @Andon.deserialize(params['Andon'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 官网内容通知模板的匹配器
      class QCloudYeheNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = QCloudYeheNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheWeChatNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param AlarmContentTmpl: 告警内容模板
        # @type AlarmContentTmpl: String
        # @param AlarmObjectTmpl: 告警对象模板
        # @type AlarmObjectTmpl: String
        # @param AlarmRegionTmpl: 告警地域模板
        # @type AlarmRegionTmpl: String
        # @param AlarmTimeTmpl: 告警时间模板
        # @type AlarmTimeTmpl: String

        attr_accessor :AlarmContentTmpl, :AlarmObjectTmpl, :AlarmRegionTmpl, :AlarmTimeTmpl

        def initialize(alarmcontenttmpl=nil, alarmobjecttmpl=nil, alarmregiontmpl=nil, alarmtimetmpl=nil)
          @AlarmContentTmpl = alarmcontenttmpl
          @AlarmObjectTmpl = alarmobjecttmpl
          @AlarmRegionTmpl = alarmregiontmpl
          @AlarmTimeTmpl = alarmtimetmpl
        end

        def deserialize(params)
          @AlarmContentTmpl = params['AlarmContentTmpl']
          @AlarmObjectTmpl = params['AlarmObjectTmpl']
          @AlarmRegionTmpl = params['AlarmRegionTmpl']
          @AlarmTimeTmpl = params['AlarmTimeTmpl']
        end
      end

      # 企业微信机器人内容模板配置
      class TeamsRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class TeamsRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.TeamsRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = TeamsRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # TriggerAIWorkbenchSREDigitalTwinTask请求参数结构体
      class TriggerAIWorkbenchSREDigitalTwinTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 数字分身任务ID
        # @type TaskID: Integer

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # TriggerAIWorkbenchSREDigitalTwinTask返回参数结构体
      class TriggerAIWorkbenchSREDigitalTwinTaskResponse < TencentCloud::Common::AbstractModel
        # @param JSONStrPaths: Json序列化路径
        # @type JSONStrPaths: Array
        # @param Data: 数字分身任务信息
        # @type Data: :class:`Tencentcloud::Monitor.v20230616.models.TriggerDigitalTwinTaskResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONStrPaths, :Data, :RequestId

        def initialize(jsonstrpaths=nil, data=nil, requestid=nil)
          @JSONStrPaths = jsonstrpaths
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONStrPaths = params['JSONStrPaths']
          unless params['Data'].nil?
            @Data = TriggerDigitalTwinTaskResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 触发数字分身任务响应
      class TriggerDigitalTwinTaskResp < TencentCloud::Common::AbstractModel
        # @param TaskID: 数字分身任务ID
        # @type TaskID: Integer

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # 企业微信机器人内容模板配置
      class WeWorkRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class WeWorkRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WeWorkRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WeWorkRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 告警通知自定义Webhook内容模板
      class WebhookNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体
        # @type Body: String
        # @param BodyContentType: 请求体的类型，非必填、默认为JSON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyContentType: String
        # @param Headers: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :Body, :BodyContentType, :Headers

        def initialize(body=nil, bodycontenttype=nil, headers=nil)
          @Body = body
          @BodyContentType = bodycontenttype
          @Headers = headers
        end

        def deserialize(params)
          @Body = params['Body']
          @BodyContentType = params['BodyContentType']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              webhooknoticetmplheader_tmp = WebhookNoticeTmplHeader.new
              webhooknoticetmplheader_tmp.deserialize(i)
              @Headers << webhooknoticetmplheader_tmp
            end
          end
        end
      end

      # 告警通知自定义Webhook模板中的请求体头部描述
      class WebhookNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 告警通知自定义Webhook的通知内容模板匹配器
      class WebhookNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义Webhook内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WebhookNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WebhookNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

    end
  end
end

