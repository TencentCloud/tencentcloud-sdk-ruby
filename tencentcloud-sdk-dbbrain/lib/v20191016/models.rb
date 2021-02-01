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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param BindInstanceIds: 配置绑定的实例ID，当配置级别为"Instance"时需要传入。
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
            @ProfileInfo = ProfileInfo.new.deserialize(params[ProfileInfo])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAllUserContact请求参数结构体
      class DescribeAllUserContactRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Contacts, :RequestId
        
        def initialize(totalcount=nil, contacts=nil, requestid=nil)
          @TotalCount = totalcount
          @Contacts = contacts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Contacts = params['Contacts']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllUserGroup请求参数结构体
      class DescribeAllUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param Product: 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Groups, :RequestId
        
        def initialize(totalcount=nil, groups=nil, requestid=nil)
          @TotalCount = totalcount
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Groups = params['Groups']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :RequestId
        
        def initialize(events=nil, requestid=nil)
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          @Events = params['Events']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :RequestId
        
        def initialize(tasks=nil, totalcount=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Tasks = params['Tasks']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
          @TimeSeries = params['TimeSeries']
          unless params['SeriesData'].nil?
            @SeriesData = MonitorMetricSeriesData.new.deserialize(params[SeriesData])
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
          @SchemaList = params['SchemaList']
          @Product = params['Product']
        end
      end

      # DescribeSlowLogTopSqls返回参数结构体
      class DescribeSlowLogTopSqlsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Rows: 慢日志 top sql 列表
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rows, :RequestId
        
        def initialize(totalcount=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Rows = params['Rows']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceTableTimeSeries请求参数结构体
      class DescribeTopSpaceTableTimeSeriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Limit: 返回的Top表数量，最大值为20，默认为最大值。
        # @type Limit: Integer
        # @param SortBy: 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize，默认为 PhysicalFileSize。
        # @type SortBy: String
        # @param StartDate: 开始日期，最早为当日的前第29天，默认为截止日期的前第6天。
        # @type StartDate: String
        # @param EndDate: 截止日期，最早为当日的前第29天，默认为当日。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceTableTimeSeries, :RequestId
        
        def initialize(topspacetabletimeseries=nil, requestid=nil)
          @TopSpaceTableTimeSeries = topspacetabletimeseries
          @RequestId = requestid
        end

        def deserialize(params)
          @TopSpaceTableTimeSeries = params['TopSpaceTableTimeSeries']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopSpaceTables请求参数结构体
      class DescribeTopSpaceTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Limit: 返回的Top表数量，最大值为20，默认为最大值。
        # @type Limit: Integer
        # @param SortBy: 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize，默认为 PhysicalFileSize。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopSpaceTables, :Timestamp, :RequestId
        
        def initialize(topspacetables=nil, timestamp=nil, requestid=nil)
          @TopSpaceTables = topspacetables
          @Timestamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          @TopSpaceTables = params['TopSpaceTables']
          @Timestamp = params['Timestamp']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Metric: 保留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metric: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 实例配置。
      class InstanceConfs < TencentCloud::Common::AbstractModel
        # @param DailyInspection: 数据库巡检开关, Yes/No。
        # @type DailyInspection: String

        attr_accessor :DailyInspection
        
        def initialize(dailyinspection=nil)
          @DailyInspection = dailyinspection
        end

        def deserialize(params)
          @DailyInspection = params['DailyInspection']
        end
      end

      # 邮件发送配置
      class MailConfiguration < TencentCloud::Common::AbstractModel
        # @param SendMail: 是否开启邮件发送: 0, 否; 1, 是。
        # @type SendMail: Integer
        # @param Region: 地域配置, 如["ap-guangzhou", "ap-shanghai"]。
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
            @InstanceConfs = InstanceConfs.new.deserialize(params[InstanceConfs])
          end
          @Regions = params['Regions']
          @Product = params['Product']
          @InstanceIds = params['InstanceIds']
        end
      end

      # ModifyDiagDBInstanceConf返回参数结构体
      class ModifyDiagDBInstanceConfResponse < TencentCloud::Common::AbstractModel
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
          @Series = params['Series']
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
          @Series = params['Series']
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
            @MailConfiguration = MailConfiguration.new.deserialize(params[MailConfiguration])
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

        attr_accessor :LockTime, :LockTimeMax, :LockTimeMin, :RowsExamined, :RowsExaminedMax, :RowsExaminedMin, :QueryTime, :QueryTimeMax, :QueryTimeMin, :RowsSent, :RowsSentMax, :RowsSentMin, :ExecTimes, :SqlTemplate, :SqlText, :Schema, :QueryTimeRatio, :LockTimeRatio, :RowsExaminedRatio, :RowsSentRatio
        
        def initialize(locktime=nil, locktimemax=nil, locktimemin=nil, rowsexamined=nil, rowsexaminedmax=nil, rowsexaminedmin=nil, querytime=nil, querytimemax=nil, querytimemin=nil, rowssent=nil, rowssentmax=nil, rowssentmin=nil, exectimes=nil, sqltemplate=nil, sqltext=nil, schema=nil, querytimeratio=nil, locktimeratio=nil, rowsexaminedratio=nil, rowssentratio=nil)
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
            @SeriesData = MonitorFloatMetricSeriesData.new.deserialize(params[SeriesData])
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

    end
  end
end

