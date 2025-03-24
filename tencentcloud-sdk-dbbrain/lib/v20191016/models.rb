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
    module V20191016
      # AddUserContact请求参数结构体
      class AddUserContactRequest < TencentCloud::Common::AbstractModel
        # @param Name: 联系人姓名，大小写字母+数字+下划线，最小 2 位最大 60 位的长度， 不能以"_"开头，且联系人名保持唯一。
        # @type Name: String
        # @param ContactInfo: 邮箱地址，大小写字母、数字及下划线组成， 不能以"_"开头。
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

      # CreateMailProfile请求参数结构体
      class CreateMailProfileRequest < TencentCloud::Common::AbstractModel
        # @param ProfileInfo: 邮件配置内容。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20191016.models.ProfileInfo`
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

      # CreateSchedulerMailProfile请求参数结构体
      class CreateSchedulerMailProfileRequest < TencentCloud::Common::AbstractModel
        # @param WeekConfiguration: 取值范围1-7，分别代表周一至周日。
        # @type WeekConfiguration: Array
        # @param ProfileInfo: 邮件配置内容。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20191016.models.ProfileInfo`
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
        # @param Explanation: 事件详情。
        # @type Explanation: String
        # @param Outline: 概要。
        # @type Outline: String
        # @param Problem: 诊断出的问题。
        # @type Problem: String
        # @param Severity: 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        # @type Severity: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Suggestions: 建议。
        # @type Suggestions: String
        # @param Metric: 保留字段。
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
        # @param Limit: 返回数量，默认20。
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
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
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
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        # @type Product: String
        # @param Offset: 分页参数，偏移量。
        # @type Offset: Integer
        # @param Limit: 分页参数，分页值。
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
        # @param Time: 获取健康得分的时间。
        # @type Time: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，"redis" - 云数据库 Redis，默认为"mysql"。
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
        # @type Data: :class:`Tencentcloud::Dbbrain.v20191016.models.HealthScoreInfo`
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
        # @type ProfileList: Array
        # @param TotalCount: 邮件模板总数。
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
        # @param Limit: 返回数量，默认20。
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
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20191016.models.MonitorMetricSeriesData`
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
        # @param EndTime: 截止时间，如“2019-09-10 12:13:14”，截止时间与开始时间的间隔最大可为7天。
        # @type EndTime: String
        # @param SortBy: 排序键，目前支持 QueryTime,ExecTimes,RowsSent,LockTime以及RowsExamined 等排序键。
        # @type SortBy: String
        # @param OrderBy: 排序方式，支持ASC（升序）以及DESC（降序）。
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

        attr_accessor :InstanceId, :SqlText, :Schema

        def initialize(instanceid=nil, sqltext=nil, schema=nil)
          @InstanceId = instanceid
          @SqlText = sqltext
          @Schema = schema
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SqlText = params['SqlText']
          @Schema = params['Schema']
        end
      end

      # DescribeUserSqlAdvice返回参数结构体
      class DescribeUserSqlAdviceResponse < TencentCloud::Common::AbstractModel
        # @param Advices: SQL优化建议，可解析为JSON数组。
        # @type Advices: String
        # @param Comments: SQL优化建议备注，可解析为String数组。
        # @type Comments: String
        # @param SqlText: SQL语句。
        # @type SqlText: String
        # @param Schema: 库名。
        # @type Schema: String
        # @param Tables: 相关表的DDL信息，可解析为JSON数组。
        # @type Tables: String
        # @param SqlPlan: SQL执行计划，可解析为JSON。
        # @type SqlPlan: String
        # @param Cost: SQL优化后的成本节约详情，可解析为JSON。
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
        # @param EventId: 事件 ID 。
        # @type EventId: Integer
        # @param Severity: 严重程度。严重程度分为5级，按影响程度从高至低分别为：1：致命，2：严重，3：告警，4：提示，5：健康。
        # @type Severity: Integer
        # @param Outline: 概要。
        # @type Outline: String
        # @param DiagItem: 诊断项。
        # @type DiagItem: String
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Metric: 保留字段
        # @type Metric: String
        # @param Region: 地域
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
        # @type InstanceInfo: :class:`Tencentcloud::Dbbrain.v20191016.models.InstanceBasicInfo`
        # @param HealthStatus: 健康报告中的健康信息。
        # @type HealthStatus: :class:`Tencentcloud::Dbbrain.v20191016.models.HealthStatus`

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
        # @type KeyDelimiters: Array

        attr_accessor :DailyInspection, :OverviewDisplay, :KeyDelimiters

        def initialize(dailyinspection=nil, overviewdisplay=nil, keydelimiters=nil)
          @DailyInspection = dailyinspection
          @OverviewDisplay = overviewdisplay
          @KeyDelimiters = keydelimiters
        end

        def deserialize(params)
          @DailyInspection = params['DailyInspection']
          @OverviewDisplay = params['OverviewDisplay']
          @KeyDelimiters = params['KeyDelimiters']
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
        # @type InstanceConf: :class:`Tencentcloud::Dbbrain.v20191016.models.InstanceConfs`
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
        # @type InternalVip: String
        # @param InternalVport: 内网port。
        # @type InternalVport: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ClusterId: 所属集群ID（仅对集群数据库产品该字段非空，如TDSQL-C）。
        # @type ClusterId: String
        # @param ClusterName: 所属集群名称（仅对集群数据库产品该字段非空，如TDSQL-C）。
        # @type ClusterName: String

        attr_accessor :InstanceId, :InstanceName, :Region, :HealthScore, :Product, :EventCount, :InstanceType, :Cpu, :Memory, :Volume, :EngineVersion, :Vip, :Vport, :Source, :GroupId, :GroupName, :Status, :UniqSubnetId, :DeployMode, :InitFlag, :TaskStatus, :UniqVpcId, :InstanceConf, :DeadlineTime, :IsSupported, :SecAuditStatus, :AuditPolicyStatus, :AuditRunningStatus, :InternalVip, :InternalVport, :CreateTime, :ClusterId, :ClusterName

        def initialize(instanceid=nil, instancename=nil, region=nil, healthscore=nil, product=nil, eventcount=nil, instancetype=nil, cpu=nil, memory=nil, volume=nil, engineversion=nil, vip=nil, vport=nil, source=nil, groupid=nil, groupname=nil, status=nil, uniqsubnetid=nil, deploymode=nil, initflag=nil, taskstatus=nil, uniqvpcid=nil, instanceconf=nil, deadlinetime=nil, issupported=nil, secauditstatus=nil, auditpolicystatus=nil, auditrunningstatus=nil, internalvip=nil, internalvport=nil, createtime=nil, clusterid=nil, clustername=nil)
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

      # ModifyDiagDBInstanceConf请求参数结构体
      class ModifyDiagDBInstanceConfRequest < TencentCloud::Common::AbstractModel
        # @param InstanceConfs: 巡检开关。
        # @type InstanceConfs: :class:`Tencentcloud::Dbbrain.v20191016.models.InstanceConfs`
        # @param Regions: 生效实例地域，取值为"All"，代表全地域。
        # @type Regions: String
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL。
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

      # 监控数据（浮点型）
      class MonitorFloatMetric < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名称。
        # @type Metric: String
        # @param Unit: 指标单位。
        # @type Unit: String
        # @param Values: 指标值。
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

      # 用户配置的信息
      class ProfileInfo < TencentCloud::Common::AbstractModel
        # @param Language: 语言, 如"zh"。
        # @type Language: String
        # @param MailConfiguration: 邮件模板的内容。
        # @type MailConfiguration: :class:`Tencentcloud::Dbbrain.v20191016.models.MailConfiguration`

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
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20191016.models.MonitorMetricSeriesData`

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
        # @type StartTime: String
        # @param EndTime: 任务结束时间。
        # @type EndTime: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param Status: 任务状态。
        # @type Status: String
        # @param Progress: 任务执行进度。
        # @type Progress: Integer
        # @param LogStartTime: 导出日志开始时间。
        # @type LogStartTime: String
        # @param LogEndTime: 导出日志结束时间。
        # @type LogEndTime: String
        # @param TotalSize: 日志文件总大小，单位KB。
        # @type TotalSize: Integer
        # @param DangerLevels: 风险等级列表。0 无风险；1 低风险；2 中风险；3 高风险。
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

      # 慢日志TopSql
      class SlowLogTopSqlItem < TencentCloud::Common::AbstractModel
        # @param LockTime: sql总锁等待时间
        # @type LockTime: Float
        # @param LockTimeMax: 最大锁等待时间
        # @type LockTimeMax: Float
        # @param LockTimeMin: 最小锁等待时间
        # @type LockTimeMin: Float
        # @param RowsExamined: 总扫描行数
        # @type RowsExamined: Integer
        # @param RowsExaminedMax: 最大扫描行数
        # @type RowsExaminedMax: Integer
        # @param RowsExaminedMin: 最小扫描行数
        # @type RowsExaminedMin: Integer
        # @param QueryTime: 总耗时
        # @type QueryTime: Float
        # @param QueryTimeMax: 最大执行时间
        # @type QueryTimeMax: Float
        # @param QueryTimeMin: 最小执行时间
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
        # @param QueryTimeRatio: 总耗时占比
        # @type QueryTimeRatio: Float
        # @param LockTimeRatio: sql总锁等待时间占比
        # @type LockTimeRatio: Float
        # @param RowsExaminedRatio: 总扫描行数占比
        # @type RowsExaminedRatio: Float
        # @param RowsSentRatio: 总返回行数占比
        # @type RowsSentRatio: Float
        # @param QueryTimeAvg: 平均执行时间
        # @type QueryTimeAvg: Float
        # @param RowsSentAvg: 平均返回行数
        # @type RowsSentAvg: Float
        # @param LockTimeAvg: 平均锁等待时间
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
        # @type SeriesData: :class:`Tencentcloud::Dbbrain.v20191016.models.MonitorFloatMetricSeriesData`

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

      # 用户配置的相关信息，包括邮件配置。
      class UserProfile < TencentCloud::Common::AbstractModel
        # @param ProfileId: 配置的id。
        # @type ProfileId: String
        # @param ProfileType: 配置类型。
        # @type ProfileType: String
        # @param ProfileLevel: 配置级别，"User"或"Instance"。
        # @type ProfileLevel: String
        # @param ProfileName: 配置名称。
        # @type ProfileName: String
        # @param ProfileInfo: 配置详情。
        # @type ProfileInfo: :class:`Tencentcloud::Dbbrain.v20191016.models.ProfileInfo`

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

    end
  end
end

