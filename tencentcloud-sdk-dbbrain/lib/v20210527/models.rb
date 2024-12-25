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
  module Dbbrain
    module V20210527
      # AddUserContact请求参数结构体
      class AddUserContactRequest < TencentCloud::Common::AbstractModel
        # @param Name: 联系人姓名，由中英文、数字、空格、!@#$%^&*()_+-=（）组成，不能以下划线开头，长度在20以内。
        # @type Name: String
        # @param ContactInfo: 邮箱地址，支持大小写字母、数字、下划线、连字符及@字符， 只能以数字或字母开头，邮箱地址不可重复。
        # @type ContactInfo: String
        # @param Product: 服务产品类型，固定值："mysql"。
        # @type Product: String

        attr_accessor :Name, :ContactInfo, :Product

        def initialize(name=nil, contactinfo=nil, product=nil)
          @Name = name
          @ContactInfo = contactinfo
          @Product = product
        end

        def deserialize(params)
          @Name = params['Name']
          @ContactInfo = params['ContactInfo']
          @Product = params['Product']
        end
      end

      # AddUserContact返回参数结构体
      class AddUserContactResponse < TencentCloud::Common::AbstractModel
        # @param Id: 添加成功的联系人id。
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # mongodb慢查模板概览明细
      class Aggregation < TencentCloud::Common::AbstractModel
        # @param AvgExecTime: 平均执行时间（ms）。
        # @type AvgExecTime: Integer
        # @param AvgDocsExamined: 平均扫描行数。
        # @type AvgDocsExamined: Integer
        # @param SlowLogCount: 产生慢查次数（/天）。
        # @type SlowLogCount: Integer
        # @param SortCount: 内存排序次数。
        # @type SortCount: Integer
        # @param SlowLogs: 慢查模板概览。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowLogs: Array

        attr_accessor :AvgExecTime, :AvgDocsExamined, :SlowLogCount, :SortCount, :SlowLogs

        def initialize(avgexectime=nil, avgdocsexamined=nil, slowlogcount=nil, sortcount=nil, slowlogs=nil)
          @AvgExecTime = avgexectime
          @AvgDocsExamined = avgdocsexamined
          @SlowLogCount = slowlogcount
          @SortCount = sortcount
          @SlowLogs = slowlogs
        end

        def deserialize(params)
          @AvgExecTime = params['AvgExecTime']
          @AvgDocsExamined = params['AvgDocsExamined']
          @SlowLogCount = params['SlowLogCount']
          @SortCount = params['SortCount']
          @SlowLogs = params['SlowLogs']
        end
      end

      # 通知模板
      class AlarmProfileList < TencentCloud::Common::AbstractModel
        # @param IsWebHook: 0-不是 1-是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWebHook: Integer
        # @param ReceiveUinCount: 接收告警用户数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveUinCount: Integer
        # @param Lang: 语言
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lang: String
        # @param TemplateType: 模板类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateType: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param ReceiveGroupCount: 接收组数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveGroupCount: Integer
        # @param UpdateUin: 更新用户的uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUin: Integer
        # @param ReceiveType: 接收类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveType: Array
        # @param ReceiveInfo: 接收用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveInfo: Array
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TemplateName: 模板名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateName: String
        # @param SendChannel: 发送渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendChannel: Array
        # @param TemplateId: 模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer
        # @param WebHookCount: webhook数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebHookCount: Integer

        attr_accessor :IsWebHook, :ReceiveUinCount, :Lang, :TemplateType, :Remark, :ReceiveGroupCount, :UpdateUin, :ReceiveType, :ReceiveInfo, :UpdateTime, :TemplateName, :SendChannel, :TemplateId, :WebHookCount

        def initialize(iswebhook=nil, receiveuincount=nil, lang=nil, templatetype=nil, remark=nil, receivegroupcount=nil, updateuin=nil, receivetype=nil, receiveinfo=nil, updatetime=nil, templatename=nil, sendchannel=nil, templateid=nil, webhookcount=nil)
          @IsWebHook = iswebhook
          @ReceiveUinCount = receiveuincount
          @Lang = lang
          @TemplateType = templatetype
          @Remark = remark
          @ReceiveGroupCount = receivegroupcount
          @UpdateUin = updateuin
          @ReceiveType = receivetype
          @ReceiveInfo = receiveinfo
          @UpdateTime = updatetime
          @TemplateName = templatename
          @SendChannel = sendchannel
          @TemplateId = templateid
          @WebHookCount = webhookcount
        end

        def deserialize(params)
          @IsWebHook = params['IsWebHook']
          @ReceiveUinCount = params['ReceiveUinCount']
          @Lang = params['Lang']
          @TemplateType = params['TemplateType']
          @Remark = params['Remark']
          @ReceiveGroupCount = params['ReceiveGroupCount']
          @UpdateUin = params['UpdateUin']
          @ReceiveType = params['ReceiveType']
          unless params['ReceiveInfo'].nil?
            @ReceiveInfo = []
            params['ReceiveInfo'].each do |i|
              receiveinfo_tmp = ReceiveInfo.new
              receiveinfo_tmp.deserialize(i)
              @ReceiveInfo << receiveinfo_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @TemplateName = params['TemplateName']
          @SendChannel = params['SendChannel']
          @TemplateId = params['TemplateId']
          @WebHookCount = params['WebHookCount']
        end
      end

      # 告警规则
      class AlarmsRules < TencentCloud::Common::AbstractModel
        # @param Interval: 间隔
        # @type Interval: Integer
        # @param Name: 告警名
        # @type Name: String
        # @param Metric: 指标
        # @type Metric: String
        # @param Operator: 操作符
        # @type Operator: String
        # @param Severity: 等级
        # fatal-致命
        # critical-严重
        # warning-告警
        # information-通知
        # @type Severity: String
        # @param Value: 指标值
        # @type Value: Float

        attr_accessor :Interval, :Name, :Metric, :Operator, :Severity, :Value

        def initialize(interval=nil, name=nil, metric=nil, operator=nil, severity=nil, value=nil)
          @Interval = interval
          @Name = name
          @Metric = metric
          @Operator = operator
          @Severity = severity
          @Value = value
        end

        def deserialize(params)
          @Interval = params['Interval']
          @Name = params['Name']
          @Metric = params['Metric']
          @Operator = params['Operator']
          @Severity = params['Severity']
          @Value = params['Value']
        end
      end

      # 实例详细信息
      class AuditInstance < TencentCloud::Common::AbstractModel
        # @param AuditStatus: 审计状态，已开通审计为：YES，未开通审计为：ON。
        # @type AuditStatus: String
        # @param BillingAmount: 审计日志大小，为兼容老版本用。
        # @type BillingAmount: Integer
        # @param BillingConfirmed: 计费确认状态，0-未确认；1-已确认。
        # @type BillingConfirmed: Integer
        # @param ColdLogExpireDay: 低频存储时长。
        # @type ColdLogExpireDay: Integer
        # @param ColdLogSize: 低频日志存储量单位MB。
        # @type ColdLogSize: Integer
        # @param HotLogExpireDay: 高频日志存储天数。
        # @type HotLogExpireDay: Integer
        # @param HotLogSize: 高频日志存储量，单位MB。
        # @type HotLogSize: Integer
        # @param InstanceId: 实例Id。
        # @type InstanceId: String
        # @param LogExpireDay: 日志保存总天数，为高频存储时长+低频存储时长。
        # @type LogExpireDay: Integer
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param InstanceInfo: 实例详细信息。
        # @type InstanceInfo: :class:`Tencentcloud::Dbbrain.v20210527.models.AuditInstanceInfo`

        attr_accessor :AuditStatus, :BillingAmount, :BillingConfirmed, :ColdLogExpireDay, :ColdLogSize, :HotLogExpireDay, :HotLogSize, :InstanceId, :LogExpireDay, :CreateTime, :InstanceInfo

        def initialize(auditstatus=nil, billingamount=nil, billingconfirmed=nil, coldlogexpireday=nil, coldlogsize=nil, hotlogexpireday=nil, hotlogsize=nil, instanceid=nil, logexpireday=nil, createtime=nil, instanceinfo=nil)
          @AuditStatus = auditstatus
          @BillingAmount = billingamount
          @BillingConfirmed = billingconfirmed
          @ColdLogExpireDay = coldlogexpireday
          @ColdLogSize = coldlogsize
          @HotLogExpireDay = hotlogexpireday
          @HotLogSize = hotlogsize
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @CreateTime = createtime
          @InstanceInfo = instanceinfo
        end

        def deserialize(params)
          @AuditStatus = params['AuditStatus']
          @BillingAmount = params['BillingAmount']
          @BillingConfirmed = params['BillingConfirmed']
          @ColdLogExpireDay = params['ColdLogExpireDay']
          @ColdLogSize = params['ColdLogSize']
          @HotLogExpireDay = params['HotLogExpireDay']
          @HotLogSize = params['HotLogSize']
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @CreateTime = params['CreateTime']
          unless params['InstanceInfo'].nil?
            @InstanceInfo = AuditInstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
        end
      end

      # 实例列表查询条件
      class AuditInstanceFilter < TencentCloud::Common::AbstractModel
        # @param Name: 搜索条件名称
        # @type Name: String
        # @param Values: 要搜索的条件的值
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

      # 实例详情
      class AuditInstanceInfo < TencentCloud::Common::AbstractModel
        # @param AppId: appId。
        # @type AppId: Integer
        # @param AuditStatus: 审计状态，0-未开通审计；1-已开通审计。
        # @type AuditStatus: Integer
        # @param InstanceId: 实例Id。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param ProjectId: 项目Id。
        # @type ProjectId: Integer
        # @param Region: 实例所在地域。
        # @type Region: String
        # @param ResourceTags: 资源Tags。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array

        attr_accessor :AppId, :AuditStatus, :InstanceId, :InstanceName, :ProjectId, :Region, :ResourceTags

        def initialize(appid=nil, auditstatus=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, resourcetags=nil)
          @AppId = appid
          @AuditStatus = auditstatus
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AuditStatus = params['AuditStatus']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @ResourceTags = params['ResourceTags']
        end
      end

      # 审计日志文件
      class AuditLogFile < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 审计日志文件生成异步任务ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: Integer
        # @param FileName: 审计日志文件名称。
        # @type FileName: String
        # @param CreateTime: 审计日志文件创建时间。格式为 : "2019-03-20 17:09:13"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Status: 文件状态值。可能返回的值为：
        # "creating" - 生成中;
        # "failed" - 创建失败;
        # "success" - 已生成;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param FileSize: 文件大小，单位为 KB。
        # @type FileSize: Float
        # @param DownloadUrl: 审计日志下载地址。
        # @type DownloadUrl: String
        # @param ErrMsg: 错误信息。
        # @type ErrMsg: String
        # @param Progress: 文件生成进度。
        # @type Progress: Float
        # @param FinishTime: 文件生成成功时间。
        # @type FinishTime: String

        attr_accessor :AsyncRequestId, :FileName, :CreateTime, :Status, :FileSize, :DownloadUrl, :ErrMsg, :Progress, :FinishTime

        def initialize(asyncrequestid=nil, filename=nil, createtime=nil, status=nil, filesize=nil, downloadurl=nil, errmsg=nil, progress=nil, finishtime=nil)
          @AsyncRequestId = asyncrequestid
          @FileName = filename
          @CreateTime = createtime
          @Status = status
          @FileSize = filesize
          @DownloadUrl = downloadurl
          @ErrMsg = errmsg
          @Progress = progress
          @FinishTime = finishtime
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @FileName = params['FileName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @FileSize = params['FileSize']
          @DownloadUrl = params['DownloadUrl']
          @ErrMsg = params['ErrMsg']
          @Progress = params['Progress']
          @FinishTime = params['FinishTime']
        end
      end

      # 过滤条件。可按设置的过滤条件过滤日志。
      class AuditLogFilter < TencentCloud::Common::AbstractModel
        # @param Host: 客户端地址。
        # @type Host: Array
        # @param DBName: 数据库名称。
        # @type DBName: Array
        # @param User: 用户名。
        # @type User: Array
        # @param SentRows: 返回行数。表示筛选返回行数大于该值的审计日志。
        # @type SentRows: Integer
        # @param AffectRows: 影响行数。表示筛选影响行数大于该值的审计日志。
        # @type AffectRows: Integer
        # @param ExecTime: 执行时间。单位为：µs。表示筛选执行时间大于该值的审计日志。
        # @type ExecTime: Integer

        attr_accessor :Host, :DBName, :User, :SentRows, :AffectRows, :ExecTime

        def initialize(host=nil, dbname=nil, user=nil, sentrows=nil, affectrows=nil, exectime=nil)
          @Host = host
          @DBName = dbname
          @User = user
          @SentRows = sentrows
          @AffectRows = affectrows
          @ExecTime = exectime
        end

        def deserialize(params)
          @Host = params['Host']
          @DBName = params['DBName']
          @User = params['User']
          @SentRows = params['SentRows']
          @AffectRows = params['AffectRows']
          @ExecTime = params['ExecTime']
        end
      end

      # CancelKillTask请求参数结构体
      class CancelKillTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Product

        def initialize(instanceid=nil, product=nil)
          @InstanceId = instanceid
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Product = params['Product']
        end
      end

      # CancelKillTask返回参数结构体
      class CancelKillTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: kill会话任务终止成功返回1。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CloseAuditService请求参数结构体
      class CloseAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"。
        # @type NodeRequestType: String
        # @param InstanceId: 实例Id。
        # @type InstanceId: String

        attr_accessor :Product, :NodeRequestType, :InstanceId

        def initialize(product=nil, noderequesttype=nil, instanceid=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
        end
      end

      # CloseAuditService返回参数结构体
      class CloseAuditServiceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 0-关闭审计成功，非0关闭审计失败。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 联系人contact描述。
      class ContactItem < TencentCloud::Common::AbstractModel
        # @param Id: 联系人id。
        # @type Id: Integer
        # @param Name: 联系人姓名。
        # @type Name: String
        # @param Mail: 联系人绑定的邮箱。
        # @type Mail: String

        attr_accessor :Id, :Name, :Mail

        def initialize(id=nil, name=nil, mail=nil)
          @Id = id
          @Name = name
          @Mail = mail
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Mail = params['Mail']
        end
      end

      # CreateAuditLogFile请求参数结构体
      class CreateAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"
        # @type NodeRequestType: String
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param StartTime: 开始时间，如“2019-09-10 12:13:14”。
        # @type StartTime: String
        # @param EndTime: 截止时间，如“2019-09-11 10:13:14”。
        # @type EndTime: String
        # @param Filter: 过滤条件。可按设置的过滤条件过滤日志。
        # @type Filter: :class:`Tencentcloud::Dbbrain.v20210527.models.AuditLogFilter`

        attr_accessor :Product, :NodeRequestType, :InstanceId, :StartTime, :EndTime, :Filter

        def initialize(product=nil, noderequesttype=nil, instanceid=nil, starttime=nil, endtime=nil, filter=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Filter = filter
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Filter'].nil?
            @Filter = AuditLogFilter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # CreateAuditLogFile返回参数结构体
      class CreateAuditLogFileResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 审计日志文件下载的任务ID
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBDiagReportTask请求参数结构体
      class CreateDBDiagReportTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StartTime: 开始时间，如“2020-11-08T14:00:00+08:00”。
        # @type StartTime: String
        # @param EndTime: 结束时间，如“2020-11-09T14:00:00+08:00”。
        # @type EndTime: String
        # @param SendMailFlag: 是否发送邮件: 0 - 否，1 - 是。
        # @type SendMailFlag: Integer
        # @param ContactPerson: 接收邮件的联系人ID数组。
        # @type ContactPerson: Array
        # @param ContactGroup: 接收邮件的联系组ID数组。
        # @type ContactGroup: Array
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认值为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SendMailFlag, :ContactPerson, :ContactGroup, :Product

        def initialize(instanceid=nil, starttime=nil, endtime=nil, sendmailflag=nil, contactperson=nil, contactgroup=nil, product=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SendMailFlag = sendmailflag
          @ContactPerson = contactperson
          @ContactGroup = contactgroup
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SendMailFlag = params['SendMailFlag']
          @ContactPerson = params['ContactPerson']
          @ContactGroup = params['ContactGroup']
          @Product = params['Product']
        end
      end

      # CreateDBDiagReportTask返回参数结构体
      class CreateDBDiagReportTaskResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBDiagReportUrl请求参数结构体
      class CreateDBDiagReportUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AsyncRequestId: 健康报告相应的任务ID，可通过DescribeDBDiagReportTasks查询。
        # @type AsyncRequestId: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :AsyncRequestId, :Product

        def initialize(instanceid=nil, asyncrequestid=nil, product=nil)
          @InstanceId = instanceid
          @AsyncRequestId = asyncrequestid
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AsyncRequestId = params['AsyncRequestId']
          @Product = params['Product']
        end
      end

      # CreateDBDiagReportUrl返回参数结构体
      class CreateDBDiagReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 健康报告浏览地址。
        # @type ReportUrl: String
        # @param ExpireTime: 健康报告浏览地址到期时间戳（秒）。
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportUrl, :ExpireTime, :RequestId

        def initialize(reporturl=nil, expiretime=nil, requestid=nil)
          @ReportUrl = reporturl
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportUrl = params['ReportUrl']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateKillTask请求参数结构体
      class CreateKillTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: kill会话任务的关联实例ID。
        # @type InstanceId: String
        # @param Duration: 任务持续时间，单位秒，手动关闭任务传-1。
        # @type Duration: Integer
        # @param Host: 任务过滤条件，客户端IP。
        # @type Host: String
        # @param DB: 任务过滤条件，数据库库名,多个","隔开。
        # @type DB: String
        # @param Command: 任务过滤条件，相关命令，多个","隔开。
        # @type Command: String
        # @param Info: 任务过滤条件，支持单条件前缀匹配。
        # @type Info: String
        # @param Infos: 任务过滤条件，支持多个关键字匹配，与Info参数互斥。
        # @type Infos: Array
        # @param User: 任务过滤条件，用户类型。
        # @type User: String
        # @param Time: 任务过滤条件，会话持续时长，单位秒。
        # @type Time: Integer
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Duration, :Host, :DB, :Command, :Info, :Infos, :User, :Time, :Product

        def initialize(instanceid=nil, duration=nil, host=nil, db=nil, command=nil, info=nil, infos=nil, user=nil, time=nil, product=nil)
          @InstanceId = instanceid
          @Duration = duration
          @Host = host
          @DB = db
          @Command = command
          @Info = info
          @Infos = infos
          @User = user
          @Time = time
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Duration = params['Duration']
          @Host = params['Host']
          @DB = params['DB']
          @Command = params['Command']
          @Info = params['Info']
          @Infos = params['Infos']
          @User = params['User']
          @Time = params['Time']
          @Product = params['Product']
        end
      end

      # CreateKillTask返回参数结构体
      class CreateKillTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: kill会话任务创建成功返回1
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateMailProfile请求参数结构体
      class CreateMailProfileRequest < TencentCloud::Common::AbstractModel
        # @param ProfileInfo: 邮件配置内容。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20210527.models.ProfileInfo`
        # @param ProfileLevel: 配置级别，支持值包括："User" - 用户级别，"Instance" - 实例级别，其中数据库巡检邮件配置为用户级别，定期生成邮件配置为实例级别。
        # @type ProfileLevel: String
        # @param ProfileName: 配置名称，需要保持唯一性，数据库巡检邮件配置名称自拟；定期生成邮件配置命名格式："scheduler_" + {instanceId}，如"schduler_cdb-test"。
        # @type ProfileName: String
        # @param ProfileType: 配置类型，支持值包括："dbScan_mail_configuration" - 数据库巡检邮件配置，"scheduler_mail_configuration" - 定期生成邮件配置。
        # @type ProfileType: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL。
        # @type Product: String
        # @param BindInstanceIds: 配置绑定的实例ID，当配置级别为"Instance"时需要传入且只能为一个实例；当配置级别为“User”时，此参数不填。
        # @type BindInstanceIds: Array

        attr_accessor :ProfileInfo, :ProfileLevel, :ProfileName, :ProfileType, :Product, :BindInstanceIds

        def initialize(profileinfo=nil, profilelevel=nil, profilename=nil, profiletype=nil, product=nil, bindinstanceids=nil)
          @ProfileInfo = profileinfo
          @ProfileLevel = profilelevel
          @ProfileName = profilename
          @ProfileType = profiletype
          @Product = product
          @BindInstanceIds = bindinstanceids
        end

        def deserialize(params)
          unless params['ProfileInfo'].nil?
            @ProfileInfo = ProfileInfo.new
            @ProfileInfo.deserialize(params['ProfileInfo'])
          end
          @ProfileLevel = params['ProfileLevel']
          @ProfileName = params['ProfileName']
          @ProfileType = params['ProfileType']
          @Product = params['Product']
          @BindInstanceIds = params['BindInstanceIds']
        end
      end

      # CreateMailProfile返回参数结构体
      class CreateMailProfileResponse < TencentCloud::Common::AbstractModel
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

      # CreateProxySessionKillTask请求参数结构体
      class CreateProxySessionKillTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Product: 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        # @type Product: String

        attr_accessor :InstanceId, :Product

        def initialize(instanceid=nil, product=nil)
          @InstanceId = instanceid
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Product = params['Product']
        end
      end

      # CreateProxySessionKillTask返回参数结构体
      class CreateProxySessionKillTaskResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 创建 kill 会话任务返回的异步任务 id
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRedisBigKeyAnalysisTask请求参数结构体
      class CreateRedisBigKeyAnalysisTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String
        # @param ShardIds: 分片节点序号列表。当列表为空时，选择所有分片节点。
        # @type ShardIds: Array
        # @param KeyDelimiterList: Top Key前缀的分隔符列表。
        # 目前仅支持以下分割符：[",", ";", ":", "_", "-", "+", "@", "=", "|", "#", "."]，当列表为空时，默认选择所有分隔符。
        # @type KeyDelimiterList: Array

        attr_accessor :InstanceId, :Product, :ShardIds, :KeyDelimiterList

        def initialize(instanceid=nil, product=nil, shardids=nil, keydelimiterlist=nil)
          @InstanceId = instanceid
          @Product = product
          @ShardIds = shardids
          @KeyDelimiterList = keydelimiterlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Product = params['Product']
          @ShardIds = params['ShardIds']
          @KeyDelimiterList = params['KeyDelimiterList']
        end
      end

      # CreateRedisBigKeyAnalysisTask返回参数结构体
      class CreateRedisBigKeyAnalysisTaskResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID。
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSchedulerMailProfile请求参数结构体
      class CreateSchedulerMailProfileRequest < TencentCloud::Common::AbstractModel
        # @param WeekConfiguration: 取值范围1-7，分别代表周一至周日。
        # @type WeekConfiguration: Array
        # @param ProfileInfo: 邮件配置内容。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20210527.models.ProfileInfo`
        # @param ProfileName: 配置名称，需要保持唯一性，定期生成邮件配置命名格式："scheduler_" + {instanceId}，如"schduler_cdb-test"。
        # @type ProfileName: String
        # @param BindInstanceId: 配置订阅的实例ID。
        # @type BindInstanceId: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :WeekConfiguration, :ProfileInfo, :ProfileName, :BindInstanceId, :Product

        def initialize(weekconfiguration=nil, profileinfo=nil, profilename=nil, bindinstanceid=nil, product=nil)
          @WeekConfiguration = weekconfiguration
          @ProfileInfo = profileinfo
          @ProfileName = profilename
          @BindInstanceId = bindinstanceid
          @Product = product
        end

        def deserialize(params)
          @WeekConfiguration = params['WeekConfiguration']
          unless params['ProfileInfo'].nil?
            @ProfileInfo = ProfileInfo.new
            @ProfileInfo.deserialize(params['ProfileInfo'])
          end
          @ProfileName = params['ProfileName']
          @BindInstanceId = params['BindInstanceId']
          @Product = params['Product']
        end
      end

      # CreateSchedulerMailProfile返回参数结构体
      class CreateSchedulerMailProfileResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecurityAuditLogExportTask请求参数结构体
      class CreateSecurityAuditLogExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param SecAuditGroupId: 安全审计组Id。
        # @type SecAuditGroupId: String
        # @param StartTime: 导出日志开始时间，例如2020-12-28 00:00:00。
        # @type StartTime: String
        # @param EndTime: 导出日志结束时间，例如2020-12-28 01:00:00。
        # @type EndTime: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        # @type Product: String
        # @param DangerLevels: 日志风险等级列表，支持值包括：0 无风险；1 低风险；2 中风险；3 高风险。
        # @type DangerLevels: Array

        attr_accessor :SecAuditGroupId, :StartTime, :EndTime, :Product, :DangerLevels

        def initialize(secauditgroupid=nil, starttime=nil, endtime=nil, product=nil, dangerlevels=nil)
          @SecAuditGroupId = secauditgroupid
          @StartTime = starttime
          @EndTime = endtime
          @Product = product
          @DangerLevels = dangerlevels
        end

        def deserialize(params)
          @SecAuditGroupId = params['SecAuditGroupId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Product = params['Product']
          @DangerLevels = params['DangerLevels']
        end
      end

      # CreateSecurityAuditLogExportTask返回参数结构体
      class CreateSecurityAuditLogExportTaskResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 日志导出任务Id。
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSqlFilter请求参数结构体
      class CreateSqlFilterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param SqlType: SQL类型，取值包括SELECT, UPDATE, DELETE, INSERT, REPLACE。
        # @type SqlType: String
        # @param FilterKey: 关键字，用于筛选SQL语句，多个关键字用英文逗号分隔，逗号不能作为关键词，多个关键词之间的关系为“逻辑与”。
        # @type FilterKey: String
        # @param MaxConcurrency: 最大并发度，取值不能小于0，如果该值设为 0，则表示限制所有匹配的SQL执行。
        # @type MaxConcurrency: Integer
        # @param Duration: 限流时长，单位秒，支持-1和小于2147483647的正整数，-1表示永不过期。
        # @type Duration: Integer
        # @param SessionToken: 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        # @type SessionToken: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :SqlType, :FilterKey, :MaxConcurrency, :Duration, :SessionToken, :Product

        def initialize(instanceid=nil, sqltype=nil, filterkey=nil, maxconcurrency=nil, duration=nil, sessiontoken=nil, product=nil)
          @InstanceId = instanceid
          @SqlType = sqltype
          @FilterKey = filterkey
          @MaxConcurrency = maxconcurrency
          @Duration = duration
          @SessionToken = sessiontoken
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SqlType = params['SqlType']
          @FilterKey = params['FilterKey']
          @MaxConcurrency = params['MaxConcurrency']
          @Duration = params['Duration']
          @SessionToken = params['SessionToken']
          @Product = params['Product']
        end
      end

      # CreateSqlFilter返回参数结构体
      class CreateSqlFilterResponse < TencentCloud::Common::AbstractModel
        # @param FilterId: 限流任务ID。
        # @type FilterId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilterId, :RequestId

        def initialize(filterid=nil, requestid=nil)
          @FilterId = filterid
          @RequestId = requestid
        end

        def deserialize(params)
          @FilterId = params['FilterId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAuditLogFile请求参数结构体
      class DeleteAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"
        # @type NodeRequestType: String
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param AsyncRequestId: 审计日志文件生成异步任务ID。
        # @type AsyncRequestId: Integer

        attr_accessor :Product, :NodeRequestType, :InstanceId, :AsyncRequestId

        def initialize(product=nil, noderequesttype=nil, instanceid=nil, asyncrequestid=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # DeleteAuditLogFile返回参数结构体
      class DeleteAuditLogFileResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDBDiagReportTasks请求参数结构体
      class DeleteDBDiagReportTasksRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestIds: 需要删除的任务id列表
        # @type AsyncRequestIds: Array
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :AsyncRequestIds, :InstanceId, :Product

        def initialize(asyncrequestids=nil, instanceid=nil, product=nil)
          @AsyncRequestIds = asyncrequestids
          @InstanceId = instanceid
          @Product = product
        end

        def deserialize(params)
          @AsyncRequestIds = params['AsyncRequestIds']
          @InstanceId = params['InstanceId']
          @Product = params['Product']
        end
      end

      # DeleteDBDiagReportTasks返回参数结构体
      class DeleteDBDiagReportTasksResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务删除状态, 0-删除成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRedisBigKeyAnalysisTasks请求参数结构体
      class DeleteRedisBigKeyAnalysisTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AsyncRequestIds: 待删除的异步任务ID列表。
        # @type AsyncRequestIds: Array
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String

        attr_accessor :InstanceId, :AsyncRequestIds, :Product

        def initialize(instanceid=nil, asyncrequestids=nil, product=nil)
          @InstanceId = instanceid
          @AsyncRequestIds = asyncrequestids
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AsyncRequestIds = params['AsyncRequestIds']
          @Product = params['Product']
        end
      end

      # DeleteRedisBigKeyAnalysisTasks返回参数结构体
      class DeleteRedisBigKeyAnalysisTasksResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，为0时代表正常处理。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityAuditLogExportTasks请求参数结构体
      class DeleteSecurityAuditLogExportTasksRequest < TencentCloud::Common::AbstractModel
        # @param SecAuditGroupId: 安全审计组Id。
        # @type SecAuditGroupId: String
        # @param AsyncRequestIds: 日志导出任务Id列表，接口会忽略不存在或已删除的任务Id。
        # @type AsyncRequestIds: Array
        # @param Product: 服务产品类型，支持值： "mysql" - 云数据库 MySQL。
        # @type Product: String

        attr_accessor :SecAuditGroupId, :AsyncRequestIds, :Product

        def initialize(secauditgroupid=nil, asyncrequestids=nil, product=nil)
          @SecAuditGroupId = secauditgroupid
          @AsyncRequestIds = asyncrequestids
          @Product = product
        end

        def deserialize(params)
          @SecAuditGroupId = params['SecAuditGroupId']
          @AsyncRequestIds = params['AsyncRequestIds']
          @Product = params['Product']
        end
      end

      # DeleteSecurityAuditLogExportTasks返回参数结构体
      class DeleteSecurityAuditLogExportTasksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSqlFilters请求参数结构体
      class DeleteSqlFiltersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param FilterIds: 限流任务ID列表。
        # @type FilterIds: Array
        # @param SessionToken: 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        # @type SessionToken: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :FilterIds, :SessionToken, :Product

        def initialize(instanceid=nil, filterids=nil, sessiontoken=nil, product=nil)
          @InstanceId = instanceid
          @FilterIds = filterids
          @SessionToken = sessiontoken
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FilterIds = params['FilterIds']
          @SessionToken = params['SessionToken']
          @Product = params['Product']
        end
      end

      # DeleteSqlFilters返回参数结构体
      class DeleteSqlFiltersResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmTemplate请求参数结构体
      class DescribeAlarmTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateNameRegexp: 搜索字段
        # @type TemplateNameRegexp: String
        # @param Limit: 返回限制长度
        # @type Limit: Integer
        # @param Offset: 偏置
        # @type Offset: Integer
        # @param Product: mysql -  mysql
        # cynosdb -  tdsql-c
        # @type Product: String

        attr_accessor :TemplateNameRegexp, :Limit, :Offset, :Product

        def initialize(templatenameregexp=nil, limit=nil, offset=nil, product=nil)
          @TemplateNameRegexp = templatenameregexp
          @Limit = limit
          @Offset = offset
          @Product = product
        end

        def deserialize(params)
          @TemplateNameRegexp = params['TemplateNameRegexp']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Product = params['Product']
        end
      end

      # DescribeAlarmTemplate返回参数结构体
      class DescribeAlarmTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ProfileList: 模板列表
        # @type ProfileList: Array
        # @param TotalCount: 模板总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProfileList, :TotalCount, :RequestId

        def initialize(profilelist=nil, totalcount=nil, requestid=nil)
          @ProfileList = profilelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProfileList'].nil?
            @ProfileList = []
            params['ProfileList'].each do |i|
              alarmprofilelist_tmp = AlarmProfileList.new
              alarmprofilelist_tmp.deserialize(i)
              @ProfileList << alarmprofilelist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllUserContact请求参数结构体
      class DescribeAllUserContactRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，固定值：mysql。
        # @type Product: String
        # @param Names: 联系人名数组，支持模糊搜索。
        # @type Names: Array

        attr_accessor :Product, :Names

        def initialize(product=nil, names=nil)
          @Product = product
          @Names = names
        end

        def deserialize(params)
          @Product = params['Product']
          @Names = params['Names']
        end
      end

      # DescribeAllUserContact返回参数结构体
      class DescribeAllUserContactResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 联系人的总数量。
        # @type TotalCount: Integer
        # @param Contacts: 联系人的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contacts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Contacts, :RequestId

        def initialize(totalcount=nil, contacts=nil, requestid=nil)
          @TotalCount = totalcount
          @Contacts = contacts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Contacts'].nil?
            @Contacts = []
            params['Contacts'].each do |i|
              contactitem_tmp = ContactItem.new
              contactitem_tmp.deserialize(i)
              @Contacts << contactitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllUserGroup请求参数结构体
      class DescribeAllUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，固定值：mysql。
        # @type Product: String
        # @param Names: 联系组名称数组，支持模糊搜索。
        # @type Names: Array

        attr_accessor :Product, :Names

        def initialize(product=nil, names=nil)
          @Product = product
          @Names = names
        end

        def deserialize(params)
          @Product = params['Product']
          @Names = params['Names']
        end
      end

      # DescribeAllUserGroup返回参数结构体
      class DescribeAllUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 组总数。
        # @type TotalCount: Integer
        # @param Groups: 组信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Groups, :RequestId

        def initialize(totalcount=nil, groups=nil, requestid=nil)
          @TotalCount = totalcount
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupitem_tmp = GroupItem.new
              groupitem_tmp.deserialize(i)
              @Groups << groupitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditInstanceList请求参数结构体
      class DescribeAuditInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"。
        # @type NodeRequestType: String
        # @param AuditSwitch: 审计状态标识，0-未开通审计；1-已开通审计，默认为0。
        # @type AuditSwitch: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 查询数目，默认为20，最大为100。
        # @type Limit: Integer
        # @param Filters: 查询实例的搜索条件。
        # @type Filters: Array

        attr_accessor :Product, :NodeRequestType, :AuditSwitch, :Offset, :Limit, :Filters

        def initialize(product=nil, noderequesttype=nil, auditswitch=nil, offset=nil, limit=nil, filters=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @AuditSwitch = auditswitch
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @AuditSwitch = params['AuditSwitch']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              auditinstancefilter_tmp = AuditInstanceFilter.new
              auditinstancefilter_tmp.deserialize(i)
              @Filters << auditinstancefilter_tmp
            end
          end
        end
      end

      # DescribeAuditInstanceList返回参数结构体
      class DescribeAuditInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 实例详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              auditinstance_tmp = AuditInstance.new
              auditinstance_tmp.deserialize(i)
              @Items << auditinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditLogFiles请求参数结构体
      class DescribeAuditLogFilesRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB， "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB for MySQL， "postgres" - 云数据库 PostgreSQL
        # @type Product: String
        # @param NodeRequestType: 该字段规则如下： 当product为"dcdb"则输入"dcdb"， 当product为"mariadb"则输入"mariadb"， 当product为"mysql"则输入"mysql"， 当product为"cynosdb"则输入"mysql"， 当product为"postgres"则输入"postgres"。
        # @type NodeRequestType: String
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 查询数目，默认为20，最大为100。
        # @type Limit: Integer

        attr_accessor :Product, :NodeRequestType, :InstanceId, :Offset, :Limit

        def initialize(product=nil, noderequesttype=nil, instanceid=nil, offset=nil, limit=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAuditLogFiles返回参数结构体
      class DescribeAuditLogFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的审计日志文件个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 审计日志文件详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              auditlogfile_tmp = AuditLogFile.new
              auditlogfile_tmp.deserialize(i)
              @Items << auditlogfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBDiagEvent请求参数结构体
      class DescribeDBDiagEventRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param EventId: 事件 ID 。通过“获取实例诊断历史DescribeDBDiagHistory”获取。
        # @type EventId: Integer
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :EventId, :Product

        def initialize(instanceid=nil, eventid=nil, product=nil)
          @InstanceId = instanceid
          @EventId = eventid
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EventId = params['EventId']
          @Product = params['Product']
        end
      end

      # DescribeDBDiagEvent返回参数结构体
      class DescribeDBDiagEventResponse < TencentCloud::Common::AbstractModel
        # @param DiagItem: 诊断项。
        # @type DiagItem: String
        # @param DiagType: 诊断类型。
        # @type DiagType: String
        # @param EventId: 事件 ID 。
        # @type EventId: Integer
        # @param Explanation: 诊断事件详情，若无附加解释信息则输出为空。
        # @type Explanation: String
        # @param Outline: 诊断概要。
        # @type Outline: String
        # @param Problem: 诊断出的问题。
        # @type Problem: String
        # @param Severity: 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        # @type Severity: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Suggestions: 诊断建议，若无建议则输出为空。
        # @type Suggestions: String
        # @param Metric: 保留字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiagItem, :DiagType, :EventId, :Explanation, :Outline, :Problem, :Severity, :StartTime, :Suggestions, :Metric, :EndTime, :RequestId

        def initialize(diagitem=nil, diagtype=nil, eventid=nil, explanation=nil, outline=nil, problem=nil, severity=nil, starttime=nil, suggestions=nil, metric=nil, endtime=nil, requestid=nil)
          @DiagItem = diagitem
          @DiagType = diagtype
          @EventId = eventid
          @Explanation = explanation
          @Outline = outline
          @Problem = problem
          @Severity = severity
          @StartTime = starttime
          @Suggestions = suggestions
          @Metric = metric
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @DiagItem = params['DiagItem']
          @DiagType = params['DiagType']
          @EventId = params['EventId']
          @Explanation = params['Explanation']
          @Outline = params['Outline']
          @Problem = params['Problem']
          @Severity = params['Severity']
          @StartTime = params['StartTime']
          @Suggestions = params['Suggestions']
          @Metric = params['Metric']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBDiagEvents请求参数结构体
      class DescribeDBDiagEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，如“2021-05-27 00:00:00”，支持的最早查询时间为当前时间的前30天。
        # @type StartTime: String
        # @param EndTime: 结束时间，如“2021-05-27 01:00:00”，结束时间与开始时间的间隔最大可为7天。
        # @type EndTime: String
        # @param Severities: 风险等级列表，取值按影响程度从高至低分别为：1 - 致命、2 -严重、3 - 告警、4 - 提示、5 -健康。
        # @type Severities: Array
        # @param InstanceIds: 实例ID列表。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值为50。
        # @type Limit: Integer

        attr_accessor :StartTime, :EndTime, :Severities, :InstanceIds, :Offset, :Limit

        def initialize(starttime=nil, endtime=nil, severities=nil, instanceids=nil, offset=nil, limit=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Severities = severities
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Severities = params['Severities']
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBDiagEvents返回参数结构体
      class DescribeDBDiagEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 诊断事件的总数目。
        # @type TotalCount: Integer
        # @param Items: 诊断事件的列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              diaghistoryeventitem_tmp = DiagHistoryEventItem.new
              diaghistoryeventitem_tmp.deserialize(i)
              @Items << diaghistoryeventitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBDiagHistory请求参数结构体
      class DescribeDBDiagHistoryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param StartTime: 开始时间，如“2019-09-10 12:13:14”。
        # @type StartTime: String
        # @param EndTime: 结束时间，如“2019-09-11 12:13:14”，结束时间与开始时间的间隔最大可为2天。
        # @type EndTime: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Product

        def initialize(instanceid=nil, starttime=nil, endtime=nil, product=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Product = params['Product']
        end
      end

      # DescribeDBDiagHistory返回参数结构体
      class DescribeDBDiagHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Events: 事件描述。
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :RequestId

        def initialize(events=nil, requestid=nil)
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              diaghistoryeventitem_tmp = DiagHistoryEventItem.new
              diaghistoryeventitem_tmp.deserialize(i)
              @Events << diaghistoryeventitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBDiagReportTasks请求参数结构体
      class DescribeDBDiagReportTasksRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 第一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        # @type StartTime: String
        # @param EndTime: 最后一个任务的开始时间，用于范围查询，时间格式如：2019-09-10 12:13:14。
        # @type EndTime: String
        # @param InstanceIds: 实例ID数组，用于筛选指定实例的任务列表。
        # @type InstanceIds: Array
        # @param Sources: 任务的触发来源，支持的取值包括："DAILY_INSPECTION" - 实例巡检；"SCHEDULED" - 定时生成；"MANUAL" - 手动触发。
        # @type Sources: Array
        # @param HealthLevels: 报告的健康等级，支持的取值包括："HEALTH" - 健康；"SUB_HEALTH" - 亚健康；"RISK" - 危险；"HIGH_RISK" - 高危。
        # @type HealthLevels: String
        # @param TaskStatuses: 任务的状态，支持的取值包括："created" - 新建；"chosen" - 待执行； "running" - 执行中；"failed" - 失败；"finished" - 已完成。
        # @type TaskStatuses: String
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值为100。
        # @type Limit: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :StartTime, :EndTime, :InstanceIds, :Sources, :HealthLevels, :TaskStatuses, :Offset, :Limit, :Product

        def initialize(starttime=nil, endtime=nil, instanceids=nil, sources=nil, healthlevels=nil, taskstatuses=nil, offset=nil, limit=nil, product=nil)
          @StartTime = starttime
          @EndTime = endtime
          @InstanceIds = instanceids
          @Sources = sources
          @HealthLevels = healthlevels
          @TaskStatuses = taskstatuses
          @Offset = offset
          @Limit = limit
          @Product = product
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceIds = params['InstanceIds']
          @Sources = params['Sources']
          @HealthLevels = params['HealthLevels']
          @TaskStatuses = params['TaskStatuses']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Product = params['Product']
        end
      end

      # DescribeDBDiagReportTasks返回参数结构体
      class DescribeDBDiagReportTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数目。
        # @type TotalCount: Integer
        # @param Tasks: 任务列表。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              healthreporttask_tmp = HealthReportTask.new
              healthreporttask_tmp.deserialize(i)
              @Tasks << healthreporttask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSpaceStatus请求参数结构体
      class DescribeDBSpaceStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param RangeDays: 时间段天数，截止日期为当日，默认为7天。
        # @type RangeDays: Integer
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，"mongodb" - 云数据库 MongoDB，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :RangeDays, :Product

        def initialize(instanceid=nil, rangedays=nil, product=nil)
          @InstanceId = instanceid
          @RangeDays = rangedays
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RangeDays = params['RangeDays']
          @Product = params['Product']
        end
      end

      # DescribeDBSpaceStatus返回参数结构体
      class DescribeDBSpaceStatusResponse < TencentCloud::Common::AbstractModel
        # @param Growth: 磁盘增长量(MB)。
        # @type Growth: Integer
        # @param Remain: 磁盘剩余(MB)。
        # @type Remain: Integer
        # @param Total: 磁盘总量(MB)。
        # @type Total: Integer
        # @param AvailableDays: 预计可用天数。
        # @type AvailableDays: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Growth, :Remain, :Total, :AvailableDays, :RequestId

        def initialize(growth=nil, remain=nil, total=nil, availabledays=nil, requestid=nil)
          @Growth = growth
          @Remain = remain
          @Total = total
          @AvailableDays = availabledays
          @RequestId = requestid
        end

        def deserialize(params)
          @Growth = params['Growth']
          @Remain = params['Remain']
          @Total = params['Total']
          @AvailableDays = params['AvailableDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiagDBInstances请求参数结构体
      class DescribeDiagDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param IsSupported: 是否是DBbrain支持的实例，固定传 true。
        # @type IsSupported: Boolean
        # @param Product: 服务产品类型，支持值包括："mysql" - 云数据库 MySQL，"cynosdb" - 云数据库 TDSQL-C for MySQL，"dbbrain-mysql" - 自建 MySQL，"redis" - 云数据库 Redis，默认为"mysql"。
        # @type Product: String
        # @param Offset: 分页参数，偏移量。
        # @type Offset: Integer
        # @param Limit: 分页参数，分页值，最大值为100。
        # @type Limit: Integer
        # @param InstanceNames: 根据实例名称条件查询。
        # @type InstanceNames: Array
        # @param InstanceIds: 根据实例ID条件查询。
        # @type InstanceIds: Array
        # @param Regions: 根据地域条件查询。
        # @type Regions: Array

        attr_accessor :IsSupported, :Product, :Offset, :Limit, :InstanceNames, :InstanceIds, :Regions

        def initialize(issupported=nil, product=nil, offset=nil, limit=nil, instancenames=nil, instanceids=nil, regions=nil)
          @IsSupported = issupported
          @Product = product
          @Offset = offset
          @Limit = limit
          @InstanceNames = instancenames
          @InstanceIds = instanceids
          @Regions = regions
        end

        def deserialize(params)
          @IsSupported = params['IsSupported']
          @Product = params['Product']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceNames = params['InstanceNames']
          @InstanceIds = params['InstanceIds']
          @Regions = params['Regions']
        end
      end

      # DescribeDiagDBInstances返回参数结构体
      class DescribeDiagDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param DbScanStatus: 全实例巡检状态：0：开启全实例巡检；1：未开启全实例巡检。
        # @type DbScanStatus: Integer
        # @param Items: 实例相关信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DbScanStatus, :Items, :RequestId

        def initialize(totalcount=nil, dbscanstatus=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @DbScanStatus = dbscanstatus
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DbScanStatus = params['DbScanStatus']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Items << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHealthScore请求参数结构体
      class DescribeHealthScoreRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要获取健康得分的实例ID。
        # @type InstanceId: String
        # @param Time: 获取健康得分的时间，时间格式如：2019-09-10 12:13:14。
        # @type Time: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Time, :Product

        def initialize(instanceid=nil, time=nil, product=nil)
          @InstanceId = instanceid
          @Time = time
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Time = params['Time']
          @Product = params['Product']
        end
      end

      # DescribeHealthScore返回参数结构体
      class DescribeHealthScoreResponse < TencentCloud::Common::AbstractModel
        # @param Data: 健康得分以及异常扣分项。
        # @type Data: :class:`Tencentcloud::Dbbrain.v20210527.models.HealthScoreInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = HealthScoreInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndexRecommendAggregationSlowLogs请求参数结构体
      class DescribeIndexRecommendAggregationSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括："mongodb" - 云数据库 。
        # @type Product: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Db: 数据库名称。
        # @type Db: String
        # @param Collection: 表明。
        # @type Collection: String
        # @param Signs: 签名。
        # @type Signs: Array

        attr_accessor :Product, :InstanceId, :Db, :Collection, :Signs

        def initialize(product=nil, instanceid=nil, db=nil, collection=nil, signs=nil)
          @Product = product
          @InstanceId = instanceid
          @Db = db
          @Collection = collection
          @Signs = signs
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @Db = params['Db']
          @Collection = params['Collection']
          @Signs = params['Signs']
        end
      end

      # DescribeIndexRecommendAggregationSlowLogs返回参数结构体
      class DescribeIndexRecommendAggregationSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param Aggregation: 查询实例慢查询聚合结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Aggregation: :class:`Tencentcloud::Dbbrain.v20210527.models.Aggregation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Aggregation, :RequestId

        def initialize(aggregation=nil, requestid=nil)
          @Aggregation = aggregation
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Aggregation'].nil?
            @Aggregation = Aggregation.new
            @Aggregation.deserialize(params['Aggregation'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndexRecommendInfo请求参数结构体
      class DescribeIndexRecommendInfoRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括："mongodb" - 云数据库 。
        # @type Product: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :Product, :InstanceId

        def initialize(product=nil, instanceid=nil)
          @Product = product
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeIndexRecommendInfo返回参数结构体
      class DescribeIndexRecommendInfoResponse < TencentCloud::Common::AbstractModel
        # @param CollectionNum: 索引推荐的集合数量。
        # @type CollectionNum: Integer
        # @param IndexNum: 索引推荐的索引数量。
        # @type IndexNum: Integer
        # @param Items: 索引项。
        # @type Items: Array
        # @param Level: 优化级别，1-4，优先级从高到低。
        # @type Level: Integer
        # @param Optimized: 历史优化数。
        # @type Optimized: Integer
        # @param OptimizedCount: 累计优化条数。
        # @type OptimizedCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CollectionNum, :IndexNum, :Items, :Level, :Optimized, :OptimizedCount, :RequestId

        def initialize(collectionnum=nil, indexnum=nil, items=nil, level=nil, optimized=nil, optimizedcount=nil, requestid=nil)
          @CollectionNum = collectionnum
          @IndexNum = indexnum
          @Items = items
          @Level = level
          @Optimized = optimized
          @OptimizedCount = optimizedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @CollectionNum = params['CollectionNum']
          @IndexNum = params['IndexNum']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              mongodbindex_tmp = MongoDBIndex.new
              mongodbindex_tmp.deserialize(i)
              @Items << mongodbindex_tmp
            end
          end
          @Level = params['Level']
          @Optimized = params['Optimized']
          @OptimizedCount = params['OptimizedCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMailProfile请求参数结构体
      class DescribeMailProfileRequest < TencentCloud::Common::AbstractModel
        # @param ProfileType: 配置类型，支持值包括："dbScan_mail_configuration" - 数据库巡检邮件配置，"scheduler_mail_configuration" - 定期生成邮件配置。
        # @type ProfileType: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Limit: 分页单位，最大支持50。
        # @type Limit: Integer
        # @param ProfileName: 根据邮件配置名称查询，定期发送的邮件配置名称遵循："scheduler_"+{instanceId}的规则。
        # @type ProfileName: String

        attr_accessor :ProfileType, :Product, :Offset, :Limit, :ProfileName

        def initialize(profiletype=nil, product=nil, offset=nil, limit=nil, profilename=nil)
          @ProfileType = profiletype
          @Product = product
          @Offset = offset
          @Limit = limit
          @ProfileName = profilename
        end

        def deserialize(params)
          @ProfileType = params['ProfileType']
          @Product = params['Product']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProfileName = params['ProfileName']
        end
      end

      # DescribeMailProfile返回参数结构体
      class DescribeMailProfileResponse < TencentCloud::Common::AbstractModel
        # @param ProfileList: 邮件配置详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfileList: Array
        # @param TotalCount: 邮件配置总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProfileList, :TotalCount, :RequestId

        def initialize(profilelist=nil, totalcount=nil, requestid=nil)
          @ProfileList = profilelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProfileList'].nil?
            @ProfileList = []
            params['ProfileList'].each do |i|
              userprofile_tmp = UserProfile.new
              userprofile_tmp.deserialize(i)
              @ProfileList << userprofile_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMySqlProcessList请求参数结构体
      class DescribeMySqlProcessListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ID: 线程的ID，用于筛选线程列表。
        # @type ID: Integer
        # @param User: 线程的操作账号名，用于筛选线程列表。
        # @type User: String
        # @param Host: 线程的操作主机地址，用于筛选线程列表。
        # @type Host: String
        # @param DB: 线程的操作数据库，用于筛选线程列表。
        # @type DB: String
        # @param State: 线程的操作状态，用于筛选线程列表。
        # @type State: String
        # @param Command: 线程的执行类型，用于筛选线程列表。
        # @type Command: String
        # @param Time: 线程的操作时长最小值，单位秒，用于筛选操作时长大于该值的线程列表。
        # @type Time: Integer
        # @param Info: 线程的操作语句，用于筛选线程列表。
        # @type Info: String
        # @param Limit: 返回数量，默认20。
        # @type Limit: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String
        # @param StatDimensions: 会话统计的维度信息,可以多个维度。
        # @type StatDimensions: Array

        attr_accessor :InstanceId, :ID, :User, :Host, :DB, :State, :Command, :Time, :Info, :Limit, :Product, :StatDimensions

        def initialize(instanceid=nil, id=nil, user=nil, host=nil, db=nil, state=nil, command=nil, time=nil, info=nil, limit=nil, product=nil, statdimensions=nil)
          @InstanceId = instanceid
          @ID = id
          @User = user
          @Host = host
          @DB = db
          @State = state
          @Command = command
          @Time = time
          @Info = info
          @Limit = limit
          @Product = product
          @StatDimensions = statdimensions
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ID = params['ID']
          @User = params['User']
          @Host = params['Host']
          @DB = params['DB']
          @State = params['State']
          @Command = params['Command']
          @Time = params['Time']
          @Info = params['Info']
          @Limit = params['Limit']
          @Product = params['Product']
          unless params['StatDimensions'].nil?
            @StatDimensions = []
            params['StatDimensions'].each do |i|
              statdimension_tmp = StatDimension.new
              statdimension_tmp.deserialize(i)
              @StatDimensions << statdimension_tmp
            end
          end
        end
      end

      # DescribeMySqlProcessList返回参数结构体
      class DescribeMySqlProcessListResponse < TencentCloud::Common::AbstractModel
        # @param ProcessList: 实时线程列表。
        # @type ProcessList: Array
        # @param Statistics: sql会话统计信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Statistics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProcessList, :Statistics, :RequestId

        def initialize(processlist=nil, statistics=nil, requestid=nil)
          @ProcessList = processlist
          @Statistics = statistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProcessList'].nil?
            @ProcessList = []
            params['ProcessList'].each do |i|
              mysqlprocess_tmp = MySqlProcess.new
              mysqlprocess_tmp.deserialize(i)
              @ProcessList << mysqlprocess_tmp
            end
          end
          unless params['Statistics'].nil?
            @Statistics = []
            params['Statistics'].each do |i|
              statisticinfo_tmp = StatisticInfo.new
              statisticinfo_tmp.deserialize(i)
              @Statistics << statisticinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNoPrimaryKeyTables请求参数结构体
      class DescribeNoPrimaryKeyTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Date: 查询日期，如2021-05-27，最早为30天前的日期。
        # @type Date: String
        # @param Limit: 查询数目，默认为20，最大为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Date, :Limit, :Offset, :Product

        def initialize(instanceid=nil, date=nil, limit=nil, offset=nil, product=nil)
          @InstanceId = instanceid
          @Date = date
          @Limit = limit
          @Offset = offset
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Product = params['Product']
        end
      end

      # DescribeNoPrimaryKeyTables返回参数结构体
      class DescribeNoPrimaryKeyTablesResponse < TencentCloud::Common::AbstractModel
        # @param NoPrimaryKeyTableCount: 无主键表总数。
        # @type NoPrimaryKeyTableCount: Integer
        # @param NoPrimaryKeyTableCountDiff: 与昨日扫描无主键表的差值，正数为增加，负数为减少，0为无变化。
        # @type NoPrimaryKeyTableCountDiff: Integer
        # @param NoPrimaryKeyTableRecordCount: 记录的无主键表总数（不超过无主键表总数），可用于分页查询。
        # @type NoPrimaryKeyTableRecordCount: Integer
        # @param NoPrimaryKeyTables: 无主键表列表。
        # @type NoPrimaryKeyTables: Array
        # @param Timestamp: 采集时间戳（秒）。
        # @type Timestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NoPrimaryKeyTableCount, :NoPrimaryKeyTableCountDiff, :NoPrimaryKeyTableRecordCount, :NoPrimaryKeyTables, :Timestamp, :RequestId

        def initialize(noprimarykeytablecount=nil, noprimarykeytablecountdiff=nil, noprimarykeytablerecordcount=nil, noprimarykeytables=nil, timestamp=nil, requestid=nil)
          @NoPrimaryKeyTableCount = noprimarykeytablecount
          @NoPrimaryKeyTableCountDiff = noprimarykeytablecountdiff
          @NoPrimaryKeyTableRecordCount = noprimarykeytablerecordcount
          @NoPrimaryKeyTables = noprimarykeytables
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          @NoPrimaryKeyTableCount = params['NoPrimaryKeyTableCount']
          @NoPrimaryKeyTableCountDiff = params['NoPrimaryKeyTableCountDiff']
          @NoPrimaryKeyTableRecordCount = params['NoPrimaryKeyTableRecordCount']
          unless params['NoPrimaryKeyTables'].nil?
            @NoPrimaryKeyTables = []
            params['NoPrimaryKeyTables'].each do |i|
              table_tmp = Table.new
              table_tmp.deserialize(i)
              @NoPrimaryKeyTables << table_tmp
            end
          end
          @Timestamp = params['Timestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyProcessStatistics请求参数结构体
      class DescribeProxyProcessStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param InstanceProxyId: 该实例下需要查询的某一个 ProxyID 。
        # @type InstanceProxyId: String
        # @param Limit: 返回数量。
        # @type Limit: Integer
        # @param Product: 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        # @type Product: String
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param SortBy: 按照某字段排序。支持值包括："AllConn"，"ActiveConn"，"Ip"。
        # @type SortBy: String
        # @param OrderDirection: 排序方向。支持值包括："DESC"，"ASC"。
        # @type OrderDirection: String

        attr_accessor :InstanceId, :InstanceProxyId, :Limit, :Product, :Offset, :SortBy, :OrderDirection

        def initialize(instanceid=nil, instanceproxyid=nil, limit=nil, product=nil, offset=nil, sortby=nil, orderdirection=nil)
          @InstanceId = instanceid
          @InstanceProxyId = instanceproxyid
          @Limit = limit
          @Product = product
          @Offset = offset
          @SortBy = sortby
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceProxyId = params['InstanceProxyId']
          @Limit = params['Limit']
          @Product = params['Product']
          @Offset = params['Offset']
          @SortBy = params['SortBy']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeProxyProcessStatistics返回参数结构体
      class DescribeProxyProcessStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param ProcessStatistics: 实时会话统计详情。
        # @type ProcessStatistics: :class:`Tencentcloud::Dbbrain.v20210527.models.ProcessStatistic`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProcessStatistics, :RequestId

        def initialize(processstatistics=nil, requestid=nil)
          @ProcessStatistics = processstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProcessStatistics'].nil?
            @ProcessStatistics = ProcessStatistic.new
            @ProcessStatistics.deserialize(params['ProcessStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxySessionKillTasks请求参数结构体
      class DescribeProxySessionKillTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AsyncRequestIds: kill 会话异步任务 ID,  接口 CreateProxySessionKillTask 调用成功后获取。
        # @type AsyncRequestIds: Array
        # @param Product: 服务产品类型，支持值包括： "redis" - 云数据库 Redis。
        # @type Product: String

        attr_accessor :InstanceId, :AsyncRequestIds, :Product

        def initialize(instanceid=nil, asyncrequestids=nil, product=nil)
          @InstanceId = instanceid
          @AsyncRequestIds = asyncrequestids
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AsyncRequestIds = params['AsyncRequestIds']
          @Product = params['Product']
        end
      end

      # DescribeProxySessionKillTasks返回参数结构体
      class DescribeProxySessionKillTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: kill 任务的详情。
        # @type Tasks: Array
        # @param TotalCount: 任务总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :RequestId

        def initialize(tasks=nil, totalcount=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @Tasks << taskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRedisBigKeyAnalysisTasks请求参数结构体
      class DescribeRedisBigKeyAnalysisTasksRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Limit: 查询数目，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Product, :InstanceId, :Limit, :Offset

        def initialize(product=nil, instanceid=nil, limit=nil, offset=nil)
          @Product = product
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRedisBigKeyAnalysisTasks返回参数结构体
      class DescribeRedisBigKeyAnalysisTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Tasks: 任务列表。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              redisbigkeytask_tmp = RedisBigKeyTask.new
              redisbigkeytask_tmp.deserialize(i)
              @Tasks << redisbigkeytask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRedisProcessList请求参数结构体
      class DescribeRedisProcessListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Redis 实例ID。
        # @type InstanceId: String
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String
        # @param Limit: 查询的Proxy节点数量上限，默认值为20，最大值为50。
        # @type Limit: Integer
        # @param Offset: Proxy节点的偏移量，默认值为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Product, :Limit, :Offset

        def initialize(instanceid=nil, product=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Product = product
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Product = params['Product']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRedisProcessList返回参数结构体
      class DescribeRedisProcessListResponse < TencentCloud::Common::AbstractModel
        # @param ProxyCount: 该实例的Proxy节点数量，可用于分页查询。
        # @type ProxyCount: Integer
        # @param Processes: 实时会话详情列表。
        # @type Processes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyCount, :Processes, :RequestId

        def initialize(proxycount=nil, processes=nil, requestid=nil)
          @ProxyCount = proxycount
          @Processes = processes
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyCount = params['ProxyCount']
          unless params['Processes'].nil?
            @Processes = []
            params['Processes'].each do |i|
              process_tmp = Process.new
              process_tmp.deserialize(i)
              @Processes << process_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRedisTopBigKeys请求参数结构体
      class DescribeRedisTopBigKeysRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Date: 查询日期，如2021-05-27，最早可为前30天的日期。
        # @type Date: String
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String
        # @param SortBy: 排序字段，取值包括Capacity - 内存，ItemCount - 元素数量，默认为Capacity。
        # @type SortBy: String
        # @param KeyType: key类型筛选条件，默认为不进行筛选，取值包括string, list, set, hash, sortedset, stream。
        # @type KeyType: String
        # @param Limit: 查询数目，默认为20，最大值为100。
        # @type Limit: Integer
        # @param AsyncRequestId: 异步任务ID。当为空时，选择最近任务的ID。
        # @type AsyncRequestId: Integer
        # @param ShardIds: 分片节点序号列表。当列表为空时，选择所有分片节点。
        # @type ShardIds: Array

        attr_accessor :InstanceId, :Date, :Product, :SortBy, :KeyType, :Limit, :AsyncRequestId, :ShardIds

        def initialize(instanceid=nil, date=nil, product=nil, sortby=nil, keytype=nil, limit=nil, asyncrequestid=nil, shardids=nil)
          @InstanceId = instanceid
          @Date = date
          @Product = product
          @SortBy = sortby
          @KeyType = keytype
          @Limit = limit
          @AsyncRequestId = asyncrequestid
          @ShardIds = shardids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
          @Product = params['Product']
          @SortBy = params['SortBy']
          @KeyType = params['KeyType']
          @Limit = params['Limit']
          @AsyncRequestId = params['AsyncRequestId']
          @ShardIds = params['ShardIds']
        end
      end

      # DescribeRedisTopBigKeys返回参数结构体
      class DescribeRedisTopBigKeysResponse < TencentCloud::Common::AbstractModel
        # @param TopKeys: top key列表。
        # @type TopKeys: Array
        # @param Timestamp: 采集时间戳（秒）。
        # @type Timestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopKeys, :Timestamp, :RequestId

        def initialize(topkeys=nil, timestamp=nil, requestid=nil)
          @TopKeys = topkeys
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopKeys'].nil?
            @TopKeys = []
            params['TopKeys'].each do |i|
              rediskeyspacedata_tmp = RedisKeySpaceData.new
              rediskeyspacedata_tmp.deserialize(i)
              @TopKeys << rediskeyspacedata_tmp
            end
          end
          @Timestamp = params['Timestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRedisTopKeyPrefixList请求参数结构体
      class DescribeRedisTopKeyPrefixListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Date: 查询日期，如2021-05-27，最早可为前30天的日期。
        # @type Date: String
        # @param Product: 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        # @type Product: String
        # @param Limit: 查询数目，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Date, :Product, :Limit

        def initialize(instanceid=nil, date=nil, product=nil, limit=nil)
          @InstanceId = instanceid
          @Date = date
          @Product = product
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Date = params['Date']
          @Product = params['Product']
          @Limit = params['Limit']
        end
      end

      # DescribeRedisTopKeyPrefixList返回参数结构体
      class DescribeRedisTopKeyPrefixListResponse < TencentCloud::Common::AbstractModel
        # @param Items: top key前缀列表。
        # @type Items: Array
        # @param Timestamp: 采集时间戳（秒）。
        # @type Timestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Timestamp, :RequestId

        def initialize(items=nil, timestamp=nil, requestid=nil)
          @Items = items
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              redisprekeyspacedata_tmp = RedisPreKeySpaceData.new
              redisprekeyspacedata_tmp.deserialize(i)
              @Items << redisprekeyspacedata_tmp
            end
          end
          @Timestamp = params['Timestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityAuditLogDownloadUrls请求参数结构体
      class DescribeSecurityAuditLogDownloadUrlsRequest < TencentCloud::Common::AbstractModel
        # @param SecAuditGroupId: 安全审计组Id。
        # @type SecAuditGroupId: String
        # @param AsyncRequestId: 异步任务Id。
        # @type AsyncRequestId: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        # @type Product: String

        attr_accessor :SecAuditGroupId, :AsyncRequestId, :Product

        def initialize(secauditgroupid=nil, asyncrequestid=nil, product=nil)
          @SecAuditGroupId = secauditgroupid
          @AsyncRequestId = asyncrequestid
          @Product = product
        end

        def deserialize(params)
          @SecAuditGroupId = params['SecAuditGroupId']
          @AsyncRequestId = params['AsyncRequestId']
          @Product = params['Product']
        end
      end

      # DescribeSecurityAuditLogDownloadUrls返回参数结构体
      class DescribeSecurityAuditLogDownloadUrlsResponse < TencentCloud::Common::AbstractModel
        # @param Urls: 导出结果的COS链接列表。当结果集很大时，可能会切分为多个url下载。
        # @type Urls: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Urls, :RequestId

        def initialize(urls=nil, requestid=nil)
          @Urls = urls
          @RequestId = requestid
        end

        def deserialize(params)
          @Urls = params['Urls']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityAuditLogExportTasks请求参数结构体
      class DescribeSecurityAuditLogExportTasksRequest < TencentCloud::Common::AbstractModel
        # @param SecAuditGroupId: 安全审计组Id。
        # @type SecAuditGroupId: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL。
        # @type Product: String
        # @param AsyncRequestIds: 日志导出任务Id列表。
        # @type AsyncRequestIds: Array
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值为100。
        # @type Limit: Integer

        attr_accessor :SecAuditGroupId, :Product, :AsyncRequestIds, :Offset, :Limit

        def initialize(secauditgroupid=nil, product=nil, asyncrequestids=nil, offset=nil, limit=nil)
          @SecAuditGroupId = secauditgroupid
          @Product = product
          @AsyncRequestIds = asyncrequestids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SecAuditGroupId = params['SecAuditGroupId']
          @Product = params['Product']
          @AsyncRequestIds = params['AsyncRequestIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSecurityAuditLogExportTasks返回参数结构体
      class DescribeSecurityAuditLogExportTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 安全审计日志导出任务列表。
        # @type Tasks: Array
        # @param TotalCount: 安全审计日志导出任务总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :RequestId

        def initialize(tasks=nil, totalcount=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              seclogexporttaskinfo_tmp = SecLogExportTaskInfo.new
              seclogexporttaskinfo_tmp.deserialize(i)
              @Tasks << seclogexporttaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogTimeSeriesStats请求参数结构体
      class DescribeSlowLogTimeSeriesStatsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param StartTime: 开始时间，如“2019-09-10 12:13:14”。
        # @type StartTime: String
        # @param EndTime: 结束时间，如“2019-09-10 12:13:14”，结束时间与开始时间的间隔最大可为7天。
        # @type EndTime: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Product

        def initialize(instanceid=nil, starttime=nil, endtime=nil, product=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Product = params['Product']
        end
      end

      # DescribeSlowLogTimeSeriesStats返回参数结构体
      class DescribeSlowLogTimeSeriesStatsResponse < TencentCloud::Common::AbstractModel
        # @param Period: 柱间单位时间间隔，单位为秒。
        # @type Period: Integer
        # @param TimeSeries: 单位时间间隔内慢日志数量统计。
        # @type TimeSeries: Array
        # @param SeriesData: 单位时间间隔内的实例 cpu 利用率监控数据。
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20210527.models.MonitorMetricSeriesData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Period, :TimeSeries, :SeriesData, :RequestId

        def initialize(period=nil, timeseries=nil, seriesdata=nil, requestid=nil)
          @Period = period
          @TimeSeries = timeseries
          @SeriesData = seriesdata
          @RequestId = requestid
        end

        def deserialize(params)
          @Period = params['Period']
          unless params['TimeSeries'].nil?
            @TimeSeries = []
            params['TimeSeries'].each do |i|
              timeslice_tmp = TimeSlice.new
              timeslice_tmp.deserialize(i)
              @TimeSeries << timeslice_tmp
            end
          end
          unless params['SeriesData'].nil?
            @SeriesData = MonitorMetricSeriesData.new
            @SeriesData.deserialize(params['SeriesData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogTopSqls请求参数结构体
      class DescribeSlowLogTopSqlsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param StartTime: 开始时间，如“2019-09-10 12:13:14”。
        # @type StartTime: String
        # @param EndTime: 截止时间，如“2019-09-11 10:13:14”，截止时间与开始时间的间隔小于7天。
        # @type EndTime: String
        # @param SortBy: 排序键，目前支持 QueryTime,ExecTimes,RowsSent,LockTime以及RowsExamined 等排序键，默认为QueryTime。
        # @type SortBy: String
        # @param OrderBy: 排序方式，支持ASC（升序）以及DESC（降序），默认为DESC。
        # @type OrderBy: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param SchemaList: 数据库名称数组。
        # @type SchemaList: Array
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SortBy, :OrderBy, :Limit, :Offset, :SchemaList, :Product

        def initialize(instanceid=nil, starttime=nil, endtime=nil, sortby=nil, orderby=nil, limit=nil, offset=nil, schemalist=nil, product=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SortBy = sortby
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
          @SchemaList = schemalist
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SortBy = params['SortBy']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['SchemaList'].nil?
            @SchemaList = []
            params['SchemaList'].each do |i|
              schemaitem_tmp = SchemaItem.new
              schemaitem_tmp.deserialize(i)
              @SchemaList << schemaitem_tmp
            end
          end
          @Product = params['Product']
        end
      end

      # DescribeSlowLogTopSqls返回参数结构体
      class DescribeSlowLogTopSqlsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Rows: 慢日志 top sql 列表
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rows, :RequestId

        def initialize(totalcount=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              slowlogtopsqlitem_tmp = SlowLogTopSqlItem.new
              slowlogtopsqlitem_tmp.deserialize(i)
              @Rows << slowlogtopsqlitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogUserHostStats请求参数结构体
      class DescribeSlowLogUserHostStatsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StartTime: 查询范围的开始时间，时间格式如：2019-09-10 12:13:14。
        # @type StartTime: String
        # @param EndTime: 查询范围的结束时间，时间格式如：2019-09-10 12:13:14。
        # @type EndTime: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String
        # @param Md5: SQL模板的MD5值
        # @type Md5: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Product, :Md5

        def initialize(instanceid=nil, starttime=nil, endtime=nil, product=nil, md5=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Product = product
          @Md5 = md5
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Product = params['Product']
          @Md5 = params['Md5']
        end
      end

      # DescribeSlowLogUserHostStats返回参数结构体
      class DescribeSlowLogUserHostStatsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 来源地址数目。
        # @type TotalCount: Integer
        # @param Items: 各来源地址的慢日志占比详情列表。
        # @type Items: Array
        # @param UserNameItems: 各来源用户名的慢日志占比详情列表。
        # @type UserNameItems: Array
        # @param UserTotalCount: 来源用户数目。
        # @type UserTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :UserNameItems, :UserTotalCount, :RequestId

        def initialize(totalcount=nil, items=nil, usernameitems=nil, usertotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @UserNameItems = usernameitems
          @UserTotalCount = usertotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              slowloghost_tmp = SlowLogHost.new
              slowloghost_tmp.deserialize(i)
              @Items << slowloghost_tmp
            end
          end
          unless params['UserNameItems'].nil?
            @UserNameItems = []
            params['UserNameItems'].each do |i|
              slowloguser_tmp = SlowLogUser.new
              slowloguser_tmp.deserialize(i)
              @UserNameItems << slowloguser_tmp
            end
          end
          @UserTotalCount = params['UserTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogs请求参数结构体
      class DescribeSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB for MySQL，默认为"mysql"。
        # @type Product: String
        # @param InstanceId: 实例id。
        # @type InstanceId: String
        # @param Md5: sql模板的md5值
        # @type Md5: String
        # @param StartTime: 开始时间，如“2019-09-10 12:13:14”。
        # @type StartTime: String
        # @param EndTime: 截止时间，如“2019-09-11 10:13:14”，截止时间与开始时间的间隔小于7天。
        # @type EndTime: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 查询数目，默认为20，最大为100。
        # @type Limit: Integer
        # @param DB: 数据库列表
        # @type DB: Array
        # @param Key: 关键字
        # @type Key: Array
        # @param User: 用户
        # @type User: Array
        # @param Ip: IP
        # @type Ip: Array
        # @param Time: 耗时区间,耗时区间的左右边界分别对应数组的第0个元素和第一个元素
        # @type Time: Array

        attr_accessor :Product, :InstanceId, :Md5, :StartTime, :EndTime, :Offset, :Limit, :DB, :Key, :User, :Ip, :Time

        def initialize(product=nil, instanceid=nil, md5=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, db=nil, key=nil, user=nil, ip=nil, time=nil)
          @Product = product
          @InstanceId = instanceid
          @Md5 = md5
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @DB = db
          @Key = key
          @User = user
          @Ip = ip
          @Time = time
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @Md5 = params['Md5']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DB = params['DB']
          @Key = params['Key']
          @User = params['User']
          @Ip = params['Ip']
          @Time = params['Time']
        end
      end

      # DescribeSlowLogs返回参数结构体
      class DescribeSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Rows: 慢日志明细
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rows, :RequestId

        def initialize(totalcount=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              slowloginfoitem_tmp = SlowLogInfoItem.new
              slowloginfoitem_tmp.deserialize(i)
              @Rows << slowloginfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSqlFilters请求参数结构体
      class DescribeSqlFiltersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param FilterIds: 任务ID列表，用于筛选任务列表。
        # @type FilterIds: Array
        # @param Statuses: 任务状态列表，用于筛选任务列表，取值包括RUNNING - 运行中, FINISHED - 已完成, TERMINATED - 已终止。
        # @type Statuses: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :FilterIds, :Statuses, :Offset, :Limit, :Product

        def initialize(instanceid=nil, filterids=nil, statuses=nil, offset=nil, limit=nil, product=nil)
          @InstanceId = instanceid
          @FilterIds = filterids
          @Statuses = statuses
          @Offset = offset
          @Limit = limit
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FilterIds = params['FilterIds']
          @Statuses = params['Statuses']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Product = params['Product']
        end
      end

      # DescribeSqlFilters返回参数结构体
      class DescribeSqlFiltersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 限流任务总数目。
        # @type TotalCount: Integer
        # @param Items: 限流任务列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              sqlfilter_tmp = SQLFilter.new
              sqlfilter_tmp.deserialize(i)
              @Items << sqlfilter_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSqlTemplate请求参数结构体
      class DescribeSqlTemplateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Schema: 数据库名。
        # @type Schema: String
        # @param SqlText: SQL语句。
        # @type SqlText: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Schema, :SqlText, :Product

        def initialize(instanceid=nil, schema=nil, sqltext=nil, product=nil)
          @InstanceId = instanceid
          @Schema = schema
          @SqlText = sqltext
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Schema = params['Schema']
          @SqlText = params['SqlText']
          @Product = params['Product']
        end
      end

      # DescribeSqlTemplate返回参数结构体
      class DescribeSqlTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Schema: 数据库名。
        # @type Schema: String
        # @param SqlText: SQL语句。
        # @type SqlText: String
        # @param SqlType: SQL类型。
        # @type SqlType: String
        # @param SqlTemplate: SQL模版内容。
        # @type SqlTemplate: String
        # @param SqlId: SQL模版ID。
        # @type SqlId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schema, :SqlText, :SqlType, :SqlTemplate, :SqlId, :RequestId

        def initialize(schema=nil, sqltext=nil, sqltype=nil, sqltemplate=nil, sqlid=nil, requestid=nil)
          @Schema = schema
          @SqlText = sqltext
          @SqlType = sqltype
          @SqlTemplate = sqltemplate
          @SqlId = sqlid
          @RequestId = requestid
        end

        def deserialize(params)
          @Schema = params['Schema']
          @SqlText = params['SqlText']
          @SqlType = params['SqlType']
          @SqlTemplate = params['SqlTemplate']
          @SqlId = params['SqlId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceSchemaTimeSeries请求参数结构体
      class DescribeTopSpaceSchemaTimeSeriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Limit: 返回的Top库数量，最大值为100，默认为20。
        # @type Limit: Integer
        # @param SortBy: 筛选Top库所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize（仅云数据库 MySQL实例支持），云数据库 MySQL实例默认为 PhysicalFileSize，其他产品实例默认为TotalLength。
        # @type SortBy: String
        # @param StartDate: 开始日期，如“2021-01-01”，最早为当日的前第29天，默认为截止日期的前第6天。
        # @type StartDate: String
        # @param EndDate: 截止日期，如“2021-01-01”，最早为当日的前第29天，默认为当日。
        # @type EndDate: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Limit, :SortBy, :StartDate, :EndDate, :Product

        def initialize(instanceid=nil, limit=nil, sortby=nil, startdate=nil, enddate=nil, product=nil)
          @InstanceId = instanceid
          @Limit = limit
          @SortBy = sortby
          @StartDate = startdate
          @EndDate = enddate
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Product = params['Product']
        end
      end

      # DescribeTopSpaceSchemaTimeSeries返回参数结构体
      class DescribeTopSpaceSchemaTimeSeriesResponse < TencentCloud::Common::AbstractModel
        # @param TopSpaceSchemaTimeSeries: 返回的Top库空间统计信息的时序数据列表。
        # @type TopSpaceSchemaTimeSeries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceSchemaTimeSeries, :RequestId

        def initialize(topspaceschematimeseries=nil, requestid=nil)
          @TopSpaceSchemaTimeSeries = topspaceschematimeseries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopSpaceSchemaTimeSeries'].nil?
            @TopSpaceSchemaTimeSeries = []
            params['TopSpaceSchemaTimeSeries'].each do |i|
              schemaspacetimeseries_tmp = SchemaSpaceTimeSeries.new
              schemaspacetimeseries_tmp.deserialize(i)
              @TopSpaceSchemaTimeSeries << schemaspacetimeseries_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceSchemas请求参数结构体
      class DescribeTopSpaceSchemasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Limit: 返回的Top库数量，最大值为100，默认为20。
        # @type Limit: Integer
        # @param SortBy: 筛选Top库所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize（仅云数据库 MySQL实例支持），云数据库 MySQL实例默认为 PhysicalFileSize，其他产品实例默认为TotalLength。
        # @type SortBy: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Limit, :SortBy, :Product

        def initialize(instanceid=nil, limit=nil, sortby=nil, product=nil)
          @InstanceId = instanceid
          @Limit = limit
          @SortBy = sortby
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Product = params['Product']
        end
      end

      # DescribeTopSpaceSchemas返回参数结构体
      class DescribeTopSpaceSchemasResponse < TencentCloud::Common::AbstractModel
        # @param TopSpaceSchemas: 返回的Top库空间统计信息列表。
        # @type TopSpaceSchemas: Array
        # @param Timestamp: 采集库空间数据的时间戳（秒）。
        # @type Timestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceSchemas, :Timestamp, :RequestId

        def initialize(topspaceschemas=nil, timestamp=nil, requestid=nil)
          @TopSpaceSchemas = topspaceschemas
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopSpaceSchemas'].nil?
            @TopSpaceSchemas = []
            params['TopSpaceSchemas'].each do |i|
              schemaspacedata_tmp = SchemaSpaceData.new
              schemaspacedata_tmp.deserialize(i)
              @TopSpaceSchemas << schemaspacedata_tmp
            end
          end
          @Timestamp = params['Timestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceTableTimeSeries请求参数结构体
      class DescribeTopSpaceTableTimeSeriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Limit: 返回的Top表数量，最大值为100，默认为20。
        # @type Limit: Integer
        # @param SortBy: 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize，默认为 PhysicalFileSize。
        # @type SortBy: String
        # @param StartDate: 开始日期，如“2021-01-01”，最早为当日的前第29天，默认为截止日期的前第6天。
        # @type StartDate: String
        # @param EndDate: 截止日期，如“2021-01-01”，最早为当日的前第29天，默认为当日。
        # @type EndDate: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Limit, :SortBy, :StartDate, :EndDate, :Product

        def initialize(instanceid=nil, limit=nil, sortby=nil, startdate=nil, enddate=nil, product=nil)
          @InstanceId = instanceid
          @Limit = limit
          @SortBy = sortby
          @StartDate = startdate
          @EndDate = enddate
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Product = params['Product']
        end
      end

      # DescribeTopSpaceTableTimeSeries返回参数结构体
      class DescribeTopSpaceTableTimeSeriesResponse < TencentCloud::Common::AbstractModel
        # @param TopSpaceTableTimeSeries: 返回的Top表空间统计信息的时序数据列表。
        # @type TopSpaceTableTimeSeries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceTableTimeSeries, :RequestId

        def initialize(topspacetabletimeseries=nil, requestid=nil)
          @TopSpaceTableTimeSeries = topspacetabletimeseries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopSpaceTableTimeSeries'].nil?
            @TopSpaceTableTimeSeries = []
            params['TopSpaceTableTimeSeries'].each do |i|
              tablespacetimeseries_tmp = TableSpaceTimeSeries.new
              tablespacetimeseries_tmp.deserialize(i)
              @TopSpaceTableTimeSeries << tablespacetimeseries_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceTables请求参数结构体
      class DescribeTopSpaceTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Limit: 返回的Top表数量，最大值为100，默认为20。
        # @type Limit: Integer
        # @param SortBy: 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize（仅云数据库 MySQL实例支持），云数据库 MySQL实例默认为 PhysicalFileSize，其他产品实例默认为TotalLength。
        # @type SortBy: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :Limit, :SortBy, :Product

        def initialize(instanceid=nil, limit=nil, sortby=nil, product=nil)
          @InstanceId = instanceid
          @Limit = limit
          @SortBy = sortby
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Product = params['Product']
        end
      end

      # DescribeTopSpaceTables返回参数结构体
      class DescribeTopSpaceTablesResponse < TencentCloud::Common::AbstractModel
        # @param TopSpaceTables: 返回的Top表空间统计信息列表。
        # @type TopSpaceTables: Array
        # @param Timestamp: 采集表空间数据的时间戳（秒）。
        # @type Timestamp: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceTables, :Timestamp, :RequestId

        def initialize(topspacetables=nil, timestamp=nil, requestid=nil)
          @TopSpaceTables = topspacetables
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopSpaceTables'].nil?
            @TopSpaceTables = []
            params['TopSpaceTables'].each do |i|
              tablespacedata_tmp = TableSpaceData.new
              tablespacedata_tmp.deserialize(i)
              @TopSpaceTables << tablespacedata_tmp
            end
          end
          @Timestamp = params['Timestamp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserSqlAdvice请求参数结构体
      class DescribeUserSqlAdviceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param SqlText: SQL语句。
        # @type SqlText: String
        # @param Schema: 库名。
        # @type Schema: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL；"dbbrain-mysql" - 自建 MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :SqlText, :Schema, :Product

        def initialize(instanceid=nil, sqltext=nil, schema=nil, product=nil)
          @InstanceId = instanceid
          @SqlText = sqltext
          @Schema = schema
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SqlText = params['SqlText']
          @Schema = params['Schema']
          @Product = params['Product']
        end
      end

      # DescribeUserSqlAdvice返回参数结构体
      class DescribeUserSqlAdviceResponse < TencentCloud::Common::AbstractModel
        # @param Advices: SQL优化建议，可解析为JSON数组，无需优化时输出为空。
        # @type Advices: String
        # @param Comments: SQL优化建议备注，可解析为String数组，无需优化时输出为空。
        # @type Comments: String
        # @param SqlText: SQL语句。
        # @type SqlText: String
        # @param Schema: 库名。
        # @type Schema: String
        # @param Tables: 相关表的DDL信息，可解析为JSON数组。
        # @type Tables: String
        # @param SqlPlan: SQL执行计划，可解析为JSON，无需优化时输出为空。
        # @type SqlPlan: String
        # @param Cost: SQL优化后的成本节约详情，可解析为JSON，无需优化时输出为空。
        # @type Cost: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Advices, :Comments, :SqlText, :Schema, :Tables, :SqlPlan, :Cost, :RequestId

        def initialize(advices=nil, comments=nil, sqltext=nil, schema=nil, tables=nil, sqlplan=nil, cost=nil, requestid=nil)
          @Advices = advices
          @Comments = comments
          @SqlText = sqltext
          @Schema = schema
          @Tables = tables
          @SqlPlan = sqlplan
          @Cost = cost
          @RequestId = requestid
        end

        def deserialize(params)
          @Advices = params['Advices']
          @Comments = params['Comments']
          @SqlText = params['SqlText']
          @Schema = params['Schema']
          @Tables = params['Tables']
          @SqlPlan = params['SqlPlan']
          @Cost = params['Cost']
          @RequestId = params['RequestId']
        end
      end

      # 实例诊断历史事件
      class DiagHistoryEventItem < TencentCloud::Common::AbstractModel
        # @param DiagType: 诊断类型。
        # @type DiagType: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EventId: 事件唯一ID 。
        # @type EventId: Integer
        # @param Severity: 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        # @type Severity: Integer
        # @param Outline: 诊断概要。
        # @type Outline: String
        # @param DiagItem: 诊断项说明。
        # @type DiagItem: String
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Metric: 保留字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param Region: 地域。
        # @type Region: String

        attr_accessor :DiagType, :EndTime, :StartTime, :EventId, :Severity, :Outline, :DiagItem, :InstanceId, :Metric, :Region

        def initialize(diagtype=nil, endtime=nil, starttime=nil, eventid=nil, severity=nil, outline=nil, diagitem=nil, instanceid=nil, metric=nil, region=nil)
          @DiagType = diagtype
          @EndTime = endtime
          @StartTime = starttime
          @EventId = eventid
          @Severity = severity
          @Outline = outline
          @DiagItem = diagitem
          @InstanceId = instanceid
          @Metric = metric
          @Region = region
        end

        def deserialize(params)
          @DiagType = params['DiagType']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @EventId = params['EventId']
          @Severity = params['Severity']
          @Outline = params['Outline']
          @DiagItem = params['DiagItem']
          @InstanceId = params['InstanceId']
          @Metric = params['Metric']
          @Region = params['Region']
        end
      end

      # 异常事件信息。
      class EventInfo < TencentCloud::Common::AbstractModel
        # @param EventId: 事件 ID 。
        # @type EventId: Integer
        # @param DiagType: 诊断类型。
        # @type DiagType: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param Outline: 概要。
        # @type Outline: String
        # @param Severity: 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        # @type Severity: Integer
        # @param ScoreLost: 扣分。
        # @type ScoreLost: Integer
        # @param Metric: 保留字段。
        # @type Metric: String
        # @param Count: 告警数目。
        # @type Count: Integer

        attr_accessor :EventId, :DiagType, :StartTime, :EndTime, :Outline, :Severity, :ScoreLost, :Metric, :Count

        def initialize(eventid=nil, diagtype=nil, starttime=nil, endtime=nil, outline=nil, severity=nil, scorelost=nil, metric=nil, count=nil)
          @EventId = eventid
          @DiagType = diagtype
          @StartTime = starttime
          @EndTime = endtime
          @Outline = outline
          @Severity = severity
          @ScoreLost = scorelost
          @Metric = metric
          @Count = count
        end

        def deserialize(params)
          @EventId = params['EventId']
          @DiagType = params['DiagType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Outline = params['Outline']
          @Severity = params['Severity']
          @ScoreLost = params['ScoreLost']
          @Metric = params['Metric']
          @Count = params['Count']
        end
      end

      # 描述组信息。
      class GroupItem < TencentCloud::Common::AbstractModel
        # @param Id: 组id。
        # @type Id: Integer
        # @param Name: 组名称。
        # @type Name: String
        # @param MemberCount: 组成员数量。
        # @type MemberCount: Integer

        attr_accessor :Id, :Name, :MemberCount

        def initialize(id=nil, name=nil, membercount=nil)
          @Id = id
          @Name = name
          @MemberCount = membercount
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @MemberCount = params['MemberCount']
        end
      end

      # 健康报告任务详情。
      class HealthReportTask < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务请求 ID。
        # @type AsyncRequestId: Integer
        # @param Source: 任务的触发来源，支持的取值包括："DAILY_INSPECTION" - 实例巡检；"SCHEDULED" - 定时生成；"MANUAL" - 手动触发。
        # @type Source: String
        # @param Progress: 任务完成进度，单位%。
        # @type Progress: Integer
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param StartTime: 任务开始执行时间。
        # @type StartTime: String
        # @param EndTime: 任务完成执行时间。
        # @type EndTime: String
        # @param InstanceInfo: 任务所属实例的基础信息。
        # @type InstanceInfo: :class:`Tencentcloud::Dbbrain.v20210527.models.InstanceBasicInfo`
        # @param HealthStatus: 健康报告中的健康信息。
        # @type HealthStatus: :class:`Tencentcloud::Dbbrain.v20210527.models.HealthStatus`

        attr_accessor :AsyncRequestId, :Source, :Progress, :CreateTime, :StartTime, :EndTime, :InstanceInfo, :HealthStatus

        def initialize(asyncrequestid=nil, source=nil, progress=nil, createtime=nil, starttime=nil, endtime=nil, instanceinfo=nil, healthstatus=nil)
          @AsyncRequestId = asyncrequestid
          @Source = source
          @Progress = progress
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @InstanceInfo = instanceinfo
          @HealthStatus = healthstatus
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @Source = params['Source']
          @Progress = params['Progress']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceBasicInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          unless params['HealthStatus'].nil?
            @HealthStatus = HealthStatus.new
            @HealthStatus.deserialize(params['HealthStatus'])
          end
        end
      end

      # 获取健康得分返回的详情。
      class HealthScoreInfo < TencentCloud::Common::AbstractModel
        # @param IssueTypes: 异常详情。
        # @type IssueTypes: Array
        # @param EventsTotalCount: 异常事件总数。
        # @type EventsTotalCount: Integer
        # @param HealthScore: 健康得分。
        # @type HealthScore: Integer
        # @param HealthLevel: 健康等级, 如："HEALTH", "SUB_HEALTH", "RISK", "HIGH_RISK"。
        # @type HealthLevel: String

        attr_accessor :IssueTypes, :EventsTotalCount, :HealthScore, :HealthLevel

        def initialize(issuetypes=nil, eventstotalcount=nil, healthscore=nil, healthlevel=nil)
          @IssueTypes = issuetypes
          @EventsTotalCount = eventstotalcount
          @HealthScore = healthscore
          @HealthLevel = healthlevel
        end

        def deserialize(params)
          unless params['IssueTypes'].nil?
            @IssueTypes = []
            params['IssueTypes'].each do |i|
              issuetypeinfo_tmp = IssueTypeInfo.new
              issuetypeinfo_tmp.deserialize(i)
              @IssueTypes << issuetypeinfo_tmp
            end
          end
          @EventsTotalCount = params['EventsTotalCount']
          @HealthScore = params['HealthScore']
          @HealthLevel = params['HealthLevel']
        end
      end

      # 实例健康详情。
      class HealthStatus < TencentCloud::Common::AbstractModel
        # @param HealthScore: 健康分数，满分100。
        # @type HealthScore: Integer
        # @param HealthLevel: 健康等级，取值包括："HEALTH" - 健康；"SUB_HEALTH" - 亚健康；"RISK"- 危险；"HIGH_RISK" - 高危。
        # @type HealthLevel: String
        # @param ScoreLost: 总扣分分数。
        # @type ScoreLost: Integer
        # @param ScoreDetails: 扣分详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScoreDetails: Array

        attr_accessor :HealthScore, :HealthLevel, :ScoreLost, :ScoreDetails

        def initialize(healthscore=nil, healthlevel=nil, scorelost=nil, scoredetails=nil)
          @HealthScore = healthscore
          @HealthLevel = healthlevel
          @ScoreLost = scorelost
          @ScoreDetails = scoredetails
        end

        def deserialize(params)
          @HealthScore = params['HealthScore']
          @HealthLevel = params['HealthLevel']
          @ScoreLost = params['ScoreLost']
          unless params['ScoreDetails'].nil?
            @ScoreDetails = []
            params['ScoreDetails'].each do |i|
              scoredetail_tmp = ScoreDetail.new
              scoredetail_tmp.deserialize(i)
              @ScoreDetails << scoredetail_tmp
            end
          end
        end
      end

      # 推荐的索引
      class IndexesToBuild < TencentCloud::Common::AbstractModel
        # @param Id: 索引id，唯一标识一个索引。
        # @type Id: Integer
        # @param IndexCommand: 创建索引命令。
        # @type IndexCommand: String
        # @param IndexStr: 索引字符串。
        # @type IndexStr: String
        # @param Level: 优化级别，1-4，优先级从高到低。
        # @type Level: Integer
        # @param Score: 索引得分。
        # @type Score: Integer
        # @param Signs: 签名。
        # @type Signs: Array
        # @param Status: 0-待创建；1-创建中。
        # @type Status: Integer

        attr_accessor :Id, :IndexCommand, :IndexStr, :Level, :Score, :Signs, :Status

        def initialize(id=nil, indexcommand=nil, indexstr=nil, level=nil, score=nil, signs=nil, status=nil)
          @Id = id
          @IndexCommand = indexcommand
          @IndexStr = indexstr
          @Level = level
          @Score = score
          @Signs = signs
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @IndexCommand = params['IndexCommand']
          @IndexStr = params['IndexStr']
          @Level = params['Level']
          @Score = params['Score']
          @Signs = params['Signs']
          @Status = params['Status']
        end
      end

      # 无效索引
      class IndexesToDrop < TencentCloud::Common::AbstractModel
        # @param IndexStr: 索引字符串。
        # @type IndexStr: String
        # @param Score: 索引得分。
        # @type Score: Integer
        # @param Reason: 无效原因。
        # @type Reason: String
        # @param IndexCommand: 删除索引命令。
        # @type IndexCommand: String
        # @param IndexName: 索引名。
        # @type IndexName: String

        attr_accessor :IndexStr, :Score, :Reason, :IndexCommand, :IndexName

        def initialize(indexstr=nil, score=nil, reason=nil, indexcommand=nil, indexname=nil)
          @IndexStr = indexstr
          @Score = score
          @Reason = reason
          @IndexCommand = indexcommand
          @IndexName = indexname
        end

        def deserialize(params)
          @IndexStr = params['IndexStr']
          @Score = params['Score']
          @Reason = params['Reason']
          @IndexCommand = params['IndexCommand']
          @IndexName = params['IndexName']
        end
      end

      # 实例基础信息。
      class InstanceBasicInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Vip: 实例内网IP。
        # @type Vip: String
        # @param Vport: 实例内网Port。
        # @type Vport: Integer
        # @param Product: 实例产品。
        # @type Product: String
        # @param EngineVersion: 实例引擎版本。
        # @type EngineVersion: String

        attr_accessor :InstanceId, :InstanceName, :Vip, :Vport, :Product, :EngineVersion

        def initialize(instanceid=nil, instancename=nil, vip=nil, vport=nil, product=nil, engineversion=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Vip = vip
          @Vport = vport
          @Product = product
          @EngineVersion = engineversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Product = params['Product']
          @EngineVersion = params['EngineVersion']
        end
      end

      # 实例配置。
      class InstanceConfs < TencentCloud::Common::AbstractModel
        # @param DailyInspection: 数据库巡检开关, Yes/No。
        # @type DailyInspection: String
        # @param OverviewDisplay: 实例概览开关，Yes/No。
        # @type OverviewDisplay: String
        # @param KeyDelimiters: redis大key分析的自定义分割符，仅redis使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyDelimiters: Array
        # @param ShardNum: 分片节点数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardNum: String
        # @param AnalysisTopKey: 是否开启大key周期性分析，仅redis产品有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisTopKey: String

        attr_accessor :DailyInspection, :OverviewDisplay, :KeyDelimiters, :ShardNum, :AnalysisTopKey

        def initialize(dailyinspection=nil, overviewdisplay=nil, keydelimiters=nil, shardnum=nil, analysistopkey=nil)
          @DailyInspection = dailyinspection
          @OverviewDisplay = overviewdisplay
          @KeyDelimiters = keydelimiters
          @ShardNum = shardnum
          @AnalysisTopKey = analysistopkey
        end

        def deserialize(params)
          @DailyInspection = params['DailyInspection']
          @OverviewDisplay = params['OverviewDisplay']
          @KeyDelimiters = params['KeyDelimiters']
          @ShardNum = params['ShardNum']
          @AnalysisTopKey = params['AnalysisTopKey']
        end
      end

      # 实例id
      class InstanceID < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # 查询实例列表，返回实例的相关信息的对象。
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Region: 实例所属地域。
        # @type Region: String
        # @param HealthScore: 健康得分。
        # @type HealthScore: Integer
        # @param Product: 所属产品。
        # @type Product: String
        # @param EventCount: 异常事件数量。
        # @type EventCount: Integer
        # @param InstanceType: 实例类型：1:MASTER；2:DR，3：RO，4:SDR。
        # @type InstanceType: Integer
        # @param Cpu: 核心数。
        # @type Cpu: Integer
        # @param Memory: 内存，单位MB。
        # @type Memory: Integer
        # @param Volume: 硬盘存储，单位GB。
        # @type Volume: Integer
        # @param EngineVersion: 数据库版本。
        # @type EngineVersion: String
        # @param Vip: 内网地址。
        # @type Vip: String
        # @param Vport: 内网端口。
        # @type Vport: Integer
        # @param Source: 接入来源。
        # @type Source: String
        # @param GroupId: 分组ID。
        # @type GroupId: String
        # @param GroupName: 分组组名。
        # @type GroupName: String
        # @param Status: 实例状态：0：发货中；1：运行正常；4：销毁中；5：隔离中。
        # @type Status: Integer
        # @param UniqSubnetId: 子网统一ID。
        # @type UniqSubnetId: String
        # @param DeployMode: cdb类型。
        # @type DeployMode: String
        # @param InitFlag: cdb实例初始化标志：0：未初始化；1：已初始化。
        # @type InitFlag: Integer
        # @param TaskStatus: 任务状态。
        # @type TaskStatus: Integer
        # @param UniqVpcId: 私有网络统一ID。
        # @type UniqVpcId: String
        # @param InstanceConf: 实例巡检/概览的状态。
        # @type InstanceConf: :class:`Tencentcloud::Dbbrain.v20210527.models.InstanceConfs`
        # @param DeadlineTime: 资源到期时间。
        # @type DeadlineTime: String
        # @param IsSupported: 是否是DBbrain支持的实例。
        # @type IsSupported: Boolean
        # @param SecAuditStatus: 实例安全审计日志开启状态：ON： 安全审计开启；OFF： 未开启安全审计。
        # @type SecAuditStatus: String
        # @param AuditPolicyStatus: 实例审计日志开启状态，ALL_AUDIT： 开启全审计；RULE_AUDIT： 开启规则审计；UNBOUND： 未开启审计。
        # @type AuditPolicyStatus: String
        # @param AuditRunningStatus: 实例审计日志运行状态：normal： 运行中； paused： 欠费暂停。
        # @type AuditRunningStatus: String
        # @param InternalVip: 内网vip。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalVip: String
        # @param InternalVport: 内网port。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalVport: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ClusterId: 所属集群ID（仅对集群数据库产品该字段非空，如TDSQL-C）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 所属集群名称（仅对集群数据库产品该字段非空，如TDSQL-C）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param AgentStatus: 自建MySQL的Agent状态，"not_deployed" - 未部署，"deploying" - 部署中，"connected" - 连接正常，"deploy_failed" - 连接失败，"monitoring" - 连接正常，"stopped" - 暂停连接，"connect_failed" - 连接失败，unknown - 未知。
        # @type AgentStatus: String
        # @param InstanceStatus: 自建MySQL的实例状态，"not_attached" - 未连接，"attached" - 连接正常，"failed" - 连接失败，"stopped" - 停止监控，unknown- 未知。
        # @type InstanceStatus: String

        attr_accessor :InstanceId, :InstanceName, :Region, :HealthScore, :Product, :EventCount, :InstanceType, :Cpu, :Memory, :Volume, :EngineVersion, :Vip, :Vport, :Source, :GroupId, :GroupName, :Status, :UniqSubnetId, :DeployMode, :InitFlag, :TaskStatus, :UniqVpcId, :InstanceConf, :DeadlineTime, :IsSupported, :SecAuditStatus, :AuditPolicyStatus, :AuditRunningStatus, :InternalVip, :InternalVport, :CreateTime, :ClusterId, :ClusterName, :AgentStatus, :InstanceStatus

        def initialize(instanceid=nil, instancename=nil, region=nil, healthscore=nil, product=nil, eventcount=nil, instancetype=nil, cpu=nil, memory=nil, volume=nil, engineversion=nil, vip=nil, vport=nil, source=nil, groupid=nil, groupname=nil, status=nil, uniqsubnetid=nil, deploymode=nil, initflag=nil, taskstatus=nil, uniqvpcid=nil, instanceconf=nil, deadlinetime=nil, issupported=nil, secauditstatus=nil, auditpolicystatus=nil, auditrunningstatus=nil, internalvip=nil, internalvport=nil, createtime=nil, clusterid=nil, clustername=nil, agentstatus=nil, instancestatus=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @HealthScore = healthscore
          @Product = product
          @EventCount = eventcount
          @InstanceType = instancetype
          @Cpu = cpu
          @Memory = memory
          @Volume = volume
          @EngineVersion = engineversion
          @Vip = vip
          @Vport = vport
          @Source = source
          @GroupId = groupid
          @GroupName = groupname
          @Status = status
          @UniqSubnetId = uniqsubnetid
          @DeployMode = deploymode
          @InitFlag = initflag
          @TaskStatus = taskstatus
          @UniqVpcId = uniqvpcid
          @InstanceConf = instanceconf
          @DeadlineTime = deadlinetime
          @IsSupported = issupported
          @SecAuditStatus = secauditstatus
          @AuditPolicyStatus = auditpolicystatus
          @AuditRunningStatus = auditrunningstatus
          @InternalVip = internalvip
          @InternalVport = internalvport
          @CreateTime = createtime
          @ClusterId = clusterid
          @ClusterName = clustername
          @AgentStatus = agentstatus
          @InstanceStatus = instancestatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @HealthScore = params['HealthScore']
          @Product = params['Product']
          @EventCount = params['EventCount']
          @InstanceType = params['InstanceType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @EngineVersion = params['EngineVersion']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Source = params['Source']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Status = params['Status']
          @UniqSubnetId = params['UniqSubnetId']
          @DeployMode = params['DeployMode']
          @InitFlag = params['InitFlag']
          @TaskStatus = params['TaskStatus']
          @UniqVpcId = params['UniqVpcId']
          unless params['InstanceConf'].nil?
            @InstanceConf = InstanceConfs.new
            @InstanceConf.deserialize(params['InstanceConf'])
          end
          @DeadlineTime = params['DeadlineTime']
          @IsSupported = params['IsSupported']
          @SecAuditStatus = params['SecAuditStatus']
          @AuditPolicyStatus = params['AuditPolicyStatus']
          @AuditRunningStatus = params['AuditRunningStatus']
          @InternalVip = params['InternalVip']
          @InternalVport = params['InternalVport']
          @CreateTime = params['CreateTime']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @AgentStatus = params['AgentStatus']
          @InstanceStatus = params['InstanceStatus']
        end
      end

      # 指标信息。
      class IssueTypeInfo < TencentCloud::Common::AbstractModel
        # @param IssueType: 指标分类：AVAILABILITY：可用性，MAINTAINABILITY：可维护性，PERFORMANCE，性能，RELIABILITY可靠性。
        # @type IssueType: String
        # @param Events: 异常事件。
        # @type Events: Array
        # @param TotalCount: 异常事件总数。
        # @type TotalCount: Integer

        attr_accessor :IssueType, :Events, :TotalCount

        def initialize(issuetype=nil, events=nil, totalcount=nil)
          @IssueType = issuetype
          @Events = events
          @TotalCount = totalcount
        end

        def deserialize(params)
          @IssueType = params['IssueType']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              eventinfo_tmp = EventInfo.new
              eventinfo_tmp.deserialize(i)
              @Events << eventinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # KillMySqlThreads请求参数结构体
      class KillMySqlThreadsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Stage: kill会话任务的阶段，取值包括："Prepare"-准备阶段，"Commit"-提交阶段。
        # @type Stage: String
        # @param Threads: 需要kill的sql会话ID列表，此参数用于Prepare阶段。
        # @type Threads: Array
        # @param SqlExecId: 执行ID，此参数用于Commit阶段。
        # @type SqlExecId: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        # @type Product: String
        # @param RecordHistory: 默认是true，会记录下kill的记录；该参数为true, 则在kill操作前校验目标会话是否存在，存在则继续kill，否则取消kill。为了加快kill速度，可设置为false。
        # @type RecordHistory: Boolean

        attr_accessor :InstanceId, :Stage, :Threads, :SqlExecId, :Product, :RecordHistory

        def initialize(instanceid=nil, stage=nil, threads=nil, sqlexecid=nil, product=nil, recordhistory=nil)
          @InstanceId = instanceid
          @Stage = stage
          @Threads = threads
          @SqlExecId = sqlexecid
          @Product = product
          @RecordHistory = recordhistory
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Stage = params['Stage']
          @Threads = params['Threads']
          @SqlExecId = params['SqlExecId']
          @Product = params['Product']
          @RecordHistory = params['RecordHistory']
        end
      end

      # KillMySqlThreads返回参数结构体
      class KillMySqlThreadsResponse < TencentCloud::Common::AbstractModel
        # @param Threads: kill完成的sql会话ID列表。
        # @type Threads: Array
        # @param SqlExecId: 执行ID， Prepare阶段的任务输出，用于Commit阶段中指定执行kill操作的会话ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlExecId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Threads, :SqlExecId, :RequestId

        def initialize(threads=nil, sqlexecid=nil, requestid=nil)
          @Threads = threads
          @SqlExecId = sqlexecid
          @RequestId = requestid
        end

        def deserialize(params)
          @Threads = params['Threads']
          @SqlExecId = params['SqlExecId']
          @RequestId = params['RequestId']
        end
      end

      # 邮件发送配置
      class MailConfiguration < TencentCloud::Common::AbstractModel
        # @param SendMail: 是否开启邮件发送: 0, 否; 1, 是。
        # @type SendMail: Integer
        # @param Region: 地域配置, 如["ap-guangzhou", "ap-shanghai"]。巡检的邮件发送模板，配置需要发送巡检邮件的地域；订阅的邮件发送模板，配置当前订阅实例的所属地域。
        # @type Region: Array
        # @param HealthStatus: 发送指定的健康等级的报告, 如["HEALTH", "SUB_HEALTH", "RISK", "HIGH_RISK"]。
        # @type HealthStatus: Array
        # @param ContactPerson: 联系人id, 联系人/联系组不能都为空。
        # @type ContactPerson: Array
        # @param ContactGroup: 联系组id, 联系人/联系组不能都为空。
        # @type ContactGroup: Array

        attr_accessor :SendMail, :Region, :HealthStatus, :ContactPerson, :ContactGroup

        def initialize(sendmail=nil, region=nil, healthstatus=nil, contactperson=nil, contactgroup=nil)
          @SendMail = sendmail
          @Region = region
          @HealthStatus = healthstatus
          @ContactPerson = contactperson
          @ContactGroup = contactgroup
        end

        def deserialize(params)
          @SendMail = params['SendMail']
          @Region = params['Region']
          @HealthStatus = params['HealthStatus']
          @ContactPerson = params['ContactPerson']
          @ContactGroup = params['ContactGroup']
        end
      end

      # ModifyAlarmPolicy请求参数结构体
      class ModifyAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ApplyType: 类型
        # @type ApplyType: String
        # @param Enable: 开启策略
        # @type Enable: Integer
        # @param InstanceIds: 列表
        # @type InstanceIds: Array
        # @param NewProfileLevel: User-动态关联该用户所有实例
        # Instance-关联实例列表的实例
        # @type NewProfileLevel: String
        # @param NewProfileName: 新策略名
        # @type NewProfileName: String
        # @param ProfileName: 旧策略名
        # @type ProfileName: String
        # @param ProfileType: 策略类型
        # @type ProfileType: String
        # @param Remark: 备注
        # @type Remark: String
        # @param RuleType: 规则类型 0-快速，1-自定义 若值为0，则QuickRule不能为空，若值为1，则Rules 不能为空
        # @type RuleType: Integer
        # @param TemplateInfo: 接受模板
        # @type TemplateInfo: Array
        # @param QuickRule: 快速规则  支持包括fatal-致命, critical-严重,
        # warning-告警,
        # information-通知
        # @type QuickRule: String
        # @param Rules: 自定义规则
        # @type Rules: Array

        attr_accessor :ApplyType, :Enable, :InstanceIds, :NewProfileLevel, :NewProfileName, :ProfileName, :ProfileType, :Remark, :RuleType, :TemplateInfo, :QuickRule, :Rules

        def initialize(applytype=nil, enable=nil, instanceids=nil, newprofilelevel=nil, newprofilename=nil, profilename=nil, profiletype=nil, remark=nil, ruletype=nil, templateinfo=nil, quickrule=nil, rules=nil)
          @ApplyType = applytype
          @Enable = enable
          @InstanceIds = instanceids
          @NewProfileLevel = newprofilelevel
          @NewProfileName = newprofilename
          @ProfileName = profilename
          @ProfileType = profiletype
          @Remark = remark
          @RuleType = ruletype
          @TemplateInfo = templateinfo
          @QuickRule = quickrule
          @Rules = rules
        end

        def deserialize(params)
          @ApplyType = params['ApplyType']
          @Enable = params['Enable']
          unless params['InstanceIds'].nil?
            @InstanceIds = []
            params['InstanceIds'].each do |i|
              instanceid_tmp = InstanceID.new
              instanceid_tmp.deserialize(i)
              @InstanceIds << instanceid_tmp
            end
          end
          @NewProfileLevel = params['NewProfileLevel']
          @NewProfileName = params['NewProfileName']
          @ProfileName = params['ProfileName']
          @ProfileType = params['ProfileType']
          @Remark = params['Remark']
          @RuleType = params['RuleType']
          unless params['TemplateInfo'].nil?
            @TemplateInfo = []
            params['TemplateInfo'].each do |i|
              templateinfo_tmp = TemplateInfo.new
              templateinfo_tmp.deserialize(i)
              @TemplateInfo << templateinfo_tmp
            end
          end
          @QuickRule = params['QuickRule']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              alarmsrules_tmp = AlarmsRules.new
              alarmsrules_tmp.deserialize(i)
              @Rules << alarmsrules_tmp
            end
          end
        end
      end

      # ModifyAlarmPolicy返回参数结构体
      class ModifyAlarmPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAuditService请求参数结构体
      class ModifyAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"。
        # @type NodeRequestType: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param LogExpireDay: 日志保存总时长，只能是7,30,90,180,365,1095,1825。
        # @type LogExpireDay: Integer
        # @param HotLogExpireDay: 高频日志保存时长，只能是7,30,90,180,365,1095,1825。
        # @type HotLogExpireDay: Integer

        attr_accessor :Product, :NodeRequestType, :InstanceId, :LogExpireDay, :HotLogExpireDay

        def initialize(product=nil, noderequesttype=nil, instanceid=nil, logexpireday=nil, hotlogexpireday=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @HotLogExpireDay = hotlogexpireday
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @HotLogExpireDay = params['HotLogExpireDay']
        end
      end

      # ModifyAuditService返回参数结构体
      class ModifyAuditServiceResponse < TencentCloud::Common::AbstractModel
        # @param Success: 审计配置修改结果，0-修改成功,非0-修改失败。
        # @type Success: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :RequestId

        def initialize(success=nil, requestid=nil)
          @Success = success
          @RequestId = requestid
        end

        def deserialize(params)
          @Success = params['Success']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDiagDBInstanceConf请求参数结构体
      class ModifyDiagDBInstanceConfRequest < TencentCloud::Common::AbstractModel
        # @param InstanceConfs: 实例配置，包括巡检、概览开关等。
        # @type InstanceConfs: :class:`Tencentcloud::Dbbrain.v20210527.models.InstanceConfs`
        # @param Regions: 生效实例地域，取值为"All"，代表全地域。
        # @type Regions: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，"redis" - 云数据库 Redis。
        # @type Product: String
        # @param InstanceIds: 指定更改巡检状态的实例ID。
        # @type InstanceIds: Array

        attr_accessor :InstanceConfs, :Regions, :Product, :InstanceIds

        def initialize(instanceconfs=nil, regions=nil, product=nil, instanceids=nil)
          @InstanceConfs = instanceconfs
          @Regions = regions
          @Product = product
          @InstanceIds = instanceids
        end

        def deserialize(params)
          unless params['InstanceConfs'].nil?
            @InstanceConfs = InstanceConfs.new
            @InstanceConfs.deserialize(params['InstanceConfs'])
          end
          @Regions = params['Regions']
          @Product = params['Product']
          @InstanceIds = params['InstanceIds']
        end
      end

      # ModifyDiagDBInstanceConf返回参数结构体
      class ModifyDiagDBInstanceConfResponse < TencentCloud::Common::AbstractModel
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

      # ModifySqlFilters请求参数结构体
      class ModifySqlFiltersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param FilterIds: SQL限流任务ID列表。
        # @type FilterIds: Array
        # @param Status: 限流任务状态，取值支持TERMINATED - 终止。
        # @type Status: String
        # @param SessionToken: 通过VerifyUserAccount获取有效期为5分钟的会话token，使用后会自动延长token有效期至五分钟后。
        # @type SessionToken: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :FilterIds, :Status, :SessionToken, :Product

        def initialize(instanceid=nil, filterids=nil, status=nil, sessiontoken=nil, product=nil)
          @InstanceId = instanceid
          @FilterIds = filterids
          @Status = status
          @SessionToken = sessiontoken
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FilterIds = params['FilterIds']
          @Status = params['Status']
          @SessionToken = params['SessionToken']
          @Product = params['Product']
        end
      end

      # ModifySqlFilters返回参数结构体
      class ModifySqlFiltersResponse < TencentCloud::Common::AbstractModel
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

      # Mongodb索引项
      class MongoDBIndex < TencentCloud::Common::AbstractModel
        # @param ClusterId: 实例id。
        # @type ClusterId: String
        # @param Collection: 表名。
        # @type Collection: String
        # @param Db: 库名。
        # @type Db: String
        # @param Level: 优化级别，1-4，优先级从高到低。
        # @type Level: Integer
        # @param Score: 得分。
        # @type Score: Integer
        # @param IndexesToBuild: 推荐索引列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexesToBuild: Array
        # @param IndexesToDrop: 无效索引列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexesToDrop: Array

        attr_accessor :ClusterId, :Collection, :Db, :Level, :Score, :IndexesToBuild, :IndexesToDrop

        def initialize(clusterid=nil, collection=nil, db=nil, level=nil, score=nil, indexestobuild=nil, indexestodrop=nil)
          @ClusterId = clusterid
          @Collection = collection
          @Db = db
          @Level = level
          @Score = score
          @IndexesToBuild = indexestobuild
          @IndexesToDrop = indexestodrop
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Collection = params['Collection']
          @Db = params['Db']
          @Level = params['Level']
          @Score = params['Score']
          unless params['IndexesToBuild'].nil?
            @IndexesToBuild = []
            params['IndexesToBuild'].each do |i|
              indexestobuild_tmp = IndexesToBuild.new
              indexestobuild_tmp.deserialize(i)
              @IndexesToBuild << indexestobuild_tmp
            end
          end
          unless params['IndexesToDrop'].nil?
            @IndexesToDrop = []
            params['IndexesToDrop'].each do |i|
              indexestodrop_tmp = IndexesToDrop.new
              indexestodrop_tmp.deserialize(i)
              @IndexesToDrop << indexestodrop_tmp
            end
          end
        end
      end

      # 监控数据（浮点型）
      class MonitorFloatMetric < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名称。
        # @type Metric: String
        # @param Unit: 指标单位。
        # @type Unit: String
        # @param Values: 指标值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Metric, :Unit, :Values

        def initialize(metric=nil, unit=nil, values=nil)
          @Metric = metric
          @Unit = unit
          @Values = values
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Unit = params['Unit']
          @Values = params['Values']
        end
      end

      # 单位时间间隔内的监控指标数据（浮点型）
      class MonitorFloatMetricSeriesData < TencentCloud::Common::AbstractModel
        # @param Series: 监控指标。
        # @type Series: Array
        # @param Timestamp: 监控指标对应的时间戳。
        # @type Timestamp: Array

        attr_accessor :Series, :Timestamp

        def initialize(series=nil, timestamp=nil)
          @Series = series
          @Timestamp = timestamp
        end

        def deserialize(params)
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              monitorfloatmetric_tmp = MonitorFloatMetric.new
              monitorfloatmetric_tmp.deserialize(i)
              @Series << monitorfloatmetric_tmp
            end
          end
          @Timestamp = params['Timestamp']
        end
      end

      # 监控数据
      class MonitorMetric < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名称。
        # @type Metric: String
        # @param Unit: 指标单位。
        # @type Unit: String
        # @param Values: 指标值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Metric, :Unit, :Values

        def initialize(metric=nil, unit=nil, values=nil)
          @Metric = metric
          @Unit = unit
          @Values = values
        end

        def deserialize(params)
          @Metric = params['Metric']
          @Unit = params['Unit']
          @Values = params['Values']
        end
      end

      # 单位时间间隔内的监控指标数据
      class MonitorMetricSeriesData < TencentCloud::Common::AbstractModel
        # @param Series: 监控指标。
        # @type Series: Array
        # @param Timestamp: 监控指标对应的时间戳。
        # @type Timestamp: Array

        attr_accessor :Series, :Timestamp

        def initialize(series=nil, timestamp=nil)
          @Series = series
          @Timestamp = timestamp
        end

        def deserialize(params)
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              monitormetric_tmp = MonitorMetric.new
              monitormetric_tmp.deserialize(i)
              @Series << monitormetric_tmp
            end
          end
          @Timestamp = params['Timestamp']
        end
      end

      # 关系型数据库线程
      class MySqlProcess < TencentCloud::Common::AbstractModel
        # @param ID: 线程ID。
        # @type ID: String
        # @param User: 线程的操作账号名。
        # @type User: String
        # @param Host: 线程的操作主机地址。
        # @type Host: String
        # @param DB: 线程的操作数据库。
        # @type DB: String
        # @param State: 线程的操作状态。
        # @type State: String
        # @param Command: 线程的执行类型。
        # @type Command: String
        # @param Time: 线程的操作时长，单位秒。
        # @type Time: String
        # @param Info: 线程的操作语句。
        # @type Info: String

        attr_accessor :ID, :User, :Host, :DB, :State, :Command, :Time, :Info

        def initialize(id=nil, user=nil, host=nil, db=nil, state=nil, command=nil, time=nil, info=nil)
          @ID = id
          @User = user
          @Host = host
          @DB = db
          @State = state
          @Command = command
          @Time = time
          @Info = info
        end

        def deserialize(params)
          @ID = params['ID']
          @User = params['User']
          @Host = params['Host']
          @DB = params['DB']
          @State = params['State']
          @Command = params['Command']
          @Time = params['Time']
          @Info = params['Info']
        end
      end

      # OpenAuditService请求参数结构体
      class OpenAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB。
        # @type Product: String
        # @param NodeRequestType: 与Product保持一致。如："dcdb" ,"mariadb"。
        # @type NodeRequestType: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param LogExpireDay: 日志保存总时长，只能是7,30,90,180,365,1095,1825。
        # @type LogExpireDay: Integer
        # @param HotLogExpireDay: 高频日志保存时长，只能是7,30,90,180,365,1095,1825。
        # @type HotLogExpireDay: Integer

        attr_accessor :Product, :NodeRequestType, :InstanceId, :LogExpireDay, :HotLogExpireDay

        def initialize(product=nil, noderequesttype=nil, instanceid=nil, logexpireday=nil, hotlogexpireday=nil)
          @Product = product
          @NodeRequestType = noderequesttype
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @HotLogExpireDay = hotlogexpireday
        end

        def deserialize(params)
          @Product = params['Product']
          @NodeRequestType = params['NodeRequestType']
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @HotLogExpireDay = params['HotLogExpireDay']
        end
      end

      # OpenAuditService返回参数结构体
      class OpenAuditServiceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: taskId 为0表示开通审计成功，否则开通失败
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 实时会话详情。
      class Process < TencentCloud::Common::AbstractModel
        # @param Id: 会话 ID。
        # @type Id: Integer
        # @param Address: 访问来源，IP 地址和端口号。
        # @type Address: String
        # @param FileDescriptor: 文件描述符。
        # @type FileDescriptor: Integer
        # @param Name: 会话名称，使用 CLIENT SETNAME 命令设置。
        # @type Name: String
        # @param LastCommand: 最后一次执行的命令。
        # @type LastCommand: String
        # @param Age: 会话存活时间，单位：秒。
        # @type Age: Integer
        # @param Idle: 最后一次执行命令后空闲的时间，单位：秒。
        # @type Idle: Integer
        # @param ProxyId: 会话所属的 Proxy节点 ID。
        # @type ProxyId: String

        attr_accessor :Id, :Address, :FileDescriptor, :Name, :LastCommand, :Age, :Idle, :ProxyId

        def initialize(id=nil, address=nil, filedescriptor=nil, name=nil, lastcommand=nil, age=nil, idle=nil, proxyid=nil)
          @Id = id
          @Address = address
          @FileDescriptor = filedescriptor
          @Name = name
          @LastCommand = lastcommand
          @Age = age
          @Idle = idle
          @ProxyId = proxyid
        end

        def deserialize(params)
          @Id = params['Id']
          @Address = params['Address']
          @FileDescriptor = params['FileDescriptor']
          @Name = params['Name']
          @LastCommand = params['LastCommand']
          @Age = params['Age']
          @Idle = params['Idle']
          @ProxyId = params['ProxyId']
        end
      end

      # 实时会话统计详情。
      class ProcessStatistic < TencentCloud::Common::AbstractModel
        # @param Items: 会话详情数组。
        # @type Items: Array
        # @param AllConnSum: 总连接数。
        # @type AllConnSum: Integer
        # @param ActiveConnSum: 总活跃连接数。
        # @type ActiveConnSum: Integer

        attr_accessor :Items, :AllConnSum, :ActiveConnSum

        def initialize(items=nil, allconnsum=nil, activeconnsum=nil)
          @Items = items
          @AllConnSum = allconnsum
          @ActiveConnSum = activeconnsum
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              sessionitem_tmp = SessionItem.new
              sessionitem_tmp.deserialize(i)
              @Items << sessionitem_tmp
            end
          end
          @AllConnSum = params['AllConnSum']
          @ActiveConnSum = params['ActiveConnSum']
        end
      end

      # 用户配置的信息
      class ProfileInfo < TencentCloud::Common::AbstractModel
        # @param Language: 语言, 如"zh"。
        # @type Language: String
        # @param MailConfiguration: 邮件模板的内容。
        # @type MailConfiguration: :class:`Tencentcloud::Dbbrain.v20210527.models.MailConfiguration`

        attr_accessor :Language, :MailConfiguration

        def initialize(language=nil, mailconfiguration=nil)
          @Language = language
          @MailConfiguration = mailconfiguration
        end

        def deserialize(params)
          @Language = params['Language']
          unless params['MailConfiguration'].nil?
            @MailConfiguration = MailConfiguration.new
            @MailConfiguration.deserialize(params['MailConfiguration'])
          end
        end
      end

      # 接收组信息
      class ReceiveInfo < TencentCloud::Common::AbstractModel
        # @param ReceiveGroup: 接收组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveGroup: Array
        # @param EndReceiveTime: 最后接收时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndReceiveTime: String
        # @param ReceiveName: 接收名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveName: String
        # @param SendChannel: 推送渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendChannel: Array
        # @param StartReceiveTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartReceiveTime: String
        # @param ReceiveUin: 接收用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveUin: Array

        attr_accessor :ReceiveGroup, :EndReceiveTime, :ReceiveName, :SendChannel, :StartReceiveTime, :ReceiveUin

        def initialize(receivegroup=nil, endreceivetime=nil, receivename=nil, sendchannel=nil, startreceivetime=nil, receiveuin=nil)
          @ReceiveGroup = receivegroup
          @EndReceiveTime = endreceivetime
          @ReceiveName = receivename
          @SendChannel = sendchannel
          @StartReceiveTime = startreceivetime
          @ReceiveUin = receiveuin
        end

        def deserialize(params)
          @ReceiveGroup = params['ReceiveGroup']
          @EndReceiveTime = params['EndReceiveTime']
          @ReceiveName = params['ReceiveName']
          @SendChannel = params['SendChannel']
          @StartReceiveTime = params['StartReceiveTime']
          unless params['ReceiveUin'].nil?
            @ReceiveUin = []
            params['ReceiveUin'].each do |i|
              receiveuin_tmp = ReceiveUin.new
              receiveuin_tmp.deserialize(i)
              @ReceiveUin << receiveuin_tmp
            end
          end
        end
      end

      # 接收用户
      class ReceiveUin < TencentCloud::Common::AbstractModel
        # @param UinName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UinName: String
        # @param Uin: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String

        attr_accessor :UinName, :Uin

        def initialize(uinname=nil, uin=nil)
          @UinName = uinname
          @Uin = uin
        end

        def deserialize(params)
          @UinName = params['UinName']
          @Uin = params['Uin']
        end
      end

      # Redis大Key分析任务详情。
      class RedisBigKeyTask < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务请求 ID。
        # @type AsyncRequestId: Integer
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param EndTime: 任务结束时间。
        # @type EndTime: String
        # @param TaskStatus: 任务状态。
        # @type TaskStatus: String
        # @param Progress: 任务执行进度。
        # @type Progress: Integer
        # @param ShardIds: 任务包含的分片节点序号列表。
        # @type ShardIds: Array

        attr_accessor :AsyncRequestId, :CreateTime, :StartTime, :EndTime, :TaskStatus, :Progress, :ShardIds

        def initialize(asyncrequestid=nil, createtime=nil, starttime=nil, endtime=nil, taskstatus=nil, progress=nil, shardids=nil)
          @AsyncRequestId = asyncrequestid
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @TaskStatus = taskstatus
          @Progress = progress
          @ShardIds = shardids
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskStatus = params['TaskStatus']
          @Progress = params['Progress']
          @ShardIds = params['ShardIds']
        end
      end

      # redis key空间信息。
      class RedisKeySpaceData < TencentCloud::Common::AbstractModel
        # @param Key: key名。
        # @type Key: String
        # @param Type: key类型。
        # @type Type: String
        # @param Encoding: key编码方式。
        # @type Encoding: String
        # @param ExpireTime: key过期时间戳（毫秒），0代表未设置过期时间。
        # @type ExpireTime: Integer
        # @param Length: key内存大小，单位Byte。
        # @type Length: Integer
        # @param ItemCount: 元素个数。
        # @type ItemCount: Integer
        # @param MaxElementSize: 最大元素长度。
        # @type MaxElementSize: Integer
        # @param AveElementSize: 平均元素长度。
        # @type AveElementSize: Integer
        # @param ShardId: 所属分片序号。
        # @type ShardId: String

        attr_accessor :Key, :Type, :Encoding, :ExpireTime, :Length, :ItemCount, :MaxElementSize, :AveElementSize, :ShardId

        def initialize(key=nil, type=nil, encoding=nil, expiretime=nil, length=nil, itemcount=nil, maxelementsize=nil, aveelementsize=nil, shardid=nil)
          @Key = key
          @Type = type
          @Encoding = encoding
          @ExpireTime = expiretime
          @Length = length
          @ItemCount = itemcount
          @MaxElementSize = maxelementsize
          @AveElementSize = aveelementsize
          @ShardId = shardid
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
          @Encoding = params['Encoding']
          @ExpireTime = params['ExpireTime']
          @Length = params['Length']
          @ItemCount = params['ItemCount']
          @MaxElementSize = params['MaxElementSize']
          @AveElementSize = params['AveElementSize']
          @ShardId = params['ShardId']
        end
      end

      # redis key前缀空间信息
      class RedisPreKeySpaceData < TencentCloud::Common::AbstractModel
        # @param AveElementSize: 平均元素长度。
        # @type AveElementSize: Integer
        # @param Length: 总占用内存（Byte）。
        # @type Length: Integer
        # @param KeyPreIndex: key前缀。
        # @type KeyPreIndex: String
        # @param ItemCount: 元素数量。
        # @type ItemCount: Integer
        # @param Count: key个数。
        # @type Count: Integer
        # @param MaxElementSize: 最大元素长度。
        # @type MaxElementSize: Integer

        attr_accessor :AveElementSize, :Length, :KeyPreIndex, :ItemCount, :Count, :MaxElementSize

        def initialize(aveelementsize=nil, length=nil, keypreindex=nil, itemcount=nil, count=nil, maxelementsize=nil)
          @AveElementSize = aveelementsize
          @Length = length
          @KeyPreIndex = keypreindex
          @ItemCount = itemcount
          @Count = count
          @MaxElementSize = maxelementsize
        end

        def deserialize(params)
          @AveElementSize = params['AveElementSize']
          @Length = params['Length']
          @KeyPreIndex = params['KeyPreIndex']
          @ItemCount = params['ItemCount']
          @Count = params['Count']
          @MaxElementSize = params['MaxElementSize']
        end
      end

      # 实例SQL限流任务。
      class SQLFilter < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID。
        # @type Id: Integer
        # @param Status: 任务状态，取值包括RUNNING - 运行中, FINISHED - 已完成, TERMINATED - 已终止。
        # @type Status: String
        # @param SqlType: SQL类型，取值包括SELECT, UPDATE, DELETE, INSERT, REPLACE。
        # @type SqlType: String
        # @param OriginKeys: 筛选SQL的关键词，多个关键词用英文逗号拼接。
        # @type OriginKeys: String
        # @param OriginRule: 筛选SQL的规则。
        # @type OriginRule: String
        # @param RejectedSqlCount: 已拒绝SQL数目。
        # @type RejectedSqlCount: Integer
        # @param CurrentConcurrency: 当前并发数。
        # @type CurrentConcurrency: Integer
        # @param MaxConcurrency: 最大并发数。
        # @type MaxConcurrency: Integer
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param CurrentTime: 当前时间。
        # @type CurrentTime: String
        # @param ExpireTime: 限流过期时间。
        # @type ExpireTime: String

        attr_accessor :Id, :Status, :SqlType, :OriginKeys, :OriginRule, :RejectedSqlCount, :CurrentConcurrency, :MaxConcurrency, :CreateTime, :CurrentTime, :ExpireTime

        def initialize(id=nil, status=nil, sqltype=nil, originkeys=nil, originrule=nil, rejectedsqlcount=nil, currentconcurrency=nil, maxconcurrency=nil, createtime=nil, currenttime=nil, expiretime=nil)
          @Id = id
          @Status = status
          @SqlType = sqltype
          @OriginKeys = originkeys
          @OriginRule = originrule
          @RejectedSqlCount = rejectedsqlcount
          @CurrentConcurrency = currentconcurrency
          @MaxConcurrency = maxconcurrency
          @CreateTime = createtime
          @CurrentTime = currenttime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @SqlType = params['SqlType']
          @OriginKeys = params['OriginKeys']
          @OriginRule = params['OriginRule']
          @RejectedSqlCount = params['RejectedSqlCount']
          @CurrentConcurrency = params['CurrentConcurrency']
          @MaxConcurrency = params['MaxConcurrency']
          @CreateTime = params['CreateTime']
          @CurrentTime = params['CurrentTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # SchemaItem数组
      class SchemaItem < TencentCloud::Common::AbstractModel
        # @param Schema: 数据库名称
        # @type Schema: String

        attr_accessor :Schema

        def initialize(schema=nil)
          @Schema = schema
        end

        def deserialize(params)
          @Schema = params['Schema']
        end
      end

      # 库空间统计数据。
      class SchemaSpaceData < TencentCloud::Common::AbstractModel
        # @param TableSchema: 库名。
        # @type TableSchema: String
        # @param DataLength: 数据空间（MB）。
        # @type DataLength: Float
        # @param IndexLength: 索引空间（MB）。
        # @type IndexLength: Float
        # @param DataFree: 碎片空间（MB）。
        # @type DataFree: Float
        # @param TotalLength: 总使用空间（MB）。
        # @type TotalLength: Float
        # @param FragRatio: 碎片率（%）。
        # @type FragRatio: Float
        # @param TableRows: 行数。
        # @type TableRows: Integer
        # @param PhysicalFileSize: 库中所有表对应的独立物理文件大小加和（MB）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalFileSize: Float

        attr_accessor :TableSchema, :DataLength, :IndexLength, :DataFree, :TotalLength, :FragRatio, :TableRows, :PhysicalFileSize

        def initialize(tableschema=nil, datalength=nil, indexlength=nil, datafree=nil, totallength=nil, fragratio=nil, tablerows=nil, physicalfilesize=nil)
          @TableSchema = tableschema
          @DataLength = datalength
          @IndexLength = indexlength
          @DataFree = datafree
          @TotalLength = totallength
          @FragRatio = fragratio
          @TableRows = tablerows
          @PhysicalFileSize = physicalfilesize
        end

        def deserialize(params)
          @TableSchema = params['TableSchema']
          @DataLength = params['DataLength']
          @IndexLength = params['IndexLength']
          @DataFree = params['DataFree']
          @TotalLength = params['TotalLength']
          @FragRatio = params['FragRatio']
          @TableRows = params['TableRows']
          @PhysicalFileSize = params['PhysicalFileSize']
        end
      end

      # 库空间时序数据
      class SchemaSpaceTimeSeries < TencentCloud::Common::AbstractModel
        # @param TableSchema: 库名
        # @type TableSchema: String
        # @param SeriesData: 单位时间间隔内的空间指标数据。
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20210527.models.MonitorMetricSeriesData`

        attr_accessor :TableSchema, :SeriesData

        def initialize(tableschema=nil, seriesdata=nil)
          @TableSchema = tableschema
          @SeriesData = seriesdata
        end

        def deserialize(params)
          @TableSchema = params['TableSchema']
          unless params['SeriesData'].nil?
            @SeriesData = MonitorMetricSeriesData.new
            @SeriesData.deserialize(params['SeriesData'])
          end
        end
      end

      # 扣分详情。
      class ScoreDetail < TencentCloud::Common::AbstractModel
        # @param IssueType: 扣分项分类，取值包括：可用性、可维护性、性能及可靠性。
        # @type IssueType: String
        # @param ScoreLost: 扣分总分。
        # @type ScoreLost: Integer
        # @param ScoreLostMax: 扣分总分上限。
        # @type ScoreLostMax: Integer
        # @param Items: 扣分项列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :IssueType, :ScoreLost, :ScoreLostMax, :Items

        def initialize(issuetype=nil, scorelost=nil, scorelostmax=nil, items=nil)
          @IssueType = issuetype
          @ScoreLost = scorelost
          @ScoreLostMax = scorelostmax
          @Items = items
        end

        def deserialize(params)
          @IssueType = params['IssueType']
          @ScoreLost = params['ScoreLost']
          @ScoreLostMax = params['ScoreLostMax']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              scoreitem_tmp = ScoreItem.new
              scoreitem_tmp.deserialize(i)
              @Items << scoreitem_tmp
            end
          end
        end
      end

      # 诊断扣分项。
      class ScoreItem < TencentCloud::Common::AbstractModel
        # @param DiagItem: 异常诊断项名称。
        # @type DiagItem: String
        # @param IssueType: 诊断项分类，取值包括：可用性、可维护性、性能及可靠性。
        # @type IssueType: String
        # @param TopSeverity: 健康等级，取值包括：信息、提示、告警、严重、致命。
        # @type TopSeverity: String
        # @param Count: 该异常诊断项出现次数。
        # @type Count: Integer
        # @param ScoreLost: 扣分分数。
        # @type ScoreLost: Integer

        attr_accessor :DiagItem, :IssueType, :TopSeverity, :Count, :ScoreLost

        def initialize(diagitem=nil, issuetype=nil, topseverity=nil, count=nil, scorelost=nil)
          @DiagItem = diagitem
          @IssueType = issuetype
          @TopSeverity = topseverity
          @Count = count
          @ScoreLost = scorelost
        end

        def deserialize(params)
          @DiagItem = params['DiagItem']
          @IssueType = params['IssueType']
          @TopSeverity = params['TopSeverity']
          @Count = params['Count']
          @ScoreLost = params['ScoreLost']
        end
      end

      # 安全审计日志导出任务信息
      class SecLogExportTaskInfo < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务Id。
        # @type AsyncRequestId: Integer
        # @param StartTime: 任务开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Progress: 任务执行进度。
        # @type Progress: Integer
        # @param LogStartTime: 导出日志开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogStartTime: String
        # @param LogEndTime: 导出日志结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogEndTime: String
        # @param TotalSize: 日志文件总大小，单位KB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer
        # @param DangerLevels: 风险等级列表。0 无风险；1 低风险；2 中风险；3 高风险。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DangerLevels: Array

        attr_accessor :AsyncRequestId, :StartTime, :EndTime, :CreateTime, :Status, :Progress, :LogStartTime, :LogEndTime, :TotalSize, :DangerLevels

        def initialize(asyncrequestid=nil, starttime=nil, endtime=nil, createtime=nil, status=nil, progress=nil, logstarttime=nil, logendtime=nil, totalsize=nil, dangerlevels=nil)
          @AsyncRequestId = asyncrequestid
          @StartTime = starttime
          @EndTime = endtime
          @CreateTime = createtime
          @Status = status
          @Progress = progress
          @LogStartTime = logstarttime
          @LogEndTime = logendtime
          @TotalSize = totalsize
          @DangerLevels = dangerlevels
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @Progress = params['Progress']
          @LogStartTime = params['LogStartTime']
          @LogEndTime = params['LogEndTime']
          @TotalSize = params['TotalSize']
          @DangerLevels = params['DangerLevels']
        end
      end

      # 实时会话访问来源详情。
      class SessionItem < TencentCloud::Common::AbstractModel
        # @param Ip: 访问来源。
        # @type Ip: String
        # @param ActiveConn: 当前访问来源活跃连接数
        # @type ActiveConn: String
        # @param AllConn: 当前访问来源总连接数
        # @type AllConn: Integer

        attr_accessor :Ip, :ActiveConn, :AllConn

        def initialize(ip=nil, activeconn=nil, allconn=nil)
          @Ip = ip
          @ActiveConn = activeconn
          @AllConn = allconn
        end

        def deserialize(params)
          @Ip = params['Ip']
          @ActiveConn = params['ActiveConn']
          @AllConn = params['AllConn']
        end
      end

      # 慢日志来源地址详情。
      class SlowLogHost < TencentCloud::Common::AbstractModel
        # @param UserHost: 来源地址。
        # @type UserHost: String
        # @param Ratio: 该来源地址的慢日志数目占总数目的比例，单位%。
        # @type Ratio: Float
        # @param Count: 该来源地址的慢日志数目。
        # @type Count: Integer

        attr_accessor :UserHost, :Ratio, :Count

        def initialize(userhost=nil, ratio=nil, count=nil)
          @UserHost = userhost
          @Ratio = ratio
          @Count = count
        end

        def deserialize(params)
          @UserHost = params['UserHost']
          @Ratio = params['Ratio']
          @Count = params['Count']
        end
      end

      # 慢日志详细信息
      class SlowLogInfoItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 慢日志开始时间
        # @type Timestamp: String
        # @param SqlText: sql语句
        # @type SqlText: String
        # @param Database: 数据库
        # @type Database: String
        # @param UserName: User来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UserHost: IP来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserHost: String
        # @param QueryTime: 执行时间,单位秒
        # @type QueryTime: Float
        # @param LockTime: 锁时间,单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockTime: Float
        # @param RowsExamined: 扫描行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsExamined: Integer
        # @param RowsSent: 返回行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsSent: Integer

        attr_accessor :Timestamp, :SqlText, :Database, :UserName, :UserHost, :QueryTime, :LockTime, :RowsExamined, :RowsSent

        def initialize(timestamp=nil, sqltext=nil, database=nil, username=nil, userhost=nil, querytime=nil, locktime=nil, rowsexamined=nil, rowssent=nil)
          @Timestamp = timestamp
          @SqlText = sqltext
          @Database = database
          @UserName = username
          @UserHost = userhost
          @QueryTime = querytime
          @LockTime = locktime
          @RowsExamined = rowsexamined
          @RowsSent = rowssent
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @SqlText = params['SqlText']
          @Database = params['Database']
          @UserName = params['UserName']
          @UserHost = params['UserHost']
          @QueryTime = params['QueryTime']
          @LockTime = params['LockTime']
          @RowsExamined = params['RowsExamined']
          @RowsSent = params['RowsSent']
        end
      end

      # 慢日志TopSql
      class SlowLogTopSqlItem < TencentCloud::Common::AbstractModel
        # @param LockTime: sql总锁等待时间，单位秒
        # @type LockTime: Float
        # @param LockTimeMax: 最大锁等待时间，单位秒
        # @type LockTimeMax: Float
        # @param LockTimeMin: 最小锁等待时间，单位秒
        # @type LockTimeMin: Float
        # @param RowsExamined: 总扫描行数
        # @type RowsExamined: Integer
        # @param RowsExaminedMax: 最大扫描行数
        # @type RowsExaminedMax: Integer
        # @param RowsExaminedMin: 最小扫描行数
        # @type RowsExaminedMin: Integer
        # @param QueryTime: 总耗时，单位秒
        # @type QueryTime: Float
        # @param QueryTimeMax: 最大执行时间，单位秒
        # @type QueryTimeMax: Float
        # @param QueryTimeMin: 最小执行时间，单位秒
        # @type QueryTimeMin: Float
        # @param RowsSent: 总返回行数
        # @type RowsSent: Integer
        # @param RowsSentMax: 最大返回行数
        # @type RowsSentMax: Integer
        # @param RowsSentMin: 最小返回行数
        # @type RowsSentMin: Integer
        # @param ExecTimes: 执行次数
        # @type ExecTimes: Integer
        # @param SqlTemplate: sql模板
        # @type SqlTemplate: String
        # @param SqlText: 带参数SQL（随机）
        # @type SqlText: String
        # @param Schema: 数据库名
        # @type Schema: String
        # @param QueryTimeRatio: 总耗时占比，单位%
        # @type QueryTimeRatio: Float
        # @param LockTimeRatio: sql总锁等待时间占比，单位%
        # @type LockTimeRatio: Float
        # @param RowsExaminedRatio: 总扫描行数占比，单位%
        # @type RowsExaminedRatio: Float
        # @param RowsSentRatio: 总返回行数占比，单位%
        # @type RowsSentRatio: Float
        # @param QueryTimeAvg: 平均执行时间，单位秒
        # @type QueryTimeAvg: Float
        # @param RowsSentAvg: 平均返回行数
        # @type RowsSentAvg: Float
        # @param LockTimeAvg: 平均锁等待时间，单位秒
        # @type LockTimeAvg: Float
        # @param RowsExaminedAvg: 平均扫描行数
        # @type RowsExaminedAvg: Float
        # @param Md5: SQL模板的MD5值
        # @type Md5: String

        attr_accessor :LockTime, :LockTimeMax, :LockTimeMin, :RowsExamined, :RowsExaminedMax, :RowsExaminedMin, :QueryTime, :QueryTimeMax, :QueryTimeMin, :RowsSent, :RowsSentMax, :RowsSentMin, :ExecTimes, :SqlTemplate, :SqlText, :Schema, :QueryTimeRatio, :LockTimeRatio, :RowsExaminedRatio, :RowsSentRatio, :QueryTimeAvg, :RowsSentAvg, :LockTimeAvg, :RowsExaminedAvg, :Md5

        def initialize(locktime=nil, locktimemax=nil, locktimemin=nil, rowsexamined=nil, rowsexaminedmax=nil, rowsexaminedmin=nil, querytime=nil, querytimemax=nil, querytimemin=nil, rowssent=nil, rowssentmax=nil, rowssentmin=nil, exectimes=nil, sqltemplate=nil, sqltext=nil, schema=nil, querytimeratio=nil, locktimeratio=nil, rowsexaminedratio=nil, rowssentratio=nil, querytimeavg=nil, rowssentavg=nil, locktimeavg=nil, rowsexaminedavg=nil, md5=nil)
          @LockTime = locktime
          @LockTimeMax = locktimemax
          @LockTimeMin = locktimemin
          @RowsExamined = rowsexamined
          @RowsExaminedMax = rowsexaminedmax
          @RowsExaminedMin = rowsexaminedmin
          @QueryTime = querytime
          @QueryTimeMax = querytimemax
          @QueryTimeMin = querytimemin
          @RowsSent = rowssent
          @RowsSentMax = rowssentmax
          @RowsSentMin = rowssentmin
          @ExecTimes = exectimes
          @SqlTemplate = sqltemplate
          @SqlText = sqltext
          @Schema = schema
          @QueryTimeRatio = querytimeratio
          @LockTimeRatio = locktimeratio
          @RowsExaminedRatio = rowsexaminedratio
          @RowsSentRatio = rowssentratio
          @QueryTimeAvg = querytimeavg
          @RowsSentAvg = rowssentavg
          @LockTimeAvg = locktimeavg
          @RowsExaminedAvg = rowsexaminedavg
          @Md5 = md5
        end

        def deserialize(params)
          @LockTime = params['LockTime']
          @LockTimeMax = params['LockTimeMax']
          @LockTimeMin = params['LockTimeMin']
          @RowsExamined = params['RowsExamined']
          @RowsExaminedMax = params['RowsExaminedMax']
          @RowsExaminedMin = params['RowsExaminedMin']
          @QueryTime = params['QueryTime']
          @QueryTimeMax = params['QueryTimeMax']
          @QueryTimeMin = params['QueryTimeMin']
          @RowsSent = params['RowsSent']
          @RowsSentMax = params['RowsSentMax']
          @RowsSentMin = params['RowsSentMin']
          @ExecTimes = params['ExecTimes']
          @SqlTemplate = params['SqlTemplate']
          @SqlText = params['SqlText']
          @Schema = params['Schema']
          @QueryTimeRatio = params['QueryTimeRatio']
          @LockTimeRatio = params['LockTimeRatio']
          @RowsExaminedRatio = params['RowsExaminedRatio']
          @RowsSentRatio = params['RowsSentRatio']
          @QueryTimeAvg = params['QueryTimeAvg']
          @RowsSentAvg = params['RowsSentAvg']
          @LockTimeAvg = params['LockTimeAvg']
          @RowsExaminedAvg = params['RowsExaminedAvg']
          @Md5 = params['Md5']
        end
      end

      # 慢日志来源用户详情。
      class SlowLogUser < TencentCloud::Common::AbstractModel
        # @param UserName: 来源用户名。
        # @type UserName: String
        # @param Ratio: 该来源用户名的慢日志数目占总数目的比例，单位%。
        # @type Ratio: Float
        # @param Count: 该来源用户名的慢日志数目。
        # @type Count: Integer

        attr_accessor :UserName, :Ratio, :Count

        def initialize(username=nil, ratio=nil, count=nil)
          @UserName = username
          @Ratio = ratio
          @Count = count
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Ratio = params['Ratio']
          @Count = params['Count']
        end
      end

      # 会话统计的维度信息,可以多个维度
      class StatDimension < TencentCloud::Common::AbstractModel
        # @param Dimension: 维度名称，目前仅支持：SqlTag。
        # @type Dimension: String
        # @param Data: SQL 标签过滤与统计信息
        # 示例：

        # 示例 1：[p=position] 统计包含 p=position 标签的 SQL 会话。
        # 示例 2：[p] 统计包含 p 标签的 SQL 会话。
        # 示例 3：[p=position, c=idCard] 统计同时包含 p=position 标签和 c=idCard 标签的 SQL 会话。
        # @type Data: Array

        attr_accessor :Dimension, :Data

        def initialize(dimension=nil, data=nil)
          @Dimension = dimension
          @Data = data
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @Data = params['Data']
        end
      end

      # 统计分析维度下的统计数据详情
      class StatisticDataInfo < TencentCloud::Common::AbstractModel
        # @param Name: 统计维度的值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TimeAvg: 平均时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeAvg: Float
        # @param TimeSum: 总时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSum: Float
        # @param Count: 数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :Name, :TimeAvg, :TimeSum, :Count

        def initialize(name=nil, timeavg=nil, timesum=nil, count=nil)
          @Name = name
          @TimeAvg = timeavg
          @TimeSum = timesum
          @Count = count
        end

        def deserialize(params)
          @Name = params['Name']
          @TimeAvg = params['TimeAvg']
          @TimeSum = params['TimeSum']
          @Count = params['Count']
        end
      end

      # sql会话统计信息
      class StatisticInfo < TencentCloud::Common::AbstractModel
        # @param Dimension: 统计分析的维度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimension: String
        # @param Data: 统计分析的维度下的统计数据详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :Dimension, :Data

        def initialize(dimension=nil, data=nil)
          @Dimension = dimension
          @Data = data
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              statisticdatainfo_tmp = StatisticDataInfo.new
              statisticdatainfo_tmp.deserialize(i)
              @Data << statisticdatainfo_tmp
            end
          end
        end
      end

      # 表结构。
      class Table < TencentCloud::Common::AbstractModel
        # @param TableSchema: 库名。
        # @type TableSchema: String
        # @param TableName: 表名。
        # @type TableName: String
        # @param Engine: 库表的存储引擎。
        # @type Engine: String
        # @param TableRows: 行数。
        # @type TableRows: Integer
        # @param TotalLength: 总使用空间（MB）。
        # @type TotalLength: Float

        attr_accessor :TableSchema, :TableName, :Engine, :TableRows, :TotalLength

        def initialize(tableschema=nil, tablename=nil, engine=nil, tablerows=nil, totallength=nil)
          @TableSchema = tableschema
          @TableName = tablename
          @Engine = engine
          @TableRows = tablerows
          @TotalLength = totallength
        end

        def deserialize(params)
          @TableSchema = params['TableSchema']
          @TableName = params['TableName']
          @Engine = params['Engine']
          @TableRows = params['TableRows']
          @TotalLength = params['TotalLength']
        end
      end

      # 库表空间统计数据。
      class TableSpaceData < TencentCloud::Common::AbstractModel
        # @param TableName: 表名。
        # @type TableName: String
        # @param TableSchema: 库名。
        # @type TableSchema: String
        # @param Engine: 库表的存储引擎。
        # @type Engine: String
        # @param DataLength: 数据空间（MB）。
        # @type DataLength: Float
        # @param IndexLength: 索引空间（MB）。
        # @type IndexLength: Float
        # @param DataFree: 碎片空间（MB）。
        # @type DataFree: Float
        # @param TotalLength: 总使用空间（MB）。
        # @type TotalLength: Float
        # @param FragRatio: 碎片率（%）。
        # @type FragRatio: Float
        # @param TableRows: 行数。
        # @type TableRows: Integer
        # @param PhysicalFileSize: 表对应的独立物理文件大小（MB）。
        # @type PhysicalFileSize: Float

        attr_accessor :TableName, :TableSchema, :Engine, :DataLength, :IndexLength, :DataFree, :TotalLength, :FragRatio, :TableRows, :PhysicalFileSize

        def initialize(tablename=nil, tableschema=nil, engine=nil, datalength=nil, indexlength=nil, datafree=nil, totallength=nil, fragratio=nil, tablerows=nil, physicalfilesize=nil)
          @TableName = tablename
          @TableSchema = tableschema
          @Engine = engine
          @DataLength = datalength
          @IndexLength = indexlength
          @DataFree = datafree
          @TotalLength = totallength
          @FragRatio = fragratio
          @TableRows = tablerows
          @PhysicalFileSize = physicalfilesize
        end

        def deserialize(params)
          @TableName = params['TableName']
          @TableSchema = params['TableSchema']
          @Engine = params['Engine']
          @DataLength = params['DataLength']
          @IndexLength = params['IndexLength']
          @DataFree = params['DataFree']
          @TotalLength = params['TotalLength']
          @FragRatio = params['FragRatio']
          @TableRows = params['TableRows']
          @PhysicalFileSize = params['PhysicalFileSize']
        end
      end

      # 库表空间时序数据
      class TableSpaceTimeSeries < TencentCloud::Common::AbstractModel
        # @param TableName: 表名。
        # @type TableName: String
        # @param TableSchema: 库名。
        # @type TableSchema: String
        # @param Engine: 库表的存储引擎。
        # @type Engine: String
        # @param SeriesData: 单位时间间隔内的空间指标数据。
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20210527.models.MonitorFloatMetricSeriesData`

        attr_accessor :TableName, :TableSchema, :Engine, :SeriesData

        def initialize(tablename=nil, tableschema=nil, engine=nil, seriesdata=nil)
          @TableName = tablename
          @TableSchema = tableschema
          @Engine = engine
          @SeriesData = seriesdata
        end

        def deserialize(params)
          @TableName = params['TableName']
          @TableSchema = params['TableSchema']
          @Engine = params['Engine']
          unless params['SeriesData'].nil?
            @SeriesData = MonitorFloatMetricSeriesData.new
            @SeriesData.deserialize(params['SeriesData'])
          end
        end
      end

      # 展示 redis kill 会话任务状态。
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID。
        # @type AsyncRequestId: Integer
        # @param InstProxyList: 当前实例所有 proxy 列表。
        # @type InstProxyList: Array
        # @param InstProxyCount: 当前实例所有 proxy 数量。
        # @type InstProxyCount: Integer
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param StartTime: 任务启动时间。
        # @type StartTime: String
        # @param TaskStatus: 任务的状态，支持的取值包括："created" - 新建；"chosen" - 待执行； "running" - 执行中；"failed" - 失败；"finished" - 已完成。
        # @type TaskStatus: String
        # @param FinishedProxyList: 完成 kill 任务的 proxyId。
        # @type FinishedProxyList: Array
        # @param FailedProxyList: kill 任务实行失败的 proxyId。
        # @type FailedProxyList: Array
        # @param EndTime: 任务结束时间。
        # @type EndTime: String
        # @param Progress: 任务执行进度。
        # @type Progress: Integer
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :AsyncRequestId, :InstProxyList, :InstProxyCount, :CreateTime, :StartTime, :TaskStatus, :FinishedProxyList, :FailedProxyList, :EndTime, :Progress, :InstanceId

        def initialize(asyncrequestid=nil, instproxylist=nil, instproxycount=nil, createtime=nil, starttime=nil, taskstatus=nil, finishedproxylist=nil, failedproxylist=nil, endtime=nil, progress=nil, instanceid=nil)
          @AsyncRequestId = asyncrequestid
          @InstProxyList = instproxylist
          @InstProxyCount = instproxycount
          @CreateTime = createtime
          @StartTime = starttime
          @TaskStatus = taskstatus
          @FinishedProxyList = finishedproxylist
          @FailedProxyList = failedproxylist
          @EndTime = endtime
          @Progress = progress
          @InstanceId = instanceid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @InstProxyList = params['InstProxyList']
          @InstProxyCount = params['InstProxyCount']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @TaskStatus = params['TaskStatus']
          @FinishedProxyList = params['FinishedProxyList']
          @FailedProxyList = params['FailedProxyList']
          @EndTime = params['EndTime']
          @Progress = params['Progress']
          @InstanceId = params['InstanceId']
        end
      end

      # 通知模板
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param TemplateName: 模板名
        # @type TemplateName: String

        attr_accessor :TemplateId, :TemplateName

        def initialize(templateid=nil, templatename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
        end
      end

      # 单位时间间隔内的慢日志统计
      class TimeSlice < TencentCloud::Common::AbstractModel
        # @param Count: 总数
        # @type Count: Integer
        # @param Timestamp: 统计开始时间
        # @type Timestamp: Integer

        attr_accessor :Count, :Timestamp

        def initialize(count=nil, timestamp=nil)
          @Count = count
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Count = params['Count']
          @Timestamp = params['Timestamp']
        end
      end

      # UpdateAgentSwitch请求参数结构体
      class UpdateAgentSwitchRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: Agent标识。
        # @type AgentId: String
        # @param Switch: 停止或重连Agent，支持值包括："on" - 重连Agent， "off" - 停止Agent。
        # @type Switch: String
        # @param Product: 服务产品类型，仅支持 "dbbrain-mysql" - 自建MySQL。
        # @type Product: String

        attr_accessor :AgentId, :Switch, :Product

        def initialize(agentid=nil, switch=nil, product=nil)
          @AgentId = agentid
          @Switch = switch
          @Product = product
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Switch = params['Switch']
          @Product = params['Product']
        end
      end

      # UpdateAgentSwitch返回参数结构体
      class UpdateAgentSwitchResponse < TencentCloud::Common::AbstractModel
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

      # UpdateMonitorSwitch请求参数结构体
      class UpdateMonitorSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Switch: 停止或重连Agent实例，支持值包括："on" - 重连实例， "off" - 停止实例。
        # @type Switch: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Product: 服务产品类型，仅支持 "dbbrain-mysql" - 自建MySQL。
        # @type Product: String

        attr_accessor :Switch, :InstanceId, :Product

        def initialize(switch=nil, instanceid=nil, product=nil)
          @Switch = switch
          @InstanceId = instanceid
          @Product = product
        end

        def deserialize(params)
          @Switch = params['Switch']
          @InstanceId = params['InstanceId']
          @Product = params['Product']
        end
      end

      # UpdateMonitorSwitch返回参数结构体
      class UpdateMonitorSwitchResponse < TencentCloud::Common::AbstractModel
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

      # 用户配置的相关信息，包括邮件配置。
      class UserProfile < TencentCloud::Common::AbstractModel
        # @param ProfileId: 配置的id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfileId: String
        # @param ProfileType: 配置类型，支持值包括："dbScan_mail_configuration" - 数据库巡检邮件配置，"scheduler_mail_configuration" - 定期生成邮件配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfileType: String
        # @param ProfileLevel: 配置级别，支持值包括："User" - 用户级别，"Instance" - 实例级别，其中数据库巡检邮件配置为用户级别，定期生成邮件配置为实例级别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfileLevel: String
        # @param ProfileName: 配置名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProfileName: String
        # @param ProfileInfo: 配置详情。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20210527.models.ProfileInfo`

        attr_accessor :ProfileId, :ProfileType, :ProfileLevel, :ProfileName, :ProfileInfo

        def initialize(profileid=nil, profiletype=nil, profilelevel=nil, profilename=nil, profileinfo=nil)
          @ProfileId = profileid
          @ProfileType = profiletype
          @ProfileLevel = profilelevel
          @ProfileName = profilename
          @ProfileInfo = profileinfo
        end

        def deserialize(params)
          @ProfileId = params['ProfileId']
          @ProfileType = params['ProfileType']
          @ProfileLevel = params['ProfileLevel']
          @ProfileName = params['ProfileName']
          unless params['ProfileInfo'].nil?
            @ProfileInfo = ProfileInfo.new
            @ProfileInfo.deserialize(params['ProfileInfo'])
          end
        end
      end

      # VerifyUserAccount请求参数结构体
      class VerifyUserAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param User: 数据库账号名。
        # @type User: String
        # @param Password: 数据库账号密码。
        # @type Password: String
        # @param Product: 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String

        attr_accessor :InstanceId, :User, :Password, :Product

        def initialize(instanceid=nil, user=nil, password=nil, product=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Product = product
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Product = params['Product']
        end
      end

      # VerifyUserAccount返回参数结构体
      class VerifyUserAccountResponse < TencentCloud::Common::AbstractModel
        # @param SessionToken: 会话token，有效期为5分钟。
        # @type SessionToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionToken, :RequestId

        def initialize(sessiontoken=nil, requestid=nil)
          @SessionToken = sessiontoken
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionToken = params['SessionToken']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

